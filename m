Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FD1C606A321
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 08:45:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=POnyfouC;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=U6xb33TA
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=/HazDfCiJvvGCIsFGUnu7FSWEuE37y5BTzBdcOwxZyQ=; b=POnyfouCWWFsUTHgZO6B96W0A2
	OuF1koEepEWdkY1yh/83gFQKnICyNvritQeNMy12hGdji1UxdHe38mHYap33uI//wWCOK6T2vf4Ek
	aYUucMENcnbncFTW6l6G4LSxKK2mHQ0G6vEic2aHD21VNA5DVU20NdLzsECqJWqP6Ths9ZhTC5ni2
	pihVpqUMlL3YHeqdktq/vYBIJtXfzQ2/AGiFm+NwIVVXels1IPrHnqaSBDHGssixGb2VVi4svUH7N
	mFqeW4tIK/sf1T0xdawfK9v857uzSwgV5PvccvkEhS8ATYLa97UTS2CluucuNfTPfO5N7BR4aDWSK
	w5kJOagg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRmuV-0000000C7wQ-2alV;
	Fri, 13 Nov 2026 08:45:27 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRmuB-0000000C7pi-3HQD;
	Fri, 13 Nov 2026 08:45:07 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 5434E465F3;
	Fri, 13 Nov 2026 08:45:07 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1794559507;
	b=NmHekQ1a8gJEKefNT4z8v1nsbrWa3Rr8oPugmfwN+eZSSPM13PHVYgKcOkrIVgNkk9rB
	 GrGFpqWAJwHbqZMS3BhAih+0fyhw2SvVy13NBlMDgKaAf+9ntCOxy7EU1N0Z2cZH02cYj
	 cMZB37BHcM/qw9C3fsFd/Z9s2c5HAKlI5mi5WPpREwa+Vj/10HTNjTwDEs8wD/aWyA9Mm
	 srK2wcSsw1Q/2HjIe94imWdDOBqvPzekqx4n7Wz/7bZia2jSaFSH0iGmeJD19a9ywwmIJ
	 oZNmdSl9Iu7SoRkhKt6CbZ3sxvJaFTahkvKWH1/3Blo3wyCTUMi8PWLG9SJ8HMnsF5g==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1794559507;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To:Content-Transfer-Encoding;
	bh=AGOtK77h1IMEUh2ILX1I4QN6zn+UjhgWbqlbQNGAxok=;
	b=3IxqA4na3pnfpbkR7M4r3AMpmsGVPVjmYarPh45UiEmksxTrHov+5eu8mH8zKNAUTtU/
	 H6QIwVSi3NXvmSwmDdStAYLM//VxN8scgVtxh334XW6IEEwEOKnyMGxvfK9LGUZu73zVg
	 C3d2QXcEJL8joor41R4L/shGrMLWxtTfjvgVLSMt76lX0iCI4icswA8VDYNLDBzhK/hut
	 XPUOHmRiztyrL0KRvxh7BSZ9qAxAxjF0aG5DU8UIdHpEmlIXlNDgQuEiTu4f8PLQ3u7Ca
	 ZQThfwi83poemAf/JHP6BelsWfoPwRougdZZNBDKz+rCsrM1Zs/OrYuqqECw1+WoLKQ==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id 1C0041F000C7;
	Fri, 13 Nov 2026 08:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794559507;
	bh=AGOtK77h1IMEUh2ILX1I4QN6zn+UjhgWbqlbQNGAxok=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To;
	b=U6xb33TAxfuLZluegmNIW64e08evLCOkFt2cRYfTjulfFD2j8pG2tqOZGRdQulV2K
	 3Oq+1+i3W/LPlehEIsLvMa04yvX3Uvbgqj3RCrUWcYKQXvB7yV0+Lc9NKahFY5HbhF
	 C2SU2XAk1/ZN6qTAJkp5F2vXP8Y9liBFQ/Kd8eRV4U7rX0+u6ugmQZAlUWULIAFj2V
	 nUopOqJ2ULPcyqZn36LCX0SVljvFrUv9dSE+FcXbItIkLY5pwioaKST7oXTt+Ez0hD
	 T+nFTXgjv4+eZWxGSlC53uXjk+XC/9jUelRDGxWKzeX5TAdVFvTgsbvF8vpIBdScw9
	 eS/L2/441qEaA==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id 84085476C8;
	Fri, 13 Nov 2026 08:45:05 +0000 (UTC)
From: Arun Iyengar via B4 Relay <devnull+aiyengar1990.gmail.com@kernel.org>
Date: Fri, 13 Nov 2026 08:45:05 +0000
Subject: [PATCH v3 1/3] dt-bindings: iommu: arm,smmu-v3: Allow a clock and
 a reset
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261113-smmu-v3-pcie-pd-v3-1-39eb4f919529@gmail.com>
References: <20261113-smmu-v3-pcie-pd-v3-0-39eb4f919529@gmail.com>
In-Reply-To: <20261113-smmu-v3-pcie-pd-v3-0-39eb4f919529@gmail.com>
To: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
 "Joerg Roedel (AMD)" <joro@8bytes.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Niklas Cassel <cassel@kernel.org>
Cc: Pranjal Shrivastava <praan@google.com>, 
 linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Shawn Lin <shawn.lin@rock-chips.com>, Simon Xue <xxm@rock-chips.com>, 
 Finley Xiao <finley.xiao@rock-chips.com>, 
 Arun Iyengar <aiyengar1990@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794559505; l=1030;
 i=aiyengar1990@gmail.com; s=20261110; h=from:subject:message-id;
 bh=SG9fFTOzKpSkhJ/pzr/TczrngVXDEsaz0Xd0nLP1l2E=;
 b=zvewCNzhQBIlNRliWXhF1vEqy3EpLyfIGKH2wQS/4ZlC1ARQC9YQRNNt7njPZkT4WDvEAYCao
 bsnfPcnNH6jCEB8J8orvs1j2essY7HehjzB1vsoPLxYRSLVFFNSdjHv
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

The RK3588 PCIe MMU-600 has a clock (ACLK_MMU_PCIE) and a reset
(SRST_A_MMU_PCIE) in the CRU. When no PCIe controller holds the clock,
it is gated as unused and the SMMU stops responding. Allow one clock and
one reset.

Signed-off-by: Arun Iyengar <aiyengar1990@gmail.com>
---
 Documentation/devicetree/bindings/iommu/arm,smmu-v3.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu-v3.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu-v3.yaml
index 3c044e4f03d4..9ab80142a485 100644
--- a/Documentation/devicetree/bindings/iommu/arm,smmu-v3.yaml
+++ b/Documentation/devicetree/bindings/iommu/arm,smmu-v3.yaml
@@ -63,6 +63,14 @@ properties:
 
   msi-parent: true
 
+  clocks:
+    maxItems: 1
+    description:
+      Clock of the SMMU's register and memory interfaces.
+
+  resets:
+    maxItems: 1
+
   nvidia,cmdqv:
     description: |
       A phandle to its pairing CMDQV extension for an implementation on NVIDIA

-- 
2.55.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
