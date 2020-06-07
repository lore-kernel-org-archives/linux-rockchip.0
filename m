From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 0/2] drm: rockchip: add NV15 and NV20 support
Date: Sun, 07 Jun 2020 20:25:25 +0000 (UTC)
Message-ID: <20200607202521.18438-1-jonas@kwiboo.se>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Sandy Huang <hjc@rock-chips.com>, Heiko =?iso-8859-1?q?St=FCbner?= <heiko@sntech.de>
Cc: Jonas Karlman <jonas@kwiboo.se>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Ben Davis <ben.davis@arm.com>, Brian Starkey <brian.starkey@arm.com>, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

This series adds support for displaying 10-bit 4:2:0 and 4:2:2 formats produced
by the Rockchip Video Decoder on RK322X, RK3288, RK3328, RK3368 and RK3399.

First patch adds a new fourcc 10-bit YUV format with 4:2:2 sub-sampling.
Second patch adds support for using the the two new fourcc formats.
Both depend on "drm: drm_fourcc: add NV15, Q410, Q401 YUV formats" at [1].

This series can also be found at [2], and can be tested on RK3399 using an
upcoming rkvdec series at [3] together with ffmpeg at [4] and kodi-gbm or mpv.

[1] https://patchwork.freedesktop.org/series/76326/
[2] https://github.com/Kwiboo/linux-rockchip/commits/next-20200605-fmt_10
[3] https://github.com/Kwiboo/linux-rockchip/commits/next-20200605-rkvdec
[4] https://github.com/Kwiboo/FFmpeg/commits/v4l2-request-hwaccel-4.2.2-rkvdec

Regards,
Jonas

Jonas Karlman (2):
  drm: drm_fourcc: add NV20 YUV format
  drm: rockchip: add NV15 and NV20 support

 drivers/gpu/drm/drm_fourcc.c                |  4 +++
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 27 ++++++++++++++++--
 drivers/gpu/drm/rockchip/rockchip_drm_vop.h |  1 +
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 31 +++++++++++++++++----
 include/uapi/drm/drm_fourcc.h               |  1 +
 5 files changed, 56 insertions(+), 8 deletions(-)

-- 
2.17.1
