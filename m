Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99E19C43217
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Apr 2022 22:45:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rq/qqr6Rz/nvr7WSxHOkwq5/nHs9ztnh5yAJSN8rffE=; b=NOTy+ru9FSw8h9
	tQX3Hr+qnpoq2nIVi77Wv8Ja25OKUmgSldiFymAHII5XYSoJ9kINqOkE/u87Sf2/SZ4RK9aGYel0U
	FVUf9Z7fEtYCBO/jPQBwGGfFS5/qrV9JLo3k0TpJkK6GmzA4AWxJuiYXETNpWeNNqf9cRzC3A/lxq
	AiPV1LVUiSsOGDWsufQiC8TSpcSkkw5qljUK9cbrhA3qha3HCQhaAC34Y6OjPPUGXFUf7K6Ct6hUB
	Ng9JfKaeZk2xKYQbumzTe5edGXsxqvg1o2h0sp1oIFYX2votshtzj9bzlixwTc335blPC0gPCDHmu
	AWjZD54k9LFX79GpqiGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njqPa-003oRp-TS; Wed, 27 Apr 2022 22:45:30 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njqPY-003oQb-9W; Wed, 27 Apr 2022 22:45:29 +0000
Received: by mail-ej1-x636.google.com with SMTP id g6so6166679ejw.1;
 Wed, 27 Apr 2022 15:45:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pyZvRC+ImUtuat2otlAa+f33aNRxDWXd/DqxIdwCo1s=;
 b=QpNFUZCPgzvdxrGKeCw1W41OpBdSFRjJwTsfaMThDGiHLWIhgzSokitg8g8IM2htVc
 YsApSbH22jVkv+rHfesfbCLj9PDAcGtoWK2fekHjf6RK5ZPvcWpUFXB0LFrZJ2wM0fhN
 PKz1VqaEDxpHiP9mHlZ25CR2gR1AACS8PjNhMoyakaagTgVDCFrDvxfwgGWTTM1yEy9i
 noQFafrImDYAxOwP+jQkxagBInbL7K+ZBDmu5hWeoIwVyxFLXC+MkBcs/D9xffKHSVc7
 SgazfLKyoewySjF/D6sXLEX+wL1ozb+foLEmuakwzMoVrW2SmzPYgFk3Vo8OWzjZSu6M
 3w/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pyZvRC+ImUtuat2otlAa+f33aNRxDWXd/DqxIdwCo1s=;
 b=6hcvCeOSlgvxMjaDYWE3ymYxiR3VLXd4rMxJKqO1sJsUNJFnZjeZTgh4iiKxbQCeii
 kQDdk09lCL0etCc4skSV8NkNR/Kc5rMkYGuEu9Gz3XYPczFKgMCVsrS4WohbyKlKFORA
 VuAcZK6RWoy42VhSIUhvwcToG0QhHu1WTyzCVMI/NSWXpsSYjPWysBdhppeLf7uKb2P5
 RmD0jf2hBs5y+4naiKX7sueBPvTQPibmUcI0RxHFRawPrfkFX+K5joiWmFjlcSkh5TNa
 4TMDtvZ4KdpYnbfQSMaJy0wMW3oa05KAfNckp2MGQ0fDmruzPFwBs0LZSVt/NB8IYfIP
 PWaQ==
X-Gm-Message-State: AOAM531BOHeCIoDX83E5tLY42peMkpcK1ujngw0ttF+bKR/bGY3nAvg0
 nHwqNwre78ix92c+vFBrUl4=
X-Google-Smtp-Source: ABdhPJxSIML5RaPid0dIjEvzf2jN0CDXNzAePhE3vd+DNERD2jnVTiDLJbNV7Y0XeAhPFY4oIwLgIg==
X-Received: by 2002:a17:907:3ea1:b0:6f3:d6a0:e5be with SMTP id
 hs33-20020a1709073ea100b006f3d6a0e5bemr1607123ejc.522.1651099525898; 
 Wed, 27 Apr 2022 15:45:25 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84]) by smtp.gmail.com with ESMTPSA id
 t27-20020a1709063e5b00b006f3a94f5194sm3762594eji.77.2022.04.27.15.45.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Apr 2022 15:45:25 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: media: rockchip-vpu: Add RK3568 JPEG
 compatible
Date: Thu, 28 Apr 2022 00:44:36 +0200
Message-Id: <20220427224438.335327-2-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220427224438.335327-1-frattaroli.nicolas@gmail.com>
References: <20220427224438.335327-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220427_154528_393607_2CA1FB28 
X-CRM114-Status: GOOD (  11.40  )
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

The RK3568 and RK3566 have a VPU node solely dedicated to JPEG
encoding. This patch adds a compatible for it, and also allows
the bindings to only come with a vepu interrupt.

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 Documentation/devicetree/bindings/media/rockchip-vpu.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
index bacb60a34989..cd62b44c34c3 100644
--- a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
@@ -22,6 +22,7 @@ properties:
           - rockchip,rk3288-vpu
           - rockchip,rk3328-vpu
           - rockchip,rk3399-vpu
+          - rockchip,rk3568-jpeg-vepu
           - rockchip,px30-vpu
       - items:
           - const: rockchip,rk3188-vpu
@@ -40,6 +41,7 @@ properties:
   interrupt-names:
     oneOf:
       - const: vdpu
+      - const: vepu
       - items:
           - const: vepu
           - const: vdpu
-- 
2.36.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
