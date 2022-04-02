Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D61FC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Apr 2022 14:45:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A83eBmIaKiOmPQQDTUv1PLM03IHdsXTH1LGAXaJDLcs=; b=svOaUVHIMCBiIK
	zD/+GcyIs0bvfuJo99oylgbg2zTPmvLyNQ/zC0E7OlU5iHOPiYFB5V0tTT8sA2GdOUOwdFt8zusmy
	625LuQ91QXB9vNzclvZ1m75T/PjPLZSJ/HEAqqjf3JQSzAywI3CXndHM3QT1vdZwEnackRV6YkBUH
	CfeXCK75XHeqk9jRBjkw+hR2eOJGxV55TNRAdl+FZy6sMRaZ2wkSmVybSjZtBh6q6hz/i8bfcLvjc
	o5whvnZiv4xdLkpNZ+2XxtvvvxTZ/q9io9TmKGhmNuDzJdSCHaiTi+imteh/oo+MYz7IkMcASbY4N
	cdU188J15it6e06+Vtgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naf03-009Nx8-4G; Sat, 02 Apr 2022 14:45:11 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naesD-009JK7-Jr; Sat, 02 Apr 2022 14:37:08 +0000
Received: by mail-ej1-x62c.google.com with SMTP id p15so11376127ejc.7;
 Sat, 02 Apr 2022 07:36:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mzmU0Dp6HwdkT8Z3OuirJmjfQNObHAqgJgTjMG47n0A=;
 b=aAJvmM6ItjEgWTXZGaCViiqDWjBz6+wHVzQdkA8YZcefaus3pcCVmi4hu/yGogWBMw
 NsOpU0o/vLInsxt50G/p7LyhyeTXAyCL7VE5KLYddZ+YFOjMgt6uENIlXUmDioFAATtU
 /oA6PV3nNuyQpf2qD8dO0hTlLwIoi6Gve0sFXpZf1B50xqKSFG3h/INH4EU9+EuSRTYw
 MNRtw5w0g7/FhQL5TS133sS7PxJsG7+NDwKAbTMuv8l9fSdLyeoLUd0hiyZvJTdooMre
 CuaQjr41QjhVOcQuxc7cVKqRgt+zisakKkkqHQtyVjK/lQV8iFZnnhGVgxLBuDNqAJEc
 zLzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mzmU0Dp6HwdkT8Z3OuirJmjfQNObHAqgJgTjMG47n0A=;
 b=lZNc4dtfjASsYbLnKs+e+aIirEa6FfJVJszaU+KvgyzNzcpAdIVqq+vAOciWDosPRT
 AHRQzH6YB/KjISK5NrZZj1TgF87VZDUdBzUOjOw+E3nf8I2Odpko6iBEPDrayPUJY7AF
 nkJ6nsVCuQhXGgLvw9DucAswy7RxA3nLEPoE6+pitfYn5SzjoojCNH2FR/8YAtRS/Nyc
 hmzFCgqgxzOuR9vSliQepLVzwPzegJq0bbUV4b2QQ4V1XA761NeDBB7Zu18eG4maF36K
 bIdF1jGVMuBBYv+ybSyoSfkPnWZOzXd4zrteJYT1VY6hnZJjC9lgpU4aFwumWrta2Hj/
 o04w==
X-Gm-Message-State: AOAM532ZD6DErqK+0POpgvnXtL+eFM1MMdqvS4aUZEmcnb3ruuEtCn1j
 NmatSNoxmimROcFhpW4sOsY=
X-Google-Smtp-Source: ABdhPJy5vDCSDA33e1YaTBNZjVAxvQmIg2J1e3ERyi0Y8CcCnlsMLUqoBKYkj1aRKQ+EF8csYeOy3A==
X-Received: by 2002:a17:906:3918:b0:6e0:5bbd:bf33 with SMTP id
 f24-20020a170906391800b006e05bbdbf33mr3920592eje.764.1648910217228; 
 Sat, 02 Apr 2022 07:36:57 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 bp8-20020a170907918800b006e0daaa63ddsm2169557ejb.60.2022.04.02.07.36.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 Apr 2022 07:36:56 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de,
	zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 15/16] dt-bindings: clock: use generic node name for pmucru
 example in rockchip, rk3399-cru.yaml
Date: Sat,  2 Apr 2022 16:36:35 +0200
Message-Id: <20220402143636.15222-16-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220402143636.15222-1-jbx6244@gmail.com>
References: <20220402143636.15222-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220402_073705_724070_3044974C 
X-CRM114-Status: GOOD (  12.51  )
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

The node names should be generic, so fix this for the pmucru node example
in the rockchip,rk3399-cru.yaml file and rename it to "clock-controller".

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../devicetree/bindings/clock/rockchip,rk3399-cru.yaml          | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml
index 5ee686938..e91147c84 100644
--- a/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml
+++ b/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml
@@ -77,7 +77,7 @@ additionalProperties: false
 
 examples:
   - |
-    pmucru: pmu-clock-controller@ff750000 {
+    pmucru: clock-controller@ff750000 {
       compatible = "rockchip,rk3399-pmucru";
       reg = <0xff750000 0x1000>;
       #clock-cells = <1>;
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
