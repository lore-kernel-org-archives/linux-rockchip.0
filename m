Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6C55E8FDA7
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Dec 2025 11:32:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W7/Fem9xwlFlpuF7MYXNXYpuXRt5ZAgVmDpXVuDF4Nc=; b=3ai/MgqS9l0EUU
	vpuchEfQH0IKEEz/EPDKZxI2em8twCZInz40qwYico8WKG7xe2bXyAn4ZbEzwe5lTU5JVUciY6ds7
	36fbJelA/W2JH78PW0QuE+ycwosCcOajHxOAAON5WNWK7yPO/lyz2pEdsXs/CS+6ph+f8floytrUn
	4HBP0ivcTjku1AtDnKHfAbwyfY718B8Af+uM4Q8H8BV5+8FQstNPIxNO2j+wUhPOXPXKnLY8bjaLh
	M/MTT+1HbdEB9fVjCq/WeYIOdmYiwOq8WDM3LJXyrCTJgGlRmeEcKUqCug6rbRbNx5SaKgWJKBB1O
	zRMQdKvZrg275Hjj+dcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vZ62z-000000018qb-0Zm2;
	Fri, 26 Dec 2025 11:31:53 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vZ62x-000000018pT-1tXh
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Dec 2025 11:31:52 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-4327778df7fso624486f8f.3
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Dec 2025 03:31:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766748709; x=1767353509; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KuMCPB2Cfnw96ImXExWXbYx4SWWW9bt6GASD3DMHGsA=;
        b=Fd6aWZY8lvEIRhhxSRHmYUD50cufdybjUvwKPjqjwlwZaI6oAZ26xz7JueN31GLDXZ
         ywGYlc6gyiimkfidNgTCaoSf79flr44fs+VHy6yUtf0P1UE1YEAVWkijJ209hc5mRXii
         JuJ7X5oTalcxYBkN13GZv/1hSNtwetvC4u0jValpMryiZD8uuhFMzRwD52ZGziPt8TC+
         YvlMxB/u5Hjwrng2Xf0YZTV+bhtY5hEvPNa4lMOTkexvVpfUUWOGoqJsvM1gTWpfEHZS
         W3n2jIS2El56FT765s2JxAwPc/iuQvzxcJA2t9ZlQKDzPbU/pNz1RovCUqH4VnX+h2H1
         DtcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766748709; x=1767353509;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KuMCPB2Cfnw96ImXExWXbYx4SWWW9bt6GASD3DMHGsA=;
        b=SVTNtGEm+QiAEjtI+oET3r7iHvJzDR08ztgv4VMYxzfLfO7iUs6gn2c5nujP3PRAJ0
         OmqaaN9j02HHtx1hY1BWrvRHDJxz+irffPmDZY3vwrKdsuYYGBSrzuLSjZCE5IgH7od+
         Fi8iLZLrmULgYGvxkGjOxqJCgnD9rXakPRR24YJrkzomuTji7oH4IQokL+kTtJlODQXB
         x4kDcmQ5G+NqGpJEGdIaWp5MiLrQUiQF3u8yQLawPWwo+qzzDR7eyuuvsX/hJOb3Djzd
         bQG9JFRt7UvWW4T3EKcQGksVHhOaxXj0LTP1Ykn8GuOSxIa1pAYzdcnmoMG1671Dj1+3
         6Q2g==
X-Forwarded-Encrypted: i=1; AJvYcCV4RF4GigRJ3urEcXDce0aQ8qD6WVdvCUW0SJ/53rk0azdY9TAFZDN6evWwQiTw/JFhqROe6tlG4L6n6vlZaw==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywcv+x9jNnD+verGcqoK0cO+ncHcBOyTGD/SCzK1k1dM7pIY/Q9
	/WGlWJ297VWZq3cO773DN5UwU8u5z+FQNEnqJj6Vv+18ohWIVxjYc4hl
X-Gm-Gg: AY/fxX5WE6FrezgkCdvQkjK5/F/LgqUv19W4EJT8p58z6eFnQbhTgum0My50Lg8/9wu
	IBbItBByI/y+X9s39QwbycB0ooq7sEtADWzSav0f6dJqUWodR75gmhx2lEyJfncdbnIzjdSqT8N
	flsArttvegttGOeY44V/fiRO+X04eTsh+MQjcOF72GoP7LlpQ5HYS2v16a/zkpdkBsEwCu+lDAg
	P7alw25YErUtLmhJc/jofZ513IfQ1krUwWAAHzULxptgV3ommXd22XXEQUkSxhnmFtFJvhdKCw/
	yu+3SnaIN0/YXVx/d9hPAVSuOiQHlTikNcRRWUcrUnTDamkKjE5pLkfuF01oEseH/WzvE3DcYqf
	/HVcP4z3M84Q9s96Q+fIGs6zChxNpQtEHtbDUv6v9VWiocm4d9+uLFOTRz9pzPnfNZ2o3yAXANS
	agWru3/Yr0sACWCRE=
X-Google-Smtp-Source: AGHT+IHgXf/up4jkfIeElgBTb357EsgC5MRWNtr9/aPdG43pJwbtZ7QqWeH/nFQ6nQwGUv1j8qob1Q==
X-Received: by 2002:a05:6000:2c02:b0:42b:3246:1681 with SMTP id ffacd0b85a97d-4324e4c97d7mr27121460f8f.18.1766748709464;
        Fri, 26 Dec 2025 03:31:49 -0800 (PST)
Received: from toolbox.. ([87.200.95.144])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324ea1b1bdsm44182107f8f.8.2025.12.26.03.31.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Dec 2025 03:31:48 -0800 (PST)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Detlev Casanova <detlev.casanova@collabora.com>,
	=?UTF-8?q?Olivier=20Cr=C3=AAte?= <olivier.crete@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Dmitry Osipenko <dmitry.osipenko@collabora.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/3] media: dt-bindings: rockchip: Add RK3568 Video Decoder bindings
Date: Fri, 26 Dec 2025 11:31:38 +0000
Message-Id: <20251226113140.573759-2-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251226113140.573759-1-christianshewitt@gmail.com>
References: <20251226113140.573759-1-christianshewitt@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251226_033151_591382_86A0EC6F 
X-CRM114-Status: GOOD (  10.20  )
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

The video decoder in RK356X (vdpu346) is described in the same way as
the one in RK3588 (vdpu381). A new compatible is added as the decoder
capabilities are a subset of the vdpu381 capabilities.

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/media/rockchip,vdec.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
index 809fda45b3bd..656ceb1f116e 100644
--- a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
@@ -18,6 +18,7 @@ properties:
     oneOf:
       - const: rockchip,rk3288-vdec
       - const: rockchip,rk3399-vdec
+      - const: rockchip,rk3568-vdec
       - const: rockchip,rk3576-vdec
       - const: rockchip,rk3588-vdec
       - items:
@@ -107,6 +108,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - rockchip,rk3568-vdec
               - rockchip,rk3576-vdec
               - rockchip,rk3588-vdec
     then:
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
