From: Hans Verkuil <hverkuil@xs4all.nl>
Subject: [PATCH 0/4] arm: dts: rockchip: enable HDMI+CEC on Firefly Reload
Date: Fri, 20 Oct 2017 12:07:30 +0200
Message-ID: <20171020100734.17064-1-hverkuil@xs4all.nl>
Return-path: <linux-media-owner@vger.kernel.org>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>
List-Id: linux-rockchip.vger.kernel.org

From: Hans Verkuil <hans.verkuil@cisco.com>

This patch series sits on top of these two patch series:

https://lkml.org/lkml/2017/10/13/971
https://lkml.org/lkml/2017/10/14/161

The first adds support for the cec clk in dw-hdmi, the second adds an
iomux-route for the CEC pin on the rk3288.

This patch series defines the cec clk for the rk3288, enables the
first HDMI output on the Firefly Reload. The second output isn't working,
I don't have enough knowledge to enable it. But I can test any patches
adding support for it!

The third patch defines the two possible CEC pins and the last selects
the correct pin for the Firefly Reload.

Likely the same thing can be done for the 'regular' Firefly, but I don't
have the hardware to test.

Regards,

	Hans


Hans Verkuil (4):
  arm: dts: rockchip: add the cec clk for dw-hdmi on rk3288
  arm: dts: rockchip: enable the first hdmi output
  arm: dts: rockchip: define the two possible CEC pins
  arm: dts: rockchip: select which CEC pin is used for the Firefly
    Reload

 arch/arm/boot/dts/rk3288-firefly-reload-core.dtsi |  2 ++
 arch/arm/boot/dts/rk3288-firefly-reload.dts       | 11 +++++++++++
 arch/arm/boot/dts/rk3288.dtsi                     | 12 ++++++++++--
 3 files changed, 23 insertions(+), 2 deletions(-)

-- 
2.14.1
