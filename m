From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v4 01/13] rockchip: dts: rk3399: Sync rk3399-opp from Linux
Date: Fri, 26 Apr 2019 21:19:48 +0530
Message-ID: <20190426154956.29567-2-jagan@amarulasolutions.com>
References: <20190426154956.29567-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190426154956.29567-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Akash Gajjar <akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org>, Tom Rini <trini-OWPKS81ov/FWk0Htik3J/w@public.gmane.org>, Manivannan Sadhasivam <manivannan.sadhasivam-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
Cc: Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Sync rk3399-opp.dtsi from Linux.

Linux commit details about the rk3399-opp.dtsi sync:
"arm64: dts: rockchip: use SPDX-License-Identifier"
(sha1: 4ee99cebd486238ac433da823b95cc5f8d8a6905)

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Reviewed-by: Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
---
 arch/arm/dts/rk3399-opp.dtsi | 133 +++++++++++++++++++++++++++++++++++
 1 file changed, 133 insertions(+)
 create mode 100644 arch/arm/dts/rk3399-opp.dtsi

diff --git a/arch/arm/dts/rk3399-opp.dtsi b/arch/arm/dts/rk3399-opp.dtsi
new file mode 100644
index 0000000000..d6f1095abb
--- /dev/null
+++ b/arch/arm/dts/rk3399-opp.dtsi
@@ -0,0 +1,133 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2016-2017 Fuzhou Rockchip Electronics Co., Ltd
+ */
+
+/ {
+	cluster0_opp: opp-table0 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp00 {
+			opp-hz = /bits/ 64 <408000000>;
+			opp-microvolt = <800000>;
+			clock-latency-ns = <40000>;
+		};
+		opp01 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-microvolt = <800000>;
+		};
+		opp02 {
+			opp-hz = /bits/ 64 <816000000>;
+			opp-microvolt = <850000>;
+		};
+		opp03 {
+			opp-hz = /bits/ 64 <1008000000>;
+			opp-microvolt = <925000>;
+		};
+		opp04 {
+			opp-hz = /bits/ 64 <1200000000>;
+			opp-microvolt = <1000000>;
+		};
+		opp05 {
+			opp-hz = /bits/ 64 <1416000000>;
+			opp-microvolt = <1125000>;
+		};
+	};
+
+	cluster1_opp: opp-table1 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp00 {
+			opp-hz = /bits/ 64 <408000000>;
+			opp-microvolt = <800000>;
+			clock-latency-ns = <40000>;
+		};
+		opp01 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-microvolt = <800000>;
+		};
+		opp02 {
+			opp-hz = /bits/ 64 <816000000>;
+			opp-microvolt = <825000>;
+		};
+		opp03 {
+			opp-hz = /bits/ 64 <1008000000>;
+			opp-microvolt = <875000>;
+		};
+		opp04 {
+			opp-hz = /bits/ 64 <1200000000>;
+			opp-microvolt = <950000>;
+		};
+		opp05 {
+			opp-hz = /bits/ 64 <1416000000>;
+			opp-microvolt = <1025000>;
+		};
+		opp06 {
+			opp-hz = /bits/ 64 <1608000000>;
+			opp-microvolt = <1100000>;
+		};
+		opp07 {
+			opp-hz = /bits/ 64 <1800000000>;
+			opp-microvolt = <1200000>;
+		};
+	};
+
+	gpu_opp_table: opp-table2 {
+		compatible = "operating-points-v2";
+
+		opp00 {
+			opp-hz = /bits/ 64 <200000000>;
+			opp-microvolt = <800000>;
+		};
+		opp01 {
+			opp-hz = /bits/ 64 <297000000>;
+			opp-microvolt = <800000>;
+		};
+		opp02 {
+			opp-hz = /bits/ 64 <400000000>;
+			opp-microvolt = <825000>;
+		};
+		opp03 {
+			opp-hz = /bits/ 64 <500000000>;
+			opp-microvolt = <875000>;
+		};
+		opp04 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-microvolt = <925000>;
+		};
+		opp05 {
+			opp-hz = /bits/ 64 <800000000>;
+			opp-microvolt = <1100000>;
+		};
+	};
+};
+
+&cpu_l0 {
+	operating-points-v2 = <&cluster0_opp>;
+};
+
+&cpu_l1 {
+	operating-points-v2 = <&cluster0_opp>;
+};
+
+&cpu_l2 {
+	operating-points-v2 = <&cluster0_opp>;
+};
+
+&cpu_l3 {
+	operating-points-v2 = <&cluster0_opp>;
+};
+
+&cpu_b0 {
+	operating-points-v2 = <&cluster1_opp>;
+};
+
+&cpu_b1 {
+	operating-points-v2 = <&cluster1_opp>;
+};
+
+&gpu {
+	operating-points-v2 = <&gpu_opp_table>;
+};
-- 
2.18.0.321.gffc6fa0e3
