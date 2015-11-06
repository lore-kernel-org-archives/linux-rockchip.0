From: Shunqian Zheng <zhengsq@rock-chips.com>
Subject: [PATCH v3 0/2] Audio Codec Driver of RK3036 SoC
Date: Fri,  6 Nov 2015 16:39:20 +0800
Message-ID: <1446799162-15635-1-git-send-email-zhengsq@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: robh+dt@kernel.org, pawel.moll@arm.com, mark.rutland@arm.com, ijc+devicetree@hellion.org.uk, galak@codeaurora.org, heiko@sntech.de, lgirdwood@gmail.com, broonie@kernel.org, perex@perex.cz, tiwai@suse.com, benzh@chromium.org, benchan@google.com, kmixter@google.com
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, ZhengShunQian <zhengsq@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

=46rom: ZhengShunQian <zhengsq@rock-chips.com>

This patches add the RK3036 SoC codec driver.

Rockchip RK3036 SoC integrated with an Inno audio codec. It supports
the following features:
o. 24bit DAC
o. Support 16=CE=A9 to 32=CE=A9 headphone output and speaker output
o. Support Mono, Stereo channel
o. Sampling rate of 8/12/16/24/32/44.1/48/96KHz

Changes of v3:
o. Fix the search/replace error in inno_rk3036.h
o. Change the compatible string in bindings Documentation
o. Make some changes from upstream's comments

Changes of v2:
o. Delete the machine driver in v1, it's better to use
   simple-card machine driver.
o. Use the dapm to manage power sequences and make some
   functions as user visible control.
o. Make some changes from upstream's comments.


ZhengShunQian (2):
  ASoC: codec: Inno codec driver for RK3036 SoC
  ASoC: RK3036: Add binding doc of inno-rk3036 codec driver

 .../devicetree/bindings/sound/inno-rk3036.txt      |  20 +
 sound/soc/codecs/Kconfig                           |   4 +
 sound/soc/codecs/Makefile                          |   2 +
 sound/soc/codecs/inno_rk3036.c                     | 438 +++++++++++++=
++++++++
 sound/soc/codecs/inno_rk3036.h                     | 120 ++++++
 5 files changed, 584 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/inno-rk3036=
=2Etxt
 create mode 100644 sound/soc/codecs/inno_rk3036.c
 create mode 100644 sound/soc/codecs/inno_rk3036.h

--=20
1.9.1
