Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4381C53200
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jul 2026 13:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NBfl+wWXyWcorPMqJj5HR/2hBt5/qIUv+g19UZaRT04=; b=KU+GlEV9mKHYgT
	4AbEAfEnOFK+Xt5AI+S2z4OEkpvXD/uYJq5OfE3PEqHWcqgumKFttdfetykcxku+98wDLEegtGR17
	yNDA3t700CIFMiZAMeXS9MwtAlpj136Snd3EcrOnb2PuZnLaV5qgQ4PKA9+dJt51GcCegbnlKrXEk
	84i/iTizF6syYFZc5uGz8y8beYzkPnNE2QZ7yRyaHgnF/9IuHwi9h1e3HofvuA/yFRcd0Ocz301kp
	/QuEfqKOYHGwL0Jfz684WJqp93UT53T4ZaLEYKIazHXl4JUmYf4HvqOzCaHj3HJyhwiBGYsuayhMX
	kxFv/zEoQsd5NXXsZqxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp4Mi-000000086cE-32MJ;
	Wed, 29 Jul 2026 13:30:32 +0000
Received: from mail-oi1-x22e.google.com ([2607:f8b0:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp4MZ-000000086UF-0HSU
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Jul 2026 13:30:25 +0000
Received: by mail-oi1-x22e.google.com with SMTP id 5614622812f47-4ab89cff9c7so304246b6e.2
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Jul 2026 06:30:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1785331822; x=1785936622; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=MGY9pJ9HxACe2V5dSfk8s/efrdxSSwRbR+Ftr/FTg6A=;
        b=GDO50E2LceqSFAZ9S+f4PwLECZdasyycVtEOJMdMchq1aRrvjuo2GPCOT4g0H5ydxk
         o1KS/tgrd/if0QrS2j7qrhUuYCBnH/NXmy0/ja9a1/e7WWpHEC5+I++DTeK4A0fSkcUN
         3/FI4nkSD5Th2czmMqVdo5P8VNhSsrbzNMtZo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785331822; x=1785936622;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=MGY9pJ9HxACe2V5dSfk8s/efrdxSSwRbR+Ftr/FTg6A=;
        b=fPofzvF28Idv3rD8WhmAreUiiuObQ7N40BGV7dLJJQbQ/gUSMJ9TH1Z+V+tu3PxvMh
         hZj2ZQtIvxSJs3ZbMDd4WxC/i++B3V8hycdjmkWpKGKy3Z56zO1W9pgcIY1Q8QvD+ED8
         /KWCwIL0gtY2JUyaM1j0dA7dGRv24m0L6gAOMmicjsyZ3LBU1j7LTL5NTdEmeHzYMqFZ
         xvgzjor5km5Jz5zexsHxK0AoCA18y431cMaUYhuPgNDcNz9xJ21J1QGgyubNd2ej+OtK
         0RCN+jUdGLWMaza1sl/zbRI+melYH3llnzlZZdypxn9Cj22f+Ls05a3mfz+qIrF4g/Ia
         lP5w==
X-Forwarded-Encrypted: i=1; AHgh+RqFzsck+uC3vGFnimqwT9UWVNvvqoNOMpjxL2O8TIELYFTMs7I5jYJDHkTo2VK94fHLedo2laOC0RE3jqT1+g==@lists.infradead.org
X-Gm-Message-State: AOJu0YzRIHKFbxtqtgY6dQtpJs+Ax301ItyoRmLujp4gNRDU5wE6pATE
	53nbvaGxxUNmGelAr3dm5R/yBvHtuuc7XT3GmqheHLKncTH92xyfK+jJeVc5kHN3IQ==
X-Gm-Gg: AR+sD12krVzswfoKEuJ8RGLcjcLGDzge6oiwRGWNq2VbtIb40Z7sfjbhRx/3Ib8jp4r
	XZhGiP0/60nnxGlMZgNCUkgDQMTDtubXj9xTpGJFnaqOEnObiVVyyoOqeMwNrUMJ2KymLVaTsvY
	GZbRgSChibW60wALWBSv8uisQX7d+NxqSf+WCSYilZiytielWg2L31TOU+UBqvo74RMnmuqXaNm
	DkQXKrkXhihr9UhpbLwkublLmSupGvZyGFLh25IwDWTAKyhQDybouJxr0/k67kyIto4eAuCUFCu
	zi0leC03bqgy16Ns9fra4Cw30Jrix3IJ+/NoVPS6FdDiGUfXvuVfDDpYkkpYusE4DZT34nPEnBO
	FYiYHI/kShLd80PhRKeRvG44c2yTG8oadluyEeWNWrA9zRjZm1Ikc0QmHootJTMdeGqeguCHz3T
	jXHExOFhdVgu8m7TFmFmXl0ESAjKs6HHH6ebi8TIem8eep6X+VqAVoeUfA1ETce/WKMA==
X-Received: by 2002:a05:6808:1905:b0:496:11f1:f2b5 with SMTP id 5614622812f47-4ad5b987d6emr3451568b6e.10.1785331822286;
        Wed, 29 Jul 2026 06:30:22 -0700 (PDT)
Received: from chromium.org ([174.51.25.52])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4ad6ef5d650sm1712932b6e.9.2026.07.29.06.30.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jul 2026 06:30:20 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: Linus Walleij <linusw@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	Simon Glass <sjg@chromium.org>,
	Jeffy Chen <jeffy.chen@rock-chips.com>,
	huang lin <hl@rock-chips.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 3/4] dt-bindings: pinctrl: rockchip: Add RV1106 compatible
Date: Wed, 29 Jul 2026 07:27:27 -0600
Message-ID: <20260729072727.v3.3.3a4f9d47d4dba36e14141f8796afe8907028aa9c@changeid>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260729132736.3807082-1-sjg@chromium.org>
References: <20260729132736.3807082-1-sjg@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_063023_108233_FBD1EF86 
X-CRM114-Status: UNSURE (   9.06  )
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

Add the compatible for the pin controller of the Rockchip RV1106 and
its RV1103 package variant.

Signed-off-by: Simon Glass <sjg@chromium.org>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---

(no changes since v1)

 Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
index 9b3cbeb54fed..81747bb53056 100644
--- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
@@ -51,6 +51,7 @@ properties:
       - rockchip,rk3576-pinctrl
       - rockchip,rk3588-pinctrl
       - rockchip,rv1103b-pinctrl
+      - rockchip,rv1106-pinctrl
       - rockchip,rv1108-pinctrl
       - rockchip,rv1126-pinctrl
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
