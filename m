Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0738DCD4840
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 May 2026 02:54:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FbjpEuJPT91Lcu2cgdGZ4iuaIUjPBHpMEWVral2UTLk=; b=2JWepEQiIaDOW7
	FY+G8NCQ9SuZawHXkQlVn4csR8Yd7CSKx3v567+0e74UFoPAI0KLUPgeLdYjHwTI3wqNIRrVig4yr
	FgCnwxlBHvy1EK/VToWRkSdHJwIJdr/BN/ubf1dZXNyksH1NKKDuXAffnSeNSUkB/cUn27YZXhtrS
	y7NhC5ZZzDsz/3ZNBQGavPUP6T2itWe8L4inoE7B5096qIk2L8tozcVUwmSSfvAMDTSgIC/MnU2rh
	NYA4uITRbXJ8tvjPOmsuaiMjnDBdww6g2P94g9ZuoOXNGopVFvLORI2yaizRRv7fc+A1Qm1JLn9cM
	kquxJbguMwTGRn+x+bjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMGmS-0000000C4wC-36kM;
	Mon, 11 May 2026 02:54:04 +0000
Received: from mail-vk1-xa63.google.com ([2607:f8b0:4864:20::a63])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMGmM-0000000C4rg-3lTX
	for linux-rockchip@lists.infradead.org;
	Mon, 11 May 2026 02:54:01 +0000
Received: by mail-vk1-xa63.google.com with SMTP id 71dfb90a1353d-56a86f0a23bso3622537e0c.0
        for <linux-rockchip@lists.infradead.org>; Sun, 10 May 2026 19:53:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1778468037; x=1779072837; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wBzxrwb3u6aAy65Ew28k5XS4vquizRynMypljlvuLRY=;
        b=OGxipXXYSXvz9UZBt+0p8E0h+u++KpD33T+h7u8WfJ3fCvkLvyZSerubJpg6XBrz7q
         7Um05FdiTFDB5drV0YODEvfacQjZLgnXN5+X0OqyJJoxQhDRoJ0cs6fNTDTCIP0mBs4t
         2SEzbw2pJ6QjhtJnPpWKrOxTqrco5KhkVM6EvomHg9ztDItpg03NLT8j0UGa8PbRgusl
         uKUV6ZWh/W3fqKHt1asUlPOWENCWUKjCq6wWqFcDJE/L5rd9elgHH/BvtouWhgYVxh6A
         2xGcvZeHrCVvGW2DZeQn9NFtGAMlmQGAdSQ2URwhg7NVFz762UFI1HZiyNggBEbeLGMd
         WbVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778468037; x=1779072837;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wBzxrwb3u6aAy65Ew28k5XS4vquizRynMypljlvuLRY=;
        b=sc+gxlE3LbJrkKJBPKTjWe9n1tB3kHXJMIuusKKPmz22qU7V4X+D2Xy56kXhP5t3jH
         vnyYmGfdmIgSu19lp/7eUEJ7aPUrcrt6PFxJm+ON9QqKpTPT1rvIk2sTpFPRhFe8L+UY
         bFuanhC1TBAuLf6MJW8lAAK+wnd3kWxLmUH1o8GgdeTasHKwknprNu0WAmgehn7hDRyL
         u4UGIa4InN6dTZR1Ra7Ynplept0uZEfiQKqsYs3A/zGehzRV5KMB064uHBwqAZdn2DWo
         g43RilsRtpwe00TA2S6K1CzwgV6eJ4ixiFtil0npXIE0Yw9jBPeKdfM8ZBA4aY7/6b/b
         ef+Q==
X-Forwarded-Encrypted: i=1; AFNElJ9PWTBHXGvfUT81TVPloStYVnIVCN4/84tZ5hMfMwVDIyUNCx0FTzaXMBvjc4bR7H3kbjcFHbS/vCyKy8AW+Q==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx77WdRsF3lscLQdzmLkM2rERXSR47TdyjQ/FrmJ+TKRt5x47z2
	E+ai4jf1GesAwgnoRcbiUD+zBuyW6QqIm9uMYvm40Nd19JhR99JV2S0I8cB6gw0B4ZLgC8e2R3+
	z9B91P/AiJINi1jJyhtRRCiCoGlXzcHU1440b
X-Gm-Gg: Acq92OEakMdzVXf75WrWxBouLE4JKtuCIrDnEMvhggkl75d24UnrDUoIADlCYJLQ5Zi
	a7qVhTxt59xusa8oen/z3sFh+zcp+ohSk2C5RpXIatYDASXz4AEszDw30FD8tD/7Z8QZ1hiJV3/
	sGJnwbkAswJFjI5d5BD6xh6x1PS6Ymnx9fZHuvymbkbZqCEOYakgD4ROUqhasUOB7g/hIJ5ZJsV
	ljHkNld72VnWUG5TqqY4ETqBO0Aga0daFp2ytPIC9CD2IdZAkVkVcNlnmuBxc1PvGIvKB+FbH5m
	/xeoEau5t6SQmjebNStIIyWl/Q2LuW7lyeCOhA7+hQATsZ4+aWb1lUtSU9PMlPYBabc7Nn+Jpad
	8QIYCKOXh48l+3s+S+mkK0Jvdt1VKnsEFYQn72nhuYDSR
X-Received: by 2002:a05:6102:5698:b0:631:ec2d:12b2 with SMTP id ada2fe7eead31-631ec2d1a1dmr2814871137.1.1778468037614;
        Sun, 10 May 2026 19:53:57 -0700 (PDT)
Received: from ryac.ausil.us (207-179-239-100.mtco.net. [207.179.239.100])
        by smtp-relay.gmail.com with ESMTPS id ada2fe7eead31-6313ff6c191sm698744137.1.2026.05.10.19.53.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 May 2026 19:53:57 -0700 (PDT)
X-Relaying-Domain: ausil.us
From: Dennis Gilmore <dennis@ausil.us>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	Alexey Charkov <alchark@gmail.com>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Dennis Gilmore <dennis@ausil.us>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v10 1/4] dt-bindings: arm: rockchip: Add Orange Pi 5 Pro
Date: Sun, 10 May 2026 21:53:47 -0500
Message-ID: <20260511025352.106126-2-dennis@ausil.us>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260511025352.106126-1-dennis@ausil.us>
References: <20260511025352.106126-1-dennis@ausil.us>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260510_195358_957805_33C30087 
X-CRM114-Status: UNSURE (   7.17  )
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

Add compatible string for the Orange Pi 5 Pro.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Dennis Gilmore <dennis@ausil.us>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1a9dde18626d..ec1303140600 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1338,6 +1338,7 @@ properties:
         items:
           - enum:
               - xunlong,orangepi-5
+              - xunlong,orangepi-5-pro
               - xunlong,orangepi-5b
           - const: rockchip,rk3588s
 
-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
