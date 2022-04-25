Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB3B3C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 20:39:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GR2Mqob1pbbmyqyAEvQTaHicS3PW1q6UTOI88ydJ/CM=; b=y5+Ms46XM4hu2q
	nOUBlHdeDIYVdo6E9twBrOQABXOCM6Dq/EruQl96gu0Oj7NFsfNG7+DusGqW1Du8fylI68UUoW6Hf
	Xtp9hdExzwOIyGiMcJONxU6dZzp5QOeDJVxik+ERgZUcTqkO3I+CT6SN/v3AwRyCMLGhJrOEkDeow
	ZHL10qF3OZHMNwgwg/vcBvPXAM4SQGX/K6aKcB/e1tNJu/iXyFJBrjIzMpvOoXY5TbDSRA3lQDX7K
	5T3YVWrXg8z01BoLrcor1cQZLAZwo/3/Lx4d5uavFbO67UKBloNcxKI89FZLBgsfJttiZ9X9mYjdW
	x5wSAD7jzQOTNrHepvvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj5US-00BJ50-G6; Mon, 25 Apr 2022 20:39:24 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj5DV-00BBBJ-Vk
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 20:21:58 +0000
Received: by mail-wr1-x42f.google.com with SMTP id t6so19044237wra.4
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 13:21:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZivRzjlDS3OoPoRTHkJnPDZ3sM1VA8uv4BaZC71qcQ0=;
 b=JoZr9AP6SZcjiUJhmOxsn7XFck2Je49++JUfwOn0/WL4wwIYd9P9yS+ZO3YNEoCPOA
 9ljPGCqM6kqisX/b9e3AC5LqX3X3YfFkkeV4tSuZJvJH6Tb8yT0z4Yp0IAcUOpDHUutI
 s+/BrKhMci0l9O2OO2WrljSEYplmGnsfoIVbZW/AruSar6/Lty++Me4DUX3+0tc1FGNe
 9MLONW2KcW346DEB9538Ub1LO+uWH+M9ZkpWSUlLFFDQNZZso0D0QNRxDnph/lyDLpuQ
 3HKqVFvsK3rGq7ngWoN8zUGZFpml29o4BuBdK+IxxLYgqnagTnbSIkRGi2CKm6LLbH7H
 V2mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZivRzjlDS3OoPoRTHkJnPDZ3sM1VA8uv4BaZC71qcQ0=;
 b=xwOPTFeUiJI/ojalyCfSlQAAG/q/xIZnhQR2uNDkQsbHlJWi2obC+cXUKtOpmaja20
 z+kNu1g6tXcPcBb4lrN/u26v+H6WtlKN/UAt8q1vymYFzvaL9i4lMz6PUuDkvnfgvm/G
 TDQi/c2YNj3RZA9NB4L9OekIn0ppxFkykR4QSw63q/yj4QVjzScuP7g4k48ZeRn5r8aS
 lkbuHiqDrAYwi6B/kduBj5LIYLaq0QnXlhXpdKAf7F9e+0oAsPSOTe6zGRwRt1uDAx9d
 GVZdMslsSzP3Ac5U5X8DovFDemlq0Ht0qCf8SSx5EL2jcAUzYhdbsI+FWvc9BQp2Fejt
 7xxw==
X-Gm-Message-State: AOAM530xRGzrjC9CPsf8bGdiBKTgAG0qu98km9xqCXaDaLze+ZrVObDG
 2lbUTlLcCg8cprcd+PD1NS3k4A==
X-Google-Smtp-Source: ABdhPJygPkLqys/y+U39Fu7BGJLLDi0mCvGvvIU8zZqRlYMrXn+sA3kU/XgMURJjA1MVzRZj2Sm/IQ==
X-Received: by 2002:a5d:6d48:0:b0:20a:d9e8:57cf with SMTP id
 k8-20020a5d6d48000000b0020ad9e857cfmr6236832wri.245.1650918112759; 
 Mon, 25 Apr 2022 13:21:52 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 p3-20020a5d59a3000000b0020a9132d1fbsm11101003wrr.37.2022.04.25.13.21.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 13:21:52 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>,
 Rob Herring <robh@kernel.org>
Subject: [PATCH v6 26/33] clk: rk3399: use proper crypto0 name
Date: Mon, 25 Apr 2022 20:21:12 +0000
Message-Id: <20220425202119.3566743-27-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220425202119.3566743-1-clabbe@baylibre.com>
References: <20220425202119.3566743-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_132154_157108_083ECF96 
X-CRM114-Status: GOOD (  11.10  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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
