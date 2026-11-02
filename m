Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F2F3606D81A
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2026 17:45:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=4AHfrpkB;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=l8ZE9/Wd
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=alhYV/0Vs9WaOUAigMf381+dSgprW4EUU95PyEnC5BA=; b=4AHfrpkB+Z6tsBh7FBnpa2OuuC
	xBvQB4vC+dXp6Knv9JKTFTvaS10cKtaDmajirr65DOzZnjnNSdDRx3hhKHzZLH3eChUw4erRy51pf
	JxjaQgfe42C3UiPb16ACDFkh4JTjdzAbyMjHfZnJOR3aZBmQTeKDqa2aEkMU16Xs5rs+6q/96YKO+
	QWxzrSXqFK3/LKLVK2sXHrc86ZWP/nHrvBq2RfMbsL+LF1bllFRgVmhC6Zs6+w7+d0HULX8r5q8hR
	0Twck6G1FJeHnR8tsng+mCm5mqR66Fjm30mohSqctGknuAYdhgDwj+nrrxhE3/QEvxSvjwqE24Wjn
	4XkPpJYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNw5m-0000000HVF4-1isI;
	Mon, 02 Nov 2026 17:45:10 +0000
Received: from mail-dy2-x08.google.com ([2607:f8b0:4864:36::8])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNw5k-0000000HVDF-0reg
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Nov 2026 17:45:09 +0000
Received: by mail-dy2-x08.google.com with SMTP id 5a478bee46e88-3537f63c9e6so1335126eec.1
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Nov 2026 09:45:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793641508; x=1794246308; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=BCkJXdrsAlr6UgG3VN+uF/+sPVvDnFNnW/1WCxoAQCA=;
        b=l8ZE9/Wd5Ev9V+bAv+5pVkC5hciyY1qOH2XbAzCF6C9Ze2pBxJjqSW051ElLONhzuz
         cZdOPO252dhz145BmDEGl5PCJ0tDhuD89co3K27/GXGzWKJTKcKmjm6w7ZXlMP3SURB1
         c0ntdjtrl+wXnv3U3NWngx01KrK70oeIv3GXQFvIXJjQfnls/njV938XjQNw3J6bmozV
         a9gZpKBi754n6QenMVKt9v/1T71CQW0jN6xmlghdwXriYBEz19QeK9jOvwPCL5Qkai9U
         3t1QtvFAShj3utXk3i/tn9utMNcL0ZDJFbhjWvber4sDbq2t1oi++xzKRV+VPL7LVxQG
         +89w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793641508; x=1794246308;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=BCkJXdrsAlr6UgG3VN+uF/+sPVvDnFNnW/1WCxoAQCA=;
        b=dX/+Yec4liQCXijUwuFlf16mLV//pamw84g9HfCF0gxqwMssJxyJSKOJSGd/rM/Fyy
         nhMaYYM5tfMaH/PRhflmhao/caObX0RIquOkCaRgL/kXWCySucJ60dBWY4lPieNqGI4W
         AZyZhXoVE0fv2xCxtqDNA5beDPKPkgzjYqd9jFH4ib4CQ8QiOuEdl+08U4Lkgyr87+w6
         Iv7vbVSyEt3vwjZCXvtIXFbI++dn/wprMAKtvihnPlmVg+dqTKfhPSCkMjXnAnXrUSy0
         JuHO7YxapwOEHHydb2YUMr2akUe+4KXY+L1CHuntokS4YuVDpzx5WeY/LUIN539YY7Zq
         uXdQ==
X-Forwarded-Encrypted: i=1; AKwUvBwoyA1Yk6AkN9rduZVWqq63grJ6nxLtbm4U/aPdAcg8SNqL0C+gR/J2gvv+ei3vXTwa0+LcwCRST+GEUPTjyw==@lists.infradead.org
X-Gm-Message-State: APuU4Z8lDGTemnajvvgUnUVMXB6nvLUPUfp6POVwUUT72eA2zFFKadQL
	+7QeT1KYMWkhKp0RbZYBf3NNPGSnMQWJ8Z7ReiP7vr0uySYx0XSNlU/c
X-Gm-Gg: AYBFou32wgtjct8vTy2I2iXwMzHvKurt0n4ciIObeKvOtUoL+EnIyHvqNHjXo+jCBma
	Kekb0lDcDrJjhoWw3BM3i/XeBNTO9U65/j7Vay/3c8G6AaLZsxCcvK+6XQNvOrpTsOEnMcHcLnt
	P0WDolpci5ekCE3vDzYiFY4SEeADrytP4P49l3tonHXs3NZ2J4DlGtxraO2XjH8QROJtNj2Hf+9
	hm42obJkYrbas6frBSXUxT3BwpWJ7LpnX7Vr4R9A787ZbTclOp0eLrPlNnozvFot22otD4FO0Kk
	okoBIcPYZlM6CXKMLpXfpJ7w9OQm7j6zNaD7iOM4Z4BjC63mfMFiIAmJcTGUzkCjhD37mJim1l2
	YpnaP6uVNJNKtus4UOzPSAxC439sJl46dw/7ASXFg9YmUQwsuZu/g5CURG0KrJ1zYHi/E8NBDMT
	sjHGgNEJf4/DYtApN3np6Pcp/SP0ElXyE9sNzUvsjQXl8AdKVqd0nb2IBcy+n9eTXmI/8q+tzBh
	+xOtV/XLI3dlW3dKAx8dRNjAmrMZFlpRyJ6gDdkHpoE7i+KfZQVZ8IeMKZ2NnwSnh5OsZ8VF0AJ
	P4g/QoRduaMMAOPPhhpF1MCRG5M=
X-Received: by 2002:a05:7300:ce0c:b0:36a:1732:1e5 with SMTP id 5a478bee46e88-36a4243b307mr15860843eec.37.1793641507395;
        Mon, 02 Nov 2026 09:45:07 -0800 (PST)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36a42935b4asm53290803eec.16.2026.11.02.09.45.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 09:45:06 -0800 (PST)
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
Subject: [PATCH v3 2/6] arm64: dts: rockchip: fix GMAC clock parents on Graperain G3568 v2
Date: Tue,  3 Nov 2026 01:44:46 +0800
Message-ID: <20261102174450.3000397-3-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261102174450.3000397-1-coiaprant@gmail.com>
References: <20261102174450.3000397-1-coiaprant@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_094508_238726_44B294C7 
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

Fixes: f296bb503a24 ("arm64: dts: rockchip: Add devicetree for the Graperain G3568 v2")
Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3568-graperain-g3568-v2.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-graperain-g3568-v2.dts b/arch/arm64/boot/dts/rockchip/rk3568-graperain-g3568-v2.dts
index 4c55c7d211599..07cfc68b5f91b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-graperain-g3568-v2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-graperain-g3568-v2.dts
@@ -280,7 +280,7 @@ &cpu3 {
 
 &gmac0 {
 	assigned-clocks = <&cru SCLK_GMAC0_RX_TX>, <&cru SCLK_GMAC0>;
-	assigned-clock-parents = <&cru SCLK_GMAC0_RGMII_SPEED>;
+	assigned-clock-parents = <&cru SCLK_GMAC0_RGMII_SPEED>, <&cru CLK_MAC0_2TOP>;
 	assigned-clock-rates = <0>, <125000000>;
 	clock_in_out = "output";
 	pinctrl-names = "default";
@@ -296,7 +296,7 @@ &gmac0_rgmii_clk
 
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
