Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15DA0606A31A
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Nov 2026 15:36:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=HJXlpZJd;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=flipper.net header.i=@flipper.net header.a=rsa-sha256 header.s=google header.b=4igURjQK
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=EMeg29qi97iSnXvXFqoIWKtOKL0Kck7o/I/BVv5vSlg=; b=HJXlpZJd4D698lmUQpMQvHG4gH
	DBI43ZNqQ1r7Ef8pnHkPKwx/3KVnzo3oalREIn0RS1s8dgv6u1xzi3Rz27+e+ugWfMt7oQq5REcZD
	1qnbBqxP53JjB31skSnTFFVmqX70fjc0lqOfumFcz9lfhVh4OSgRn3H6WK2M5+EaibU1hxxkw9XGw
	457D1GgbH2ATFzacMTy5uNHg+3m5KlAVGaIgJdgL2K3lNyaaIE1s9x5Ke04pLgkvmPFQhK7RdTiwm
	KJ17A2K7lExNUeEbVgpYetHOOLRpm6Ka30BmA896R0XCL9g6WPXwBGXe+5YzO0b5Fe9bZnLOmkIh8
	OTesMXog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVW5f-000000041Uf-1Pyl;
	Mon, 23 Nov 2026 15:36:23 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVW5G-0000000414h-45lw
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Nov 2026 15:36:00 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-4a2153c8525so26740335e9.3
        for <linux-rockchip@lists.infradead.org>; Mon, 23 Nov 2026 07:35:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1795448157; x=1796052957; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=2Bm8YhjZ0v5Wgz4QHj1tEV+DcKGiAEMpJ+IjKH6ZCa4=;
        b=4igURjQKmj1odnCXblrCr4pbePwlDrIfTZW8C7klW+xL5AC49JGEf3vzYcoSVPFKC8
         wMtFZnJeO+LH76/dVDXgNUIYKN2eY5t0uUuFaug0KQtJ1MEGRuMh+kKzod0QBn5I3gbI
         oRZ5oyI/TkBHNA/QkA64qqkLHAcdpZGK6x6KpalR1osNeTeEp7hb3N2J0XI+fvfdRG9L
         sfyq8Q+BhhALJQK+IGHPtiPwWxcYa14h8Cio5w423V4tkZ2reft+wuZmx6ZoKlzGkGEm
         0kNH2/6oFC5ytwVlCMkUzbGCpzz/oBW7sGqLARp0iKxovgfu084R2x4FxhDYWIHocnE5
         G0Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795448157; x=1796052957;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=2Bm8YhjZ0v5Wgz4QHj1tEV+DcKGiAEMpJ+IjKH6ZCa4=;
        b=mr8yZGVssC+zoL2N7m1w6uVg3EfztAc/Aq2XV3IOE+y1jw7AXzk/CTJCZSunOqiZ/u
         7ObK3QgAxtaySB066qGxujkyUbFITgOQu/4YdHtK7+xgG8+P82bedMWU3wNR9z4FMq9r
         enWFarkYPMLrbzv47QGvkLlQP9NYXTHvBLNwBTLPzPR/3xpdBjxJ6wJlrSzhKejsf/hZ
         iKedQZY5bAebwGKnosumEhMEFUiKq1VtZx5yr7TL7kBk7r4LgSJFrhSq2AgnHSgySJqR
         eKp0nZrZKFuTHeTeDxDAzyv8lqtyj3o/qDNDlnhF6pmlmgH5vfrZzbxd1wQcZFvikL5m
         XDmA==
X-Forwarded-Encrypted: i=1; AL+hErFzK584LDXpmzoYKTyDYPk27yRNavWDQCq0XXyJvC99vpKQDd1NvnBhUqSdBJrxBIH/lps4zjxfiNqEjDUMOw==@lists.infradead.org
X-Gm-Message-State: APuU4Z/VWKJacXwRZxTuSjfIjpr6Ss7a69j52pSoL2Qj3B1AYkYznGzC
	RQKE1s11IdiGRXuxZ7S6LKrkq+ERWfFYs1j6OOu5VpmuuPBZXAsbp+6CPxoWbfil6Gs=
X-Gm-Gg: AZFdTZdhrIjPoKeVj3xZPRWSji3FtZ0HH5mnubBAFT2W66XMHfph+ItgLoFOwzgeEj4
	di21SBUaZ37uV+J2nbkeV2hFXVzkD6q0R8oh6xWU6IFl/LaICxQEDAoS3rB6JDZsuNzll+02uVV
	x/+/ZDX9ba3WhYjkXvDXXBHO599JqCOEKmyFTXrrmvzL6JCdjT/FvFoAVuqlUUUaHZMyGu1pVP3
	30bMot0RPeqA6xZ2TSug8m3a4ANfhCV9G7hm9XX9SGaDAz40nvkEJJJLzXdxWm4gI7aaIFGFkus
	OJ7WMMHoVabEAfYav48dRBLeGMCwjbY0fxmtijiYh5Mc1DBBOs6bM/uw03fzpb6FY4at2wv3FPd
	QCmx40FYvZB3JEzJWGTiiAD0tHi/9ppR9C3qKdqns48BBBHWfUknUqg7U/I1YweBA5dH3T6aSeO
	eIAfOkhrsSvX04ow0ITEcnusiEMR4jBNi1BOM740I0VWNL4acASofoE79LXwi40UI1XXvQuGJUO
	ljGWF66ov37zZj4AaOXHE3R3QXykgs/HIRr6nppmu7JUnFSoe7Bu6s+42uzS0Tm3+MHwEqkHks1
	a48fl7Lkf2VdQpEJWeYQX8+zkAZ6zQ+dit7KUQUnFb/OJ28SOWTK98Mli5yUPXjCWWOvwV27xE3
	f9Dipa2pLqg==
X-Received: by 2002:a05:600c:820d:b0:4bb:5de1:e923 with SMTP id 5b1f17b1804b1-4bb887c33f7mr242774325e9.4.1795448157034;
        Mon, 23 Nov 2026 07:35:57 -0800 (PST)
Received: from alchark-surface.localdomain (bba-86-98-194-229.alshamil.net.ae. [86.98.194.229])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb853a1e8bsm305917455e9.9.2026.11.23.07.35.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Nov 2026 07:35:56 -0800 (PST)
From: Alexey Charkov <alchark@flipper.net>
Date: Mon, 23 Nov 2026 19:35:39 +0400
Subject: [PATCH v3 5/5] arm64: dts: rockchip: Derive GMAC MAC addresses
 from OTP on RK3576
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261123-rk3576-otp-cpuid-mac-v3-5-40c756dcf36f@flipper.net>
References: <20261123-rk3576-otp-cpuid-mac-v3-0-40c756dcf36f@flipper.net>
In-Reply-To: <20261123-rk3576-otp-cpuid-mac-v3-0-40c756dcf36f@flipper.net>
To: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Michael Walle <michael@walle.cc>, Miquel Raynal <miquel.raynal@bootlin.com>, 
 Finley Xiao <finley.xiao@rock-chips.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Ryan Leung <untilscour@protonmail.com>, 
 Ricardo Pardini <ricardo@pardini.net>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2032; i=alchark@flipper.net;
 h=from:subject:message-id; bh=B51uTVva+acdeOakuNpTV/eDMYtXnyGK/UsKvNUIWqE=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWSzxHq13EuasOKLxxHXhLcnC+Kr38/Iz1W+Eq/Fdidbd
 sMRptS7HRNZGMS4GCzFFFnmfltiO9WIb9YuD4+vMHNYmUCGSIs0MAABCwNfbmJeqZGOkZ6ptqGe
 oZGOsY4RAxenAEx1oADDf1dB2d9yu7fbyiT9XO70gFkwc/vXlRfMBOtfnVWdOWMOhxjD/9IKLdX
 z4vqJtRflKjxyGLqVW3NEFnEfzwhIPPrvVNJ7dgA=
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_073559_053384_134F1DD0 
X-CRM114-Status: GOOD (  11.27  )
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
index 6f9fd73d24d6..1f9441394a8c 100644
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
