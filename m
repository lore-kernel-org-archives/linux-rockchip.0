Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7D32D16261
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Oct 2024 13:22:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nr2kcJVbo4+xmi2/GAjARIFvYM8tMksN0KtYYZ82/Zk=; b=Lf2NCo7GYhSqx4
	Ywt0qlI1rlHmdpDRXKiP1qh6jDCofgz0oinavN872aLPZSvY812N8WGmni2laIJWqDU7aN/RSKBA5
	IGaLNlL49zay86Wuk7yohfC8yOTegQNJp03xk9Rk+IZsL25rLLoLUfbRJOa56RWks0O4SD3N9PyYj
	jNmubwEief8xSfjTldTpB3i03oIuXY9OsVQ3xNvqg+rf0GuBCMb9OzEN0CfLaZzDqIeUHY+zqMH4M
	IaMqDJE+L2Ri8vk53Or0YQHVzH2wSPpM0Vztc9htMIp5u9HjT4iw8DDiRhh+CpIepr60FUyqRnBln
	vC5OzHOi6hEvcRP4S6bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0L28-00000005FRT-3XqT;
	Mon, 14 Oct 2024 13:22:48 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0JHx-00000004vwU-08Bs;
	Mon, 14 Oct 2024 11:32:32 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-37d47b38336so2523002f8f.3;
        Mon, 14 Oct 2024 04:31:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1728905459; x=1729510259; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gRnQ3wM/yvmN8D3h5wad4fsxQX5Y5/CgF1kTgFuTf9o=;
        b=SYEnfAag31zEAVUbEX1YG2lAYD8v8fJbJEB8HQpP6H0l2aOE9L+kbiUFh6vgOYOXeM
         e9PBgr7cKfOfWd9YC4i7fSdPskVgI2nCo/W2uqvGMzJXx5EPTe7mMCbp3wemXmTP/N1V
         WETfyYZkK23PNI10qvPenDLONXpcNawqZHFEVlk/YJu8KAwimq0lo358XHyGN8sIMdiQ
         qEW6Vk6HRX7W0jktgF4q8sUfDxKdxxxX9wth6y0RoumAXAUh9o/TWnuO3DIC6EW7ISJo
         9MyD5Vra/9qHqXYWI6bpx8/xFJOawX3QGLk0SERb0PeUaWjjuAqTCD++XjORfg12cyeq
         K5uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728905459; x=1729510259;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gRnQ3wM/yvmN8D3h5wad4fsxQX5Y5/CgF1kTgFuTf9o=;
        b=uSJrT73F2HwprfwiMbcUXXqU86XKcnZG6dz6QeTE1PC2a+mwUkbXacITuuRckR5t55
         x5Azu/fd5FSmROlkO2xv6aXJ/3akjubMQ7VAW7o57Z6cQkUx5UUeMyhGL+B6+YZpjqqX
         PovG1M9cbj/xArwYi38FXrJE3i+2N2+OHYUszok0N9wV+/XA1otJEO4dqtpG9QgQgcn+
         TBmMv1fh2joEccxqfWM2/ordysZFdJufkZOl61YwFxqsuDXUqVaDegg7swpfSm2IfgxP
         oHnXlWMzraxxctDQl0fPWsqC0cHpmtrMpi6s/HPUVe+z+9rEuFhNsRAHkgLVEgcEvQC3
         pQ4g==
X-Forwarded-Encrypted: i=1; AJvYcCWJWjVJON17SIQexaN0q01c+GkRsp4zlWKEWz6rkE03MRvN6b8nNO7/ls3ADsh6uKc2mkdjiBwSMogmWvwEYIKb@lists.infradead.org, AJvYcCX9h/cuqnfsWWP9iG6puDSbjLn2mgRQK8ZsRFyxfXWts5SEWUIhAFPdiRJ7QPLUfRkxO0RCjRem0FxnLifP33U=@lists.infradead.org
X-Gm-Message-State: AOJu0YyCUGIT93OgyJAXigQU8soHVFSkg5JgrxEJ3C5m0n/MZzk0XRD9
	BVClzHytjO6ZkFEhMwDj46lHI8sUgyE97KysCiLldnYI3eMuFQkJ
X-Google-Smtp-Source: AGHT+IF7aGH2KyJ9NX4ZjXM9BC/pvoTRLMioJHryDRhjhIzRaT90GYIXhabR59yNUel9vX73+30ISg==
X-Received: by 2002:a5d:438f:0:b0:37d:4956:b0b4 with SMTP id ffacd0b85a97d-37d5532c4bcmr6869977f8f.59.1728905459134;
        Mon, 14 Oct 2024 04:30:59 -0700 (PDT)
Received: from localhost.localdomain ([2a02:908:1587:1e60:bb77:bd6d:6fe3:9eed])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d4b9190f7sm11084477f8f.114.2024.10.14.04.30.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2024 04:30:58 -0700 (PDT)
From: Cenk Uluisik <cenk.uluisik@googlemail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Andy Yan <andyshrk@163.com>,
	Tim Lunn <tim@feathertop.org>,
	Jagan Teki <jagan@edgeble.ai>,
	Dragan Simic <dsimic@manjaro.org>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	Cenk Uluisik <cenk.uluisik@googlemail.com>,
	Jing Luo <jing@jing.rocks>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 2/2] dt-bindings: arm: rockchip: Add Orange Pi 5b enum to Orange Pi 5 entry
Date: Mon, 14 Oct 2024 13:29:56 +0200
Message-ID: <20241014113026.78853-2-cenk.uluisik@googlemail.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20241014113026.78853-1-cenk.uluisik@googlemail.com>
References: <20241014113026.78853-1-cenk.uluisik@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_043101_093415_0D9F0FC4 
X-CRM114-Status: GOOD (  12.01  )
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
with an enum for the Orange Pi 5b.

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
