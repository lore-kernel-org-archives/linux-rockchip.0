Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04F93606BA41
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2026 17:19:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=xHXCh2fc;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=z9hLr2RG
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ya8mPjlcpa9U8IZZsgmbuDsLdPZePTMuimnN6dpcats=; b=xHXCh2fccNihTm1rD68ioSlct2
	TsQReOQ+WRbl14NdsqF2wbDYCyLBRxgt+Ev09c5kKIjABmAR7rBdeVbT3gnkuN8ZAkLyJ9/TU57Kd
	m4cPmsLsW7i7PotqfbkCE5QGxrvUOCj25EQjd55AarhxNYyKzAmiVwugwWpqTdixY6DenX2O6d1De
	7TNHJIM21U3SKieaFPjSngqWlc5cWChFzV0L0IHKtl6iIbyZFEkTqr3kOG7sg57ENRJnIZ1iN66+s
	f2ZN/lf6H+5EQrUGyHzK2vK/L3G6gG9Wha4Xm9Uko0mNlPDSflxWraH9UundtZiYovH5DHcAMQB+U
	eWoGFYFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNvgV-0000000HQaD-024q;
	Mon, 02 Nov 2026 17:19:03 +0000
Received: from mail-dy1-x1335.google.com ([2607:f8b0:4864:20::1335])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNvgR-0000000HQYB-3dIq
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Nov 2026 17:19:01 +0000
Received: by mail-dy1-x1335.google.com with SMTP id 5a478bee46e88-3535a54bed9so4909290eec.1
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Nov 2026 09:18:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793639939; x=1794244739; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=RQgMc315r3kvQDWK2uMIX5umY8gWuldHWBME7LLziZk=;
        b=z9hLr2RGGgL5CSEenEcW0jrSbQQwKfRFLTmtfcZP0Lz22yggLjmomKHlfGM1VMhl08
         AjfLMWKiIF83QuP+F+fF4y8/JyIQRluq6p974oAZAybPjnug4vKeRnCkIk8EU01LwVb7
         Lc50t7PnzdWy3f82Xhi7dqddKRxcYGiRQycQ3uBti3XZ7CL/TmFuyk5rvuA6TJQW7yMR
         JHcXNXhQyknPGWjST92luPvzWKKQyV4SGMq8/jqJItGZLAquXx3oON3SVCOxosr9jrmE
         DTt/D9WhIVId/xOzl1Lx8NNBm+9VE54mMpsh3HLzUkp28P5B4FEYJ2lqPlXJ99nB8Qdr
         RVCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793639939; x=1794244739;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=RQgMc315r3kvQDWK2uMIX5umY8gWuldHWBME7LLziZk=;
        b=zVpb4d1NIVCuiLcY7obt/E/m6yJCSFxPH3ezCaCRy0QvgzbM6cMHZgaTj6Y1SQ6P7+
         pTJGx2F+VBbWuiqMFtExeHO9dC3yUXvd0pB/BeL/cswP1diNokfNPqytj5oTxnw/4+N2
         4SRUNmm6l/Gt8JChkMwEXGvdSecwJQToz0h93xK21PwPwuJrd4nQ1WUfxTrEZpYTvc6n
         gFlAQ3XSCV8p3WGRR0tnCGoCYRuLTOA3Max7ExwGBzEo10Omev/tJy//RLBzbkHBA7D1
         CMIMHc5qirk39fEYcuO8ynGoPzrQRg04epyKjRqOwKrR4qrcN6nHrWIuvw4H9lnVv57L
         A97A==
X-Forwarded-Encrypted: i=1; AKwUvByiWub2X4FYzt+9uVdmpGnnhTkT6KXkdUPGCUF0/fb01maO1b7Z9ps4tYYJvIKJlm/eGg1FvCCz4nN+JYoD4Q==@lists.infradead.org
X-Gm-Message-State: APuU4Z9nPbf5wE2RJaUbZFHKJlndBgm8D5q+F7rlBzuoqix/YPnSty9o
	tJndvKI+0OhursB3Q6OO0QZ/bYV/z2lcNDLSbA4cWpshml1Ns0KKissO
X-Gm-Gg: AYBFou3yws3YcDfyL3dmfohzUwT5t6K+73GYkuhZIhku2n1NMTAxjfiqd5P8BaeDuZE
	acEb5XeTCVH4qDLkM6dOCKx6zgATF6F3JKz54Kk4OTUJFG2z9BABTEBJfS+RusXU2InXgkiibDV
	TQGlzJubQg6fh3W402w2UEv46oYlT1JM9Ji+zfochmTmh0vMke6E3hdAevIqbGeDty7bMWcR2yw
	KLsrKnr67t/RWxyWo5umOdvCiwy3p+bsDvq3mevFNi7NwshGst67DpSM+PHUs5K1iauIJQGo0h3
	SljMuDr0RZQb0mjCUdpV1QqrV7MVFEXk1kpJO6LZSGsyPDPAFblNirIDehoujJq1qvwdAW0PdrC
	lJsX8GNDXK5Ura+npvqR4CTbOUquIYi2eunhPdwP5nuusCfSEkyeo1ZvNi5MVzG1Q/syeNzWFbT
	4YZaPrK6d3BgPT8CU68+1cYZX8rM1a0a9PFQKKuJKAcBp0CdjP8IC3/G04H6AueQ5ctk3YGXD4b
	LuWCe3i3pxwfgbN7+zww9SgEfXjrDFHvQmT05kUeuPa/8EpN6pP1TS0yVyOIbrXyOMkR7W8DmUG
	0KIMO+ZsB64fmxIXY5d0i5vS5as=
X-Received: by 2002:a05:7300:fb02:b0:358:5bc0:4f08 with SMTP id 5a478bee46e88-36a425f611cmr14286162eec.37.1793639938712;
        Mon, 02 Nov 2026 09:18:58 -0800 (PST)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36a429467cdsm36978047eec.19.2026.11.02.09.18.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 09:18:58 -0800 (PST)
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
Subject: [PATCH v2 1/6] arm64: dts: rockchip: fix GMAC clock parents on 9Tripod X3568 v4
Date: Tue,  3 Nov 2026 01:18:33 +0800
Message-ID: <20261102171838.2958552-2-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261102171838.2958552-1-coiaprant@gmail.com>
References: <20261102171838.2958552-1-coiaprant@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_091859_899308_40260311 
X-CRM114-Status: GOOD (  12.97  )
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

Both GMAC nodes list SCLK_GMACx in assigned-clocks, but only
SCLK_GMACx_RX_TX gets a parent in assigned-clock-parents. SCLK_GMACx
therefore keeps whatever parent the bootloader or the hardware reset
left, which may or may not be the internal CLK_MACx_2TOP.

Add CLK_MACx_2TOP as the parent of SCLK_GMACx explicitly, so the GMAC
main clock always comes from the internal clock source and does not
depend on the bootloader state. The rate assignment is unchanged:
SCLK_GMACx_RX_TX stays at 0 (managed at runtime by
rk_set_clk_tx_rate()), SCLK_GMACx stays at 125 MHz.

Fixes: 156a530ed5ed ("arm64: dts: rockchip: Add devicetree for the 9Tripod X3568 v4")
Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3568-9tripod-x3568-v4.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-9tripod-x3568-v4.dts b/arch/arm64/boot/dts/rockchip/rk3568-9tripod-x3568-v4.dts
index 4903e32d0ead0..d94bc34a31e67 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-9tripod-x3568-v4.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-9tripod-x3568-v4.dts
@@ -268,7 +268,7 @@ &cpu3 {
 
 &gmac0 {
 	assigned-clocks = <&cru SCLK_GMAC0_RX_TX>, <&cru SCLK_GMAC0>;
-	assigned-clock-parents = <&cru SCLK_GMAC0_RGMII_SPEED>;
+	assigned-clock-parents = <&cru SCLK_GMAC0_RGMII_SPEED>, <&cru CLK_MAC0_2TOP>;
 	assigned-clock-rates = <0>, <125000000>;
 	clock_in_out = "output";
 	pinctrl-names = "default";
@@ -284,7 +284,7 @@ &gmac0_rgmii_clk
 
 &gmac1 {
 	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
-	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>;
+	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru CLK_MAC1_2TOP>;
 	assigned-clock-rates = <0>, <125000000>;
 	clock_in_out = "output";
 	pinctrl-names = "default";
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
