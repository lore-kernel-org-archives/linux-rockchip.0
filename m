Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C06DBC43334
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Jul 2022 10:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GR2Mqob1pbbmyqyAEvQTaHicS3PW1q6UTOI88ydJ/CM=; b=Xklp7r3imAS5UF
	PiE+xHjYzDxvP2pEzf2YH8h4lD5NNUqC91OSiA4U50aLOFeJluWzAJPZKQpy36mTdXndCLGvoqcVs
	hUOzrPw8Aee7I275kUTViIM1SV9vgyDjJzlHVaPVuX6KkqxOWJLP+9skcxH5BU+CKskGTHDZfTCJ6
	IlZgJX66O9ZtOF5MyVngEEN3eJ4KQj4tBjk0h29SM2iRFVfBCBvK2QoeItlZ192Kuc8Gzk/o1YCms
	Qxc+tbAeJNkZrMiKOxUURAoOAXXxH7UyGTAAIS71J44VRHnil7bzd1tpOiqmOO9ACExOrdVUYwgDI
	+lMbRLvLYYE6fjNFNSxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o92L3-008ZFE-2u; Wed, 06 Jul 2022 10:32:57 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o90xw-007blz-HC
	for linux-rockchip@lists.infradead.org; Wed, 06 Jul 2022 09:05:01 +0000
Received: by mail-wr1-x433.google.com with SMTP id b26so21081719wrc.2
        for <linux-rockchip@lists.infradead.org>; Wed, 06 Jul 2022 02:05:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZivRzjlDS3OoPoRTHkJnPDZ3sM1VA8uv4BaZC71qcQ0=;
        b=SoR7Ux0on4nf1Qo15rxc7uNb2HO/RqGdhLcmgjl5TJEByBP0inejUpsOr/9+9c4VNe
         U116K/wfR+Ufafd45lYbdRzH3rmt6Y/5FzkewGjvyiK8q6SjpI6u+1dIUiDvyYyC4Mbi
         kwKhdmm9RZMnCRTTCcoYZdYu+JxdHWjrAX3I2fXsey51UGDw96iSQbH4mr2/lvmIjiGJ
         dVtw7lH3wQ4YX72TefVnwD85Nv4XoN2RiIX5+SqTM5bBc3XRAEYGPiLNCoMlJCcOo4LV
         cV79VDm8OAtCOf3BIV4j55ctG2COtEOh9mUkjNzSAs8uq1AHXUA3JSxfLnYfZh/13TP/
         oewA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZivRzjlDS3OoPoRTHkJnPDZ3sM1VA8uv4BaZC71qcQ0=;
        b=K3A9UQB9a1ehs5zjXWBeaN2UyGFQOamf39Ohwzn+OOYZ7r3IsMxjdxkZ0y6bRxr0Fo
         UWxi/611TCQ4f26izaXorpJRd8viBTopp5aoeaZnSmI5eeQ6dPAWWvERpkAsYoDPhmvG
         VQAWaBr+s38EkvcWW/ArnNk4rPTAuMWgMlY69zQGnmK8tiSrWUXadEVJ3rh1Amtt4+n0
         xJ64/6/ji0FStxeHWsIG66fMBtxZhbWO54hmcvENUGsUiFV1lE9o1h/eQjg2KrGaxevE
         XBdcqrIzvgjS1tw/NGFDb1v5oxO6k4DwWOp5HmwQjGGm+8ANcXZcq2r7JDl+UAgbEfn4
         8Qtg==
X-Gm-Message-State: AJIora+HqlRcbQ6LeN+M+7W74ZkIxY1Txw7lhaAtfZqcIng72dagNhMW
	o/y6r+ZtWbEhR4wQR8lZQUWOIoXclJYU6g==
X-Google-Smtp-Source: AGRyM1s0NtrzbFsGKeEvThnAUtfR0Dz41YElbKBkLJkfRZht8Yko9gJ0WTqHFIVMkhaWXaYuStEsBg==
X-Received: by 2002:a5d:6e8d:0:b0:21d:7223:1e1b with SMTP id k13-20020a5d6e8d000000b0021d72231e1bmr7736406wrz.713.1657098300111;
        Wed, 06 Jul 2022 02:05:00 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v11-20020adfe28b000000b0021d6ef34b2asm5230223wri.51.2022.07.06.02.04.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jul 2022 02:04:59 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	p.zabel@pengutronix.de,
	robh+dt@kernel.org,
	sboyd@kernel.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	john@metanate.com,
	didi.debian@cknow.org,
	Corentin Labbe <clabbe@baylibre.com>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v8 26/33] clk: rk3399: use proper crypto0 name
Date: Wed,  6 Jul 2022 09:04:05 +0000
Message-Id: <20220706090412.806101-27-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220706090412.806101-1-clabbe@baylibre.com>
References: <20220706090412.806101-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_020500_610368_F1663984 
X-CRM114-Status: GOOD (  10.81  )
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

RK3399 has 2 crypto instance, named crypto0 and crypto1 in the TRM.
Only reset for crypto1 is correctly named, but crypto0 is not.
Since nobody use them , add a 0 to be consistent with the TRM and crypto1 entries.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 include/dt-bindings/clock/rk3399-cru.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/include/dt-bindings/clock/rk3399-cru.h b/include/dt-bindings/clock/rk3399-cru.h
index 44e0a319f077..39169d94a44e 100644
--- a/include/dt-bindings/clock/rk3399-cru.h
+++ b/include/dt-bindings/clock/rk3399-cru.h
@@ -547,8 +547,8 @@
 #define SRST_H_PERILP0			171
 #define SRST_H_PERILP0_NOC		172
 #define SRST_ROM			173
-#define SRST_CRYPTO_S			174
-#define SRST_CRYPTO_M			175
+#define SRST_CRYPTO0_S			174
+#define SRST_CRYPTO0_M			175
 
 /* cru_softrst_con11 */
 #define SRST_P_DCF			176
@@ -556,7 +556,7 @@
 #define SRST_CM0S			178
 #define SRST_CM0S_DBG			179
 #define SRST_CM0S_PO			180
-#define SRST_CRYPTO			181
+#define SRST_CRYPTO0			181
 #define SRST_P_PERILP1_SGRF		182
 #define SRST_P_PERILP1_GRF		183
 #define SRST_CRYPTO1_S			184
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
