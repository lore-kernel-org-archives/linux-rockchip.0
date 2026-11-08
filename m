Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B25E6606A320
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Nov 2026 07:03:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=zGzuhabI;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gahingwoo.com header.i=@gahingwoo.com header.a=rsa-sha256 header.s=fm1 header.b=Xt7md/BU;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=tAZAip87
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=vs79cxdYFZaUUQI/gV76HAE0gsNtX9af3IzoxxIWBo8=; b=zGzuhabIjTcgWF1Eat2A6+XjFg
	vEJLKowpq47ce51prQcUes9PQbgbnELDfC3NUIB562yju6iUOAJ2D99tHQ+Mr0Jn+5AqRhNBCe2Nj
	65LhSPCAy1tkpcteH2H4zTHVxDIEpo/wa2rzlrx8lKoo2AyqJBNYFj5Mxgbh/DZ/JizpC9c51ZCUA
	QDGEFjjy1SpLVy5KAfFiXq6Z6GLz/45ud+RcrhgPxtN95mMJ1VFY1+s9gvri1ixokDPGJHTWYrtJz
	6TtCSZEIPDtynGIgQP5rFAkp+fTpQlusqRtptmzUxu6eR7OLNoq65o9cTWIuXs5kPuDa47vKINc3z
	X+KUi4lA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPwwS-0000000FlTV-3fwo;
	Sun, 08 Nov 2026 07:03:52 +0000
Received: from fhigh-b3-smtp.messagingengine.com ([202.12.124.154])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPwwP-0000000FlRo-1XR7
	for linux-rockchip@lists.infradead.org;
	Sun, 08 Nov 2026 07:03:52 +0000
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
	by mailfhigh.stl.internal (Postfix) with ESMTP id B78047A00B9
	for <linux-rockchip@lists.infradead.org>; Sun,  8 Nov 2026 02:03:48 -0500 (EST)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-02.internal (MEProxy); Sun, 08 Nov 2026 02:03:48 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gahingwoo.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm1; t=1794121424; x=
	1794207824; bh=qX2RKKhWFDWOPzJHyBa4sJ+ncRjkBMqVE/PWIC6LFUE=; b=X
	t7md/BUwmTquJcbPtxOJ0JE3PmpmebDH8w9Hcc6D24IRBBVVBZ+sW38ok9mOlWg4
	tDMzlSg47uRZN0dDBLv5/ptMVcR8bAsW97vMyfFS+xD7rCCtqYAiNWXMpfpvd7k5
	6jH/W4zDchtCH2IMoTp/bhXBt8/vqBEFQg9JAL8fR5ROsgAkY3dhHDgpHzuKYif5
	zx4jjH9ydioKTGG9NlU4aKKjxlKEBs5SWFm8zh4q0R7okVk/M2bNXIB+/E9C/DdD
	Je0dPUW1D023uYxHO1Cko2uAP3TIHmQwqqzr8eLebHhmF6YOKTyEGAnrGAThE6pL
	wDSqasFNEyOOXW28XE1EA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1794121424; x=1794207824; bh=q
	X2RKKhWFDWOPzJHyBa4sJ+ncRjkBMqVE/PWIC6LFUE=; b=tAZAip87+EDpme+GY
	KTn+YzhmbBWnDvEZQZLcGqBUT12tzVepMnOKDWE2aUAuZDaU7Na5mhYWgVnq5jCe
	nejTiU4bh1t1DpM3TYfpgwwKJOOYqRd6bLs5dHfjCvrJJAz2MugJ/HZqM6OZ5Gfj
	AioN9kkXExlJzDSZiS9o+/XRC4eze/xQDQikbdgviFCTmZYf1cMOrnUcuSYDMVDh
	0cpVgp3HH2s+XfgzSVKryeaFaaRnDqw/w2NkWCj1jErxfIlUnLXZjIfu6FEi+1YF
	B2EgJSzTOu17EoYOSBMvIA7wur880PqhO45ySxil0dCQE3Kxx7+09mvmTTrkcqMm
	hyKhQ==
X-DKIM2-Info: draft=ietf-dkim-dkim2-spec-09;
	repo=github.com/dkim2wg/interop; date=2026-11-03; sw=lmtpprox;
	action=sign d=gahingwoo.com a=rsa-sha256;
DKIM2-Signature: i=1; m=1; t=1794121424; d=gahingwoo.com;
	mf=PGdhaGluZ0BnYWhpbmd3b28uY29tPg==;
	rt=PGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmc+;
	s=fm1:rsa-sha256:O/moRjP5O4Y+EjAFQfd48gqrwx8LjtctXS/BETy/a92wQxB
	c7kzdJUz1rj4gpApa819T/XBwlrQkP77ZNIBCzVUCIzmpeW/OvVyUIxpY/fymn2G
	ktOQhtZpXO2Kyor3X/LFwdDrdA+SYrjZz+84mN43t4Tg/QZzI9ahNXdMjArYV3Yn
	sN581zU0R6pqdZvzT5zNaJJ2LPmN7MDhGIkKLxEkV96yOtRUae/TaeZaoNn9q+x5
	m91Fox3ZMSnxfQUKWtIqHM/w7xYvnCSUJ04pd++9C3uRj/jBAdsU8GodLWNHKDQ4
	+UZ+nho6P1uEd4eHTYhrsZ9ycfDB6v+DGh32HlA==;
X-DKIM2-Info: draft=ietf-dkim-dkim2-spec-09;
	repo=github.com/dkim2wg/interop; date=2026-11-03; sw=lmtpprox;
	action=mi-m=1; hc=11;
	hn=cc,content-transfer-encoding,date,feedback-id,from,
	in-reply-to,message-id,mime-version,references,subject,to;
Message-Instance: m=1; h=sha256:l2b6HeoWBhislTiOKjIOraUIqchnrpCXJa+BH0AckKQ=:UVXATWgp7xCoyxl3d3NkejESHGlDu+HWrecWvV/X8Ic=;
X-ME-Sender: <xms:0B7wasHjomYN0Sr6YWaaFt-IZz8NY93LhRda3sM0-SnEXVEuYBzdcQ>
    <xme:0B7waheqxGqhKHomw4SVK_DdMi9NGZUfY7bIPLfe0z36ZuLQvak-Ng0c128hNYZvh
    aD1mDQ-7eMNrWlzTXo76jVaYirgZEi7ZKtXH00NGQNQlW-lTB6FcWQ>
X-ME-Received: <xmr:0B7wavYxFqO6aQ2cVgvzL4kTvDk8iqw_suC6Ulc5jdyrR-ywo9l_Xu9ahmLgP_Kvh2Uz-N-K>
X-ME-Proxy-Cause: dmFkZTExmkVnhUU2jNDCiAi9bm+OIvtR9ff5AdoUkJg8UXmNizbE3R/TsaS03sVLmO8Z/x
    O1u7Vo+dpMnoLUKiry2kzASeaRz2bl+KvcJD86RDYkaBSGCX9uUM7qr32xZcEhEHS9e+R0
    ON/U0jKrZA3rTIAuKs02EMZ7AOUsR7J1gtKDPdFCDco36518O/5hsLcNcp1Z6pSa9FhSiK
    IAKjAaK/HVN/fNZPxjgRrf07hCmGwcS9oNfBHi4d3AZE1qXp9PL7fvyh3E2jkpPNRqBJ/O
    4iFuUoSMFlCjvTo/D5TP/+71PsbX1J42D/dEK7Xki02zElvBNRISAWuZB/iS9zljMCsrS1
    qXveIyRieysUHHXsPN2oK9rOTLQ+KbDbgqJIsswTxjAxJNveC0hPMmGSDwJVN/TLLfoeZn
    WCHpkJs/5asC17JsYxRrj9qHPXdx090SdJfXoDypr+Ex206Q9JSlrtbbokW1VbG2Ju4kMn
    kk9tmVYoS7iNodz2YA+MOyci0Osh+PP463c3VC/55YI6BZR322w8g/yU1REoFHxu6FMn1D
    ExIBcn65E9dn6f8LiRH7SQlkoZ2HOTwbmvSTQu6jMg7Z4R6wE1E56n9NWi+cA9ist7/MN+
    P2SpVrctnTr9wonP+EQPwKYw4SLWP2isfWZUYq8NzydwRIXKl5kppjQxgF4w
X-ME-Proxy: <xmx:0B7watKuARjszg37iye7tdtpzkaQ_podLU65BhR_zhvLduBwFAUQPA>
    <xmx:0B7wamgS4FeV6KLgyF8fO22woW0hk6Y7Zvq7PBLPD9qAN2YhJvdnoA>
    <xmx:0B7wahs7s7dxaRsYOvxZJN53JcyE_HE2nG89Ch-ksfdfsV8_RKmZfQ>
    <xmx:0B7waiHvGMde-hg0L_K2eKpkPgJ9bjkQhvgoKDAz19NiBmojOix4Jg>
    <xmx:0B7wavMHzg6MIns5S2f2cFk7AArlpllbnA3WqSVySCidRFhuDJDhypbi>
Feedback-ID: i7a5e4b5f:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 8 Nov 2026 02:03:34 -0500 (EST)
From: Jiaxing Hu <gahing@gahingwoo.com>
To: tomeu@tomeuvizoso.net,
	heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	joro@8bytes.org,
	will@kernel.org,
	robin.murphy@arm.com,
	ulfh@kernel.org,
	p.zabel@pengutronix.de,
	ogabbay@kernel.org,
	zhangqing@rock-chips.com
Cc: royalnet026@gmail.com,
	abel.vesa@oss.qualcomm.com,
	sebastian.reichel@collabora.com,
	sidong.yang@furiosa.ai,
	u.kleine-koenig@baylibre.com,
	chaoyi.chen@rock-chips.com,
	shawn.lin@rock-chips.com,
	finley.xiao@rock-chips.com,
	diederik@cknow-tech.com,
	alchark@flipper.net,
	leonard@lausen.nl,
	jeff.hugo@oss.qualcomm.com,
	rfoss@kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	iommu@lists.linux.dev,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jiaxing Hu <gahing@gahingwoo.com>
Subject: [PATCH v16 15/16] arm64: dts: rockchip: add NPU (RKNN) nodes to rk3576
Date: Sun,  8 Nov 2026 19:59:16 +1300
Message-ID: <20261108065917.135194-16-gahing@gahingwoo.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261108065917.135194-1-gahing@gahingwoo.com>
References: <20261108065917.135194-1-gahing@gahingwoo.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261107_230349_452430_AF0D71B3 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Add the two NPU cores and their two IOMMUs, disabled by default; boards
enable them.

Each core is on its own power domain only: core 0 on PD_NPU0, core 1 on
PD_NPU1. Measured with both cores running, the results are correct, and
the nputop and npu domains above them are powered through the domain
hierarchy.

Label PD_NPU so a board can connect the NPU supply. The IOMMUs use four
clocks.

Also set CLK_RKNN_DSU0 to 594 MHz. Mainline sets neither its rate nor the
NPU voltage. On the ROCK 4D the DSU runs at 786 MHz by default and the
rail boots at 750 mV; with both cores running, each pass of the 5400-row
test has 11 to 25 wrong words. At 594 MHz the test is all correct. In the
vendor OPP table, the 500 MHz and 600 MHz steps both need 725 mV.

Signed-off-by: Jiaxing Hu <gahing@gahingwoo.com>
---
 arch/arm64/boot/dts/rockchip/rk3576.dtsi | 70 +++++++++++++++++++++++-
 1 file changed, 69 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index 508ed48b7bee..667cbb6ad7b7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -1131,7 +1131,7 @@ power: power-controller {
 				#address-cells = <1>;
 				#size-cells = <0>;
 
-				power-domain@RK3576_PD_NPU {
+				pd_npu: power-domain@RK3576_PD_NPU {
 					reg = <RK3576_PD_NPU>;
 					#power-domain-cells = <1>;
 					#address-cells = <1>;
@@ -1358,6 +1358,74 @@ power-domain@RK3576_PD_VO1 {
 			};
 		};
 
+		rknn_core_0: npu@27700000 {
+			compatible = "rockchip,rk3576-rknn-core";
+			reg = <0x0 0x27700000 0x0 0x1000>,
+			      <0x0 0x27701000 0x0 0x1000>,
+			      <0x0 0x27703000 0x0 0x1000>;
+			reg-names = "pc", "cna", "core";
+			interrupts = <GIC_SPI 247 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru ACLK_RKNN0>, <&cru HCLK_RKNN_ROOT>,
+				 <&cru CLK_RKNN_DSU0>, <&cru PCLK_NPUTOP_ROOT>,
+				 <&cru ACLK_RKNN_CBUF>, <&cru HCLK_RKNN_CBUF>;
+			clock-names = "aclk", "hclk", "npu", "pclk",
+				      "aclk_cbuf", "hclk_cbuf";
+			assigned-clocks = <&cru CLK_RKNN_DSU0>;
+			assigned-clock-rates = <594000000>;
+			resets = <&cru SRST_A_RKNN0>;
+			reset-names = "srst_a";
+			power-domains = <&power RK3576_PD_NPU0>;
+			iommus = <&rknn_mmu_0>;
+			status = "disabled";
+		};
+
+		rknn_mmu_0: iommu@27702000 {
+			compatible = "rockchip,rk3576-npu-iommu", "rockchip,rk3568-iommu";
+			reg = <0x0 0x27702000 0x0 0x100>,
+			      <0x0 0x27702100 0x0 0x100>;
+			interrupts = <GIC_SPI 247 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru ACLK_RKNN0>, <&cru HCLK_RKNN_ROOT>,
+				 <&cru ACLK_RKNN_CBUF>, <&cru HCLK_RKNN_CBUF>;
+			clock-names = "aclk", "iface", "aclk_cbuf", "hclk_cbuf";
+			#iommu-cells = <0>;
+			power-domains = <&power RK3576_PD_NPU0>;
+			status = "disabled";
+		};
+
+		rknn_core_1: npu@27708000 {
+			compatible = "rockchip,rk3576-rknn-core";
+			reg = <0x0 0x27708000 0x0 0x1000>,
+			      <0x0 0x27709000 0x0 0x1000>,
+			      <0x0 0x2770b000 0x0 0x1000>;
+			reg-names = "pc", "cna", "core";
+			interrupts = <GIC_SPI 248 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru ACLK_RKNN1>, <&cru HCLK_RKNN_ROOT>,
+				 <&cru CLK_RKNN_DSU0>, <&cru PCLK_NPUTOP_ROOT>,
+				 <&cru ACLK_RKNN_CBUF>, <&cru HCLK_RKNN_CBUF>;
+			clock-names = "aclk", "hclk", "npu", "pclk",
+				      "aclk_cbuf", "hclk_cbuf";
+			assigned-clocks = <&cru CLK_RKNN_DSU0>;
+			assigned-clock-rates = <594000000>;
+			resets = <&cru SRST_A_RKNN1>;
+			reset-names = "srst_a";
+			power-domains = <&power RK3576_PD_NPU1>;
+			iommus = <&rknn_mmu_1>;
+			status = "disabled";
+		};
+
+		rknn_mmu_1: iommu@2770a000 {
+			compatible = "rockchip,rk3576-npu-iommu", "rockchip,rk3568-iommu";
+			reg = <0x0 0x2770a000 0x0 0x100>,
+			      <0x0 0x2770a100 0x0 0x100>;
+			interrupts = <GIC_SPI 248 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru ACLK_RKNN1>, <&cru HCLK_RKNN_ROOT>,
+				 <&cru ACLK_RKNN_CBUF>, <&cru HCLK_RKNN_CBUF>;
+			clock-names = "aclk", "iface", "aclk_cbuf", "hclk_cbuf";
+			#iommu-cells = <0>;
+			power-domains = <&power RK3576_PD_NPU1>;
+			status = "disabled";
+		};
+
 		gpu: gpu@27800000 {
 			compatible = "rockchip,rk3576-mali", "arm,mali-bifrost";
 			reg = <0x0 0x27800000 0x0 0x20000>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
