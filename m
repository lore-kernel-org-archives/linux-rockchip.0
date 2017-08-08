From: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 0/3] drm: make drm_connector_funcs structures const
Date: Tue,  8 Aug 2017 16:58:29 +0530
Message-ID: <1502191712-11231-1-git-send-email-bhumirks@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: julia.lawall@lip6.fr, architt@codeaurora.org, a.hajda@samsung.com, Laurent.pinchart@ideasonboard.com, airlied@linux.ie, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, mark.yao@rock-chips.com, heiko@sntech.de, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, maxime.ripard@free-electrons.com, wens@csie.org
Cc: Bhumika Goyal <bhumirks@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

Declare drm_connector_funcs structures as const.

Bhumika Goyal (3):
  drm/bridge: make drm_connector_funcs structures const
  drm/sun4i: make drm_connector_funcs structures const
  drm/rockchip: make drm_connector_funcs structures const

 drivers/gpu/drm/bridge/adv7511/adv7511_drv.c | 2 +-
 drivers/gpu/drm/rockchip/inno_hdmi.c         | 2 +-
 drivers/gpu/drm/sun4i/sun4i_rgb.c            | 2 +-
 drivers/gpu/drm/sun4i/sun4i_tv.c             | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

-- 
1.9.1
