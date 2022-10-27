Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25D4FC433FE
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Oct 2022 00:53:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ximGFW5AvZznttOkNdJiS38uO9Z91oEOYEE8l+xJHTY=; b=xiqgbtKl3v3CD3
	/6q3wQJwtoH2dxC2XJaI+OGMdabCx9JgXHc/fzfaoCHHbJ1Cr+PE7c+4culRhLOIGLvXo2/evK2i9
	AyiVJewoyxf3D/vaI4GKDhca7Si7oncoYhA+Q7Ad5JljB3nws7kVHDAWGGHazE6xCoat268oqo2dX
	KpIkRSGvQoEQQLXwWkIxJR2U2+oHxK9viCoZTTeu2F7Iv+eKR8XQi3NK8nGvixtrsD+wRcvO+Bt7U
	SW7Z16dZ0/lLkZ64VDH+n9Z4Gp6YnQa3qkV1gLDlK9kqYYEBlsiBVKlRySkgC5WC3W3NJrMNCRXy3
	Cwhc5K/oEPshor9wOZdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onr8e-00BOfj-Ay; Thu, 27 Oct 2022 00:52:52 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onr8Q-00BOaw-8P; Thu, 27 Oct 2022 00:52:39 +0000
Received: by mail-ej1-x62b.google.com with SMTP id b2so284984eja.6;
        Wed, 26 Oct 2022 17:52:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ybHFtQFlusC5omeu3YXQVOdQ/jnkll+XG3jlSuR3Z1Y=;
        b=JRZ5QquTA8oO61xvU2RT9SeJAOYaBWyQ2l+uIIixfdmu63ujGYkC46hk5q4a+6b4SM
         sWjQyS+RR8cE2sJOlq3cDGyLhewgzgSgCxgCa1ok5Xo2T2bqe59lPXBQdQjHcBpDbLfV
         7kAGDXLfNCIJy+ooMHI8zIANbWDh9H51ioEx4ySqhg3eu/7xs/oxJ6JLePP44H1RpDPv
         T2NWMQuTeHDBO5593g5jkbnY+uVT+Ih6UlY+sdT0VQE4tWcxg6LkRAo2XtEeRTt4Xicp
         RtcHZnKDztvyoWvx33XPB+TjdY8Dt5pJyVZfkHCmwQo1gEp+KaG+3PExt3OGOP/JCJ4L
         thUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ybHFtQFlusC5omeu3YXQVOdQ/jnkll+XG3jlSuR3Z1Y=;
        b=FT4kUbcAaeJX9skE6z/rnwCGWPIH08Lip7ICzrRUIpu8gSprICVjHZHQXxfb0qJZum
         1f3rUS72JUVwkHnHOPC5+AcGCIG2aawhCvvWXLTG3OhmEnfSuvbhX1unqmbnuc255GTi
         YqlO7LAb+z0R9WFgazrQBOGwrirt1nKcgM9lgJxQoC0XiB95d5ywwGbJP/dX7kMCEgcx
         rd/S3SkFDiwfixFvmlX9+rV+A25xBOjrETX+X7PAda+8Vb0MVGCOCAEvfLPBDxBfR0DH
         lMo12W4rj2P8yRxOqhSggaA5ehA0mcSKQsyKEeuPdWRxU5rXQSQmF3ZW62Xepa+Afwum
         HFUw==
X-Gm-Message-State: ACrzQf1nuETGd5/4olRtmEdcIWEjXgoQPKb3KcyGbMBcf2wOY96tvq9F
	JelCMUCXnmecOblbmdTR3rs=
X-Google-Smtp-Source: AMsMyM6+8P4B6n5+dZShu0ejqohqVlGyYoGYsVAKNdJ/Y9b8hANB/L2EB3YodE1KW9Ov62LNLFPiGQ==
X-Received: by 2002:a17:907:3d91:b0:78d:f675:5659 with SMTP id he17-20020a1709073d9100b0078df6755659mr38947525ejc.92.1666831957083;
        Wed, 26 Oct 2022 17:52:37 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id u9-20020a1709061da900b00781dbdb292asm3677685ejh.155.2022.10.26.17.52.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Oct 2022 17:52:36 -0700 (PDT)
Message-ID: <939d9e2c-4431-5408-5884-12d328b6a4f2@gmail.com>
Date: Thu, 27 Oct 2022 02:52:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 2/4] dt-bindings: timer: rockchip: add
 rockchip,rk3128-timer
To: kever.yang@rock-chips.com, heiko@sntech.de
Cc: sjg@chromium.org, philipp.tomsich@vrull.eu, zhangqing@rock-chips.com,
 hjc@rock-chips.com, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 daniel.lezcano@linaro.org, tglx@linutronix.de, arnd@arndb.de,
 olof@lixom.net, soc@kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <da1252eb-85e9-bdb8-0542-207173523523@gmail.com>
Content-Language: en-US
In-Reply-To: <da1252eb-85e9-bdb8-0542-207173523523@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221026_175238_326324_C5A10835 
X-CRM114-Status: UNSURE (   7.38  )
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

Add rockchip,rk3128-timer compatible string.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
index dc3bc1e62..b61ed1a43 100644
--- a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
+++ b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
@@ -18,6 +18,7 @@ properties:
           - enum:
               - rockchip,rv1108-timer
               - rockchip,rk3036-timer
+              - rockchip,rk3128-timer
               - rockchip,rk3188-timer
               - rockchip,rk3228-timer
               - rockchip,rk3229-timer
--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
