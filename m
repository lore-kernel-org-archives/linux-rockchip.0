Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12FC0606A329
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Nov 2026 09:55:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=noDNVDOT;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=FbOBTvQW
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=SIXJkhY3xHMMHrzywtJ7QKr6fCJr/D7pzQx1tiDZMl8=; b=noDNVDOTWU+fbo9YG0+oHnjTw+
	ZRz5J8sHrkafdCYRDY+Sq2g1+vLLFECCnTLQFl8kVjlJ2Y4NEx16yyu8PN1uW9sT65t7GXZ+sKO4h
	4Fur2c0jIMcxa38B4kXJOGibYpDPpBIxbGfbUl0ojxNX3b6gH/TY7GY4gjaXhF/fGWqCPPQTQfNc1
	Zenp/UIw+BRADVnQ26Dum4GcSPFO0LltP31F/hCkbrpZ7KhGqTDpvw+1YCiijC/kHhWMvtTPheo5C
	HHkyNX+QHNJVJ9Pdh/WNOcqTe3oNOp3iJPUOXGhXg/Y/Qs+aUsqcNtlSGmw7J/cLCLB7iXHMuNYN4
	7frbpl+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWWC7-0000000CdsI-1aPU;
	Thu, 26 Nov 2026 09:55:11 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWWBe-0000000CdUS-1z2j;
	Thu, 26 Nov 2026 09:54:43 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 371B64234A;
	Thu, 26 Nov 2026 09:54:42 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1795686881;
	b=3VOMeTQCd7ahVRJ3Cg5ponkHBX7NiraYHOirTe0u3lw1JSN0UHE37z3O8VjGVqwVT35a
	 W4BkNL44tqvLqdErarDQht/Yhe+0zTxPbYuqrn0GfryT3ejnTBbPwA8U+DeVIKy4nXWP9
	 xJ2yiGlU6VVoOfL0hWGtYyGPU2BjpzVxhhXdB9WPYgegqvmoKirnk7rop7euAEZjymwZO
	 b2ZolR09L+BSTcXPgeFbncXYCHaEJDBt4mgmYj24t6eaXmntgdAdh7pcjeT0IKTU8+utx
	 LJV2X0/BTJAFEJD+TT6HWJMKby8ZEPFgs0tVBhJGnYGsn0lkoayh0DLtyhVGFlZ6OSQ==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1795686881;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To:Content-Transfer-Encoding;
	bh=ko8str36Y12VEA9xT5kCWL6hEqZTLIJjFfZDzsoUQ7s=;
	b=x/Xvcrr9e/K4fm3rB9RDeryh72kyxzKIGls87qoIDPIdoBOoPnKQcd52a8Yfj0pnmXgr
	 IFqgJVbWTujMVXodSdFaYBqc8WfE52A8sD+hW5QM9hgfqJJeb4tPLEZyqZ5hjmjDFK2lU
	 0gtayx99o+W2ecuQoIVxTuUiN4rqxdWZn8ZPXgLHkfGsNTp25bs4M8E30Rw9jA9XjObPw
	 yaVyueXW1Em3Z5I9vUnhLu/UBj/xdj1KZb8eJ+mLb4N9Nfhij0C6TvYkQyg6DN6yh7vMe
	 QjReZAdM37RyKsBj+0n6HlpzMNHVpSnwflKGheU4KBjak3lguNxYDvH/dFxK+lf0BPw==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id 0E6C01F000D4;
	Thu, 26 Nov 2026 09:54:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795686881;
	bh=ko8str36Y12VEA9xT5kCWL6hEqZTLIJjFfZDzsoUQ7s=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To;
	b=FbOBTvQW4ITzQfMoKly2H5M9RzgdY7IVIKN55v8vSm3P7n23XPUbXlgyPwQtyodeA
	 otM7MSwSW3CDnZvsWWOSj4eKuvktVfAkZGstlvN8srDaBtu6ZWVOrkfN6ZbPTg1/iw
	 l8seurWXmoDUzWsaNa6i0ZrSf3Cjyggp3BylVzLDVxa17+aZ3MW6PwnMD8ps/0idRE
	 GOIM9ivPtMTv7hKXztYrbuXKhgvanlcQb1U3nHd9WVlpjcn/nSTTZdJsY1oSb5zsvC
	 BWY6j+kR5mq8F4BhTd4qQWdlTtUKhOuWyXjG4IouDsmSbgiMrqTUrLq4fFgkA7d9jj
	 3XmKp0NDJlJdQ==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id 9182D4D3D9;
	Thu, 26 Nov 2026 09:54:13 +0000 (UTC)
From: Arun Iyengar via B4 Relay <devnull+aiyengar1990.gmail.com@kernel.org>
Date: Thu, 26 Nov 2026 09:54:15 +0000
Subject: [PATCH v4 3/3] arm64: dts: rockchip: Add the clock and reset of
 the RK3588 PCIe SMMU
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261126-smmu-v3-pcie-pd-v4-3-c340c2dbd1d2@gmail.com>
References: <20261126-smmu-v3-pcie-pd-v4-0-c340c2dbd1d2@gmail.com>
In-Reply-To: <20261126-smmu-v3-pcie-pd-v4-0-c340c2dbd1d2@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795686852; l=1037;
 i=aiyengar1990@gmail.com; s=20261110; h=from:subject:message-id;
 bh=t/g+pNBiRoD0rdFZrx0NxcKY5w4/gVZZrK4FzRkJKzY=;
 b=dVSUoKZCcDEloFC8vGOhrfdcx4yBewn57BI5g7crGv4jL/SfdhTDB9uFGDppVN77KMuJ8kT0C
 Tfb0dv1eFSWA8V3LiU8bhh9Xp7cBBr4nPLuYxSxqs9HaP1F07VPhODm
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

With no PCIe controller enabled (e.g. Orange Pi 5, M.2 in SATA mode),
ACLK_MMU_PCIE is gated as unused and reboot hangs in SMMU shutdown.

Fixes: da92d3dfc871 ("arm64: dts: rockchip: enable the mmu600_pcie IOMMU on the rk3588 SoC")
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Signed-off-by: Arun Iyengar <aiyengar1990@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index aa69fd3793fd..45c1bb335447 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -559,6 +559,8 @@ mmu600_pcie: iommu@fc900000 {
 			     <GIC_SPI 374 IRQ_TYPE_EDGE_RISING 0>,
 			     <GIC_SPI 367 IRQ_TYPE_EDGE_RISING 0>;
 		interrupt-names = "eventq", "gerror", "priq", "cmdq-sync";
+		clocks = <&cru ACLK_MMU_PCIE>;
+		resets = <&cru SRST_A_MMU_PCIE>;
 		#iommu-cells = <1>;
 	};
 

-- 
2.55.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
