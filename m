Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E42A606A323
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2026 19:37:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=QKAGtX0B;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=flipper.net header.i=@flipper.net header.a=rsa-sha256 header.s=google header.b=tCR2j2nI
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=jk6E+JFiutdVvIqXCBOrOa46WjOISZTRZGgqSE6vMZY=; b=QKAGtX0BCRCEVpTmRVTO1hhIs6
	zwdNzrMT5PTw7DVxKENgEbSnyLiU48XExU5BpjZchveRnWkoJTGa+iM3hRlZ7AIdLMwQr2+cndHtj
	d0oCdbqTpegr5sxXsU5Cn0jDqNXaZS7FXsdlaA8/YdED5fquBqCvWhYQlM4HcsZonjHCcW6gUEPHU
	VpdXcOMJzBoh3O2pDdjm6t/fD6F3sjzyJp0Wvi4BBEvNCeuXKKaXN3QTDi3t8yAGXBK7vx3hMCQuI
	Mn/xzcmdxUoNCgJEl8bu3YaL1OenMXf1Fx93PcRnwqY5n87Zxz72p68kLNJg0yFRw/6ptxVkh70I4
	s+TD+Axg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWIoC-0000000BARA-3sRx;
	Wed, 25 Nov 2026 19:37:36 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWInp-0000000BA6T-0EHz
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Nov 2026 19:37:16 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-4a9be758734so3931694f8f.1
        for <linux-rockchip@lists.infradead.org>; Wed, 25 Nov 2026 11:37:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1795635431; x=1796240231; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ogqpT8rvdF/Gm93BWuS1bNrXpPYIVQ5iqYHH/0ZaQ3I=;
        b=tCR2j2nI1c8SbjiYs+TFuhEtkwq3vJv9wVABOhaPMir+tV40ZpmNBGxhyelJk4PqNO
         YdqetuetLWYsXE1VHnmPS22deez7BU77nTCJHnkKxuzZam9ux/YfZVV9ItnRyPfBCHwP
         DmMVzSqUtQDxE69YdSXDj3C0dN4VLuwPubigTjKjoLiM03G8dUTs5hkU0SvkR20MKgOz
         J0Qt3RsDzsle32zUMHdLLQHX2K/I8LZiR652rixJAKiUdIy5xDjySsbr08WL1zmplQH6
         CiNO+1KWvaRBzwnKvcANnHzGxbXYMQX5Hu5k9sTSCW0HlkTHNsBTip0cIADl5QQxMDRc
         eIaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795635431; x=1796240231;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ogqpT8rvdF/Gm93BWuS1bNrXpPYIVQ5iqYHH/0ZaQ3I=;
        b=y3bvn4QLBynpGyZGcuaUCR3JXczVBAQaLxMEfFb4Y9xX7UgNSyYP9kIBtHvL5DpgQe
         AmiUoqdxBoncvpubiPGLNu91TNHkdhFo6Kna47rJPcjFIqXNQXgti6S+lyMWQOO7g59p
         qhpos20rsHwoJAvT7jFuS/JE8zT3Np/2P+KMArDClAiBmykgJT6kpLVeaWqjsFSHTYSg
         ax/9WMDESjNBHwUoJaGYSH5KBu8NvaaAaih6XUISZxmHEXZSw5mH2n3mkZKUE8M69FRO
         HIvbcpIDa8peF2iI15oeDeIfVsc4VfePUq/wH24lPNdmZeTaEW8Q1KNC8U8LJRJDnbLn
         3tsQ==
X-Forwarded-Encrypted: i=1; AL+hErEr7B4JXBT50ZCS5MtEFoYAEWRPMEOIU33Olq4BoC3erTBGjfzrBhNrPhJTIUag0PBSHeOKsF1A9Y1I+qCvNg==@lists.infradead.org
X-Gm-Message-State: APuU4Z+aRl2CiAylNPxPPlTJOLMXK4/xUNyyhU0uN+npj5LNolHnqBQ/
	7+rmi3zoWCq2Abotix3PBzPNJVP0iXx3Ov3OAp6TQ1ynHyzwsQ/FeKQVcZ294Xy4RZo=
X-Gm-Gg: AZFdTZfgTMJwY0djlRoikauhYxv6/OA7/XUf6Th+j4dCinZESBowovmGZe/zYf0frDo
	1XCEMADWqgHEAJQOFMQZTJqBbUVSzSG3oHHCVKv//02TrBHH9kQRzmWv6UeqFoDeDlMDmeJvAR6
	rVDDVB1UPJjvBZbWsrkXmkaN2Yg84g1iV47ZRT+IihgWa7SoOfPtm7LP54aDKnn0I77u+8Iu+lh
	9yD0Ah00+K1IIN7RB1M4H4IimnVhxkzX9931fiJHZDcp9aDFmudeMN1FQpILdx8GyBcX4pzYQ40
	4+fDc5n4qOtljXARLHb7GK++OhImINh33It1yjntaSjPiLJmt7WgnDisOdP7PMJpfrbNdrYAo48
	WhA4epk1vc+1K4i4ASLorAJL9RFzW/p+pM+kGM8Za08COwYw0wYpJ6mkCLatf5R1VLDPHaCf+DD
	QUBTHdjDDr/qgbOU4C/OSIUi73bmBsC/v48CRWeBSsHgj1t7EShAYuG8E2MfKdb82cNVbArxW9a
	RtNPVu8ygiP3+D+pStwm9WVk3s6UtwLN+d0ZmBfh8gZRn1qROZCxo5il6mCO2ev39OmrPjilsOm
	XH+9HTn3k6yx9xFAi+N/rLJs+zr/huKJbqCHeOSErDQulKw9hr2Fm9lp7zaqFqPR5oX0a4xqiZR
	Vn77SMKJjCrJr8KdN4x2GAqv04AFOqA0=
X-Received: by 2002:a5d:64c9:0:b0:4a7:69c3:94d5 with SMTP id ffacd0b85a97d-4abb0e469cfmr35425907f8f.28.1795635431246;
        Wed, 25 Nov 2026 11:37:11 -0800 (PST)
Received: from alchark-surface.localdomain (bba-86-98-194-229.alshamil.net.ae. [86.98.194.229])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4ab6baa3882sm35614063f8f.49.2026.11.25.11.37.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Nov 2026 11:37:11 -0800 (PST)
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 25 Nov 2026 23:36:42 +0400
Subject: [PATCH v5 5/5] arm64: dts: rockchip: Derive GMAC MAC addresses
 from OTP on RK3576
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261125-rk3576-otp-cpuid-mac-v5-5-b3125c9a5fc8@flipper.net>
References: <20261125-rk3576-otp-cpuid-mac-v5-0-b3125c9a5fc8@flipper.net>
In-Reply-To: <20261125-rk3576-otp-cpuid-mac-v5-0-b3125c9a5fc8@flipper.net>
To: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@kernel.org>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, Willem de Bruijn <willemb@google.com>, 
 Simon Horman <horms@kernel.org>
Cc: Ryan Leung <untilscour@protonmail.com>, 
 Ricardo Pardini <ricardo@pardini.net>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2032; i=alchark@flipper.net;
 h=from:subject:message-id; bh=JAiuEnOZimha69/KVwMW0+w3glgeOUOuX9RVnjpc4yU=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWSzW5xrWM62Y/37+T53Hwe17wu9ny+vGuP4jmV57fU++
 Va1cysKOiayMIhxMViKKbLM/bbEdqoR36xdHh5fYeawMoEMkRZpYAACFga+3MS8UiMdIz1TbUM9
 QyMdYx0jBi5OAZjqqmWMDNfbjKIlv9QFCs1NZY+oPnLYv9+6Jm/iyitLZfmfTruxRZ3hf1DXm2i
 hwzpxLP1yR8r+vf1r9+22xYz5F1fNV5wutjFDjwkA
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_113713_138382_B9B17489 
X-CRM114-Status: GOOD (  12.32  )
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

Mark the CPU ID cell as such and reference it from both GMACs as their
unique ID, so that the addresses can be derived from the device tree
alone, whatever the bootloader. Each GMAC gets the address of its
"ethernetN" alias, as with the bootloaders. Boards which store a MAC
address of their own can reference it instead.

Note that the GMACs then depend on the OTP memory being accessible, as
the thermal sensors already do for their trim values.

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 arch/arm64/boot/dts/rockchip/rk3576.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index 2e83a73ddbb2..d14236c783b5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -2070,6 +2070,8 @@ gmac0: ethernet@2a220000 {
 			interrupts = <GIC_SPI 293 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 298 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "macirq", "eth_wake_irq";
+			nvmem-cells = <&otp_id>;
+			nvmem-cell-names = "unique-id";
 			power-domains = <&power RK3576_PD_SDGMAC>;
 			resets = <&cru SRST_A_GMAC0>;
 			reset-names = "stmmaceth";
@@ -2118,6 +2120,8 @@ gmac1: ethernet@2a230000 {
 			interrupts = <GIC_SPI 301 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 306 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "macirq", "eth_wake_irq";
+			nvmem-cells = <&otp_id>;
+			nvmem-cell-names = "unique-id";
 			power-domains = <&power RK3576_PD_SDGMAC>;
 			resets = <&cru SRST_A_GMAC1>;
 			reset-names = "stmmaceth";
@@ -2317,6 +2321,7 @@ otp_cpu_version: cpu-version@5 {
 					bits = <3 3>;
 				};
 				otp_id: id@a {
+					compatible = "rockchip,cpuid";
 					reg = <0x0a 0x10>;
 				};
 				cpub_leakage: cpub-leakage@1e {

-- 
2.56.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
