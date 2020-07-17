From: Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH RESEND 00/13] pinctrl: rockchip: prepare work for split driver
Date: Fri, 17 Jul 2020 11:23:58 +0800
Message-ID: <20200717032411.17654-1-jay.xu@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de, linus.walleij@linaro.org
Cc: linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kever.yang@rock-chips.com, david.wu@rock-chips.com, Jianqun Xu <jay.xu@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

This serial patchs include 12 codingstyle patches and 1 bug fix (enable
gpio pclk for rockchip_gpio_to_irq).

Also it's prepare for split driver work.

Jianqun Xu (13):
  pinctrl: rockchip: add nr_pins to rockchip_pin_ctrl
  pinctrl: rockchip: modify rockchip_pin_ctrl to const struct
  pinctrl: rockchip: make driver be tristate module
  pinctrl: rockchip: enable gpio pclk for rockchip_gpio_to_irq
  pinctrl: rockchip: create irq mapping in gpio_to_irq
  pinctrl: rockchip: Add RK3399 definitions to separate from other SoCs
  pinctrl: rockchip: Add RK3368 definitions to separate from other SoCs
  pinctrl: rockchip: Add RK3308 definitions to separate from other SoCs
  pinctrl: rockchip: Add RK3228 definitions to separate from other SoCs
  pinctrl: rockchip: Add RK3288 definitions to separate from other SoCs
  pinctrl: rockchip: Add RK3128 definitions to separate from other SoCs
  pinctrl: rockchip: define common codes without special chip name
  pinctrl: rockchip: do codingstyle by adding mux route definitions

 drivers/pinctrl/Kconfig            |   2 +-
 drivers/pinctrl/pinctrl-rockchip.c | 933 ++++++++---------------------
 2 files changed, 261 insertions(+), 674 deletions(-)

-- 
2.17.1
