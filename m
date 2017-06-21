From: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH v2 0/2] drm: constify drm_encoder_helper_funcs structures
Date: Wed, 21 Jun 2017 12:01:08 +0530
Message-ID: <1498026670-10671-1-git-send-email-bhumirks@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: julia.lawall@lip6.fr, maxime.ripard@free-electrons.com, airlied@linux.ie, wens@csie.org, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, mark.yao@rock-chips.com, heiko@sntech.de, linux-rockchip@lists.infradead.org
Cc: Bhumika Goyal <bhumirks@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

Add const to drm_encoder_helper_funcs structures.

Changes in v2 -
* Let the line exceed over 80 characters while adding const
in analogix_dp-rockchip.c file.

Bhumika Goyal (2):
  drm/rockchip: add const to drm_encoder_helper_funcs structures
  drm/sun4i: add const to drm_encoder_helper_funcs structures

 drivers/gpu/drm/rockchip/analogix_dp-rockchip.c | 2 +-
 drivers/gpu/drm/rockchip/inno_hdmi.c            | 2 +-
 drivers/gpu/drm/sun4i/sun4i_rgb.c               | 2 +-
 drivers/gpu/drm/sun4i/sun4i_tv.c                | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

-- 
2.7.4
