Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7413CD1288
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Apr 2024 15:15:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YaWMsPCK9RgMakEM9+pkDr8L31Z1N7xGu9pKfB4qRj8=; b=nAfjpmzellMTY6
	D0nrFO4aSEftNYTS/my15cGw/tCsKEWKqoac6/p8FeRbYY+9ZCBvRKAG4Io33qf8arW1DhNRQ9UPz
	5oZ18FhKaUob3hwLirOpvx3Cle4sS60zxxJW4vs8b7GE2ueAVp+9TIO+6fYGCbZVnBRX4AwzL0e/Z
	L/2N0SoxN/vAx4Kq3qjgV8STvNGrd9xVxDlLSgKSJK6BBYlhHBP150krA9JsqMe+DsCwMAu60EdMh
	WIIMUOGY/I9JQhVIiLfO6tcZM85nnQX4CtHg47osCJY6tad551+CQvTATVswMGvfV2V82BT5gb9Bf
	tbgDKUT7Ebh/21p61yug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rs2KX-0000000GgAw-1BD7;
	Wed, 03 Apr 2024 15:15:13 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rs2KU-0000000Gg93-1BhT;
	Wed, 03 Apr 2024 15:15:11 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-515a97846b5so7066677e87.2;
        Wed, 03 Apr 2024 08:15:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712157307; x=1712762107; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K9DvDDhS7AAIoJbW8z9CAGKW4h0e01rZII/6xw2xvNo=;
        b=GVMhcoVF89mDa9LUQfXoyIdgbVDKfca2VrFbrL2hjUCV8lbPeJx0XfyvevtWOHAXVe
         BQqVYzaMdtG+9zEVGtV+Er7xvk6rMPMG3zxWhrIB7UIJDrRPc9KaDCdNnKz4o0tNB39F
         XoE2PQJKoF0GFxdzJ3vCcNmMFZF1GhOZJQ138SEIj+rX1fNxw2eZ3jlwnodt94rEqzKk
         VESFHqvceg5tu62/NAyroJU++rYT/a399F+iTorQi7Qw8OOtoXECFNTSpCnY+kzjTMz+
         8DJLVpLQtWUMHKBT9V7Mbj5p4RY3YgI+CBf5PEzlyQBkuCGGmeCHpqIsO0S4sEQ9VIPA
         ahYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712157307; x=1712762107;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K9DvDDhS7AAIoJbW8z9CAGKW4h0e01rZII/6xw2xvNo=;
        b=BFqG4qSkDmEdPLYU3+ITr81r4jdMTZgbCXPFNayKU+sTZifU9O61UwDtkO6hRT2JQD
         anIiIy4NJjwA1AfqVnFxzF3WszWeGZZtUtexSANhhlUcBH8KiZq2JWcRqrH1oGjyWZl+
         A0t27RmDE8wdjOVd1deMNZTLuSfrOvUVouvfHej+NB8vuB5yO0a2mtf5MM49eSP0a/8t
         3M5ZyKuUqu5ZgHm+Jnxr0lYCPg6q/9F0pc65eFQQ29H6FNicz+gVJmDcHpxxLRx1yVUq
         SnN0tC9rM4X0ZRxpV58KabEfwI3j2pV2e79kbw3VJZ3ik6/2Pjl3SST8f33l3HmkSOOG
         374Q==
X-Forwarded-Encrypted: i=1; AJvYcCVv0p7TNXSfi/zmQG6eoGB47J32Oi7BubfPsPHIPWFNTo7moUjzeiXzeUBk9hDeDtkYzn65ZKCyOUWRQ20wRCEajFjZ+irgK9dcscSXzUo6SaL4WHRLv8hm4cWZmnmak3dSOBVuNI+H15N49lTTAkVr6DwmLabo29Y=
X-Gm-Message-State: AOJu0Yxsc4J50wydCQCVoIXunpDdQROg5NbIlVLw4Btz7UCDSVZIGcVd
	IU/LIe7qXIjZYaxRDLCZ1b/36rPd0ENi16pbfiBbmtEIN150HzbJ
X-Google-Smtp-Source: AGHT+IElyLvQavifnocrB9GexBBa7fY1VWFgDzAzVxIUg7DTS2DEPfT1SI7ZYNsjLQcPQdpLzjfp6Q==
X-Received: by 2002:a19:6459:0:b0:515:d10b:522a with SMTP id b25-20020a196459000000b00515d10b522amr9939503lfj.30.1712157306999;
        Wed, 03 Apr 2024 08:15:06 -0700 (PDT)
Received: from yoga-710.tas.nnz-ipc.net ([178.218.200.115])
        by smtp.gmail.com with ESMTPSA id d6-20020a0565123d0600b00515c1b1fb85sm2055092lfv.233.2024.04.03.08.15.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 08:15:06 -0700 (PDT)
From: Dmitry Yashin <dmt.yashin@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Dmitry Yashin <dmt.yashin@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 1/3] dt-bindings: arm: rockchip: add Forlinx FET3588-C
Date: Wed,  3 Apr 2024 20:12:27 +0500
Message-ID: <20240403151229.30577-2-dmt.yashin@gmail.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240403151229.30577-1-dmt.yashin@gmail.com>
References: <20240403151229.30577-1-dmt.yashin@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_081510_351128_0846C8C8 
X-CRM114-Status: UNSURE (   8.25  )
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

FET3588-C is an System on Module made by Forlinx based on Rockchip RK3588.
This SoM used by OK3588-C Board.

FET3588-C features:
- Rockchip RK3588
- LPDDR4 4/8 GB
- eMMC 32/64 GB

Add devicetree binding for Forlinx FET3588-C SoM.

Signed-off-by: Dmitry Yashin <dmt.yashin@gmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>

---

(no changes since v1)

 Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 99bd5e2c76a0..2e61c3980444 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -198,6 +198,13 @@ properties:
           - const: firefly,rk3568-roc-pc
           - const: rockchip,rk3568
 
+      - description: Forlinx FET3588-C SoM
+        items:
+          - enum:
+              - forlinx,ok3588-c
+          - const: forlinx,fet3588-c
+          - const: rockchip,rk3588
+
       - description: FriendlyElec NanoPi R2 series boards
         items:
           - enum:
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
