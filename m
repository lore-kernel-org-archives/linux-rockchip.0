From: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: enable hdmi on rk3399-puma-haikou
Date: Wed, 2 May 2018 21:12:05 +0200
Message-ID: <CAAMcf8CBH+fmw3-+x15G=7R0EFCwN9o_vEjt8K-n5EYuRnfb4A@mail.gmail.com>
References: <20180424142459.3339-1-jakob.unterwurzacher@theobroma-systems.com>
 <20180430185107.3197-1-vicencb@gmail.com>
 <d32fa12f-ceb8-a869-2450-0df5cb4086ff@theobroma-systems.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <d32fa12f-ceb8-a869-2450-0df5cb4086ff-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Jakob Unterwurzacher <jakob.unterwurzacher-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Klaus Goger <klaus.goger-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Wed, May 2, 2018 at 4:19 PM, Jakob Unterwurzacher
<jakob.unterwurzacher-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org> wrote:
> On 30.04.18 20:51, Vicente Bergas wrote:
>>
>> Does HDMI audio work on rk3399-puma-haikou?
>
>
> Hi Vicente, works on v4.4 vendor kernel, but does not seem to work on
> mainline.
>
> Best regards,
> Jakob

just for reference, this is what I tested:
 1.- enable CONFIG_SND_SIMPLE_CARD in the kernel configuration
 2.- patch rk3399-sapphire.dtsi with
--- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
@@ -119,6 +119,19 @@
         };
     };

+    sapphire-sound {
+        compatible = "simple-audio-card";
+        simple-audio-card,name = "rockchip,sapphire-codec";
+        simple-audio-card,format = "i2s";
+        simple-audio-card,mclk-fs = <256>;
+        simple-audio-card,cpu {
+            sound-dai = <&i2s2>;
+        };
+        simple-audio-card,codec {
+            sound-dai = <&hdmi>;
+        };
+    };
+
     /* switched by pmic_sleep */
     vcc1v8_s3: vcca1v8_s3: vcc1v8-s3 {
         compatible = "regulator-fixed";
@@ -223,6 +246,7 @@
 };

 &hdmi {
+    #sound-dai-cells = <0>;
     ddc-i2c-bus = <&i2c3>;
     status = "okay";
 };

But I am always getting:
ALSA device list:
  No soundcards found.

Regards,
  Vicente.
