Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5F8D606A335
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 Nov 2026 08:47:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=gybfq1xC;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=dTlKlqxy
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=OC4CdZXU9CRK8kQAy0nQjPYknOfiTY40zqHN1ybAegk=; b=gybfq1xCxS5HpNN7WRQkZy/18D
	nL8wO12ur54urxUPvtLHaGKVeztPVQWqOme/KVH7YzmQgJCfa74w6u3R6UdOApcd0mYRoZicR18Y6
	93Y9n63IyrtXLvB1JOgZHlbA9BfNVuepPL7rhCWAI4CpOT3XYrtsaQG5KZb5BJzN3NuYS2HpX5JI5
	YiLEYnTtsMChLssobV7eUC2I3XsS0o7IqpSQyqGj0WL6tT3LZuV5dnL0bNNp6dubo6z1m4lbm/Qd2
	LtFN2jlQ7MlIxdCbRO0jQiGHqw9/xTbRrx0q/TyXHHdG1+pHWOoMIe1l+akC1yazmMQ0iNIEs5238
	V3fXRczA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSVtv-0000000HGD7-2r53;
	Sun, 15 Nov 2026 08:47:51 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSVto-0000000HG9j-07Kv;
	Sun, 15 Nov 2026 08:47:44 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B902445A7F;
	Sun, 15 Nov 2026 08:47:43 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1794732463;
	b=YhhWQLcQOdDn1JdYxJVlEaXZy7urR/WSMcJZnt9wDg1Zd3kOoqpbzoq0wLadbBTuLUxO
	 0VR2byMWwUVt1MomGy1Iv5flW9ohDaGNE+vkngs8LAo25idocCQpM8RgqiPQ60fs74/NZ
	 6R5f0hvnepXEBqzRqIyCAtujiQaa2k2+k67gxMqvBA9XdYMcjoftsjIMmVudCgd6bJwQQ
	 2Sx+unkmPrQfdk8//WZ0SeIuIEkC5Sgz69vsur8Ay6IiysAF1Mu4baTyhYT8As+/1uBe8
	 FH2otpiQvUF2ZnmrhBO2L4hmq9K32zZCD0z68arEIhp86k6IT9hHMhpJjXBIiEHVWtg==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1794732463;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To:Content-Transfer-Encoding;
	bh=YJIqsMHXUd36NytjdySw+FUQZNq6eqzvdp3DyLOfBec=;
	b=yzVx0DhEmlGIvSNoLS3EpQYbEEQHzbUr9lt4s7FjfWORcVco+6u2Xs1QfVK0SGuQXV5Z
	 pgVWx91FqRqFEaT1p99OPS9ChEmx/l9LiCVzhTznjtXYcIQ2LvJoVvt8DrRnWXVBCEwLa
	 CNAexJc7QtEaLWRpzWtlUydM7KVxKh0emgO4TxcuhZpz3fbSGM+c+Y80+Pxw234fQkKV+
	 2MksDSf1uG55qLdna781iOPCSy/ksxYkUm/+JIhcFAtN1nKkIS/wOBh+aS5/y7djoqHuV
	 0+M43jRVmABcho+GLwPw6fmhQxstgezyNg1oAsVy16UYxQJyyXPSddwBi/9A6swkyWA==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id AD5F01F000C7;
	Sun, 15 Nov 2026 08:47:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794732463;
	bh=YJIqsMHXUd36NytjdySw+FUQZNq6eqzvdp3DyLOfBec=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To;
	b=dTlKlqxyb9IP5TJtTLdWHMgOtZd0lc5Uxn7gjS09zWFphWh28NrgsApAMj9mJRnCL
	 IeSs/9Z3j3CPYuBf78hAykajBDWF4dwMPBpLlgX0vTCJdHLUgs7K6xO7Hze5RI1yD5
	 2p43yR177enqKnpUvwOyTQzI7gygUxJrQhj/mWBVHsVjwMr6jo/QookCFcHyVz7NSw
	 KznbRoPApEMPdnEGho7aJbqcrAETjoJGjsStG6FZPZcbAjjajkKAwWYD12hRTuCEmS
	 snRFtOnTEBrdmFif1+Re7O2/x1R+Upx/neiDUgJcVRdOo+NXEX6xW4Bxk2uLZhlFsI
	 8oyxuBFVne6fQ==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id 3BE134A008;
	Sun, 15 Nov 2026 08:47:42 +0000 (UTC)
From: Arun Iyengar via B4 Relay <devnull+aiyengar1990.gmail.com@kernel.org>
Date: Sun, 15 Nov 2026 08:47:44 +0000
Subject: [PATCH v2 3/3] arm64: dts: rockchip: Add IEP2 deinterlacer to
 RK3588
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261115-iep2-v2-3-3d8798cd9a55@gmail.com>
References: <20261115-iep2-v2-0-3d8798cd9a55@gmail.com>
In-Reply-To: <20261115-iep2-v2-0-3d8798cd9a55@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Hans Verkuil <hverkuil@kernel.org>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Alex Bee <knaerzche@gmail.com>, Arun Iyengar <aiyengar1990@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794732461; l=1739;
 i=aiyengar1990@gmail.com; s=20261110; h=from:subject:message-id;
 bh=WgCd6FsHVVdbiiKnG9YJDyBq5Nk8EKW+LFZEF7P5gec=;
 b=6xBonRNfOzrdmycrpmbKrjOX2pQiyC7WGlJ6F8Ian2KtFAr7aMzhBQ1KnTpM9GOStA+Qj7+Zm
 FswE3oDVt7WDd1Ps6cCafOaqJUFkyIOzjLX/DJAq44rHYFFQzO6MgSn
X-Developer-Key: i=aiyengar1990@gmail.com; a=ed25519;
 pk=zXpRgUTrhaFe6jLyPqbBy3ccfkj04w0g2690Wv3mg+0=
X-Endpoint-Received: by B4 Relay for aiyengar1990@gmail.com/20261110 with
 auth_id=1480
X-Original-From: Arun Iyengar <aiyengar1990@gmail.com>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Reply-To: aiyengar1990@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-14.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_REPLYTO_END_DIGIT,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Arun Iyengar <aiyengar1990@gmail.com>

Add the IEP2 deinterlacer and its IOMMU to the RK3588 base dtsi. Both
share GIC SPI 117 and sit in the VDPU power domain.

Addresses, clocks, resets and the interrupt are taken from the Rockchip
BSP rk3588s.dtsi (develop-6.1).

Signed-off-by: Arun Iyengar <aiyengar1990@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index aa69fd3793fd..5297519bd251 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -1397,6 +1397,28 @@ vepu121_3_mmu: iommu@fdbac800 {
 		#iommu-cells = <0>;
 	};
 
+	iep: deinterlace@fdbb0000 {
+		compatible = "rockchip,rk3588-iep2", "rockchip,rk3568-iep2";
+		reg = <0x0 0xfdbb0000 0x0 0x500>;
+		interrupts = <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru ACLK_IEP2P0>, <&cru HCLK_IEP2P0>, <&cru CLK_IEP2P0_CORE>;
+		clock-names = "aclk", "hclk", "sclk";
+		resets = <&cru SRST_A_IEP2P0>, <&cru SRST_H_IEP2P0>, <&cru SRST_IEP2P0_CORE>;
+		reset-names = "axi", "ahb", "core";
+		power-domains = <&power RK3588_PD_VDPU>;
+		iommus = <&iep_mmu>;
+	};
+
+	iep_mmu: iommu@fdbb0800 {
+		compatible = "rockchip,rk3588-iommu", "rockchip,rk3568-iommu";
+		reg = <0x0 0xfdbb0800 0x0 0x100>;
+		interrupts = <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru ACLK_IEP2P0>, <&cru HCLK_IEP2P0>;
+		clock-names = "aclk", "iface";
+		power-domains = <&power RK3588_PD_VDPU>;
+		#iommu-cells = <0>;
+	};
+
 	vdec0: video-codec@fdc38000 {
 		compatible = "rockchip,rk3588-vdec";
 		reg = <0x0 0xfdc38000 0x0 0x100>,

-- 
2.55.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
