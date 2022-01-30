Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63225C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Jan 2022 05:38:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=osAi4GGOynN39fyX3d0TLyuPf9QTF+Qri1SyhMkC9Dc=; b=NZ7XT8Eu0sgOSF
	RmplZDhpCCJMw7RoAQ3fogWtRf/SY/lFj3kNvNgi+VbxMo+dXlBLDzq/QoPzT8vCLXvsqmHRV6DQ2
	9JBX8qcMHwThT2ou1RPe0usSnKnvsoDfVl7lwuye8sA32/RGcMZ1zw88jmkC3T4kBlrRzAGUk6ukx
	jij8H6Wx/3/ArXr4w+xsWkcud6oZm7lsp17Lj/gz73Qkw2/uSPYX5IqYzaCzSFrg4SFL9oJ9ccNFq
	uKdOq/QfBHt158CtUdNsN8uChReCZemhrP4nEAT5zTAU/zaxfCPiqLl7rjM6ElLlGar8bOtIt0nQd
	XZ40NF+NrU55t3SY2Q2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nE2vK-005vly-Pj; Sun, 30 Jan 2022 05:38:50 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nE2un-005vfX-SM; Sun, 30 Jan 2022 05:38:20 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id E6F11580300;
 Sun, 30 Jan 2022 00:38:09 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Sun, 30 Jan 2022 00:38:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to; s=fm1; bh=VpTV5RkDfW1t8UkFiogIwxmcp2RPyw
 DB0L6j+1GUGP4=; b=mYfbObyd0FcNaH2wMi3AxreS2qu95YMJ4S8dL+Mz1oid+2
 DAxb5VPDe0TqAHuo+4s7xjJ+s2z3i6j/TX/AJiok2SQ8hRMBL5ADvb15wWNID/M2
 Y+NOW2C5W1Z7y6qLzac9d+PXz3zqkFShbkcLqLVxTDcKcfvTH1pgy0R4xlPoI7Wo
 7eOHXoKFVeU2jO9gU+jYfVJHfLreloU15nkZgbc5UHTJthxfa3V44hRD7tNG55ad
 6EF7Vn/3N3RxGGTfQMnWiuQ+sCzd1xoXW7FLlrEKlkkB8OTSVeDMggxcj1Hqjxf8
 8dndsiid1ZNdzHCXPJDGIVqkU4zMPA21pTx+iEgQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=VpTV5R
 kDfW1t8UkFiogIwxmcp2RPywDB0L6j+1GUGP4=; b=QlDy/33a0hBOuD+49NoCaa
 DFpz/OYXgXgJ0rgM+doDgAWJBgWKcCDQRmCqPxxJljL5T/S364mNgLBNk9OVh1DS
 AvYEg5ig5z3dj8WhsbGTHfcmt9VDd1TJUXNfCn73/akvSuzD9tkPHY1Yz8bPIKgp
 gf1XWuvwOcICrfuhYmXPP6oT+7ZtPQa5tcUkYgNExwHGLlI/baUPG8IBjIBzT6Wh
 EW7yMhCAo6Z/pKni0WZSyGXNIqvmBLLcgMWPNvGzNm56wNO+xiaKlyKMKZeot4JE
 ielZYYgNFscfaNiusXBRBGtyIMeLsCxshw65nOaGtZXCaledL//UfasnFzjh9oTw
 ==
X-ME-Sender: <xms:QST2YcXgUYE_SI7NCS92xqmgVcNtMVd1N0Rl9pRqScnyHSwAWe9u7A>
 <xme:QST2YQnOX_PhEYo-Nji0O2BKvj-NK58BKT3-NOo6w2faSSvkkx_OXQcmLAyx40X3i
 Sn-7TIH8Y6pCqK_HQ>
X-ME-Received: <xmr:QST2YQYok2h4MoyPS5L0ITM6BGwPYA5IUg3LPlu3Y5n8CSw6-Jb7FlcyIX_PQXMJo9PkZ2SxU3qNQHrN0r1_6Ez_Joge5Iox1FzZOO9c9Pq6zbGf7Qt15d7qiIsYyn0QURo1dQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrfeekgdeiiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecuggftrf
 grthhtvghrnhepudfhjeefvdfhgfefheetgffhieeigfefhefgvddvveefgeejheejvdfg
 jeehueeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
 epshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:QST2YbXaCBsklsNUQV9bSgJSfAOrrp39iB9nZDRL9vOBa4pNZTeG5w>
 <xmx:QST2YWmBY0i3sKQHhGdwNP7HmhQJg1oc2DUyCZYfV2wuga1FQ1jXbw>
 <xmx:QST2YQcMVRQRbClzQ6rWo7bVskT-kE1Oa6F8u67z6I0x66o8BSZnhw>
 <xmx:QST2Yck7Vz6SpA3c0t_C4Vh0kcRS_rpyrPCdkIt4_LMLrbQkXy1xAA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 30 Jan 2022 00:38:08 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Samuel Holland <samuel@sholland.org>, Alex Bee <knaerzche@gmail.com>,
 Chen-Yu Tsai <wenst@chromium.org>, Levin Du <djw@t-chip.com.cn>,
 Liang Chen <cl@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Tianling Shen <cnsztl@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Subject: [PATCH 2/3] arm64: dts: rockchip: rk356x: Add pdm node
Date: Sat, 29 Jan 2022 23:38:02 -0600
Message-Id: <20220130053803.43660-2-samuel@sholland.org>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20220130053803.43660-1-samuel@sholland.org>
References: <20220130053803.43660-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220129_213818_013832_2A38893F 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
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

rk356x contains a PDM microphone controller which is compatible with the
existing rockchip,pdm binding. Add its node.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---

 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index a68033a23975..f2f3cdeab0aa 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -651,6 +651,27 @@ &i2s1m0_sdo0   &i2s1m0_sdo1
 		status = "disabled";
 	};
 
+	pdm: pdm@fe440000 {
+		compatible = "rockchip,rk3568-pdm";
+		reg = <0x0 0xfe440000 0x0 0x1000>;
+		interrupts = <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru MCLK_PDM>, <&cru HCLK_PDM>;
+		clock-names = "pdm_clk", "pdm_hclk";
+		dmas = <&dmac1 9>;
+		dma-names = "rx";
+		resets = <&cru SRST_M_PDM>;
+		reset-names = "pdm-m";
+		pinctrl-0 = <&pdmm0_clk
+			     &pdmm0_clk1
+			     &pdmm0_sdi0
+			     &pdmm0_sdi1
+			     &pdmm0_sdi2
+			     &pdmm0_sdi3>;
+		pinctrl-names = "default";
+		#sound-dai-cells = <0>;
+		status = "disabled";
+	};
+
 	dmac0: dmac@fe530000 {
 		compatible = "arm,pl330", "arm,primecell";
 		reg = <0x0 0xfe530000 0x0 0x4000>;
-- 
2.33.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
