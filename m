From: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH v2 5/5] rockchip: dts: rk3229: remove dram channel info
Date: Thu, 17 Aug 2017 15:17:37 +0800
Message-ID: <1502954257-7256-6-git-send-email-kever.yang@rock-chips.com>
References: <1502954257-7256-1-git-send-email-kever.yang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1502954257-7256-1-git-send-email-kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: Albert Aribaud <albert.u.boot-LhW3hqR2+23R7s880joybQ@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Meng Dongyang <daniel.meng-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

The dram channel info will be auto detect by the driver,
we do not need it.

Signed-off-by: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Acked-by: Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
Reviewed-by: Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
---

Changes in v2: None

 arch/arm/dts/rk3229-evb.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/dts/rk3229-evb.dts b/arch/arm/dts/rk3229-evb.dts
index 37137c2..fc405ef 100644
--- a/arch/arm/dts/rk3229-evb.dts
+++ b/arch/arm/dts/rk3229-evb.dts
@@ -40,7 +40,6 @@
 };
 
 &dmc {
-	rockchip,sdram-channel = /bits/ 8 <1 10 3 2 1 0 15 15>;
 	rockchip,pctl-timing = <0x96 0xC8 0x1F3 0xF 0x8000004D 0x4 0x4E 0x6 0x3
 		0x0 0x6 0x5 0xC 0x10 0x6 0x4 0x4
 		0x5 0x4 0x200 0x3 0xA 0x40 0x0 0x1
-- 
1.9.1
