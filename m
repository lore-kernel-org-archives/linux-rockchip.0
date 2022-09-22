Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B13DC6FA8B
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Sep 2022 06:47:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0N2BENjoxPetCro9fWRFB/tnkhjRp+12kUXR7wz2jxs=; b=Mpvm9aW1MZBhcV
	0PAa1U+/geiVWjv7RKkHqSgryzy2drdf+6PchtzcUFibHKitUvMciSS9pKd9obtJ306VofdxjL4o/
	t0PRqBqIunGKVPpHE4ngT8hXZ/tOIxGAzLKtryaEewIMwfQOuRJj2CjXMqQMAjAegQ4axVnYXFblF
	cPo+DxnNlYvEC/t+Em08KEYDx8/2+wcYOIOGUGeNXTm+CYV4RfAcTDZtaPoihQInETa2HOEWuIABn
	QSVzq0SFdrh/dQ/215ZG7SuzclO2lUxK/2OT+vbvGitynTs6uaMbZeJ8dlj0kb/gbt/va0wdSd3X9
	osuac1fqNHBVv2Uo898A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obFzi-00DdeL-9T; Thu, 22 Sep 2022 06:47:34 +0000
Received: from mx-out2.startmail.com ([145.131.90.155])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obFzU-00DdWm-1a
	for linux-rockchip@lists.infradead.org; Thu, 22 Sep 2022 06:47:21 +0000
From: "Marty E. Plummer" <hanetzer@startmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=startmail.com;
	s=2020-07; t=1663829237;
	bh=H+nf1+4JmDAT+zKgeFUVZDdfw2lL7B7tEgGbGUkHUrA=;
	h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Transfer-Encoding:From:Subject:To:Date:Sender:
	 Content-Type:Content-Transfer-Encoding:Content-Disposition:
	 Mime-Version:Reply-To:In-Reply-To:References:Message-Id:Autocrypt;
	b=RmqxE9pv4jqGARIlkBEDB681xX1n1FXwzd3j7mqgZbKssLwFJdsjLK0+iSEMifKr9
	 polLPuWLnefuRO4k3ufzXJsUwH2ApIOhsIz38CvRBjQ3J+zMQKFRoVwEdDWu/h9WKF
	 Trzyad3Lw964aMzLEPl7KFDjGfaVwKWIZIgwf7AKAJZdl0anJUyeRwt9QbT9xV0njy
	 xrSj7xnLlVXjKaCRc1pmABwbvXEMQLh1dFY9LZNEGJM7SO0B+ygQAUtzauwHvcE0P5
	 GLIIK/JKTnRRNq518kLRwF9X3ZOmFu4RCv4sjcp9Fh2s3P0R2LGpDPwI2RVoFlwLsg
	 R3pqDrlXImvwQ==
To: U-Boot Mailing List <u-boot@lists.denx.de>
Cc: Simon Glass <sjg@chromium.org>,
	Kever Yang <kever.yang@rock-chips.com>,
	Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
	"Marty E. Plummer" <hanetzer@startmail.com>,
	Johan Jonker <jbx6244@gmail.com>,
	Philipp Tomsich <philipp.tomsich@vrull.eu>,
	linux-rockchip@lists.infradead.org
Subject: [RFC PATCH 2/4] rockchip: rk3288: enable uart2->usb redirection
Date: Thu, 22 Sep 2022 01:47:01 -0500
Message-Id: <20220922064704.1740759-3-hanetzer@startmail.com>
In-Reply-To: <20220922064704.1740759-1-hanetzer@startmail.com>
References: <20220922064704.1740759-1-hanetzer@startmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_234720_251977_8D03C855 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Code snagged from rk3188's u-boot implementation and the linux kernel's
implementation of rockchip.usb_uart=1
Tested on rk3288-veyron-speedy

patman/checkpatch.pl doesn't like my indentation here and I can't quite
figure out what it actually wants.
Complaint is:
arch/arm/mach-rockchip/rk3288/rk3288.c:95: check: Alignment should match open parenthesis
arch/arm/mach-rockchip/rk3288/rk3288.c:99: check: Alignment should match open parenthesis
arch/arm/mach-rockchip/rk3288/rk3288.c:101: check: Alignment should match open parenthesis
arch/arm/mach-rockchip/rk3288/rk3288.c:108: check: Alignment should match open parenthesis

Signed-off-by: Marty E. Plummer <hanetzer@startmail.com>
---

 .../include/asm/arch-rockchip/grf_rk3288.h    | 41 +++++++++++++++++++
 arch/arm/mach-rockchip/rk3288/rk3288.c        | 20 +++++++++
 2 files changed, 61 insertions(+)

diff --git a/arch/arm/include/asm/arch-rockchip/grf_rk3288.h b/arch/arm/include/asm/arch-rockchip/grf_rk3288.h
index 894d3a40b0..d94cd9a27a 100644
--- a/arch/arm/include/asm/arch-rockchip/grf_rk3288.h
+++ b/arch/arm/include/asm/arch-rockchip/grf_rk3288.h
@@ -1152,4 +1152,45 @@ enum GPIO_BIAS {
 #define GPIO_PULL_MASK	0x3
 #define GPIO_PULL_SHIFT(x)  ((x) * 2)
 
+/* GRF_UOC_CON0 */
+enum {
+	SIDDQ_SHIFT		= 13,
+	SIDDQ_MASK		= 1 << SIDDQ_SHIFT,
+
+	UOC_DISABLE_SHIFT	= 4,
+	UOC_DISABLE_MASK	= 1 << UOC_DISABLE_SHIFT,
+
+	COMMON_ON_N_SHIFT	= 0,
+	COMMON_ON_N_MASK	= 1 << COMMON_ON_N_SHIFT,
+};
+
+/* GRF_UOC_CON2 */
+enum {
+	SOFT_CON_SEL_SHIFT	= 2,
+	SOFT_CON_SEL_MASK	= 1 << SOFT_CON_SEL_SHIFT,
+};
+
+/* GRF_UOC0_CON3 */
+enum {
+	BYPASSSEL_SHIFT		= 7,
+	BYPASSSEL_MASK		= 1 << BYPASSSEL_SHIFT,
+
+	BYPASSDMEN_SHIFT	= 6,
+	BYPASSDMEN_MASK		= 1 << BYPASSDMEN_SHIFT,
+
+	TERMSEL_FULLSPEED_SHIFT	= 5,
+	TERMSEL_FULLSPEED_MASK	= 1 << TERMSEL_FULLSPEED_SHIFT,
+
+	XCVRSELECT_SHIFT	= 3,
+	XCVRSELECT_FSTRANSC	= 1,
+	XCVRSELECT_MASK		= 3 << XCVRSELECT_SHIFT,
+
+	OPMODE_SHIFT		= 1,
+	OPMODE_NODRIVING	= 1,
+	OPMODE_MASK		= 3 << OPMODE_SHIFT,
+
+	SUSPENDN_SHIFT		= 0,
+	SUSPENDN_MASK		= 1 << SUSPENDN_SHIFT,
+};
+
 #endif
diff --git a/arch/arm/mach-rockchip/rk3288/rk3288.c b/arch/arm/mach-rockchip/rk3288/rk3288.c
index 3ad2887575..d9bb1add87 100644
--- a/arch/arm/mach-rockchip/rk3288/rk3288.c
+++ b/arch/arm/mach-rockchip/rk3288/rk3288.c
@@ -89,6 +89,26 @@ int arch_cpu_init(void)
 	rk_clrreg(&grf->soc_con0, 1 << 12);
 
 	rk3288_qos_init();
+
+	if (IS_ENABLED(CONFIG_ROCKCHIP_USB_UART)) {
+		rk_clrsetreg(&grf->uoc0_con[0],
+			SIDDQ_MASK | UOC_DISABLE_MASK | COMMON_ON_N_MASK,
+			1 << SIDDQ_SHIFT | 1 << UOC_DISABLE_SHIFT |
+			1 << COMMON_ON_N_SHIFT);
+		rk_clrsetreg(&grf->uoc0_con[2],
+			SOFT_CON_SEL_MASK, 1 << SOFT_CON_SEL_SHIFT);
+		rk_clrsetreg(&grf->uoc0_con[3],
+			OPMODE_MASK | XCVRSELECT_MASK |
+			TERMSEL_FULLSPEED_MASK | SUSPENDN_MASK,
+			OPMODE_NODRIVING << OPMODE_SHIFT |
+			XCVRSELECT_FSTRANSC << XCVRSELECT_SHIFT |
+			1 << TERMSEL_FULLSPEED_SHIFT |
+			1 << SUSPENDN_SHIFT);
+		rk_clrsetreg(&grf->uoc0_con[3],
+			BYPASSSEL_MASK | BYPASSDMEN_MASK,
+			1 << BYPASSSEL_SHIFT | 1 << BYPASSDMEN_SHIFT);
+	}
+
 #endif
 
 	return 0;
-- 
2.37.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
