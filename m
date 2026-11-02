Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDB3860850A8
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2026 17:45:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=zXJ1Wrpf;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=kr1qAG2/
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=pUd0p/kr3cf6S2AdUTi0vfWNME06F+7ar/jp8gSWa7I=; b=zXJ1WrpfK8fqU5YyJf/LdXOlJ5
	DOTEYQRh7v5MNRtN8QhNFrYndnif9LqBW+ocaMOcH35UZ29XU3BFAGySisYFPcJNZQ9W0gnGUOqkp
	SuL1qiJHli7hh2ndQ6agt+gDLRCu4T6cE2N8AcPkD4eOWuSJLW8jQBheOFbl0hISytp06JMdTXHEn
	m42Z/FVTXlL1e7i8jg6NX2tBHdljUb3sR9woFve28yS3tjYm09j/3n7bqC6I17iWCRQQMZ+i7r3qH
	6bFDqJi6iO+A+uN+4Hpj66iUNbr8vKn/7KwpV2KYIumJQEliZMoAeLsaKpZGkLEfUJQRocPAvLqwg
	1GqWsGLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNw5v-0000000HVO2-0YV5;
	Mon, 02 Nov 2026 17:45:19 +0000
Received: from mail-dy2-x0a.google.com ([2607:f8b0:4864:36::a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNw5s-0000000HVLY-2Y5e
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Nov 2026 17:45:17 +0000
Received: by mail-dy2-x0a.google.com with SMTP id 5a478bee46e88-33e5ae86ff2so1981388eec.0
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Nov 2026 09:45:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793641516; x=1794246316; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=O6UlseroD4jG2dHId972eYhTZmtxZYuBjJ9VhYkAhAo=;
        b=kr1qAG2/MfH4CZS0GdqDVp2I+gvvANqVZNq/lTluT39Ks9/mSdOMi8kRLEON1YcDwD
         zz1sC332dwnm9+c8DKQ6+rCV4Gt/AcC24P4JVd7iqNdKrNmnax/p/6bBVhMbdIdS3hQa
         oFAADHV1DYqygg8jllYrmVO6l92ie+O5AfK2nXZPG5SFX8Hju4SCZdRsdso1uSoEauow
         t3BWwsnxkU2FmZxtaoAnzQfbZ04Zap6Y9KgGqdnpvwSRjz9l65p8+cm+hIZrNEQuohuv
         o/0ltz3/BmYEDLgPrnbl2Nrt8ael6rogUcw2iWmZzIv7Yz0y3VRiJJFv2gV6vVURHFHe
         kH1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793641516; x=1794246316;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=O6UlseroD4jG2dHId972eYhTZmtxZYuBjJ9VhYkAhAo=;
        b=Vp3BUasxlPwMB/U6luIeVmk+KKCobGrMHnQ+NKu2Tso1zEQ4Uwh1rel0TsRFjHF/uK
         BIIfu5k6Im6qk4pKGRyfTDQunWhI7Vft98WDhxBto5QDf4o+WjdLCIoaM9UANw8kSEY3
         Er1LKzl8NJ+qW/XZ1SZlxEh3ZGfsS8r60S4aZ8h/fkYSE8ijaBrAykVjPjVOvYoxur42
         IlmL3YD5Nni3MJlsDvgFCmT/7q8ihVGout1Z0EKN0nYZG58KjafsBVEjpuaNM23kpuOQ
         OaUiPWyrAkzm0zxQSgCb0o0MdslCpk/sFVryZHMl2bG9c8+j9EUGvNvvUGb/qO5W820l
         9KeA==
X-Forwarded-Encrypted: i=1; AKwUvBy48nclllbAFsy5rrnHZpMDUFBn4olT8r5OL2Ig/TX2RPve+g3GasnnUjJbyRG9FJEI49PJ2ilLGSUqAyFuZg==@lists.infradead.org
X-Gm-Message-State: APuU4Z8pH9tUnY6ykVbm0isR+ljdDo/1amjJ6ZytxHxMLNMAFGhgxJZ6
	/4goLBqRL6eqM7R+WZq/9U9L7ewY0AOnltvxtHBsWrE3Q8wt2jeiAGwi
X-Gm-Gg: AYBFou3R+BwexjUtErBLAIy22b5QVtBA+arF1fBYaVyJ31qlx29/W/r1CTDVDKAu1ld
	rep0r4xL0mtSSJ6U6epvnbj/nO40vfYrjlomk5aMM2gammxtrhPop4+1BbqbcZg6qsWHocqR3UI
	Tn59ktfdE5NPpX7nbvoDkPydrWS/zXQfRWLcgYhoVXu/h/xRpM3D0bi7rKtR1LdnB393noM/n0w
	cvY8jRXsOtpPyTOxigDxwv+9F/Xxj3TTkcLlx9sQg1/qkFnODlUKsP2id12EnazhQJD2w0PAAh4
	K+EB6W31VE962hH5Aht8dpuH2M7DnNTey80eA94tJxa0P9I1C94usuTLxmvdTz4z9xPrO7B3wYu
	JEaQfjXbhmB3R0RfCFiDy6QLiw0evbGTR/Ra/k/hYkOhwocXeM7osKUeF60Vj0kdixLDWQg+Vtr
	85GbJQ3g1C+eMdyJUTuLtd4MxVvUnLHvg62t2MnTiU21RCJV2NgVpBkIKpRHQcAdWpg2snxNd7t
	1qgK/YMvIkgmUgU9bK6wN4hvrD0Vqeo4FqLW07+5vSfbpy+muwCHVhm5jFpicVNJTgLdCTWuHSj
	7t3EpN2dkxORCRY4cGyjH+C6aRY=
X-Received: by 2002:a05:693c:895c:20b0:359:ef9:9be3 with SMTP id 5a478bee46e88-36a4236a466mr15885436eec.11.1793641515587;
        Mon, 02 Nov 2026 09:45:15 -0800 (PST)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36a42935b4asm53290803eec.16.2026.11.02.09.45.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 09:45:15 -0800 (PST)
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
Subject: [PATCH v3 4/6] arm64: dts: rockchip: fix GMAC clock parent on Photonicat
Date: Tue,  3 Nov 2026 01:44:48 +0800
Message-ID: <20261102174450.3000397-5-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261102174450.3000397-1-coiaprant@gmail.com>
References: <20261102174450.3000397-1-coiaprant@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_094516_649669_64710A7C 
X-CRM114-Status: GOOD (  13.31  )
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

The RGMII WAN port on the Ariaboard Photonicat uses SCLK_GMAC1 as the
GMAC main clock and SCLK_GMAC1_RX_TX as the RGMII speed clock. Only the
parent of SCLK_GMAC1_RX_TX is set, so SCLK_GMAC1 keeps whatever parent
the bootloader or the hardware reset left.

Set the parent of SCLK_GMAC1 to CLK_MAC1_2TOP explicitly, so the GMAC
main clock always uses the internal source and does not depend on the
bootloader state. The rate assignment is unchanged: SCLK_GMAC1_RX_TX
keeps its rate unset, SCLK_GMAC1 stays at 125 MHz.

Fixes: ba124e06ce7b ("arm64: dts: rockchip: add dts for Ariaboard Photonicat RK3568")
Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts b/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
index b719d5b661c43..7e0a2ab829209 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
@@ -285,7 +285,7 @@ &gmac0 {
 /* Motorcomm YT8521SC WAN port */
 &gmac1 {
 	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
-	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>;
+	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru CLK_MAC1_2TOP>;
 	assigned-clock-rates = <0>, <125000000>;
 	clock_in_out = "output";
 	phy-handle = <&rgmii_phy>;
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
