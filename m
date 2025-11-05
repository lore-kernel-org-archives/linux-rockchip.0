Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B279CCFA1A
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Nov 2025 20:59:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tfdEvYi85eUsEK7dEEOGztdQqSp7NbYEZbKQXWFe/SU=; b=uiFE49+1ICiBXB
	IHmJCDlj++9LEkq56pX7j4UE6PUlMo2Kfa/XpPtm6RNFgl8V1pGev+uiYYt3JOp0NgxdAVI38oOF3
	GYHFdELwgiCLTNSwBts/XiMCi8zobyQfQRDVFVS+a8EdaC7w1nIAPvR2neczxH6G09z3voDpmxQ9j
	OfSgh8rkVufPWmD5j8ClJCR57yHAjKJ5IREb0va3Jl66rYubLTv7MOKMGZxV+f3xSoGThbM9ajuTg
	fHP9TNb5vgwPgD5NCeqZmnjf+fc/UYJxE1g8gTxTuAPQfKY/lt3SYM6zmtbDVhilzgmK4O5Pd1aMn
	fzpbAeXFQGhcmSkIXDrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGkbe-0000000EPO9-0uym;
	Wed, 05 Nov 2025 20:59:50 +0000
Received: from mail-oi1-x22e.google.com ([2607:f8b0:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGkbb-0000000EPLD-2aDl
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Nov 2025 20:59:48 +0000
Received: by mail-oi1-x22e.google.com with SMTP id 5614622812f47-4439ecf6004so739177b6e.1
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Nov 2025 12:59:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762376386; x=1762981186; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IHzHI/uEJWBs7AX9PfC4NKomIzirQWA2bAmoXS/UXLU=;
        b=kKpiUHKsGI07RdYiYKWSpUpSgYgLus9Z9Y0/DIerL3D90PYldwTqxYLWmOBUteGRwF
         UYjzZp5jj1OZwjKAZne4UbZShdDE9KurUEW3+Qm32lw6IeZismY6p/Rk2E4d+5v2Wzb/
         G2WwVB15UN2RzFrF+2p3A9Suz5LX/wueLUK0T4htvfObwQ/Sb6mQfkgzhvSM4PQ0QptB
         mB0ry90YQOrsP+JJhr2jtIJgREyCoFmgHNVNDksZFkkacnTf32yohAUFC38LScxdL+4h
         f4YyaGHUdK6Z/THkSRjkVlauKpWpfN270BMSCxhz2KNmHfGEGB79FnOZpbFtOXSagrlx
         XS+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762376386; x=1762981186;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=IHzHI/uEJWBs7AX9PfC4NKomIzirQWA2bAmoXS/UXLU=;
        b=GiMG1Px29LzYhB/UiKPhbBMenv67h/RkpcEvdP1VkMzta8DOlMg7/xpk3cG+EKKGph
         D+UFqpPyaErjqtIINW3c6eCRMRJ0oprOCMvgNq+HAG4/N+8hWppRSCcsmXlKTMUyESNH
         BTSEWx2BzUDfXeUmQEkFCM/JrJuyXOlyvccgBT0lUD9Ebfqxl7M5hGQ7pPhH5dwr9lHo
         R2sFFfLYNvQvdH5TynwGFdctvNYvxbfSWS5yuHHn/leBWBsJAPdsVHJgaNN9O5SbGQlf
         RPc1niCVQ63dx0hwIn18Yr+z58nnD72Bsa51OH9ACiDaedxJeBIxTbIxz8pr1fBHI08F
         bm2A==
X-Gm-Message-State: AOJu0YycpP3OFJryxxCMxn7NbsiaMjrw7EshVdWzJ5+toFyIsP9BgUjH
	xyvhDJhsI4/Vy3e+Fz3Aq0VfVcCtOHiR1QDzHbRgqJMAnRCXSJeCxU6f6n8Qmg==
X-Gm-Gg: ASbGncvF5oI6GuUPDbRsr1kKYhabgpJEO2oc7nwBwa7R1pQCSm/uQhAed7hzmkClkwG
	soa3Vrdrc1uUoQnOniY8ekzOtjlGlLdGfHLrsbhY5lInMVndHyBYrAsr7rqKWnJs57IdNxgdgBz
	ua3xynt87/ThcXWD7sjuagTvzBExBCb8aunavE7Z3YsFEc8Bya1sWhXwd+nRhHVp77pdZmkRyrJ
	z4uLUYEp3uQ4mibM46bmff23hoNfZLxbYb/nBtmtPxMZafvCNd2JG/rE8k3evcVy7Zen9nJ0Dm+
	DVfQWK9puxTJkM2TXH3NFXrzIW1K0OzrSEyC9nwESfx9Q5ssEOYj/dDRTPkq1N4vB2odZel3E7d
	vBSPvmUOHfOy9Ru9NWPjIB5jbFFEZLKWSt8tmgbDhaYpiPMEHcRKpGglWuSBFC6DT5s+2hZshcQ
	==
X-Google-Smtp-Source: AGHT+IEw6Z2KswJK/Wj3uHzNkx7VsaaMTAmqZCJn8LGeyHLIWeo9iromgRnJ+e9P0NB7mBJPx221zg==
X-Received: by 2002:a05:6808:3095:b0:44d:a5cd:e803 with SMTP id 5614622812f47-44fffd46258mr432083b6e.20.1762376386393;
        Wed, 05 Nov 2025 12:59:46 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-656c5713288sm160312eaf.5.2025.11.05.12.59.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 12:59:45 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	damon.ding@rock-chips.com,
	jbx6244@gmail.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 4/5] arm64: dts: rockchip: Enable HS400 for Indiedroid Nova
Date: Wed,  5 Nov 2025 14:57:07 -0600
Message-ID: <20251105205708.732125-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251105205708.732125-1-macroalpha82@gmail.com>
References: <20251105205708.732125-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251105_125947_655471_CF26B042 
X-CRM114-Status: GOOD (  11.87  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Once the DLL_STRBIN_TAPNUM_DEFAULT is set to the correct value [1], the
workaround to ensure stable eMMC operation is no longer needed. I
have observed testing this that hdparm went from:
"Timing buffered disk reads: 502 MB in  3.00 seconds = 167.14 MB/sec"
to the following:
"Timing buffered disk reads: 832 MB in  3.00 seconds = 277.32 MB/sec"

[1] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/drivers/mmc/host/sdhci-of-dwcmshc.c?id=a28352cf2d2f8380e7aca8cb61682396dca7a991

Fixes: 3900160e164b ("arm64: dts: rockchip: Add Indiedroid Nova board")
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index 62c8c8f68713..0796ba6d2504 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -561,10 +561,10 @@ &saradc {
 	status = "okay";
 };
 
-/* HS400 modes seemed to cause io errors. */
 &sdhci {
 	bus-width = <8>;
-	no-mmc-hs400;
+	mmc-hs400-1_8v;
+	mmc-hs400-enhanced-strobe;
 	no-sd;
 	no-sdio;
 	non-removable;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
