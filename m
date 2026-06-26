Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8038ECDE013
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jun 2026 12:08:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m1SdriKK58yxUNENVJvfSfW3FV3hBMyVmlqnJV5hjNI=; b=JBOx2shN8GXLzc
	MxxODSaxjsVcrICXluNtpdMKRYprG+V662k267SaBuNv0TOk7B9FMgVactXrjkZLVoJxiQJjUTN92
	Qg4WK16OlGaIKb93Bp2uxv9oDBMfnar8iikeSHbTrw9TTVIOEoX/ir5qtUiGgwUF2sxOXJ8PATbi5
	/Js2lzm7itKAItFyvHI8CmW762OmQPCj+TyIVgR4+fShLMkojnzAwgBzGtJUx/XkabT4xmvdvigcA
	anvAHevrTv4ICqbWwNviT1v+4C3UZRFXMTgfDNs/ZcBIL7a94+i7M87KU0avWbjQidyGfaVdBk5Sl
	6DUpmctugu5AKjGKkkUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd5MC-0000000BHdo-1eDk;
	Fri, 26 Jun 2026 12:08:28 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd5Lw-0000000BHNr-1ZiO;
	Fri, 26 Jun 2026 12:08:13 +0000
Received: from ping.linuxembedded.co.uk (cpc89244-aztw30-2-0-cust6594.18-1.cable.virginm.net [86.31.185.195])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id B0EFA1D0A;
	Fri, 26 Jun 2026 14:07:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1782475650;
	bh=1/oUhVk74PsiN3MZzcdIYvqyHY+Gnerhson6lRR0lpk=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=GHWKZshpDcFnXFUHNVMtu/UJLiytezMts/EH87Rqx3kQJqmogwz1sdI8oQ0ms2fsV
	 RUTiUZ15R/OQm8y29EwifB0WRr8G+KrRSirOP0DqcqDkoCPmR8j9p5bxVfrLszRDIM
	 JsO78O9kqBlayrEpObQjwws28vWrevT9lYQZ19uQ=
From: Kieran Bingham <kieran.bingham@ideasonboard.com>
Date: Fri, 26 Jun 2026 13:07:59 +0100
Subject: [PATCH v2 7/8] arm64: dts: renesas: Convert to new media
 orientation definitions
MIME-Version: 1.0
Message-Id: <20260626-kbingham-orientation-v2-7-47178be927b4@ideasonboard.com>
References: <20260626-kbingham-orientation-v2-0-47178be927b4@ideasonboard.com>
In-Reply-To: <20260626-kbingham-orientation-v2-0-47178be927b4@ideasonboard.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jacopo Mondi <jacopo@jmondi.org>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, Jimmy Su <jimmy.su@intel.com>, 
 Matthias Fend <matthias.fend@emfend.at>, 
 Mikhail Rudenko <mike.rudenko@gmail.com>, 
 Daniel Scally <dan.scally@ideasonboard.com>, 
 Jacopo Mondi <jacopo.mondi@ideasonboard.com>, 
 Michael Riesch <michael.riesch@collabora.com>, 
 Benjamin Mugnier <benjamin.mugnier@foss.st.com>, 
 Sylvain Petinot <sylvain.petinot@foss.st.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Paul Elder <paul.elder@ideasonboard.com>, 
 Martin Kepplinger <martin.kepplinger@puri.sm>, 
 Quentin Schulz <quentin.schulz@theobroma-systems.com>, 
 Tommaso Merciai <tomm.merciai@gmail.com>, 
 Svyatoslav Ryhel <clamor95@gmail.com>, 
 Richard Acayan <mailingradian@gmail.com>, 
 Thierry Reding <thierry.reding@kernel.org>, 
 Jonathan Hunter <jonathanh@nvidia.com>, Frank Li <Frank.Li@nxp.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, 
 linux@ew.tq-group.com, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782475679; l=3758;
 i=kieran.bingham@ideasonboard.com; s=20260207; h=from:subject:message-id;
 bh=2rSGjcZ6Wtxs4n28tXYT3YrV2tMO4y4R6/uKEOMLHZ4=;
 b=M2sPkEEhGzwwR4wOZOH8hrGe0NikpT9cwMXZiqcMlIOrSlHLxC4reijwMKw37IEDOBpvZsUpj
 acEeh+ARrdaA+Uybdsid9t9l0atzeRv08JnGdrORhBtZhgmJbqe7Gsa
X-Developer-Key: i=kieran.bingham@ideasonboard.com; a=ed25519;
 pk=FVXKN7YuwHc6UtbRUeTMAmranfsQomA+vnilfglWdaY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_050812_574564_3408C69A 
X-CRM114-Status: GOOD (  10.11  )
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

From: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>

The orientation property for video interface devices now has definitions
to prevent hardcoded integer values for the enum options.

Update the users throughout the renesas device trees to use the new
definitions.

Signed-off-by: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
---
 .../arm64/boot/dts/renesas/r8a779g3-sparrow-hawk-camera-j1-imx219.dtso | 3 ++-
 .../arm64/boot/dts/renesas/r8a779g3-sparrow-hawk-camera-j1-imx462.dtso | 3 ++-
 .../arm64/boot/dts/renesas/r8a779g3-sparrow-hawk-camera-j2-imx219.dtso | 3 ++-
 .../arm64/boot/dts/renesas/r8a779g3-sparrow-hawk-camera-j2-imx462.dtso | 3 ++-
 4 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r8a779g3-sparrow-hawk-camera-j1-imx219.dtso b/arch/arm64/boot/dts/renesas/r8a779g3-sparrow-hawk-camera-j1-imx219.dtso
index 3acaf714cf24..b816382bba0a 100644
--- a/arch/arm64/boot/dts/renesas/r8a779g3-sparrow-hawk-camera-j1-imx219.dtso
+++ b/arch/arm64/boot/dts/renesas/r8a779g3-sparrow-hawk-camera-j1-imx219.dtso
@@ -12,6 +12,7 @@
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/media/video-interfaces.h>
+#include <dt-bindings/media/video-interface-devices.h>
 
 &{/} {
 	clk_cam_j1: clk-cam-j1 {
@@ -44,7 +45,7 @@ cam@10 {
 		VDIG-supply = <&reg_cam_j1>;
 		VDDL-supply = <&reg_cam_j1>;
 
-		orientation = <2>;
+		orientation = <MEDIA_ORIENTATION_EXTERNAL>;
 		rotation = <0>;
 
 		port {
diff --git a/arch/arm64/boot/dts/renesas/r8a779g3-sparrow-hawk-camera-j1-imx462.dtso b/arch/arm64/boot/dts/renesas/r8a779g3-sparrow-hawk-camera-j1-imx462.dtso
index a19bc0840392..4019b80a88b7 100644
--- a/arch/arm64/boot/dts/renesas/r8a779g3-sparrow-hawk-camera-j1-imx462.dtso
+++ b/arch/arm64/boot/dts/renesas/r8a779g3-sparrow-hawk-camera-j1-imx462.dtso
@@ -12,6 +12,7 @@
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/media/video-interfaces.h>
+#include <dt-bindings/media/video-interface-devices.h>
 
 &{/} {
 	clk_cam_j1: clk-cam-j1 {
@@ -46,7 +47,7 @@ cam@1a {
 		vdda-supply = <&reg_cam_j1>;
 		vddd-supply = <&reg_cam_j1>;
 
-		orientation = <2>;
+		orientation = <MEDIA_ORIENTATION_EXTERNAL>;
 		rotation = <0>;
 
 		port {
diff --git a/arch/arm64/boot/dts/renesas/r8a779g3-sparrow-hawk-camera-j2-imx219.dtso b/arch/arm64/boot/dts/renesas/r8a779g3-sparrow-hawk-camera-j2-imx219.dtso
index 512810b861aa..fea1ef4a1178 100644
--- a/arch/arm64/boot/dts/renesas/r8a779g3-sparrow-hawk-camera-j2-imx219.dtso
+++ b/arch/arm64/boot/dts/renesas/r8a779g3-sparrow-hawk-camera-j2-imx219.dtso
@@ -12,6 +12,7 @@
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/media/video-interfaces.h>
+#include <dt-bindings/media/video-interface-devices.h>
 
 &{/} {
 	clk_cam_j2: clk-cam-j2 {
@@ -44,7 +45,7 @@ cam@10 {
 		VDIG-supply = <&reg_cam_j2>;
 		VDDL-supply = <&reg_cam_j2>;
 
-		orientation = <2>;
+		orientation = <MEDIA_ORIENTATION_EXTERNAL>;
 		rotation = <0>;
 
 		port {
diff --git a/arch/arm64/boot/dts/renesas/r8a779g3-sparrow-hawk-camera-j2-imx462.dtso b/arch/arm64/boot/dts/renesas/r8a779g3-sparrow-hawk-camera-j2-imx462.dtso
index a31524b59834..177201a8a6d2 100644
--- a/arch/arm64/boot/dts/renesas/r8a779g3-sparrow-hawk-camera-j2-imx462.dtso
+++ b/arch/arm64/boot/dts/renesas/r8a779g3-sparrow-hawk-camera-j2-imx462.dtso
@@ -12,6 +12,7 @@
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/media/video-interfaces.h>
+#include <dt-bindings/media/video-interface-devices.h>
 
 &{/} {
 	clk_cam_j2: clk-cam-j2 {
@@ -46,7 +47,7 @@ cam@1a {
 		vdda-supply = <&reg_cam_j2>;
 		vddd-supply = <&reg_cam_j2>;
 
-		orientation = <2>;
+		orientation = <MEDIA_ORIENTATION_EXTERNAL>;
 		rotation = <0>;
 
 		port {

-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
