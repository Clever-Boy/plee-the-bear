/*
  Copyright (C) 2012 Stuffomatic Ltd. <contact@stuff-o-matic.com>

  All rights reserved.

  See the accompanying license file for details about usage, modification and
  distribution of this file.
*/
/**
 * \file
 * \brief The class describing spider venom.
 * \author Sébastien Angibaud
 */
#ifndef __PTB_SPIDER_VENOM_HPP__
#define __PTB_SPIDER_VENOM_HPP__

#include "engine/base_item.hpp"
#include "ptb/item_brick/monster_item.hpp"
#include "engine/model.hpp"

#include "engine/export.hpp"

namespace ptb
{
  /**
   * \brief The class describing spider venom.
   * \author Sébastien Angibaud
   */
  class spider_venom:
    public monster_item< bear::engine::model<bear::engine::base_item> >
  {
    DECLARE_BASE_ITEM(spider_venom);

  public:
    /** \brief The type of the parent class. */
    typedef monster_item< bear::engine::model<bear::engine::base_item> > super;

    /** \brief The energy of a spider_venom.*/
    static const unsigned int s_spider_venom_energy = 1;

    /** \brief The offensive_force of a spider_venom.*/
    static const unsigned int s_spider_venom_offensive_force = 10;

  public:
    spider_venom();

    void on_enters_layer();
    void progress( bear::universe::time_type elapsed_time );
    void leaves_active_region();
    void is_main_venom();

  protected:
    virtual void has_attacked(const monster& other);

  private:
    void create_splash();
    void create_venom(const bear::universe::force_type& f);
  private:
    /** \brief Indicates if the spider_venom is dead. */
    bool m_is_dead;

    /** \brief Indicates if the spider_venom is created by a spider. */
    bool m_is_main_venom;
  }; // class spider_venom
} // namespace ptb

#endif // __PTB_SPIDER_VENOM_HPP__
