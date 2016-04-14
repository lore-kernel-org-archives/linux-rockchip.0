From: Elaine Zhang <zhangqing@rock-chips.com>
Subject: [RESEND PATCH v2 0/2]  rockchip: power-domain: support qos save and restore
Date: Thu, 14 Apr 2016 14:20:18 +0800
Message-ID: <1460614820-18865-1-git-send-email-zhangqing@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de, khilman@baylibre.com, xf@rock-chips.com, wxt@rock-chips.com
Cc: linux-arm-kernel@lists.infradead.org, huangtao@rock-chips.com, zyw@rock-chips.com, xxx@rock-chips.com, jay.xu@rock-chips.com, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Elaine Zhang <zhangqing@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

add qos document in dt-bingings.
modify power domain driver to support qos save and restore.

Changes in v2:
[PATCH V2 1/2]: fix up the commit message.
[PATCH V2 2/2]: add some error handling.
		fix up the define and request space for qos_regmap and qos_save_regs. 

Elaine Zhang (2):
  dt-bindings: modify document of Rockchip power domains
  rockchip: power-domain: support qos save and restore

 .../bindings/soc/rockchip/power_domain.txt         |   8 ++
 drivers/soc/rockchip/pm_domains.c                  | 104 ++++++++++++++++++++-
 2 files changed, 109 insertions(+), 3 deletions(-)

-- 
1.9.1
