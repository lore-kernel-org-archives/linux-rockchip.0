Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0380EDEBFF
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Mar 2026 02:55:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rkZpDJjSuKENtdvyFxoEWNvi+fzCPvVp/p0BM4zrZgI=; b=Tj2ZpAIW62lkRC
	Aie4l0rF3TnFsutsWzZS3Riimjjkd0W1SkCnNpEca3sp+dx3UDfEJkiTj98Kx+omE3YL2rjL1dXQj
	j/cEv0RmWuBDBqIqPnNB3g0bVelH+aeEDZZjb8M6OTJOs6JNxmeRWU6lLt4g1svqTKbYrv/jmdNDB
	DtYuIKCM+vhKwqbnM9dmHzGgP36roGGQgMh8awBGyrsNdhaTfY+3/4RPcq/sQwNBp2N97SERBXTHv
	wKzzMSmtJ+qAisyrHt4gkP5Q9ZCwOX5RXMUNL6QTp8auuBq8TJeRyb4ChBhtxFlQN0gLAhVPSlR+/
	ts0YPEFmZRnKi9835nxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxcOg-0000000GKc3-0Tg2;
	Wed, 04 Mar 2026 02:55:38 +0000
Received: from mail-pf1-x463.google.com ([2607:f8b0:4864:20::463])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxcOX-0000000GKY5-2YHN
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Mar 2026 02:55:35 +0000
Received: by mail-pf1-x463.google.com with SMTP id d2e1a72fcca58-824a829f9bbso2959419b3a.0
        for <linux-rockchip@lists.infradead.org>; Tue, 03 Mar 2026 18:55:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1772592929; x=1773197729; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C8HDblj7fRKJtovg4Bo+ljGQF5b9QTgQki2w/2Xqdco=;
        b=a0sOukJWssjcDdHpaIWWXNkqa84fTUNUJSxtVekTFyu8flwqOGLN0MzFKagGH7SrLl
         aPF6FVls88rDDkqqnxJRnARhdvjO1pZU2ma4OC8erebvxqJ/EKfiY1+O+c+gfkZ4n/Uh
         BsxN7td9CfSkIM9LABm65yXDUR+VQScdE/ofTnukRKrU2hRiLxL2kSaKUteIrvoksfWL
         y9GlNZYF8iG2j4dGJgpmtq+s2OQ6qwwFOoAs7I31e5T6NZ4PmWxxVmH54FWljHcmBkWR
         /25gHgZzqi57K++BZvmSIIpXWol5MiBpnC+CehgGWBeZSBM8lW2byaPojB2XD/2r1yJi
         a5uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772592929; x=1773197729;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=C8HDblj7fRKJtovg4Bo+ljGQF5b9QTgQki2w/2Xqdco=;
        b=ZiK9P9EK3wsesO8fD1EpC+Vjpz9+l/RQk+c9Ysft9JeOfD54WMgNXRN9iuvyApCgu3
         mJUsEWj3JS1oB8EhiW2S/T+dMqz1K6dPiTWJBxk8pHzrtQDmb5n/eT3zi46QC8sICFmv
         CFkqLrpoMyNzkV7Kp/PVyEMQe4onjXavuRVffskdXthh2rBMv3MLB1kxNaSa1+8qj411
         5cov0I1oumkkkjoJQjBQYNjICnQvkoIjJnQFFx5hWrJ++oTUezl2SiBc67w46+BGGY8j
         lfNdyjTRkanq2vkVl5UsjXMvua0lItsed1NbXi3w7dAKsEKhuhluPMKFfLbJ58UqjYGv
         GZrA==
X-Forwarded-Encrypted: i=1; AJvYcCXYy4hlpI4+BCPTdYrWX8TMTX+q/TCM7mnNeS9ywpZjiByDy9FLHfDhHJOGAFauwygSy4OMSPWBkdE4vLuHjw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwprxuaPs8dQQ3lq9OxWT+ZKBJusTSuCo0zGHzNQXoOLpLhhsng
	6KF3GJK9urQzwLIrWcyhgfXKYiCKLXaXfNY9h1Emzyv1G0RHrtX0TgqyYzZdc1qa7KnyW4OFP95
	ecLXNs7FC086z+Tm57xOksNAf4zvYVxl6K0rp
X-Gm-Gg: ATEYQzxKbTx1Lb6z4KXgxEppyYjalp+zqxBtZ0Y81RnPfmVNeG7r01HdqlUs3Ogdc4i
	gTwf7ZS+8wPOU88hUJBJtMMNZ+6UlVv9+vE/xpuK14cmO8zh82svH+uZNfYZLZCay1EXvBg4LKC
	Pg8kuEwn2NxYozX3a9nMgbxpVct3VjUTz4CJPHp5iJwtZCEJ/VSmktUgzX7FQFOPRFJrmeL6irx
	zsQeIEwoSX9I4E9c16pDIRVNjq3HWKldx24dkyhzy2dWr3FlqjWesF3UGdkiou1aeFHmgEZSAmP
	DY4qYIb+f/4HubkkkOtdd8yNS7HU8HCdyDuSE/ykWtwDOABp3VQIK8sODVaZC9aRqgukj6qpXWF
	6GYUkACZeqFHuWk6UgawT4GjEzq1eJCASnujvzVr8GPYx
X-Received: by 2002:a05:6300:2109:b0:366:14ac:e20a with SMTP id adf61e73a8af0-3982e215fe1mr450654637.72.1772592928735;
        Tue, 03 Mar 2026 18:55:28 -0800 (PST)
Received: from ryac.ausil.us (207-179-239-100.mtco.net. [207.179.239.100])
        by smtp-relay.gmail.com with ESMTPS id 41be03b00d2f7-c70fa7d59b3sm1374096a12.7.2026.03.03.18.55.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 18:55:28 -0800 (PST)
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
	Dennis Gilmore <dennis@ausil.us>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH V2 1/3] dt-bindings: arm: rockchip: Add Orange Pi 5 Pro
Date: Tue,  3 Mar 2026 20:55:18 -0600
Message-ID: <20260304025521.210377-2-dennis@ausil.us>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260304025521.210377-1-dennis@ausil.us>
References: <20260304025521.210377-1-dennis@ausil.us>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260303_185529_647109_330660ED 
X-CRM114-Status: UNSURE (   7.69  )
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

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
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
