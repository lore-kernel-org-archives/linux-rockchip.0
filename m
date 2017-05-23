From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [PATCH 2/2] arm64: dts: rockchip: introduce rk3399-op1 operating
 points
Date: Tue, 23 May 2017 11:51:09 +0200
Message-ID: <20170523095109.7337-2-heiko@sntech.de>
References: <20170523095109.7337-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20170523095109.7337-1-heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: eddie.cai.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

The OP1 is a rk3399 variant used in ChromeOS devices with a slightly
higher frequency rating. Therefore introduce separate operting points,
from the ChromeOS tree, for it and use it in Gru devices.

Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi     |   2 +-
 arch/arm64/boot/dts/rockchip/rk3399-op1-opp.dtsi | 145 +++++++++++++++++++++++
 2 files changed, 146 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-op1-opp.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
index 0d960b7f7625..eb5059344023 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
@@ -44,7 +44,7 @@
 
 #include <dt-bindings/input/input.h>
 #include "rk3399.dtsi"
-#include "rk3399-opp.dtsi"
+#include "rk3399-op1-opp.dtsi"
 
 / {
 	chosen {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-op1-opp.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-op1-opp.dtsi
new file mode 100644
index 000000000000..be7fe635f7c1
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3399-op1-opp.dtsi
@@ -0,0 +1,145 @@
+/*
+ * Copyright (c) 2016-2017 Fuzhou Rockchip Electronics Co., Ltd
+ *
+ * This file is dual-licensed: you can use it either under the terms
+ * of the GPL or the X11 license, at your option. Note that this dual
+ * licensing only applies to this file, and not this project as a
+ * whole.
+ *
+ *  a) This library is free software; you can redistribute it and/or
+ *     modify it under the terms of the GNU General Public License as
+ *     published by the Free Software Foundation; either version 2 of the
+ *     License, or (at your option) any later version.
+ *
+ *     This library is distributed in the hope that it will be useful,
+ *     but WITHOUT ANY WARRANTY; without even the implied warranty of
+ *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ *     GNU General Public License for more details.
+ *
+ * Or, alternatively,
+ *
+ *  b) Permission is hereby granted, free of charge, to any person
+ *     obtaining a copy of this software and associated documentation
+ *     files (the "Software"), to deal in the Software without
+ *     restriction, including without limitation the rights to use,
+ *     copy, modify, merge, publish, distribute, sublicense, and/or
+ *     sell copies of the Software, and to permit persons to whom the
+ *     Software is furnished to do so, subject to the following
+ *     conditions:
+ *
+ *     The above copyright notice and this permission notice shall be
+ *     included in all copies or substantial portions of the Software.
+ *
+ *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
+ *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
+ *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
+ *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
+ *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
+ *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
+ *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
+ *     OTHER DEALINGS IN THE SOFTWARE.
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
+			opp-microvolt = <825000>;
+		};
+		opp02 {
+			opp-hz = /bits/ 64 <816000000>;
+			opp-microvolt = <850000>;
+		};
+		opp03 {
+			opp-hz = /bits/ 64 <1008000000>;
+			opp-microvolt = <900000>;
+		};
+		opp04 {
+			opp-hz = /bits/ 64 <1200000000>;
+			opp-microvolt = <975000>;
+		};
+		opp05 {
+			opp-hz = /bits/ 64 <1416000000>;
+			opp-microvolt = <1100000>;
+		};
+		opp06 {
+			opp-hz = /bits/ 64 <1512000000>;
+			opp-microvolt = <1150000>;
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
+			opp-microvolt = <850000>;
+		};
+		opp04 {
+			opp-hz = /bits/ 64 <1200000000>;
+			opp-microvolt = <900000>;
+		};
+		opp05 {
+			opp-hz = /bits/ 64 <1416000000>;
+			opp-microvolt = <975000>;
+		};
+		opp06 {
+			opp-hz = /bits/ 64 <1608000000>;
+			opp-microvolt = <1050000>;
+		};
+		opp07 {
+			opp-hz = /bits/ 64 <1800000000>;
+			opp-microvolt = <1150000>;
+		};
+		opp08 {
+			opp-hz = /bits/ 64 <2016000000>;
+			opp-microvolt = <1250000>;
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
-- 
2.11.0
