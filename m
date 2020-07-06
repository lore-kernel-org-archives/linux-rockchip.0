From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 0/2] drm: rockchip: add NV15, NV20 and NV30 support
Date: Mon, 06 Jul 2020 22:30:12 +0000 (UTC)
Message-ID: <20200706223009.1200-1-jonas@kwiboo.se>
References: <20200607202521.18438-1-jonas@kwiboo.se>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200607202521.18438-1-jonas@kwiboo.se>
Sender: linux-kernel-owner@vger.kernel.org
To: Sandy Huang <hjc@rock-chips.com>, Heiko =?iso-8859-1?q?St=FCbner?= <heiko@sntech.de>
Cc: Jonas Karlman <jonas@kwiboo.se>, Ben Davis <ben.davis@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

This series adds support for displaying 10-bit 4:2:0 and 4:2:2 formats produced
by the Rockchip Video Decoder on RK322X, RK3288, RK3328, RK3368 and RK3399.
Also include 10-bit 4:4:4 support since VOP can support that also.

First patch adds new fourcc 10-bit YUV formats with 4:2:2/4:4:4 sub-sampling.
Second patch adds support for displaying the the new fourcc formats.

Changes in v2:
- Add NV30 format
- R-B tags was not collected due to NV30 changes

This series has been tested on RK3399 using a Rockchip Video Decoder series
at [1] together with ffmpeg at [2] and kodi-gbm or mpv. [3] contains all
patches needed on top of linux-media master for easy testing.

[1] https://patchwork.linuxtv.org/project/linux-media/list/?series=2859
[2] https://github.com/Kwiboo/FFmpeg/commits/v4l2-request-hwaccel-4.3-rkvdec-high-10
[3] https://github.com/Kwiboo/linux-rockchip/commits/linuxtv-rkvdec-high-10-v2

Regards,
Jonas

Jonas Karlman (2):
  drm: drm_fourcc: add NV20 and NV30 YUV formats
  drm: rockchip: add NV15, NV20 and NV30 support

 drivers/gpu/drm/drm_fourcc.c                |  8 ++++++
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 29 +++++++++++++++++--
 drivers/gpu/drm/rockchip/rockchip_drm_vop.h |  1 +
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 32 +++++++++++++++++----
 include/uapi/drm/drm_fourcc.h               |  2 ++
 5 files changed, 64 insertions(+), 8 deletions(-)

-- 
2.17.1
