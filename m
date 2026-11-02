Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFD08606D83C
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2026 17:45:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=bR73i+oY;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=mr8NRHZf
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=mXnyK+OkaRw7oo3TcwiqHS0ar8w6MzRL0g//WqW5ZPw=; b=bR73i+oYvtnXWlJl8n1wN1Lt9X
	P9cer+0JCXp16UvhhLiUT+5iRe+bevHhCeAhCrw9j2v/GgAOgY0ATk8BTkPBsCZU7dhj8PI00FFmM
	xP8j79234i6tusOnLvU26/UJDhmKYG5KPA2sXwRBFKEvxNNrk0xwKwkCQCJEC2LDDVFnyN7/iwDb9
	afIYI3mb1rs/+WBwZ2MA7HJbEr+/Sjz5WO5c96XIq4J64UXYrMz0JcG3qU3VD309FXNQ0H59/KS2h
	NEl+v3rLvEhVtnb43bPe3HQjAQYBdQsgXLmJ2J5yef2VBpP4s0Xx+eTOqrrXjcwKV4rDBvTIeIFO7
	npHAp4Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNw5r-0000000HVKQ-3aXu;
	Mon, 02 Nov 2026 17:45:15 +0000
Received: from mail-dy1-x1341.google.com ([2607:f8b0:4864:20::1341])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNw5o-0000000HVHR-2iGn
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Nov 2026 17:45:14 +0000
Received: by mail-dy1-x1341.google.com with SMTP id 5a478bee46e88-369f3e9e431so2466876eec.1
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Nov 2026 09:45:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793641512; x=1794246312; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=1QXiP0o5CtQwTzziGzPYfpYOgoBAHOCYb3Fgk/Di0Jw=;
        b=mr8NRHZfBYXEAvvFYN02pfiJk0JfsSFLkXNz9rZHP8gyMWWqfGny1DPR1Iy7mEK0B7
         dXKEmzWiZYf++fq0OrRibPbEVBToJr7R8eM4+EjWQSVjEahiVPx4xppIih9UmzrHA7Cz
         VI+9hc1NhkGPd0Hk9BNDuSGuqbW6RaBr/EX/oAxDFvWT6gbzZBXI141ZCvXIay1ICZap
         Zkt8KR4BKpR6+x7uj93gKvcYzVEyETO3RFbpvYSSSFvIbgRAIzmU8aHNHiR0VM5OjdYD
         gNIvzawmLzItfx7omDVyFjBAXhBjMM3ZmOzKAbJP+G5R+alFnKG6OvNOp/ZoIFRepbMH
         FqMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793641512; x=1794246312;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=1QXiP0o5CtQwTzziGzPYfpYOgoBAHOCYb3Fgk/Di0Jw=;
        b=a7rSHgK0swERVVetblMdESbwXaI6tV36Jgd5vpLLTyhGEROkhye8UnDBLGQTxWsnZM
         5lLCQSH8QXN+0eSTWN++dXWGBWJPuoMDT4tiizt2G6ouMSCegl3Yoyw/JNWrI+4chhza
         4kk9VH6pF35rpIfBc96KaHDEcP4KWuqqrYbLu8GHItHdkfNiHvki2X9TYHSdtKY5/JlT
         8af7m4xJlqJVleykZUQNNwPXZepsuMZ9g089WuPntmxUFfUXWYI/UfmaR7ypBi8lrPS8
         XOe2QMnWkFG6jk6sX+Lcrz7NYmpygC9uhlsxlp2DS2/2Ew/LQEMa3mk02pUNmUp5FlGe
         GR7g==
X-Forwarded-Encrypted: i=1; AKwUvBw37VyhoP/akR0tSqm1ZIac9+vhsqCutUDFKvyaPYcpECW+09FbA7HMBSo9gdUxH1qf2KYEmu7fHLtCnv5hAg==@lists.infradead.org
X-Gm-Message-State: APuU4Z/kaOfrLgyvYX3fgJ8q/atQMIpZLn6z3k1+HvUar3fH8XYKgE35
	cPMU+iMF7jlECuB6JXqzppT2z1NwQrlBYF9Zx1D6efd9SoK1nkITSpYX
X-Gm-Gg: AYBFou2ZsUP4QmB/M4fJm0eRFN2b0OmfPgXzlYO+ijkuRc0HJCObhCDYzSNFPhqxqLX
	a376QkQLZpDgDrFf8ThntUg+2vIJSTk6wsKJXIrCzEHdsyRGg0S3UBEs8pCn4N0Gic0OHAbjyU1
	drlO6Wc5vGJmg9TGp3lJsTAzZW3bDmgRv3Lv0a+8QFaXFFhfcEdOrfdoph47C890MNBcGgIZl7S
	V1KdhmCtxfl6F8t/D5QIPrysitZ7w6jAGOOFsh3QW+KhjLId+9n/3JdK7k+FW4d9XC9T7G+77Gc
	8x0o2lfP4/ds99+9CZWEvHYfLR9IgjNSm17N+1B8r08UwKzjMmSMymCrjoz1Uv4RTzISvFkygsu
	Jtb40LjpLuffpRIa8IFbvPG2h3qj9u5tz/s/nivNh6TNczX1kvOUPa3tbOpXH9of3ltKs75h0iS
	JI78fkPOahbqMXDQAEJ8//7SZM5YyfZcCPMpR3rcUhCung8/4Bs4bvV4TZ3ofHXbOOBRbvjwehR
	66hdewf27ngcDOxNZxywtLbguQ1JhETt2TfVarFozuP3lxuSGZcIGlQQ/Rhu/fdWoVaTgoYSMbp
	0QuYEpIf6Zf+dqHa2HksH/ZSmPA=
X-Received: by 2002:a05:7300:cd91:b0:369:f231:b98f with SMTP id 5a478bee46e88-36a300084d3mr26330619eec.4.1793641511478;
        Mon, 02 Nov 2026 09:45:11 -0800 (PST)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36a42935b4asm53290803eec.16.2026.11.02.09.45.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 09:45:11 -0800 (PST)
From: Coia Prant <coiaprant@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andrew Lunn <andrew@lunn.ch>,
	Frank Wunderlich <frank-w@public-files.de>,
	Peter Geis <pgwipeout@gmail.com>,
	Junhao Xie <bigfoot@classfun.cn>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH v3 3/6] arm64: dts: rockchip: fix GMAC clock setup on BPI-R2 Pro
Date: Tue,  3 Nov 2026 01:44:47 +0800
Message-ID: <20261102174450.3000397-4-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261102174450.3000397-1-coiaprant@gmail.com>
References: <20261102174450.3000397-1-coiaprant@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_094512_702397_2D885FC6 
X-CRM114-Status: GOOD (  12.75  )
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
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Both GMAC nodes rely on the internal 125 MHz GMAC main clock, but
neither pins its rate explicitly. Add assigned-clock-rates = <0>,
<125000000> so SCLK_GMACx is fixed at 125 MHz instead of whatever the
bootloader or the hardware reset left. The RGMII speed clock
(SCLK_GMACx_RX_TX) stays at 0, since it is managed at runtime by
rk_set_clk_tx_rate().

For gmac0, also switch clock_in_out from "input" to "output". The port
uses a fixed-link, and there is no external 125 MHz clock feeding the
MAC, so "input" described a clock source that is not wired up. Note
that on RK3568 clock_in_out does not change the hardware clock routing
today (rk3568_ops has no io_clksel masks), so this corrects the
description rather than the behaviour.

Fixes: f901aaadaa2a ("arm64: dts: rockchip: Add Bananapi R2 Pro")
Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
index 4d3ebe50b90ba..677b6261a3a1e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
@@ -206,7 +206,8 @@ &combphy2 {
 &gmac0 {
 	assigned-clocks = <&cru SCLK_GMAC0_RX_TX>, <&cru SCLK_GMAC0>;
 	assigned-clock-parents = <&cru SCLK_GMAC0_RGMII_SPEED>, <&cru CLK_MAC0_2TOP>;
-	clock_in_out = "input";
+	assigned-clock-rates = <0>, <125000000>;
+	clock_in_out = "output";
 	phy-mode = "rgmii";
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac0_miim
@@ -232,6 +233,7 @@ fixed-link {
 &gmac1 {
 	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
 	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru CLK_MAC1_2TOP>;
+	assigned-clock-rates = <0>, <125000000>;
 	clock_in_out = "output";
 	phy-handle = <&rgmii_phy1>;
 	phy-mode = "rgmii";
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
