From: Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH 0/2] pinctrl: rockchip: codingstyle for pinctrl-rockchip
Date: Fri, 17 Jan 2020 16:13:56 +0800
Message-ID: <20200117081358.5772-1-jay.xu@rock-chips.com>
References: <c4ec95a7-aaf1-2331-352f-2def319a1c7d@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <c4ec95a7-aaf1-2331-352f-2def319a1c7d@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: linus.walleij@linaro.org, heiko@sntech.de, david.wu@rock-chips.com, kever.yang@rock-chips.com
Cc: linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org, jay.xu@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Do codingstyle for pinctrl-rockchip by spliting driver by SoC types.

Convenienty for reviewing, the first patch only moving
pinctrl-rockchip.c from driver/pinctrl to driver/pinctrl/rockchip/ .

Jianqun Xu (2):
  pinctrl: rockchip: new rockchip dir for pinctrl-rockchip
  pinctrl: rockchip: split rockchip pinctrl driver by SoC type

 drivers/pinctrl/Kconfig                     |    7 -
 drivers/pinctrl/pinctrl-rockchip.c          | 4254 -------------------
 drivers/pinctrl/rockchip/Kconfig            |  126 +
 drivers/pinctrl/rockchip/Makefile           |   16 +
 drivers/pinctrl/rockchip/pinctrl-px30.c     |  224 +
 drivers/pinctrl/rockchip/pinctrl-rk2928.c   |   70 +
 drivers/pinctrl/rockchip/pinctrl-rk3036.c   |   69 +
 drivers/pinctrl/rockchip/pinctrl-rk3066a.c  |   72 +
 drivers/pinctrl/rockchip/pinctrl-rk3066b.c  |   51 +
 drivers/pinctrl/rockchip/pinctrl-rk3128.c   |  161 +
 drivers/pinctrl/rockchip/pinctrl-rk3188.c   |  147 +
 drivers/pinctrl/rockchip/pinctrl-rk3228.c   |  225 +
 drivers/pinctrl/rockchip/pinctrl-rk3288.c   |  210 +
 drivers/pinctrl/rockchip/pinctrl-rk3308.c   |  420 ++
 drivers/pinctrl/rockchip/pinctrl-rk3328.c   |  272 ++
 drivers/pinctrl/rockchip/pinctrl-rk3368.c   |  125 +
 drivers/pinctrl/rockchip/pinctrl-rk3399.c   |  195 +
 drivers/pinctrl/rockchip/pinctrl-rockchip.c | 2063 +++++++++
 drivers/pinctrl/rockchip/pinctrl-rockchip.h |  388 ++
 drivers/pinctrl/rockchip/pinctrl-rv1108.c   |  214 +
 20 files changed, 5048 insertions(+), 4261 deletions(-)
 delete mode 100644 drivers/pinctrl/pinctrl-rockchip.c
 create mode 100644 drivers/pinctrl/rockchip/Kconfig
 create mode 100644 drivers/pinctrl/rockchip/Makefile
 create mode 100644 drivers/pinctrl/rockchip/pinctrl-px30.c
 create mode 100644 drivers/pinctrl/rockchip/pinctrl-rk2928.c
 create mode 100644 drivers/pinctrl/rockchip/pinctrl-rk3036.c
 create mode 100644 drivers/pinctrl/rockchip/pinctrl-rk3066a.c
 create mode 100644 drivers/pinctrl/rockchip/pinctrl-rk3066b.c
 create mode 100644 drivers/pinctrl/rockchip/pinctrl-rk3128.c
 create mode 100644 drivers/pinctrl/rockchip/pinctrl-rk3188.c
 create mode 100644 drivers/pinctrl/rockchip/pinctrl-rk3228.c
 create mode 100644 drivers/pinctrl/rockchip/pinctrl-rk3288.c
 create mode 100644 drivers/pinctrl/rockchip/pinctrl-rk3308.c
 create mode 100644 drivers/pinctrl/rockchip/pinctrl-rk3328.c
 create mode 100644 drivers/pinctrl/rockchip/pinctrl-rk3368.c
 create mode 100644 drivers/pinctrl/rockchip/pinctrl-rk3399.c
 create mode 100644 drivers/pinctrl/rockchip/pinctrl-rockchip.c
 create mode 100644 drivers/pinctrl/rockchip/pinctrl-rockchip.h
 create mode 100644 drivers/pinctrl/rockchip/pinctrl-rv1108.c

-- 
2.17.1
