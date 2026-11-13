Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C660C606AFF5
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 16:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=n8pU/yQ/;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=XMrCe3lG
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=N3re7QMiJ9ikMda4qhxkVJMO73ELKS7IBPf9tOp1Q04=; b=n8pU/yQ/fOyg40NfSLJaYvFOZY
	AmiOUkRPzyh0vYkuIHjXbVXZl1/yFG8zNer458zAlN6sf/Op0POEAZHlroJn+j/Zdw8lnEvHa+FCb
	JFfajZgnaCOSMvp+CvFrOooE3tQWxej4vSzDYsMMWeCDk9HaJ/KoLeiZxOhdRx4RsSzYAqtJBOrmC
	f4DInuY0iaAcbis8N9fi+qYZ5UQ3I8qrjqmvmTyVrvJReFspbK1/RLtGwZwCOWSa4Hod/aydhcrW7
	0SZakV2qDk0dQIs6tWeDft/bKiGekBynt0qHIBYD5BOo981TCTuJynMrRRLl+AnO0E1m310JIl6zi
	/keQ2nJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRuJ5-0000000DZbw-43Uy;
	Fri, 13 Nov 2026 16:39:20 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRuIe-0000000DZAE-0udp;
	Fri, 13 Nov 2026 16:38:52 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1EAE1466A3;
	Fri, 13 Nov 2026 16:38:52 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1794587932;
	b=xxXCvVGUT9OdBi1vsNPhR0wklQZO4lW3iDAkfQb05eMQsNxg4j8P+5t7RaTbew2uFok/
	 LABAsoujTZLYMvDtir8ImSZj1o1nQnjFKi0KXtzve/NqajTu89AdXFm982SJBNDTCDUt1
	 LK/w4hm8ZP4tOXnl7m1zzseSxHd9BZPkJciIe90KFUzRGmIdSRZ1FJT/jDk1t6bQBeCT+
	 s3ntixmXMde2IhTrV0zqE0sWELGkmWObmb4M4QpdgU4RV0h0gYV0B2CI2u/AHMbdIjLHh
	 VRlppsEb7UXlRcw3C8HrEL+GsvuDc3PTQTZg3THqZMZyRFlSzUOYYECvBN2CPnxZ5lw==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1794587932;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To:Content-Transfer-Encoding;
	bh=2LPQB+GAGQcPlLlWJwVhJDSba8lCqXwa15hdG+xLrLE=;
	b=pSYl2SYEhTtF3v9xQ0Hd7xS4QvDtAfsS17rb34NOGLziliqf6DLY4k7zA/gOaISzuTV6
	 7Hs2ITc9Bvm0mRfU6/YS3gDQJJENkZnu5KB2CM2+k6813j1yUHoMcmpiF+//Pns17a1bH
	 h/ScFwdXm5SkwTRjpxPjoFOzd39wPXNQze1G1VsuO0bYjaHW+AzVKOTzCrlIlej3rgkKG
	 LjD/81Spjd0wzl9GXC1W+XqP+mqSMygisxCcN0MV9FPN7TPB2DenhMNsWizZGgeOEbyOn
	 sF3qvLar+pXXskEjd5rEAxtqQ81kh4WoHPjH5WuEhgKaVP8vVOUawiOJ890wfOvthGg==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id 9196C1F000CC;
	Fri, 13 Nov 2026 16:38:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794587931;
	bh=2LPQB+GAGQcPlLlWJwVhJDSba8lCqXwa15hdG+xLrLE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To;
	b=XMrCe3lGZYZPfoqs4BB8ISp3Fc+ZjgN38SJ4DkYM8hjAOjwYRS92OPDyE1t7EnVBf
	 V7QEl6qMgbfgdvHHKxgbILy/dzWv/pCqVpaPZaaZxJHa9nKzsGtLqZzXzOw56teKlo
	 Ll2NH30gGs3YslYqwIwJoaG64Rv84t1Bjc7DCob5OaKztogxyrs8Dc0TzBVimdOzSN
	 NLFuK8ToLOgxat8b2uqv1omdYgNRE9kq7eOxRNTCPF4gPNeI/9G7ykKEbdQiVrtLoj
	 NHIrEpYzslqHpvd8sAfhOquqIfFXRl2DULcCDmWutndrCJ6Oif0OIAH+xUZBaoMduo
	 Z/weLjfnUFNlA==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id 1F23E499B2;
	Fri, 13 Nov 2026 16:38:49 +0000 (UTC)
From: Arun Iyengar via B4 Relay <devnull+aiyengar1990.gmail.com@kernel.org>
Date: Fri, 13 Nov 2026 16:38:55 +0000
Subject: [PATCH 9/9] arm64: dts: rockchip: Enable the RK3588 PHP SMMU
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261113-mmu600-php-v1-9-231196049a3b@gmail.com>
References: <20261113-mmu600-php-v1-0-231196049a3b@gmail.com>
In-Reply-To: <20261113-mmu600-php-v1-0-231196049a3b@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@kernel.org>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 David Wu <david.wu@rock-chips.com>, Damien Le Moal <dlemoal@kernel.org>, 
 Niklas Cassel <cassel@kernel.org>, Serge Semin <fancer.lancer@gmail.com>, 
 netdev@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-ide@vger.kernel.org, 
 Pranjal Shrivastava <praan@google.com>, Will Deacon <will@kernel.org>, 
 Robin Murphy <robin.murphy@arm.com>, iommu@lists.linux.dev, 
 Shawn Lin <shawn.lin@rock-chips.com>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Arun Iyengar <aiyengar1990@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794587927; l=915;
 i=aiyengar1990@gmail.com; s=20261110; h=from:subject:message-id;
 bh=4ZmzBM5N9jnNuYTiHIYDASnKZmkuELiFGEfiQed/VEM=;
 b=9nRVvarFiIbiga3zvvB8t4RnRG95GwOLtsETdu1rIreww2yx1869NX4XiuZ4gNhq3OMMnZUwR
 k6gzh4xD/bGCyX8cwf/QisIjRmWfOWJBKa8+I4+NG5xwYSODUKSGQpz
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

Its masters now have StreamIDs and iommus, and the SMMU has its clock.

PD_PHP is powered off in deep suspend and the SMMU resumes from reset
in bypass, so this needs arm-smmu-v3 system sleep support [1].

Link: https://lore.kernel.org/r/20260929034510.2023173-1-praan@google.com [1]
Signed-off-by: Arun Iyengar <aiyengar1990@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index cb0a39f63788..0c3d59a39182 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -574,7 +574,6 @@ mmu600_php: iommu@fcb00000 {
 		clocks = <&cru ACLK_MMU_PHP>;
 		resets = <&cru SRST_A_MMU_PHP>;
 		#iommu-cells = <1>;
-		status = "disabled";
 	};
 
 	pmu1grf: syscon@fd58a000 {

-- 
2.55.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
