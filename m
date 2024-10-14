Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 197C5D1813D
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Oct 2024 19:15:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W7RVLSKnnUlnqGfmTotq5hwVxD0uOc+XDXO6dBNocEw=; b=OypUJgYOeDyey4
	579+/oCrzPuYivGzhUdZJCyruZLDmvjXVTZW5RhHq5/xRewqxxj9QEiMHfAbTqn1xOMIPPDMNZ64a
	6pxGXYkl84/u5JxWEt40cNQ6rEm9pN42uFgrmZdHEX0kogMAMH2gEcdUaGKKbNvq+dCujKL6kdel/
	eGpPma5FmSqWBO9VkqJYz5UD+2z6WTXQZ+AToYoRc9HV2EqEeJOFwB9XwOnRd7ViZKU0AqC4Mr2Ti
	PrgMqc1mKJkw0Z3IpglNToGUY61JuTZNSHb605tG6wZ6zgAw4RBEFFxTIx5pIqMmnvVGenNXJioZj
	r5PyCJy1zHXK9g+48jGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0QXP-00000006Ght-3ars;
	Mon, 14 Oct 2024 19:15:27 +0000
Received: from mail-wm1-f50.google.com ([209.85.128.50])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0PPt-000000068Re-2VXR;
	Mon, 14 Oct 2024 18:03:38 +0000
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-431286f50e1so25840635e9.0;
        Mon, 14 Oct 2024 11:03:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1728929015; x=1729533815; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=ObsYGsWlXukxxjuEIramfBHcuA8P6eCAA0Cj7es+Bc8=;
        b=DKdpfP0r3z/mb6tuK5NHnMMy/KrXGB3SPteTcxzJ2aMPKpnAJNBCUvnPmhENbji/3b
         ZeTNLkLYFKlQiYtOHIjqAM07JGCLwrCZEuUOUxns1QgvpIe712qkbE3e7+YpMNMIvtUC
         JhtxOaAJA/HjCzeLQX/lQw/aSrs4CfkDMbwe7qR2Ad5XPfDcSh8soaX+8126u3ngRc/n
         vZItER9UQZW/XVbSNW8XIMKxutaKK6STqoD2adLAekA2BCpoq8Bau3ShwQGybXTo5KZY
         JZ9eoOjxIplJ85aaMa/UuxTMhKiZEmYEeFv9hPG3oXWyzN1ZYhUqoajHJCnnbbhmn7Kh
         H9/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728929015; x=1729533815;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ObsYGsWlXukxxjuEIramfBHcuA8P6eCAA0Cj7es+Bc8=;
        b=lccWPNvd7Jb2GW2VxtLQ+/EhtdMhE56VBG4/ZHF2yEBCIsA9Ty/GKBiX3ZWlzPbI30
         PSsow75+hY/0qhNO6bzab/IoODt0EgKxl4+UG2Ccwb9+ISe6B4ffOLMlgf7kSATPCwxI
         W+yMwsPDA2Ot2FbiRexqM8Zz824OGR4X9DuXL6k86GXAtHwY3/fhQUltmX43qANd5nb6
         c/KDEfcfeVVwKLaR3muW3D8vwXcKW5OWwlbgY7dKX1hTFdJ48r3BTQOi2RPJt/EtQZQl
         pvZRHUFFZfVZuMyNo6dP6PX9SYjrG5O5ArknM6OuT9eF4GwlUuhYPlYLXUIHBhG3sNKU
         eFew==
X-Forwarded-Encrypted: i=1; AJvYcCVWdESgUcV7UWZnmTM0H1sPughg2M/1XAZrOW+K2wsCnbwhGGJjVrmdk44DFlIGBs8fxarHmq70P6xXYz0bEJK+@lists.infradead.org, AJvYcCXkD9YwxJwPamD/paFL8iklC1BS0JruWnFbLfY1KU7C1tg6ajmHw7ZWAB+uBRyv0eNpBusJFR243NTlbo3fnP0=@lists.infradead.org
X-Gm-Message-State: AOJu0YxD7SDnqD3magrrfzCFS0oIvOADARP/pTq7ouiNGyVxfNDkEBrJ
	0JhF5lE+evXJfiJd9n/ki+8ZJJXZefR6M2FuSnvucdhvYLo2qqFX
X-Google-Smtp-Source: AGHT+IH4Uvlv1XC5cawIoHieQSG4T8O20vNS3hdgJD5oeAxhY/X8/3aGSIUN9Nq22CuCLE/Cer7Myg==
X-Received: by 2002:a5d:534b:0:b0:37d:4376:6e1d with SMTP id ffacd0b85a97d-37d600d31ccmr7949074f8f.41.1728929014722;
        Mon, 14 Oct 2024 11:03:34 -0700 (PDT)
Received: from localhost.localdomain ([2a02:908:1587:1e60:bb77:bd6d:6fe3:9eed])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d4b7ee412sm11914656f8f.101.2024.10.14.11.03.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2024 11:03:34 -0700 (PDT)
From: Cenk Uluisik <cenk.uluisik@googlemail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	Tim Lunn <tim@feathertop.org>,
	Andy Yan <andyshrk@163.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	Jing Luo <jing@jing.rocks>,
	Cenk Uluisik <cenk.uluisik@googlemail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 1/2] dt-bindings: arm: rockchip: Add Orange Pi 5b enum to Orange Pi 5 entry
Date: Mon, 14 Oct 2024 20:02:52 +0200
Message-ID: <20241014180324.536702-1-cenk.uluisik@googlemail.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_110337_659500_1B204809 
X-CRM114-Status: GOOD (  11.97  )
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

This extends the Xunlong Orange Pi 5 device tree binding
with an enum for the Orange Pi 5b, which is implemented
before the device tree.

How does this board differ from the original Orange Pi 5?
  - the Orange Pi 5 has a M.2 NVMe M-key PCI 2.0x1
    slot (hooked to combphy0_ps) whereas the Orange Pi 5b uses combphy0_ps
    for the WiFi.
  - The Orange Pi 5 with the M.2 socket has a regulator defined hooked to
    "GPIO0_C5" (i.e. PCIE_PWREN_H) whereas the Orange Pi 5B has GPIO0_C5
    hooked to BT_WAKE_HOST.
  - builtin eMMC storage
  - no SPI NOR flash (u-boot, preboot etc. initiates
      from within the eMMC
      storage)
  - ap6275p Wifi module (like the Orange Pi 5 Plus)
  - builtin BlueTooth module

Signed-off-by: Cenk Uluisik <cenk.uluisik@googlemail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 687823e58c22..62bb6587da8f 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1051,7 +1051,9 @@ properties:
 
       - description: Xunlong Orange Pi 5
         items:
-          - const: xunlong,orangepi-5
+          - enum:
+              - xunlong,orangepi-5
+              - xunlong,orangepi-5b
           - const: rockchip,rk3588s
 
       - description: Zkmagic A95X Z2
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
