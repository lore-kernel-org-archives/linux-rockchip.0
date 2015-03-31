From: Caesar Wang <wxt@rock-chips.com>
Subject: [PATCH 0/1] drm: rockchip: Turn off VT switching on suspend
Date: Tue, 31 Mar 2015 18:22:49 +0800
Message-ID: <1427797370-32441-1-git-send-email-wxt@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: David Airlie <airlied@linux.ie>, Heiko Stuebner <heiko@sntech.de>, Daniel Kurtz <djkurtz@chromium.org>, Mark Yao <mark.yao@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Caesar Wang <wxt@rock-chips.com>, Rob Clark <robdclark@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
List-Id: linux-rockchip.vger.kernel.org

drm/rockchip already has support for disabling all displays on suspend
and enabling them on resume.

Disable automatic VT switching on suspend by the pm console tracking
layer.

Tested on veyron, used `echo mem > sys/power/state`
  => verified no VT switch.



Caesar Wang (1):
  drm: rockchip: Turn off VT switching on suspend

 drivers/gpu/drm/rockchip/rockchip_drm_fbdev.c | 3 +++
 1 file changed, 3 insertions(+)

-- 
1.9.1
