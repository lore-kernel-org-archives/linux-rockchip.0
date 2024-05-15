Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28A39C25B79
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 May 2024 12:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sk31yoKrU5RqfLfsA6nB8nLijGN5GgnjBoWKjmXvElc=; b=SkwrdfmTKY4ub2
	yfpM8Okyh3hhrfxAO/yqu8HFcIBG6Pxz7rjkYk5tNjqFpNcdNHAfPnWVZ4SRljr6TLoIJ/CuOpw81
	C+XIbFOLY6Zt/qLNIQLxn1/2shwZNyvPImVwKAcvmHiSfyLZFjOIi5H7JjAm/cpKCsYkCkqVw4pRW
	hlae+5ctrJpes0t6G5XTC5xfv+Du/Wq7sQHh05n4tj1RpV9HVD5uHlXCVh5sJbQOlMCsae19YHgog
	IL1ZKFl/iyFwsQczS9I1HQmXxotg4gROO33mubQHPzkxtF0Y5MAwgFjOAPrKfhlo/yWDYqDFFCQKT
	R79gaKIMsZkNIXak/Lew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7Da4-00000001Tj8-1cTU;
	Wed, 15 May 2024 12:18:00 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7DZy-00000001Tfm-1AxL;
	Wed, 15 May 2024 12:17:55 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2e6792ea67fso37547521fa.1;
        Wed, 15 May 2024 05:17:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715775468; x=1716380268; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q3KqD+Z3JR2ObvSBJ0FdCX7GwhteJE/GLd+R3VulPlg=;
        b=dNbdg/9voZ+Y+lQURSiX+pKjJu3BkbuVflNy24gPDwBKcWsQwisjN5mn9pvndpOb5S
         mgzip5DpTvRd76LLfws2yd6YpdRtsET9yCNKLw1YbZfX1n5hn2xq8cGsj4x1PIDYxAFw
         mQH8eVyoxFs8joH5ipuSC5dExplWAj0PPhdahniccWqzicA+/BWE+CJWfeyYXJ0rgbCB
         y0+Oqy+uIvvm00Tz4mrG95BF1HvmjRNaFRmHvZcnjdfk2UKeYn705GV/xslxbcYd3AIK
         9jFkhqBHWDDJf4WXPxOlO0fr7xSeaCejDlwtwS/s1IW8WOGaLWjmQSob5zSUYO65Mm/c
         VBmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715775468; x=1716380268;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q3KqD+Z3JR2ObvSBJ0FdCX7GwhteJE/GLd+R3VulPlg=;
        b=AN5PMp7N0zvhQX/rLEIpUwzwn9e/SOI6yIaScq0eJW3g+JSmh7n3fYSHFcri87GnCR
         G29xh30k5sexin8vqTdVxmQufq0JBJPr+PRoS7gLt8QpzcI9PQvMK7rdmAshHS6Hb0Hm
         CgpYw5lSB30SNOmXme85GYsqnethn49Luy7Rk9HrR3Cu/9bpM6IPcFLxM53JcdmoRi4f
         vqTE73hyG3hLwz8uEPSz7aiVfx5vqnN4cwmDfkFBHGiKtqjlAoQJ59yZQ7SEQ20Q4rIU
         SiS4MXyL0iTvMUUfBXZrRxY7eIDp95XlCHvSnW48uAFj+a6yRyxoVOTWu3b3w1KrzRKo
         v3Og==
X-Forwarded-Encrypted: i=1; AJvYcCXkbU3M2xmPP+CcnES/vLgOdHKv1VtWAjc4QczLaARPpeAAQb1erUDXNLnYFSVN/9GX211BAtQ3fPWUcsBIbOdNjipnC3vF/L+dyeD45UKu8Rpf0mphcH6pkae73h6d/Yerk3JeqoA3SKxfqILDOZehzd9gDbxA0Dw=
X-Gm-Message-State: AOJu0YybVIKNEJbkur/uuBKVlRpYEbhGglXBd7IGzojmy5zu6DqTxTw6
	KeeeIgwkf3udC20B6iha+OJxp58tjRmMoIARGnRnwpUqF13cdA0s
X-Google-Smtp-Source: AGHT+IEXRk96wg3lRsQcAuggItL4GF0NS8jPU3fr4ziy9hJdP3xCvb09LuumKpau5k+swE2FzP38nQ==
X-Received: by 2002:a05:6512:e94:b0:521:cee5:db36 with SMTP id 2adb3069b0e04-52210074834mr12700228e87.48.1715775468388;
        Wed, 15 May 2024 05:17:48 -0700 (PDT)
Received: from yoga-710.tas.nnz-ipc.net ([178.218.200.115])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-521f35ad684sm2515614e87.3.2024.05.15.05.17.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 May 2024 05:17:48 -0700 (PDT)
From: Dmitry Yashin <dmt.yashin@gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>
Cc: Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Jianqun Xu <jay.xu@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Dmitry Yashin <dmt.yashin@gmail.com>
Subject: [PATCH 2/3] dt-bindings: pinctrl: rockchip: add rk3308b
Date: Wed, 15 May 2024 17:16:33 +0500
Message-ID: <20240515121634.23945-3-dmt.yashin@gmail.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20240515121634.23945-1-dmt.yashin@gmail.com>
References: <20240515121634.23945-1-dmt.yashin@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_051754_345781_63378B8A 
X-CRM114-Status: UNSURE (   9.00  )
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

Add compatible string for rk3308b pin controller.

Signed-off-by: Dmitry Yashin <dmt.yashin@gmail.com>
---
 Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
index 20e806dce1ec..1b38b496cc8b 100644
--- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
@@ -41,6 +41,7 @@ properties:
       - rockchip,rk3228-pinctrl
       - rockchip,rk3288-pinctrl
       - rockchip,rk3308-pinctrl
+      - rockchip,rk3308b-pinctrl
       - rockchip,rk3328-pinctrl
       - rockchip,rk3368-pinctrl
       - rockchip,rk3399-pinctrl
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
