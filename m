From: Elaine Zhang <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH v2 0/6] rockchip: power-domain: fix pm domain for support
 RK3399 SoC
Date: Thu, 18 Feb 2016 11:07:12 +0800
Message-ID: <1455764838-12928-1-git-send-email-zhangqing@rock-chips.com>
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
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, xxx-TNX95d0MmH7DzftRWevZcw@public.gmane.org, Elaine Zhang <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org, jay.xu-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

fix some idle handling
support sub-power domain
add rk3399-power.h
modify power domain for RK3399 SoC
modify document for RK3399 Soc

Elaine Zhang (6):
  rockchip: power-domain: make idle handling optional
  rockchip: power-domain: allow domains only handling idle requests
  rockchip: power-domain: add support for sub-power domains
  dt/bindings: power: add RK3399 SoCs header for power-domain
  rockchip: power-domain: Modify power domain driver for rk3399
  dt/bindings: rockchip: modify document of Rockchip power domains

 .../bindings/soc/rockchip/power_domain.txt         |  21 ++++
 drivers/soc/rockchip/pm_domains.c                  | 131 ++++++++++++++++++++-
 include/dt-bindings/power/rk3399-power.h           |  53 +++++++++
 3 files changed, 200 insertions(+), 5 deletions(-)
 create mode 100644 include/dt-bindings/power/rk3399-power.h

-- 
1.9.1
