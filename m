From: andi.shyti-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
Subject: [PATCH v2 0/2] use the CLK_IS_CRITICAL flag for critical clocks
Date: Wed, 29 Jun 2016 17:45:08 +0300
Message-ID: <1467211510-3485-1-git-send-email-andi@etezian.org>
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
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Xing Zheng <zhengxing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Michael Turquette <mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>, Stephen Boyd <sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Andi Shyti <andi-ahk0KpmfxKRAfugRpC6u6w@public.gmane.org>, linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

From: Andi Shyti <andi-ahk0KpmfxKRAfugRpC6u6w@public.gmane.org>

Hi,

this patchset is the first of a series and it aims to remove
the handling of critical clock on the rockchip clock drivers.

Patch 32b9b10961860860268961d9aad0c56a73018c37 has added a
generic clock critical handling that can be used from the
drivers.

After a discussion with Heiko, the clock rockchip would need a
hand-off functionality, but this is getting delayed. Anyway,
because I have the patches ready I'll send them anyway, if the
hand-off property is going to come soon, then please feel free to
reject the patchset.

Thanks,
Andi

Andi Shyti (2):
  clk: clk-rk3*: set CLK_IS_CRITICAL flag to critical clocks
  clk: rockchip: remove unused rockchip_clk_protect_critical function

 drivers/clk/rockchip/clk-rk3036.c | 17 ++-------
 drivers/clk/rockchip/clk-rk3188.c | 25 +++---------
 drivers/clk/rockchip/clk-rk3228.c | 17 ++-------
 drivers/clk/rockchip/clk-rk3288.c | 17 ++-------
 drivers/clk/rockchip/clk-rk3368.c | 21 ++--------
 drivers/clk/rockchip/clk-rk3399.c | 80 +++++++++++----------------------------
 drivers/clk/rockchip/clk.c        | 14 -------
 drivers/clk/rockchip/clk.h        |  1 -
 8 files changed, 44 insertions(+), 148 deletions(-)

-- 
2.8.1
