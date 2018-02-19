From: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH 1/2] arm64: dts: rockchip: move rk3399-sapphire i2s2 to
 daughterboard
Date: Tue, 20 Feb 2018 00:11:01 +0100
Message-ID: <20180219231102.9090-1-vicencb@gmail.com>
References: <3840224.sEPfbROKII@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <3840224.sEPfbROKII@phil>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

The i2s2 drives the HDMI audio, which has the connector on the daughterboard.

Signed-off-by: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
---
Hi Heiko,

I have tested your patches on stable Linux 4.15.4 and worked fine.
There are only two missing bits: the power-button and the HDMI audio.
With this two extra patches, I have been able to test the power button
and it worked fine.
The HDMI audio was not working before nor after, but, the TRM says that
i2s2 is the audio source for the HDMI port.

Regards, Vicente.

 arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts | 5 -----
 arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi          | 5 +++++
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts b/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
index b7bd88fb3ae3..6027846ffd3e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
@@ -207,11 +207,6 @@
 	status = "okay";
 };
 
-&i2s2 {
-	#sound-dai-cells = <0>;
-	status = "okay";
-};
-
 &pinctrl {
 	buttons {
 		pwr_btn: pwr-btn {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
index 0f873c897d0d..21b05601f04a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
@@ -440,6 +440,11 @@
 	status = "okay";
 };
 
+&i2s2 {
+	#sound-dai-cells = <0>;
+	status = "okay";
+};
+
 &io_domains {
 	status = "okay";
 
-- 
2.16.2
