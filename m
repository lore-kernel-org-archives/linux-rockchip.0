Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E60F0606A31E
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Nov 2026 12:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=09b87DEa;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=flipper.net header.i=@flipper.net header.a=rsa-sha256 header.s=google header.b=gtJrI5TA
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=UY/LsUJb6m3TToYfsCfGtPr8Fet35F47kVtdhScYzKg=; b=09b87DEaG6J218aMdsJusYOOd/
	XdUBRNVL/yMzeDJeAZPCfw1xjAfQlUC26gjj1N3SFmEGwv9dMzbnWViEiJP3AIRZBrVhUzBtwvrip
	P79K2opmvT80N1MfUEQabw+UbpFFyfwJSlwOUrzZXxD/pmVoSxwO5a3stVgWG3qu/iJ2O2fYkivr5
	yV43GoD5Lc0FNMuD6LA1CRVe58Nx2Z8IRgKdwucUdUu3zxR+lkQlqk89dvA7bc0ixslVp4aa08/ju
	/G26NSObDcmR1PYT+wqIDFOyCDndd85cY4xUwqLzJm6jqNaYbzBKAr65nOO9gagyi7X2cokKG9SHZ
	MBuICZAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVpGy-00000006T4I-0phQ;
	Tue, 24 Nov 2026 12:05:20 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVpGj-00000006StI-2QH5
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Nov 2026 12:05:06 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-4a5b2be99a8so37684445e9.2
        for <linux-rockchip@lists.infradead.org>; Tue, 24 Nov 2026 04:05:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1795521904; x=1796126704; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=EJvIXWSNay6+eoioVal9zFgh6NBH6xoDfIbKyCb3bL4=;
        b=gtJrI5TAe7eONZo1Y7gScWjkdPa73AlpxtInRl63XKGi/TN4NGKAjzNmKxrt5zFitY
         WxIZj+rCVTcXxnUk9To5KS0B5TYoLmJBw1k0SuIO7h9yYC+GsFXvBcA2a8zKCxKdBBKY
         6mdvlbMT1eFPS86vF4vKbm2G5mFsTOgTIddtJDWUMe0aFJYhDKJhi1Cw6aDt3yIHbpol
         rBXGJdzi9ZsmMNmuYaG3AXvaaO2mCvxJ4I9n62b/S1Vjb8ooEG5DBiG5JpccTD4fJGkU
         MULyj8skiupY8H+xLbt9ej8BtaZNCga/8hGR5ORAKQPVRa5f9qzpIKVCJYaECIMwc+vX
         h2Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795521904; x=1796126704;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=EJvIXWSNay6+eoioVal9zFgh6NBH6xoDfIbKyCb3bL4=;
        b=Y64PjX6z78+sxrGWSNa+3oV8vtFuE/YLikhFRL4ybtUd20x/uGNyj+GQZfklXlgNO2
         HmeIq/B9VlaA1Zp+2Rg6Ps2LVfcAaLGqILwemEEDPCAZVMerVOG5Zxo2gchZlTPzIAxr
         klOhlO+UlVL+ZhB7W0CXOaQulE8SqJP+qbxydiaUEYb28n9l5bDFZ3KmZ0R2jx2ifv0F
         sJw1+YD8hqtXiQq/+J+Fv9pqrn2srh7D9hlPbK09lPqW9HN3dFjdwHO19TaKCGsulrm8
         1/7KalvuIqFxpS7/8sz5TxXr8zyvFF4q5PPqcvsOo3DWhXeNoVhZJjk9lj20P1N/ZVg0
         isKQ==
X-Forwarded-Encrypted: i=1; AL+hErFTYCGL1fppoEwpCATiBWCBTjdqlRlDNWOtnhJonPjJxOlviKcJ8yOzLT828BYqvf76UgOBnM9v1n3AfbTaKA==@lists.infradead.org
X-Gm-Message-State: APuU4Z+jQWUS2O5HGhf3zrfQLJVtqhvjzJbjp7NgWJaCKWl6cRN5ETgA
	EAEIr7ugEO8utAQj3umYHwNSHWuCZleeTRUdhS0qHrRhXSTvauI0mZEfEVmPPRrW11s=
X-Gm-Gg: AZFdTZf6W5wHnMqsTi1/p14O3B3O8PJz7bvdQ5HLI84sDvIiDYNw4Zmh2kMo0UpSNWv
	m/896BOizdnS87xM9aTB31wEaPOfmJJLr1hACakf2O00t0MFguDSrK9KgJu/4MAEDwugpPv09fg
	nIIVYmUhtN7FrxUCjs23ut+TvrAIPLkUtgnpq+lPgwQX52mLHe6yR3a+/7dB1Ykn7Ir8brsJtc2
	mlE/IyKKjLD9yFQhwb4fY42wsZ8l/wda3L+X4Fl3yFI4OaIKTMzLSjMuKV4drWXBgtV6EeoKmyK
	y85Xk12klhhsFWNx/iMPaAy5xOyPTWdnK2NNTx/4eZD3sC4QBg/aG7pR7r27OQ8bSoosHIxaW5T
	4jlVplpadnahCNW3RY7ZO9U4ke9/yty5w4dHkX2chIJ3nmboyDoF/K/FSV44d/oQp9NaSBgQ5+g
	jsCbkq0AnMiqES5auhDOsMHWX6A7eKkmw9ToGaCC6HLqR4oXAtO3ty6OOAMpaIwA5kkeh/iBczG
	LYT1uWq/M5yK0EdYAUdnWr/4ROeegn62LwaT5pI00LFrOArsGDHXj+rrrsVl6ATx5iwoV+4Y+Gq
	/DjE1dufQzfEeLKNNQ3XZrmpGbU7/jxMUs0LMvDmH69S2pJhspa5ENDy3YqemtlcYDqeWlV8at5
	8hcEzEdUs
X-Received: by 2002:a05:600c:530f:b0:4a2:677:ad8e with SMTP id 5b1f17b1804b1-4bb8892a21amr273175025e9.34.1795521903923;
        Tue, 24 Nov 2026 04:05:03 -0800 (PST)
Received: from alchark-surface.localdomain (bba-86-98-194-229.alshamil.net.ae. [86.98.194.229])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb906635c7sm242405235e9.2.2026.11.24.04.05.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 04:05:03 -0800 (PST)
From: Alexey Charkov <alchark@flipper.net>
Date: Tue, 24 Nov 2026 16:04:35 +0400
Subject: [PATCH v4 5/5] arm64: dts: rockchip: Derive GMAC MAC addresses
 from OTP on RK3576
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261124-rk3576-otp-cpuid-mac-v4-5-d403b8a25113@flipper.net>
References: <20261124-rk3576-otp-cpuid-mac-v4-0-d403b8a25113@flipper.net>
In-Reply-To: <20261124-rk3576-otp-cpuid-mac-v4-0-d403b8a25113@flipper.net>
To: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@kernel.org>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Willem de Bruijn <willemb@google.com>, Simon Horman <horms@kernel.org>
Cc: Ryan Leung <untilscour@protonmail.com>, 
 Ricardo Pardini <ricardo@pardini.net>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2032; i=alchark@flipper.net;
 h=from:subject:message-id; bh=tZOur1/QC2p0pVqmEykIV1YH8t0mT0OobMPfGwIip6s=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWSz1gZzMG2ZIVa1VaHNpl5i+Uabx29mRjirng3cKjfv8
 przth/OdUxkYRDjYrAUU2SZ+22J7VQjvlm7PDy+wsxhZQIZIi3SwAAELAx8uYl5pUY6Rnqm2oZ6
 hkY6xjpGDFycAjDVrQmMDLPE63JuX70qZ+aS+dFd/8Xf5FePN6WYKmtVc1981MhzvoeR4WagBYe
 7mGGu3MfyE5uP9na396055ZHrZC64m1Eobu5dPgA=
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_040505_666954_E057EF19 
X-CRM114-Status: GOOD (  11.91  )
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

RK3576 boards without dedicated storage for a MAC address only get a
stable one if the bootloader derives it from the CPU ID and patches it
into the device tree, which not every boot flow does.

Mark the CPU ID cell as such and reference it from both GMACs, so that
the addresses can be derived from the device tree alone, whatever the
bootloader. Boards which store a MAC address of their own can override
the reference with a cell of their choosing.

Note that the GMACs then depend on the OTP memory being accessible, as
the thermal sensors already do for their trim values.

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 arch/arm64/boot/dts/rockchip/rk3576.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index 2e83a73ddbb2..55892f4afe60 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -2070,6 +2070,8 @@ gmac0: ethernet@2a220000 {
 			interrupts = <GIC_SPI 293 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 298 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "macirq", "eth_wake_irq";
+			nvmem-cells = <&otp_id 0>;
+			nvmem-cell-names = "mac-address";
 			power-domains = <&power RK3576_PD_SDGMAC>;
 			resets = <&cru SRST_A_GMAC0>;
 			reset-names = "stmmaceth";
@@ -2118,6 +2120,8 @@ gmac1: ethernet@2a230000 {
 			interrupts = <GIC_SPI 301 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 306 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "macirq", "eth_wake_irq";
+			nvmem-cells = <&otp_id 1>;
+			nvmem-cell-names = "mac-address";
 			power-domains = <&power RK3576_PD_SDGMAC>;
 			resets = <&cru SRST_A_GMAC1>;
 			reset-names = "stmmaceth";
@@ -2317,7 +2321,9 @@ otp_cpu_version: cpu-version@5 {
 					bits = <3 3>;
 				};
 				otp_id: id@a {
+					compatible = "rockchip,cpuid";
 					reg = <0x0a 0x10>;
+					#nvmem-cell-cells = <1>;
 				};
 				cpub_leakage: cpub-leakage@1e {
 					reg = <0x1e 0x1>;

-- 
2.56.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
