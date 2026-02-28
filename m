Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14C77FEE4FF
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Feb 2026 20:54:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=plvzTCrzje/ZvpxN7dYwS5ZGNXjkauOLVz72g5HiF84=; b=blq4Fs8+mp8cHj
	l0jUW+RWhZ/8CaUD9B6EeZ2przgpqofencuPeR1f5CBXeqn/SvKaxc1LNc8Kn1c+JXycn6J9tXJGL
	37iZ6uTcLIuSdET1Ik6kxhElTgkyJdthB7DizsHxOHWz7IZy1tiXz7RxBO4RO4cs+yVY2SJrB9eka
	OovLWO8Zg8pmV1L7Cg4cRO9/XpfyXA13poBfHttRy6avBmX2FwiKtkIVXUGWj/qtiPsI4oLgyW7Qd
	AZyi0WWpgm9ZZrInbAY2lq12YLBeyeYjbSNKe0cisy+JzpE/PgHYMExjk0PpaaN5tqq4ODycU6zkC
	CR2W2ezR8QLx9QKJM8yA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwRKU-0000000AGhu-440I;
	Sat, 28 Feb 2026 20:54:26 +0000
Received: from mail-yx1-xb163.google.com ([2607:f8b0:4864:20::b163])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwRKR-0000000AGfQ-1pXX
	for linux-rockchip@lists.infradead.org;
	Sat, 28 Feb 2026 20:54:25 +0000
Received: by mail-yx1-xb163.google.com with SMTP id 956f58d0204a3-64c9a6d6b70so2677442d50.3
        for <linux-rockchip@lists.infradead.org>; Sat, 28 Feb 2026 12:54:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1772312062; x=1772916862; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qwey03mZDyIX0X1N7iXb0Z2GyEloShTQz4q0hZoIMyY=;
        b=KnzSUCKe9a1tdN34D0XPSpW2mKoJvIlJKZmcMvDKi0u+MWx5C54Z9+Y/FHHpKutcMe
         Pa7HCTHN1Cqb9+SaYfECvOTBmWnnUzgHtezV7LM5W/JF5aixEWpjLMSnDov1ABA3Pqcy
         lC1CBrRPvMTmyeEwQCeGwRwK/bJJpma1BCNImkuRmsAee85134tL0FJb63l50EpRcBo+
         GFkgeZxSF0A1NHIGQ7aNdYZ5H3zQuyTU98kA1XfcyXy8MZoWhIJFWMmLWLWOz3ke/wAp
         SmwLc7gALfOdC0PvzsqSAzNN1yR5Zg8iffrwwa7DjMijKh1c2HPt+rz6NuYr30uSp5dL
         Y0+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772312062; x=1772916862;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Qwey03mZDyIX0X1N7iXb0Z2GyEloShTQz4q0hZoIMyY=;
        b=Hlkoxfi5Gb32ZE+S/jXQGA98Q097Ngz5DkKq//2dtCA3FYLHUiEGmTNafYnQaqMn4F
         qCmzvsugToeN9Q3EYtNKqMTuLmYV3kq00qTx4b9aEhq8BMD9NKPjpeLwN0WUL7WAAavH
         SrG4KFphEVJ2WqRNk7m7ds6GDgdKt5PzLSaQ1oQ9z3P4UAbXC14D63e005cfQPhuYuoI
         F2VIgCebXyO/ei3beFFDYjd1KfDpAd7dxPXRLlRn/SsPrWat+bOefuUWsvs5TPeMdYq5
         T5uoO8D/4Kq4gxPLm7IGT9JWSi9K25vlb/cdOBO71lrjI1AjaC7y9ZnToZP5ktKpz3SQ
         Xvkg==
X-Forwarded-Encrypted: i=1; AJvYcCUyX8NHr3+8lF+fvkaV0L7YXMzTzwU5My2Uy+wUfNKiG8aaloDG3iN04bBe3UQoqFVrWIfDoF4M+KAYd0tWzg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxKIETqFUeQytNhPgZfvBDiaQXSVhaH+zKzt2hzw2+zl4nSv7CO
	HgVxofmYMHUxnn97QfJ4B6sIjGMp8auvuCXlt49wQsW/0o/1Wq8RCPu5zkiX70TgzAe9dhfFoQT
	2bdUHIXcSvr2gdNDvdb7tb8hIl7sGAI3nxjKu
X-Gm-Gg: ATEYQzzzK5bqfYOy0ZqKlGRas+xNOCMpY6B5ubAO09347rtsgjP/x5/R2j472xp7e7z
	Lk6ctmhFLLWLHlphbtKyEyEbzAqr4jQyTQK/eeH0BuLs4OEsADDcfE2zrPtSC7wWEmbrmajkxN7
	O3LWCm5VPdbkxvLNaQV1DiQzmOKBmP/AeQ2QlJEpfcBxeHPfJ9LJSwVnB5ILTX7vSFEwxPC0Ave
	vk4gHK9JrShRCXv5H0UK5tALaGgtiXv+Gfm4xJwRdDPt725otfQeYEqbVt3ecmiCAPNn0dJ+s2X
	T6mX5yOAwgc0uRQnykGOruhnX3JJBe1ULW3sqKX/AOiGci3qwnhS97GJyH2+s0S/Q13uNA1svnn
	xahWZz1ZZcr84eovw5dYOsYqxGUR8KoA6RO4uOHiuWxR2
X-Received: by 2002:a05:690c:4507:b0:798:50ee:5b02 with SMTP id 00721157ae682-7988559ca7dmr66829347b3.42.1772312062116;
        Sat, 28 Feb 2026 12:54:22 -0800 (PST)
Received: from ryac.ausil.us (207-179-239-100.mtco.net. [207.179.239.100])
        by smtp-relay.gmail.com with ESMTPS id 00721157ae682-79876bf333esm10213567b3.16.2026.02.28.12.54.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Feb 2026 12:54:22 -0800 (PST)
X-Relaying-Domain: ausil.us
From: dennis@ausil.us
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: FUKAUMI Naoki <naoki@radxa.com>,
	Hsun Lai <i@chainsx.cn>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	John Clark <inindev@gmail.com>,
	Michael Opdenacker <michael.opdenacker@rootcommit.com>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Andrew Lunn <andrew@lunn.ch>,
	Alexey Charkov <alchark@gmail.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Dennis Gilmore <dennis@ausil.us>
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add Orange Pi 5 Pro
Date: Sat, 28 Feb 2026 14:54:16 -0600
Message-ID: <20260228205418.2944620-2-dennis@ausil.us>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260228205418.2944620-1-dennis@ausil.us>
References: <20260228205418.2944620-1-dennis@ausil.us>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260228_125423_468551_4E522F30 
X-CRM114-Status: UNSURE (   7.56  )
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

From: Dennis Gilmore <dennis@ausil.us>

Add compatible string for the Orange Pi 5 Pro.

Signed-off-by: Dennis Gilmore <dennis@ausil.us>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ae77ded9fe47..3c6b83a84463 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1320,6 +1320,7 @@ properties:
         items:
           - enum:
               - xunlong,orangepi-5
+              - xunlong,orangepi-5-pro
               - xunlong,orangepi-5b
           - const: rockchip,rk3588s
 
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
