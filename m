Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51077C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Apr 2022 19:26:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GR2Mqob1pbbmyqyAEvQTaHicS3PW1q6UTOI88ydJ/CM=; b=1qzcP3oAEnU+vO
	9Bm9V6OoXa3x2vxO+9EQP2v2BRva2B86u5NdJwbXAdQaH2jr1+jnmzyFqTPG3j72Ls66kemPS2RWm
	mj1OEycxWqPIXFPGrl0bUPFJR4YGJlPxnyx3qa9bitRL2Kgv5Ci+09I3X3DFTCPMeQl99ypVFK9OQ
	dEwSfJ3YlL2sklP3cLjuP/dYDK7n+VFfPIIxK+inMD9gr+XbNcwijyFQmT18B6EihOYh/Y9cMyDo9
	wv3FbW++4SFirIG8bfr4hMJVMAO16HRSbGWitMhQjJC7/ux5ImAebamo6eCLuGvo9qslh924+3wPT
	l/n4sw2FvmqWc0qlCIUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neidO-002Qag-CH; Wed, 13 Apr 2022 19:26:34 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neiLH-002IHy-9K
 for linux-rockchip@lists.infradead.org; Wed, 13 Apr 2022 19:07:53 +0000
Received: by mail-wr1-x436.google.com with SMTP id k22so4008378wrd.2
 for <linux-rockchip@lists.infradead.org>; Wed, 13 Apr 2022 12:07:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZivRzjlDS3OoPoRTHkJnPDZ3sM1VA8uv4BaZC71qcQ0=;
 b=4qpG+wPcWlV9H9McNW/hf7VgduGQi//EfkzzVnJkwiWrdA1qy0fZjNBenGYQhb4KIz
 ZI/rK/jiVBms6A5n98XFq0U2AgGhfrXXwqpm2r7tMySiOD/9dWS9zjhGg+E2ebfqrlo0
 J+mz0FrIgnp41e3iAdCquF0DXaoBnKjxbT+d76dk2yHyLOxVllirausymvjwpJz4Q41Q
 S4o2GegL3njFzUdOm68i1VMVLAzvRtHHFGdU+PJ0N6FvGnYU3LiEumwcax32Ec2WJNwL
 e7VUWlNDJIpePsvHTcMPfcO/5p6Mlm3R0a8b/FAR9EEDKXm8U2EJjjh+VqRYWAiG/LKF
 f9SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZivRzjlDS3OoPoRTHkJnPDZ3sM1VA8uv4BaZC71qcQ0=;
 b=dVoTelA2bo9mVfMlSIutVIo/mDJ2Xrml0yyTo3gHTBVnuDTxgJXXN5bO/y4PeCEI7G
 ob2Ul1NnBbPZa8gctrJ+4hEGUT+yQdDFRHAL+JAZK7rFP8+kmf+9lfUXvo7OuyjSYtqN
 v6wuRSVkUSfVulN9I0p3rfQYFcglSlgCizK7STqUVFzsfKfbNZ5dH6XDxyXNMJTtgMEp
 rGeI5ElWhJb8IGOihAKArmVIZWTOswarxA9vfeJbH/QGi6ppIUbPVsPJt0phPKnp/URQ
 WtVoJSOWtvtYL+sFDoyqYxyMT8KM/I/nssG2O9QO14DyDjYTJO7EqXJUCj31G+yeisEp
 iz9A==
X-Gm-Message-State: AOAM531lsQ4wom2eI7/Dftm7xIX5IKbqBG/zcG7izaFMo829zL6B7Otx
 Mn48QGCWM/CGLm50wb1JHiQSPA==
X-Google-Smtp-Source: ABdhPJyrIgrtc9/ftutZeGYOaxutVIoFcU43Mu2qQQ9sJOihz8w+iWn8GtmNQotyL8RG32NjdF5GLA==
X-Received: by 2002:a5d:4cce:0:b0:207:a1f1:6f50 with SMTP id
 c14-20020a5d4cce000000b00207a1f16f50mr229342wrt.139.1649876870075; 
 Wed, 13 Apr 2022 12:07:50 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 o29-20020a05600c511d00b0038e3532b23csm3551852wms.15.2022.04.13.12.07.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 12:07:49 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>,
 Rob Herring <robh@kernel.org>
Subject: [PATCH v5 26/33] clk: rk3399: use proper crypto0 name
Date: Wed, 13 Apr 2022 19:07:06 +0000
Message-Id: <20220413190713.1427956-27-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220413190713.1427956-1-clabbe@baylibre.com>
References: <20220413190713.1427956-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_120751_416772_066CD224 
X-CRM114-Status: GOOD (  10.60  )
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
