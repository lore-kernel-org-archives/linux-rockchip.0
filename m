From: Elaine Zhang <zhangqing@rock-chips.com>
Subject: [PATCH v1 0/2] rockchip: power-domain: support qos save and restore
Date: Fri, 18 Mar 2016 15:17:22 +0800
Message-ID: <1458285444-31129-1-git-send-email-zhangqing@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de, khilman@baylibre.com, xf@rock-chips.com, wxt@rock-chips.com
Cc: linux-arm-kernel@lists.infradead.org, huangtao@rock-chips.com, zyw@rock-chips.com, xxx@rock-chips.com, jay.xu@rock-chips.com, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Elaine Zhang <zhangqing@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

add qos document in dt-bingings.
modify power domain driver to support qos save and restore.

Elaine Zhang (2):
  dt-bindings: modify document of Rockchip power domains
  rockchip: power-domain: support qos save and restore

 .../bindings/soc/rockchip/power_domain.txt         |  8 ++
 drivers/soc/rockchip/pm_domains.c                  | 87 +++++++++++++++++++++-
 2 files changed, 92 insertions(+), 3 deletions(-)

-- 
1.9.1
