Return-Path: <SRS0=5kjD=PE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2B663C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Oct 2021 10:22:25 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EBCBD60F36
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Oct 2021 10:22:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org EBCBD60F36
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FVIvkQqKHfJLq5egqHIx3jcg98mRHfxVvHFj3zteDvQ=; b=TxlDvv8yYmizlJ
	C3B5sDoq4DP+jPhw7eQaklOaCI5OtZEQ7IJWVAb++ruE0botCMYmVyArm0345gbCkBHIupY/mRupV
	5P5pEbeDB4ywUO3eAViQP1sFaGVbSr29tgtOwYw01vqCOquKaoOQJSlLFXXyXbtjWDn/y4oOw7ojF
	FbhwiSBikpWJK8qytBHFNLGcRtDR6VNIQSHVU+VZtrOnBI5grplvPSexR4hRgOVWNch9HWHATbtzO
	ZDQ0AE/aATePP+32RzVb74mniRyhvwauH6QtO5xGi1YifhKJeaYpYCK/Ah/sCNKHXbiRSOeXmDry1
	v1aGBjtR0TCP/WH9lH/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbgpZ-00AKDd-5s; Sat, 16 Oct 2021 10:22:21 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbgnw-00AJ7J-1z; Sat, 16 Oct 2021 10:20:42 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aferraris) with ESMTPSA id CE78F1F44DC5
From: Arnaud Ferraris <arnaud.ferraris@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-sunxi@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, Martin Kepplinger <martink@posteo.de>,
 Heiko Stuebner <heiko@sntech.de>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andy Gross <agross@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Lucas Stach <dev@lynxeye.de>, Angus Ainslie <angus@akkea.ca>,
 Guido Gunther <agx@sigxcpu.org>, Tomasz Figa <tfiga@chromium.org>,
 Johan Jonker <jbx6244@gmail.com>, Eddie Cai <eddie.cai.linux@gmail.com>,
 Shunqian Zheng <zhengsq@rock-chips.com>,
 Brian Norris <briannorris@chromium.org>, Dan Johansen <strit@manjaro.org>,
 Simon South <simon@simonsouth.net>, Matthias Brugger <mbrugger@suse.com>,
 Arnaud Ferraris <arnaud.ferraris@collabora.com>
Subject: [PATCH 4/4] arm64: dts: rockchip: add 'chassis-type' property
Date: Sat, 16 Oct 2021 12:20:25 +0200
Message-Id: <20211016102025.23346-5-arnaud.ferraris@collabora.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211016102025.23346-1-arnaud.ferraris@collabora.com>
References: <20211016102025.23346-1-arnaud.ferraris@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211016_032040_257469_72070161 
X-CRM114-Status: GOOD (  10.88  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

A new 'chassis-type' root node property has recently been approved for
the device-tree specification, in order to provide a simple way for
userspace to detect the device form factor and adjust their behavior
accordingly.

This patch fills in this property for end-user devices (such as laptops,
smartphones and tablets) based on Rockchip ARM64 processors.

Signed-off-by: Arnaud Ferraris <arnaud.ferraris@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-gru-bob.dts      | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dts    | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 1 +
 4 files changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-bob.dts b/arch/arm64/boot/dts/rockchip/rk3399-gru-bob.dts
index e6c1c94c8d69..31ebb4e5fd33 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-bob.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-bob.dts
@@ -16,6 +16,7 @@ / {
 		     "google,bob-rev7", "google,bob-rev6",
 		     "google,bob-rev5", "google,bob-rev4",
 		     "google,bob", "google,gru", "rockchip,rk3399";
+	chassis-type = "convertible";
 
 	edp_panel: edp-panel {
 		compatible = "boe,nv101wxmn51";
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dts b/arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dts
index 2bbef9fcbe27..6863689df06f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dts
@@ -24,6 +24,7 @@ / {
 		     "google,kevin-rev9", "google,kevin-rev8",
 		     "google,kevin-rev7", "google,kevin-rev6",
 		     "google,kevin", "google,gru", "rockchip,rk3399";
+	chassis-type = "convertible";
 
 	/* Power tree */
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
index 61afb5f0f15b..355c61fb7b42 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
@@ -8,6 +8,7 @@
 #include "rk3399-gru.dtsi"
 
 /{
+	chassis-type = "tablet";
 	/* Power tree */
 
 	/* ppvar_sys children, sorted by name */
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index dae8c252bc2b..c2f021a1a18f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -17,6 +17,7 @@
 / {
 	model = "Pine64 Pinebook Pro";
 	compatible = "pine64,pinebook-pro", "rockchip,rk3399";
+	chassis-type = "laptop";
 
 	aliases {
 		mmc0 = &sdio0;
-- 
2.33.0

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
