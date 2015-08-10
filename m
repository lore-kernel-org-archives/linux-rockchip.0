From: Shunqian Zheng <zhengsq-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH 0/3] Add eFuse driver of Rockchip SoC
Date: Mon, 10 Aug 2015 11:22:40 +0800
Message-ID: <1439176963-8969-1-git-send-email-zhengsq@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: srinivas.kandagatla-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org, maxime.ripard-wi1+55ScJUtKEb57/3fJTNBPR1lH4CV8@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, caesar.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, xjq-TNX95d0MmH7DzftRWevZcw@public.gmane.org, ZhengShunQian <zhengsq-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

From: ZhengShunQian <zhengsq-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

Base on nvmem framework, this three patches
implement the eFuse driver of Rockchip SoC.
The data from eFuse contains CPU leakage, chip code and version etc.

The flow of reading data from eFuse is quite simple,
config the CTRL register, write data address to CTRL
register, then data is available in DOUT register.

Although always enable eFuse clock seems awkward,
I can't find a better method to enable clock before
read/write in the nvmem framework.
Appreciate for any suggestions.


ZhengShunQian (3):
  nvmem: fix the out-of-range leak in read/write()
  nvmem: rockchip-efuse: implement eFuse driver
  clk: rockchip: do not gate the efuse256 clock

 .../devicetree/bindings/nvmem/rockchip-efuse.txt   |  36 +++++
 arch/arm/boot/dts/rk3288.dtsi                      |  13 ++
 drivers/clk/rockchip/clk-rk3288.c                  |   2 +-
 drivers/nvmem/Kconfig                              |  10 ++
 drivers/nvmem/Makefile                             |   2 +
 drivers/nvmem/core.c                               |   4 +-
 drivers/nvmem/rockchip-efuse.c                     | 155 +++++++++++++++++++++
 include/dt-bindings/clock/rk3288-cru.h             |   1 +
 8 files changed, 220 insertions(+), 3 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/nvmem/rockchip-efuse.txt
 create mode 100644 drivers/nvmem/rockchip-efuse.c

-- 
1.9.1
