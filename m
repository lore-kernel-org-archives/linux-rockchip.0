From: Shunqian Zheng <zhengsq-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH v1 4/5] Documentation: rockchip-efuse: describe the usage of
 eFuse
Date: Tue, 11 Aug 2015 14:15:05 +0800
Message-ID: <1439273706-28274-5-git-send-email-zhengsq@rock-chips.com>
References: <1439273706-28274-1-git-send-email-zhengsq@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1439273706-28274-1-git-send-email-zhengsq-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, srinivas.kandagatla-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org, maxime.ripard-wi1+55ScJUtKEb57/3fJTNBPR1lH4CV8@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, caesar.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, xjq-TNX95d0MmH7DzftRWevZcw@public.gmane.org, ZhengShunQian <zhengsq-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

From: ZhengShunQian <zhengsq-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

This patch add the bindings document of rockchip eFuse driver.

Signed-off-by: ZhengShunQian <zhengsq-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 .../devicetree/bindings/nvmem/rockchip-efuse.txt   | 38 ++++++++++++++++++++++
 1 file changed, 38 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/nvmem/rockchip-efuse.txt

diff --git a/Documentation/devicetree/bindings/nvmem/rockchip-efuse.txt b/Documentation/devicetree/bindings/nvmem/rockchip-efuse.txt
new file mode 100644
index 0000000..8f86ab3
--- /dev/null
+++ b/Documentation/devicetree/bindings/nvmem/rockchip-efuse.txt
@@ -0,0 +1,38 @@
+= Rockchip eFuse device tree bindings =
+
+Required properties:
+- compatible: Should be "rockchip,rockchip-efuse"
+- reg: Should contain the registers location and exact eFuse size
+- clocks: Should be the clock id of eFuse
+- clock-names: Should be "pclk_efuse"
+
+= Data cells =
+Are child nodes of eFuse, bindings of which as described in
+bindings/nvmem/nvmem.txt
+
+Example:
+
+	efuse: efuse@ffb40000 {
+		compatible = "rockchip,rockchip-efuse";
+		reg = <0xffb40000 0x20>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		clocks = <&cru PCLK_EFUSE256>;
+		clock-names = "pclk_efuse";
+
+		/* Data cells */
+		cpu_leakage: cpu_leakage {
+			reg = <0x17 0x1>;
+		};
+	};
+
+= Data consumers =
+Are device nodes which consume nvmem data cells.
+
+Example:
+
+	cpu_leakage {
+		...
+		nvmem-cells = <&cpu_leakage>;
+		nvmem-cell-names = "cpu_leakage";
+	};
-- 
1.9.1
