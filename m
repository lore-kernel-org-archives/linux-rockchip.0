From: David Wu <david.wu@rock-chips.com>
Subject: [PATCH v2 0/2] Add pinctrl input schmitt support
Date: Thu,  2 Mar 2017 15:11:22 +0800
Message-ID: <1488438684-1801-1-git-send-email-david.wu@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-gpio-owner@vger.kernel.org>
Sender: linux-gpio-owner@vger.kernel.org
To: heiko@sntech.de, linus.walleij@linaro.org
Cc: huangtao@rock-chips.com, linux-rockchip@lists.infradead.org, linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, David Wu <david.wu@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Some pins need to enable Schmitt triggers which are used
in open loop configurations for noise immunity and closed
loop configurations to implement function generators.

david.wu (2):
  pinctrl: rockchip：Add input schmitt support
  pinctrl: rockchip: Add input schmitt support for rk3328

 drivers/pinctrl/pinctrl-rockchip.c | 96 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 96 insertions(+)

-- 
1.9.1


