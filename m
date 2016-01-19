From: =?UTF-8?q?Pawe=C5=82=20Jarosz?= <paweljarosz3691@gmail.com>
Subject: [PATCH 0/3] Add rk3066 tsadc device tree bindings
Date: Tue, 19 Jan 2016 13:09:18 +0100
Message-ID: <1453205361-27267-1-git-send-email-paweljarosz3691@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-clk-owner@vger.kernel.org>
Sender: linux-clk-owner@vger.kernel.org
To: heiko@sntech.de, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org, sboyd@codeaurora.org, mturquette@baylibre.com
Cc: =?UTF-8?q?Pawe=C5=82=20Jarosz?= <paweljarosz3691@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

This patchset adds devicetree bindings for rockchip rk3066 tsadc with n=
eeded dependencies.

Pawe=C5=82 Jarosz (3):
  clk: rockchip: Add new id for rk3066 tsadc clock
  clk: rockchip: add tsadc clock on rk3066
  ARM: dts: rockchip: add tsadc node

 arch/arm/boot/dts/rk3066a.dtsi                | 11 +++++++++++
 drivers/clk/rockchip/clk-rk3188.c             |  2 +-
 include/dt-bindings/clock/rk3188-cru-common.h |  1 +
 3 files changed, 13 insertions(+), 1 deletion(-)

--=20
1.9.1

