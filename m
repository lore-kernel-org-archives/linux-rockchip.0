Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BC0BC27C4F
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Jun 2024 03:49:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LSsyyRb0kpugLvadFG491UcWalrJ0N/L/aLC7kl8i4Y=; b=22DrNsbY1k0q/q
	9tnjMW3wd5cKY6opGB60DhNK9IsOi0w4MskrwgPy4fC2NcjbPqH1WcmdqZvXPA6VNxsikWEXSOQpy
	Cl8PTr7JcZnx9z9zZ2x08N8xDPIAgpEg770Gi4vUkotlin7n7UIACT5+P/CdHPCtM6F4+mtf2yzaw
	mu4ggITkumMKHmWn67jEaNqTG1Dra1ALYZAHQNFfR5haQO0g8IDFc2/YbPGlSbJ22F2tsnFdGquym
	5m6NDUo4AqK1gPioO5eS8syfkDJXEVUKJPJSylCV4c/vVDY4K2ICfazPgUldEcYMOVyWy8mbv2YFe
	qyjWb5qWmFBbMkcqoQzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNlZQ-0000000HKw5-3gGr;
	Sun, 30 Jun 2024 03:49:44 +0000
Received: from phobos.denx.de ([85.214.62.61])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNlZ9-0000000HKsb-3Irz;
	Sun, 30 Jun 2024 03:49:30 +0000
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 9D71288607;
	Sun, 30 Jun 2024 05:49:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1719719366;
	bh=sox0OS7FZioC4+n0SLeead3ox1zf2+QKbhfJa7552f4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Eo13JKLiGyOpSyQyQ1MOOJ6o0/0IkOjPkda0K+UkDs9VYJTljazHOV/dBKm0yP4jt
	 gEOG3VAV/iUuWjo98110uona1VmljF4dlyf2pFD3uGJx/PiDlXB+PooSl+Z8Kl3z8j
	 +tfStL6WJDIdixhSVTtOeiOFs6WDFsEjlWZ0JlVeVZprpW9ZutS2Sd40S5QX6ESrIQ
	 xCsCy1dcmRFbAIifBrD4JPs61Vz17km6X8xiVCDdFoDA2L9/rLSmpG/hP/m5qS51+V
	 Ib4+VhtW1t8E7CrJ/6cu+aKLAneqgvcCLatvYKSVfYVIB5uBnfhvYhqyLcK4fLsuBm
	 +wzUAEgUAB2UQ==
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Cc: andrew@lunn.ch,
	kernel@dh-electronics.com,
	Marek Vasut <marex@denx.de>,
	kernel test robot <lkp@intel.com>,
	Alexey Charkov <alchark@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Yashin <dmt.yashin@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Sam Edwards <cfsworks@gmail.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 2/2] arm64: dts: rockchip: Drop ethernet-phy-ieee802.3-c22 from PHY compatible string on all RK3588 boards
Date: Sun, 30 Jun 2024 05:48:42 +0200
Message-ID: <20240630034910.173552-2-marex@denx.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240630034910.173552-1-marex@denx.de>
References: <20240630034910.173552-1-marex@denx.de>
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240629_204928_132528_8EE696E1 
X-CRM114-Status: GOOD (  11.64  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The rtl82xx DT bindings do not require ethernet-phy-ieee802.3-c22
as the fallback compatible string. There are fewer users of the
Realtek PHY compatible string with fallback compatible string than
there are users without fallback compatible string, so drop the
fallback compatible string from the few remaining users:

$ git grep -ho ethernet-phy-id001c....... | sort | uniq -c
      1 ethernet-phy-id001c.c816",
      2 ethernet-phy-id001c.c915",
      2 ethernet-phy-id001c.c915";
      5 ethernet-phy-id001c.c916",
     13 ethernet-phy-id001c.c916";

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202406290316.YvZdvLxu-lkp@intel.com/
Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Alexey Charkov <alchark@gmail.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Dmitry Yashin <dmt.yashin@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Rob Herring <robh@kernel.org>
Cc: Sam Edwards <cfsworks@gmail.com>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org
---
Note: this closes only part of the report
---
 arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts    | 6 ++----
 arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi | 3 +--
 2 files changed, 3 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts b/arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts
index 230e630820b47..c2a08bdf09e83 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts
@@ -261,8 +261,7 @@ &i2s0_sdi0
 &mdio0 {
 	rgmii_phy0: ethernet-phy@1 {
 		/* RTL8211F */
-		compatible = "ethernet-phy-id001c.c916",
-			     "ethernet-phy-ieee802.3-c22";
+		compatible = "ethernet-phy-id001c.c916";
 		reg = <0x1>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&rtl8211f_0_rst>;
@@ -275,8 +274,7 @@ rgmii_phy0: ethernet-phy@1 {
 &mdio1 {
 	rgmii_phy1: ethernet-phy@2 {
 		/* RTL8211F */
-		compatible = "ethernet-phy-id001c.c916",
-			     "ethernet-phy-ieee802.3-c22";
+		compatible = "ethernet-phy-id001c.c916";
 		reg = <0x2>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&rtl8211f_1_rst>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
index 77bcf0f6b028a..dbaa94ca69f47 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
@@ -198,8 +198,7 @@ hym8563: rtc@51 {
 &mdio1 {
 	rgmii_phy: ethernet-phy@1 {
 		/* RTL8211F */
-		compatible = "ethernet-phy-id001c.c916",
-			     "ethernet-phy-ieee802.3-c22";
+		compatible = "ethernet-phy-id001c.c916";
 		reg = <0x1>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&rtl8211f_rst>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
