From: Cheng-Yi Chiang <cychiang@chromium.org>
Subject: [PATCH v7 0/4] Add HDMI jack support on RK3288
Date: Thu, 19 Sep 2019 21:54:46 +0800
Message-ID: <20190919135450.62309-1-cychiang@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: linux-kernel@vger.kernel.org
Cc: alsa-devel@alsa-project.org, Heiko Stuebner <heiko@sntech.de>, Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org, Liam Girdwood <lgirdwood@gmail.com>, Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jerome Brunet <jbrunet@baylibre.com>, Takashi Iwai <tiwai@suse.com>, linux-rockchip@lists.infradead.org, dgreid@chromium.org, Cheng-Yi Chiang <cychiang@chromium.org>, tzungbi@chromium.org, Jonas Karlman <jonas@kwiboo.se>, Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>, dianders@chromium.org, Daniel Vetter <daniel@ffwll.ch>
List-Id: linux-rockchip.vger.kernel.org

This patch series supports HDMI jack reporting on RK3288, which uses
DRM dw-hdmi driver and hdmi-codec codec driver.

The previous discussion about reporting jack status using hdmi-notifier
and drm_audio_component is at

https://lore.kernel.org/patchwork/patch/1083027/

The new approach is to use a callback mechanism that is
specific to hdmi-codec.

The dependent change on hdmi-codec.c

https://patchwork.kernel.org/patch/11047447

has been picked up by Mark Brown in ASoC tree for-5.4 branch.

Changes from v6 to v7:

1. rockchip_max98090: Use phandle of HDMI from DTS to find
   codec_dai. With this we don't need to set fixed id for the
   created hdmi-audio-codec device.

Cheng-Yi Chiang (4):
  drm: bridge: dw-hdmi: Report connector status using callback
  ASoC: rockchip-max98090: Add description for rockchip,hdmi-codec
  ASoC: rockchip_max98090: Add dai_link for HDMI
  ASoC: rockchip_max98090: Add HDMI jack support

 .../bindings/sound/rockchip-max98090.txt      |   2 +
 .../boot/dts/rk3288-veyron-analog-audio.dtsi  |   1 +
 .../drm/bridge/synopsys/dw-hdmi-i2s-audio.c   |  11 ++
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c     |  41 ++++-
 include/drm/bridge/dw_hdmi.h                  |   4 +
 sound/soc/rockchip/Kconfig                    |   3 +-
 sound/soc/rockchip/rockchip_max98090.c        | 149 ++++++++++++++----
 7 files changed, 182 insertions(+), 29 deletions(-)

-- 
2.23.0.237.gc6a4ce50a0-goog
