Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5756606A324
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Nov 2026 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=InGPwHWU;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=MAsuzcvH
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=6oxvZp1uOSXLMcHLwFkLVwJiv/pl96qTVUA8/7MipEg=; b=InGPwHWUk0oC3h8zHoasUtyzXR
	NeunL0fmPViG8gXMbm25rNcrGDiouXluDLxSxhoe4PLzPSYI4ss/k75CN3pdijvdd0s/kVErjXJm3
	ABtAeJiCSqtkpjilpUV/80UA5f5le6+5iQUQ2i8E0nRtl0W5ZORytOOZn177ZmwtnLkOyAffWvIgy
	Qh/R5ffx0xbh0ZlaKDSRQkkb1U5gSB2jeGkyv7Y62QRrrctf+GMbaceCAlkgRVhP0S1cbCcRyD0VI
	kls1s0qgO9qJufE5jF9Wen0SMyO/9uCxc3XJ1vuJFLId4JgNCaLqKqzwxngkF9LC3Ncl52YYOufSd
	u7bS8kDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNdWh-0000000Evzf-15pU;
	Sun, 01 Nov 2026 21:55:43 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNdWe-0000000Evvm-1Qz6;
	Sun, 01 Nov 2026 21:55:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id EF3ED605C9;
	Sun,  1 Nov 2026 21:55:38 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1793570138;
	b=UCEjMc2MxXTUNmfYLyH1iRNMazX2+xgRhlebtgd9h+GahmbN0qcGxoxXTkwP8fsK1dt9
	 G4ikRDW/5kHjr5zAVs0PuV/441JyBllPNGqM4Xy4mWdlY7SKhJsUNAQ0M+qKN4bn2YBTY
	 L1Ob3yzRHaGjpOQ6iJ5gWbVNPOiv3Fe3ZsE4Jg9A35QpbO+M7jIivLZujDDFgDD6Teu2N
	 WageeYstFZZGUHU56NtQ6O7HjyIIR35p7+zSTZueG3JI2l0Cp6SvQd7iKqIiETyJpnoSv
	 anFKxhK+CElZ8e2rfTcWkOIS1YvkvvdACfCHbYQ7fL338d0PkB0JE9rPjGCT4fj9xQw==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1793570138;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To:Content-Transfer-Encoding;
	bh=m8uflTso+qkylFTdVQ/JR31DY9iTOBX4x+anRImiGxU=;
	b=q5sZZtwMb9s2h3jsuIAzDNZaXhHWh6zPQYo6s1lXFM4nnfZ+7KpXVwkSXhA6RvWZlCIi
	 FOkfDvccJZtO9S97F9Cr/LKQWufxzZxmClk1c5PwSJ51o4yEcMFXyEuBtNSgOVDY/ZsMH
	 pfjeJWR1chswkceWf3um/qRpcDCoLXRaVsplKL2Xzzc0hrsInPs/zqhb3o9TbqpzI0ih3
	 Ut7rbbrr7WEnXPZS3rnxyrUoiZSb2cdmQDBKSc9wMONQGqyet5Ln+MfeJAesy/eye3tB2
	 NKko0gE+j+xJCu6zKeqLg9ii+t/mfFSl5kUzM7m9ZKy4kx9DPjfn5qLb2gwfEUrHpng==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id 7EE401F0093A;
	Sun,  1 Nov 2026 21:55:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793570138;
	bh=m8uflTso+qkylFTdVQ/JR31DY9iTOBX4x+anRImiGxU=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To;
	b=MAsuzcvHw1y/ZLulYc+sDQEVwpT8xCpM+QUhG/gpWMHfVs6vMEFh0gswwLiCHFCOd
	 AYz0Jx125kkWbD/U/Ov1qWuHg6AAjsLAnxqFBrr4KAt/aZR3hlR1gMO9FJ6Mo27Cj0
	 RzNses0Ufagys3W+uh0FcoK3suD/lAJaiP6OeXTdkrDHVGsHJZv8hvAnM8S90jQKTh
	 /YzLYPab9Wz8g17t98mH2CesY9kTiHuGZMrktNP42xgWpaasQBDEqq7qDnFxhrRs+8
	 gHTY3GzULWKRwGRDD9tMV4zdarwaqL8SX/j3xzs14BzHw3l95XSpVyLReWg8P6CB+i
	 LKQU1EHIzf7uQ==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id EE97346294;
	Sun,  1 Nov 2026 21:55:36 +0000 (UTC)
From: Joachim Eastwood via B4 Relay <devnull+joachim.eastwood.gmail.com@kernel.org>
Date: Sun, 01 Nov 2026 22:55:20 +0100
Subject: [PATCH v2 2/9] arm64: dts: rockchip: rk3588s-nanopi: enable
 mmc-hs400 and add supplies
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261101-nanopi-m6-improvements-v2-2-a24769efda23@gmail.com>
References: <20261101-nanopi-m6-improvements-v2-0-a24769efda23@gmail.com>
In-Reply-To: <20261101-nanopi-m6-improvements-v2-0-a24769efda23@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Shawn Lin <Shawn.lin@rock-chips.com>, 
 Diederik de Haas <diederik@cknow-tech.com>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 Joachim Eastwood <joachim.eastwood@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793570136; l=882;
 i=joachim.eastwood@gmail.com; s=20260701; h=from:subject:message-id;
 bh=NtjmoS3gzjTskgyS6fKoVKwOyEqnn+MuBZ7YOy3nJMY=;
 b=O5Y+nwXb2ANscdU32sZmXZtO31VFMc9bTAk7BixJHkDXBFHbNLKKC1xYk76OyXjb3bmvuTKGF
 52AmnStFmGDDmTqh6+yVVG6Sof/vwQHkLaud3hhDvbtVZ/OqUarL7E9
X-Developer-Key: i=joachim.eastwood@gmail.com; a=ed25519;
 pk=ZN/8xWtdYaSd5oEfloYSZ1a+/ri0n0VZqjlEeHlbXFU=
X-Endpoint-Received: by B4 Relay for joachim.eastwood@gmail.com/20260701
 with auth_id=846
X-Original-From: Joachim Eastwood <joachim.eastwood@gmail.com>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Reply-To: joachim.eastwood@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Joachim Eastwood <joachim.eastwood@gmail.com>

The NanoPi 6 series all support eMMC 5.1 HS400 mode. This also matches
the vendor device tree. Also add power supplies while at it.

Reviewed-by: Shawn Lin <Shawn.lin@rock-chips.com>
Signed-off-by: Joachim Eastwood <joachim.eastwood@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi
index 8c36268e98768..8c77ee71ebf85 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi
@@ -390,7 +390,10 @@ &sdhci {
 	no-sdio;
 	no-sd;
 	non-removable;
-	mmc-hs200-1_8v;
+	mmc-hs400-1_8v;
+	mmc-hs400-enhanced-strobe;
+	vmmc-supply = <&vcc_3v3_s3>;
+	vqmmc-supply = <&vcc_1v8_s3>;
 	status = "okay";
 };
 

-- 
2.56.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
