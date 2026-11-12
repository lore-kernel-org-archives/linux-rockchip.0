Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF4B9606A880
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2026 08:21:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=VXcsn8iA;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=SxwmNrJ6
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=2Co+UsfvRfO3/4sT56vufZ9y5/1onMDbNOOjlbVHs/o=; b=VXcsn8iAjRFOEnKnqknR1NKy5H
	1PCFj74Gmm3Puk99digUC9pjmWHyE5O8ipC5eOiv5q5HJxnITNG1L5JLEsuOqBtyOKbaBRM3+NJ+b
	GOBXNjLBSIgFAfuev3NiJZMNVcFjdJLEwX0H7OZiNUiso/V25cng8VTABkIIbP662aqeLyWQ7R3tt
	87/1wAiKq+CCf0dmg4gFA7z3GewPa6oeKCgh9p9cNgkFVwnAHIyKFazaSA9FFpZmm3Ie+JOQ34TzJ
	c8Fz1wkS/Kb+g1EyQo07Ip7SYVyctLAWETRRAeszN/gC6aLQeYqdmMJ4kwkaNF6Ci1AN+UhHKnqBD
	LQj4NFCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQ3E-000000094FM-2Hwb;
	Thu, 12 Nov 2026 08:20:56 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQ2j-0000000944p-15RZ;
	Thu, 12 Nov 2026 08:20:28 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 25C1C45999;
	Thu, 12 Nov 2026 08:20:24 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1794471624;
	b=GwTEaWYJQLt692BqmLrL9SGVOkZIASTzNHsJsLB82hfQqWZt54W4iGD92uJPEd71Rha7
	 bV7HE/7U6bRy7JlqQWa1ygcxkxjqyWLKFa1E7ypXLoqVhKqstyJfE+97JRgK+UbrnW3YN
	 ZBskLVtDISMhoidzoGe5IjoLyfhkTgmrDkiOsUAxMKdx7xw1wz3r9kDVcxS1YcsVNGpIi
	 As+/1t7CzzJmIoyS7b5D8jq1o2Q8bK1bciGSSpLUQsbwdUfzZ/Smpcwp2dg/pR+Im0std
	 gfrM1sjtskYZ8NPtPiyfB02QGIESNyoeZfCFP7TP7W1akk/7zv5+d5oS9Wl0vKS7dVg==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1794471624;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To:Content-Transfer-Encoding;
	bh=Dqc75Um4x4s4KdFptbcUZrqdn2XgXjk1Mqp7t2vN8Tc=;
	b=iTdHR8A3jUoHdFybW+fani4vtos/XVyznDEnNFvQOlDjv2w1YP7OKaoATJDKHFh6bgxo
	 yPgp97kUsn2zLPqU9xUMwukEICmnBz3EWC0GLKzpIuatzODieHOa0iOMzFvE05XYcEg26
	 kWU04Rf3iZxWWFAGR56jSOEjzczrUG2q3dBrncYVaq8balQuamCQPyfZ1taPkJX9aUiro
	 TlvKwxbTBBZrpyP89KqOocMw9KQ6Ce8QnYlWlV7fr/4ysNrzZjXWqeoA2Za+ANLxDYmD/
	 f+8gsdS1jbgh1yYs2GJ3gLqJxvmRluGwW1i1oX/lAna64LSFrsl6RmKPdiLeoreEOhA==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id EE9711F00A13;
	Thu, 12 Nov 2026 08:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794471624;
	bh=Dqc75Um4x4s4KdFptbcUZrqdn2XgXjk1Mqp7t2vN8Tc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To;
	b=SxwmNrJ6FI2VXIBJ26KDWePQPZ1/2+zKKLwh+lcrk0TzTipjHvdcRq8q9j/7AA62R
	 H4DXUKd59ZpMjNyJUYiA9340BnidAi8pLKq1PYSjiP+SHm9/QNVdCG8/mr5zq87pLV
	 BYLHR3KEeYUjxUb2NIIOoSdmAsVE2j0VC4IuIAOiRscjxun0W/0ldVjRnPbGllMJwQ
	 mfY7aDIVHcxXL8Kmk+3plUmx4pqJBDq99YLWao0cPGHwih5Bjo1K3gq6qhjZIexxoz
	 0ONOFEPPJP1eadnSxPAILDiFBeSb7Uvfw30GY+elzbJfJCLJ85rcY4MTEkirh3e9JH
	 tXVdugxWsPd7A==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id 7B0FF4934D;
	Thu, 12 Nov 2026 08:20:22 +0000 (UTC)
From: Arun Iyengar via B4 Relay <devnull+aiyengar1990.gmail.com@kernel.org>
Date: Thu, 12 Nov 2026 08:20:24 +0000
Subject: [PATCH v2 3/4] arm64: dts: rockchip: Add the clock of the RK3588
 PCIe SMMU
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261112-smmu-v3-pcie-pd-v2-3-3a77bbb6b2c4@gmail.com>
References: <20261112-smmu-v3-pcie-pd-v2-0-3a77bbb6b2c4@gmail.com>
In-Reply-To: <20261112-smmu-v3-pcie-pd-v2-0-3a77bbb6b2c4@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794471621; l=1677;
 i=aiyengar1990@gmail.com; s=20261110; h=from:subject:message-id;
 bh=bT4wW5fxE+lRE4iUQ2xEu2GNE9wpr1LdQatMTtwsJ4Y=;
 b=GhAq+MnnkgyIMxuNGov5TI+kHb/LxReTEmJLO905SXhtYgwWC85vQO5dIvKil11OUOwvvzYYG
 otr73P35N7oDWlqt2Qe+SGga2fJNEi74Q0coyoMuI4LBhq9vTEUKNEb
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

The MMU-600 for the PCIe controllers (mmu600_pcie) is enabled for every
RK3588 board, but its node does not describe its clock, ACLK_MMU_PCIE.
That gate is also the parent of the PCIe controllers' master clocks, so
on most boards an enabled PCIe controller keeps it running.

On a board that enables none of these PCIe controllers (the Orange Pi 5
with its M.2 slot in SATA mode is one), nothing holds the clock and it
is gated as unused late in boot, while arm-smmu-v3 is still bound to the
SMMU. The SMMU registers then stop responding: at reboot,
arm_smmu_device_shutdown() writes CR0 and polls CR0ACK, the kernel never
reaches "reboot: Restarting system" and the board only comes back once
the watchdog fires.

Describe the clock, so that the SMMU driver keeps it running for as long
as it is bound.

Fixes: da92d3dfc871 ("arm64: dts: rockchip: enable the mmu600_pcie IOMMU on the rk3588 SoC")
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Signed-off-by: Arun Iyengar <aiyengar1990@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index aa69fd3793fd..dfed34a8aa57 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -559,6 +559,7 @@ mmu600_pcie: iommu@fc900000 {
 			     <GIC_SPI 374 IRQ_TYPE_EDGE_RISING 0>,
 			     <GIC_SPI 367 IRQ_TYPE_EDGE_RISING 0>;
 		interrupt-names = "eventq", "gerror", "priq", "cmdq-sync";
+		clocks = <&cru ACLK_MMU_PCIE>;
 		#iommu-cells = <1>;
 	};
 

-- 
2.55.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
