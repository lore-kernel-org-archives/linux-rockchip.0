From: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH v2 2/2] doc: dtbinding: add pwm binding file
Date: Tue, 11 Apr 2017 16:35:38 +0800
Message-ID: <1491899738-10087-2-git-send-email-kever.yang@rock-chips.com>
References: <1491899738-10087-1-git-send-email-kever.yang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1491899738-10087-1-git-send-email-kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
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
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

This is a copy from kernel.

Signed-off-by: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---

Changes in v2: None

 doc/device-tree-bindings/pwm/pwm.txt | 69 ++++++++++++++++++++++++++++++++++++
 1 file changed, 69 insertions(+)
 create mode 100644 doc/device-tree-bindings/pwm/pwm.txt

diff --git a/doc/device-tree-bindings/pwm/pwm.txt b/doc/device-tree-bindings/pwm/pwm.txt
new file mode 100644
index 0000000..8556263
--- /dev/null
+++ b/doc/device-tree-bindings/pwm/pwm.txt
@@ -0,0 +1,69 @@
+Specifying PWM information for devices
+======================================
+
+1) PWM user nodes
+-----------------
+
+PWM users should specify a list of PWM devices that they want to use
+with a property containing a 'pwm-list':
+
+	pwm-list ::= <single-pwm> [pwm-list]
+	single-pwm ::= <pwm-phandle> <pwm-specifier>
+	pwm-phandle : phandle to PWM controller node
+	pwm-specifier : array of #pwm-cells specifying the given PWM
+			(controller specific)
+
+PWM properties should be named "pwms". The exact meaning of each pwms
+property must be documented in the device tree binding for each device.
+An optional property "pwm-names" may contain a list of strings to label
+each of the PWM devices listed in the "pwms" property. If no "pwm-names"
+property is given, the name of the user node will be used as fallback.
+
+Drivers for devices that use more than a single PWM device can use the
+"pwm-names" property to map the name of the PWM device requested by the
+pwm_get() call to an index into the list given by the "pwms" property.
+
+The following example could be used to describe a PWM-based backlight
+device:
+
+	pwm: pwm {
+		#pwm-cells = <2>;
+	};
+
+	[...]
+
+	bl: backlight {
+		pwms = <&pwm 0 5000000>;
+		pwm-names = "backlight";
+	};
+
+Note that in the example above, specifying the "pwm-names" is redundant
+because the name "backlight" would be used as fallback anyway.
+
+pwm-specifier typically encodes the chip-relative PWM number and the PWM
+period in nanoseconds.
+
+Optionally, the pwm-specifier can encode a number of flags (defined in
+<dt-bindings/pwm/pwm.h>) in a third cell:
+- PWM_POLARITY_INVERTED: invert the PWM signal polarity
+
+Example with optional PWM specifier for inverse polarity
+
+	bl: backlight {
+		pwms = <&pwm 0 5000000 PWM_POLARITY_INVERTED>;
+		pwm-names = "backlight";
+	};
+
+2) PWM controller nodes
+-----------------------
+
+PWM controller nodes must specify the number of cells used for the
+specifier using the '#pwm-cells' property.
+
+An example PWM controller might look like this:
+
+	pwm: pwm@7000a000 {
+		compatible = "nvidia,tegra20-pwm";
+		reg = <0x7000a000 0x100>;
+		#pwm-cells = <2>;
+	};
-- 
1.9.1
