Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C44AC25B74
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 May 2024 19:44:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1pTZeubCTNYWc0ANyqFcAVGBF82YJRgBIFxyaRhx1Hg=; b=dXua2P1kcV6dAp
	Fo4xRNTz77NmfOq88t0H1fptSFuwOrVDCoW/tXbPt7ewG3EYzecJxja0wp7ijGsakTyDybHrvikpU
	fYsOoDW/v/vPOret2cQfWGdQxH3a8HyRq4SW9e3T6+j+PsySTDUFempMG2EosdVNbTMMBWhY91VgA
	mgI7lUgY1a626ueBitpp93rPwE18iBMhLDpGmz5g5Vl3Np1cKAIhKq6677kdS9pP0YRhIXalW7/G3
	wpO+KWIFUL3pUv1/PzbHOKFyOSV+fV5fO3oV8WBkSZGCG2KLOd5m6jUimR1TB8EzvEcUMg3eB0ZOu
	VGeRW3IaVB/Xo0nvZdFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s44Fv-00000008YGh-1A66;
	Mon, 06 May 2024 19:44:11 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s44Fm-00000008Y98-2Tac;
	Mon, 06 May 2024 19:44:03 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-a59ab4f60a6so492271766b.0;
        Mon, 06 May 2024 12:44:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715024640; x=1715629440; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yZPuZVUOkEjt2jKWfIEHf/5qiKMeNNTvIl6Wxm0Wr0M=;
        b=GuKgSOWauFcTbCtz3w/muBDnLdjy2ceEmHT3ghh9G6pdPW7OKYnjP2iStUL32IUjX9
         6a1it6JvJ46YdAED9K4kvKuHTetHLQ89l0x8K5f6R/7TSQWs+qqUED1BZLlGU019V3sn
         p+ElIvzjJHCZAuV1jqQSvU07mga6uhDhelNIeQb3tsc5LCkLBHstizTbmu1zKJdHzUQH
         c5dpONgWp4/Z4QvYf9Ue1hl+KSzK8HEJcENoYISxXg1HvF4slsHMyf5AMT5qc/9mTqWU
         XzjuYzj0lgQNSo9rTo+N2/RfUW9XDcrogAjZ0aY9kdvErSaSPtASPlPKsx6BXqv0XDTf
         RM6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715024640; x=1715629440;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yZPuZVUOkEjt2jKWfIEHf/5qiKMeNNTvIl6Wxm0Wr0M=;
        b=X1hvHIaR4pNmduG5MCjE356QTaIXKeXjdQQLL7a5uSI71MaRJxwlRwmsTGtMKTRw8H
         VrVhPanP3vXTOzNxUbk8tbYs1fWIcmWgVcekysQFagwRO1asDbwp3LlcVqjvQmz+rIxU
         eP+peorhK0EBGvhED7itxg6Ng9jrmdaS1UcL5TwHWZihlNmvato12sJk57p9MSOE9Xe3
         FIdEjFekdIi6xJQlQKFBxzYc7yhwRAgSqT8fFv8TfKkMdeRjIgD98g9YbmI4f1/UYLs8
         7Lloelwlfk+uxET25A+OnEZjV1R2hBVYyFCLTF/6DGYw3QPVLamc1QAd56siAlB/RyOb
         VtiQ==
X-Forwarded-Encrypted: i=1; AJvYcCVRNvN4OdcEDCKm9tIXbhcu+jvBspedjfBpbncYLB6kC+4WSsuXASZBDOb70J9L5hJHFN3HChagIh6ouczdY5c8Y4FdkD4M16cRfS14jMCR/xHStbx+BK4FadT42K++FVGcywTdB2newHpeiC9Jovx7ufnpphWcSaU=
X-Gm-Message-State: AOJu0YzVR3yk27Dka2jldL76nvdcxi23tr9W4+t2KAFkKWTQXZDeNcKD
	zDC7ytjNIRJRIAFdwPlW4ZAnzMtdlRWltnpd2P55AEGIpDzCddU=
X-Google-Smtp-Source: AGHT+IGnSZ98ZQbdnsdJyC90pRyVt1nr5YcSW20LHXMtpRatNPwIAZ0FaJwwj91H77v0m8hCBi2Kpw==
X-Received: by 2002:a17:907:6e87:b0:a59:b9b1:a1d1 with SMTP id sh7-20020a1709076e8700b00a59b9b1a1d1mr7115835ejc.46.1715024639700;
        Mon, 06 May 2024 12:43:59 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:1c62:e77:6753:5729])
        by smtp.gmail.com with ESMTPSA id f13-20020a1709067f8d00b00a59d146f034sm1367321ejr.132.2024.05.06.12.43.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 May 2024 12:43:59 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 2/7] dt-bindings: clock: rk3128: Add PCLK_MIPIPHY
Date: Mon,  6 May 2024 21:43:37 +0200
Message-ID: <20240506194343.282119-3-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240506194343.282119-1-knaerzche@gmail.com>
References: <20240506194343.282119-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_124402_656790_9F92A66D 
X-CRM114-Status: UNSURE (   9.65  )
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

The DPHY's APB clock is required to be exposed in order to be able to
enable it and access the phy's registers.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 include/dt-bindings/clock/rk3128-cru.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/clock/rk3128-cru.h b/include/dt-bindings/clock/rk3128-cru.h
index 6a47825dac5d..1be455ba4985 100644
--- a/include/dt-bindings/clock/rk3128-cru.h
+++ b/include/dt-bindings/clock/rk3128-cru.h
@@ -116,6 +116,7 @@
 #define PCLK_GMAC		367
 #define PCLK_PMU_PRE		368
 #define PCLK_SIM_CARD		369
+#define PCLK_MIPIPHY		370
 
 /* hclk gates */
 #define HCLK_SPDIF		440
-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
