Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7BFAECAAD3
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Sep 2022 14:04:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GR2Mqob1pbbmyqyAEvQTaHicS3PW1q6UTOI88ydJ/CM=; b=XLOadCTZhrYgv/
	et0uxjCCSVFxS8cfhCtsH7fxHuowfLy+Tlx1eMhKUwndZiPEzQA0gCwbt77X8AVCMHJaUEEzlNHRw
	262ZLFMFrCeGx+/BH0ghNnmnCtODMJWTwuWO/kc29bKXuWWAf7DFIVA8ZB/2zMI/6cxnoJZLUXO9P
	lHyX442sYBk4g6NjXea5csoesCBA5w6ZiCq/wiUuHK01U8vrVpoMKfuSJazloQ+C2erfzfRTLlPn7
	jwzjumv2nLcS5/0DJX/GoHdlK3P30ybaJLL0PN9+X3DQKs80Qb2fnkWekCeIWKI6OJ8iu/p/D4fzf
	FQdEnPSHplpHdK+HMhnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTknM-00CJAI-08; Thu, 01 Sep 2022 14:03:48 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTkmw-00CIuS-1Z
	for linux-rockchip@bombadil.infradead.org; Thu, 01 Sep 2022 14:03:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=ZivRzjlDS3OoPoRTHkJnPDZ3sM1VA8uv4BaZC71qcQ0=; b=nJaTmc+gqr/FyfhisRERHK2U08
	hYCa4Sqr1APgTP6mIxXC/GOjuYmhpeRAADXi6xC0Hh9i1wMyEYO8qJ0p3hqpcvUeY3Mv/VtCkF8b3
	hejW5CTKJ8rzPMp5esTIKZ3fzK4KY8GcYhKC5EWDZkpxCF4zutgF10sWmFq5o4jwX73MAD5r7p7GN
	Ie4Qi9YcoMrTGNpUGAPxexe4VtNQMKwM4tRMWk6FuBCowvhN5DshzRBGV2edyGmVIkhNZK55Nt1oC
	ViNgEFxO31Ovsf0oUoSEbFflErC6m9W/IkYSmdv8fO7vukfXO/aGZ6tiz7LiDSWCvjYazm9mvJyaj
	PNE5/XSw==;
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTjlP-008P4K-Uo
	for linux-rockchip@lists.infradead.org; Thu, 01 Sep 2022 12:57:45 +0000
Received: by mail-wm1-x330.google.com with SMTP id m3-20020a05600c3b0300b003a5e0557150so3157094wms.0
        for <linux-rockchip@lists.infradead.org>; Thu, 01 Sep 2022 05:57:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=ZivRzjlDS3OoPoRTHkJnPDZ3sM1VA8uv4BaZC71qcQ0=;
        b=JUOjcJrXCvz6wzFCa8+Wzyv/V0GHWb+sL7kNBLuUIJtJAJOKGjnFFQKcySGMQ5H3O7
         cRhh0Pd0hVq9NecVfEwjwXLB77l7qWn4NM+h2uX8m/BO3qnqQZQwiwoDANaOzd8h0wXS
         yRgaboq1hrCTgAgYzFv2nzkg8Sb5hzErhg6KMY6XoP5+nprg5Xlae+/0kdDEFqwvnfwi
         lLSIO2QZkY7xNyBsz9WFcUJjskTCvrG56a+KDdvfS6mj13EwisptFsOs8HhjdSkJ/pou
         8QhLzrIdxxx185LvTsU2AL/aTJAtq23k6qDmHCb7Jgm/SvWWW7KpblB4qVS0LWQHtVaw
         7rVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=ZivRzjlDS3OoPoRTHkJnPDZ3sM1VA8uv4BaZC71qcQ0=;
        b=lXGvdaQ2kFegl3xg7HDYwNdK9l2U99ne1NKt61QsuRsaYNo5uyxcs/IFrrorPQZCie
         mGqo0PqFpzyeq3YH9DI2RJ/RqhlK+KNM431JxuVQymNU0cRRJ0ErGjD+c8bEWXXVy7WV
         JzVizbXPP/5spokMVvDSUyR+NvTiyj6KPJn4KGGnKXn6oXlCg2juLtCFaK22Ey+lFiSI
         VBMFo4HbpZO/m5TInOg0O/jCFI6ukxkL77ONG2yK12EURxxFIOeXYD6jjzxje8tIh/g3
         LojpKbIywg4MYp+dcOiamKcHB0UWozCqe9L60ejuULwnELfXMGXZHwjELE1+rICBSfE8
         lezg==
X-Gm-Message-State: ACgBeo3VOemrBGPFuRA0+XzpafHD5FTD7jFUNmxB7VNPFPGtIUJuwP8I
	mWyOZA6M91cGcLX/8JtrFlpvYA==
X-Google-Smtp-Source: AA6agR74/atGg96SzWY6lVxvFky5stzl1E8pNTmDRh7Z6GASkeKyTR8c9FZ8sNqrg98Ax6xhl3MCgQ==
X-Received: by 2002:a05:600c:4f53:b0:3a6:9d3c:47e9 with SMTP id m19-20020a05600c4f5300b003a69d3c47e9mr5267668wmq.116.1662037063750;
        Thu, 01 Sep 2022 05:57:43 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v5-20020a5d59c5000000b002257fd37877sm15556709wry.6.2022.09.01.05.57.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Sep 2022 05:57:43 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	herbert@gondor.apana.org.au,
	ardb@kernel.org,
	davem@davemloft.net,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org,
	sboyd@kernel.org
Cc: linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	Corentin Labbe <clabbe@baylibre.com>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v9 26/33] clk: rk3399: use proper crypto0 name
Date: Thu,  1 Sep 2022 12:57:03 +0000
Message-Id: <20220901125710.3733083-27-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220901125710.3733083-1-clabbe@baylibre.com>
References: <20220901125710.3733083-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220901_135744_166193_C89F9EE3 
X-CRM114-Status: GOOD (  10.94  )
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
