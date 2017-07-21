From: David Wu <david.wu@rock-chips.com>
Subject: [PATCH 0/2] Add RK3128 pinctrl support
Date: Fri, 21 Jul 2017 14:27:13 +0800
Message-ID: <1500618435-15092-1-git-send-email-david.wu@rock-chips.com>
Return-path: <linux-gpio-owner@vger.kernel.org>
Sender: linux-gpio-owner@vger.kernel.org
To: heiko@sntech.de, linus.walleij@linaro.org
Cc: huangtao@rock-chips.com, dianders@chromium.org, linux-rockchip@lists.infradead.org, linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, David Wu <david.wu@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

The RK3128 pinctrl is similar as the RK2928.

David Wu (2):
  pinctrl: rockchip: Use common interface for recalced iomux
  pinctrl: rockchip: Add rk3128 pinctrl support

 .../bindings/pinctrl/rockchip,pinctrl.txt          |   1 +
 drivers/pinctrl/pinctrl-rockchip.c                 | 218 +++++++++++++++++----
 2 files changed, 180 insertions(+), 39 deletions(-)

-- 
1.9.1


