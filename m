From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v3 45/57] rockchip: rk3399: syscon: Add pmu support
Date: Tue, 16 Jul 2019 17:27:33 +0530
Message-ID: <20190716115745.12585-46-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190716115745.12585-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, YouMin Chen <cym-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, gajjar04akash-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Manivannan Sadhasivam <manivannan.sadhasivam-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Add pmu compatible with relevant U_BOOT_DRIVER for rk3399
via syscon rk3399 driver.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Signed-off-by: YouMin Chen <cym-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 arch/arm/mach-rockchip/rk3399/syscon_rk3399.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/mach-rockchip/rk3399/syscon_rk3399.c b/arch/arm/mach-rockchip/rk3399/syscon_rk3399.c
index a8bb5b11e5..259ca44d68 100644
--- a/arch/arm/mach-rockchip/rk3399/syscon_rk3399.c
+++ b/arch/arm/mach-rockchip/rk3399/syscon_rk3399.c
@@ -13,6 +13,7 @@ static const struct udevice_id rk3399_syscon_ids[] = {
 	{ .compatible = "rockchip,rk3399-pmugrf", .data = ROCKCHIP_SYSCON_PMUGRF },
 	{ .compatible = "rockchip,rk3399-pmusgrf", .data = ROCKCHIP_SYSCON_PMUSGRF },
 	{ .compatible = "rockchip,rk3399-cic", .data = ROCKCHIP_SYSCON_CIC },
+	{ .compatible = "rockchip,rk3399-pmu", .data = ROCKCHIP_SYSCON_PMU },
 	{ }
 };
 
@@ -58,4 +59,11 @@ U_BOOT_DRIVER(rockchip_rk3399_cic) = {
 	.of_match = rk3399_syscon_ids + 3,
 	.bind = rk3399_syscon_bind_of_platdata,
 };
+
+U_BOOT_DRIVER(rockchip_rk3399_pmu) = {
+	.name = "rockchip_rk3399_pmu",
+	.id = UCLASS_SYSCON,
+	.of_match = rk3399_syscon_ids + 4,
+	.bind = rk3399_syscon_bind_of_platdata,
+};
 #endif
-- 
2.18.0.321.gffc6fa0e3
