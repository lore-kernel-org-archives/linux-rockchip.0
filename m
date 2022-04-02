Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A059C433FE
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Apr 2022 14:37:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=en0munBgtNf3KW08xc0yB5+UUSdy8mP6YtUuq4KtHcY=; b=yJlDz6eFfC1jbw
	P14e+ZN0KyexhI96zFq0CFMigvcgk5ryAQiRUjPpLDgEnQ7sVZAsqoFuaFlVFiqUEfqYRIvVmz1ME
	Dcug6mk/PRwjRR6NBYbQpB0A9O4e4PaSmXpYkXYOdraYFktKScUjk3u5ROYKoYfzO8LmtslquujPC
	NqPea1mramu+oVy0LnK8irjzqSy1mASqo5sRQhu5nEbCrG4SUgMPQdGDOKfLED2ldtjjyM1RtuQ0C
	TgYV55KMz7XC0IhLUIjuPD1I3I8lbQ4+mQdNM8FbrWZLC1VSPgao8Tv2gMoMbjzrg041Al07povO5
	3UioWDj1vFb5wMNXrh4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naes5-009JK4-GG; Sat, 02 Apr 2022 14:36:57 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naers-009JE0-Ua; Sat, 02 Apr 2022 14:36:46 +0000
Received: by mail-ej1-x633.google.com with SMTP id p15so11375315ejc.7;
 Sat, 02 Apr 2022 07:36:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RGNMGqDkFSJymA3pWafV2dnoGntv8svW3Mz+ef8XMI4=;
 b=n2YqOiNjdDyk26irDah8NTksunLZcPMNnL/oHlMuFo4PrHUpUvaNmuvvMXbAtD9NSG
 NRRD+yh311awcfb2sxa0t8zYyHoHPyy8PCd3riNnMuBfbIAWPY05JyQSdJTUsYXvBEc4
 LRVKdcGYubDE2BnQun3hiJgGax7RJ+mlyy31ONdDky5QofmY/danhSCq63ZCWR9RKYH9
 amr43JGdlguglwrUOKuF3jGmSpSS/BQ4UNInu5Ql7JRJMqXvFy4iY6MtjhUprrn91dqX
 iTB6+jeqUwsOu9BHBjHkQkVShY2D/gOb6zLT+XEk9oCL6MrNWvH5j7hKGb6NSZXztx3Y
 5kzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RGNMGqDkFSJymA3pWafV2dnoGntv8svW3Mz+ef8XMI4=;
 b=RWz6QhOKUexcCOS5Pz8EcXvYUwZZlK9S2HEoq6255qOxWPIP9QJLa3gt+NmhF97h36
 p6kqiK5MwrnQO0Thlf2+kXoKx9LWIpbZvTG2I5AiGqoo8dtLqNtrOrXg9KRWCso0MPtE
 s3KaQDj+DivOGxZE/J/oZBfMo8BsXjz+MbWLVfXju/VMa/5e/4f/jzsffsIVI4G7BZyF
 50YLliZepK+jQ4S6kP3sjRumzbvt0qL8TrdgqLaVINnUyMRSxQphJeLosS+t95FzVi2+
 rM/vzx8n1JGHQksLxNF8qJ+D/kMFHKIluhaQTonRfpzW4F+PDqB9UR57CauAppTW2elz
 C9mQ==
X-Gm-Message-State: AOAM533CzAvqXySs7io6BT/1oiHKBIwrVqruFtG+iFqG8Fm0K4O1hRPD
 WFzRQVbQIKqTR0GJgAsVp0E=
X-Google-Smtp-Source: ABdhPJzTbd5ywK0ecrPLfPLSq2IDdTj6OVySRGrIJcFomjN8tElW6y5sFBxCeefFejSxTebo5V8Ecw==
X-Received: by 2002:a17:907:608c:b0:6e0:19fe:d689 with SMTP id
 ht12-20020a170907608c00b006e019fed689mr3995444ejc.164.1648910203449; 
 Sat, 02 Apr 2022 07:36:43 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 bp8-20020a170907918800b006e0daaa63ddsm2169557ejb.60.2022.04.02.07.36.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 Apr 2022 07:36:42 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de,
	zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 00/16] Convert Rockchip clk
Date: Sat,  2 Apr 2022 16:36:20 +0200
Message-Id: <20220402143636.15222-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220402_073645_045184_47F4D910 
X-CRM114-Status: GOOD (  11.20  )
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

Combined serie of previously converted Rockchip clk bindings.

Changed V4:
  combine dts patches
  add more clocks
  add clocks to example
  add clocks requirement

Johan Jonker (16):
  dt-bindings: clock: convert rockchip,px30-cru.txt to YAML
  dt-bindings: clock: convert rockchip,rk3036-cru.txt to YAML
  dt-bindings: clock: convert rockchip,rk3188-cru.txt to YAML
  dt-bindings: clock: convert rockchip,rk3228-cru.txt to YAML
  dt-bindings: clock: convert rockchip,rk3288-cru.txt to YAML
  dt-bindings: clock: convert rockchip,rk3308-cru.txt to YAML
  dt-bindings: clock: convert rockchip,rk3328-cru.txt to YAML
  dt-bindings: clock: convert rockchip,rk3368-cru.txt to YAML
  dt-bindings: clock: convert rockchip,rv1108-cru.txt to YAML
  ARM: dts: rockchip: add clocks property to Rockchip cru nodes
  arm64: dts: rockchip: add clocks property to Rockchip cru nodes
  arm64: dts: rockchip: rk3399: use generic node name for pmucru
  arm64: dts: rockchip: fix compatible string rk3328 cru node
  dt-bindings: clock: replace a maintainer for rockchip,rk3399-cru.yaml
  dt-bindings: clock: use generic node name for pmucru example in
    rockchip,rk3399-cru.yaml
  dt-bindings: clock: fix some conversion clock issues for
    rockchip,rk3399-cru.yaml

 .../bindings/clock/rockchip,px30-cru.txt      |  70 ----------
 .../bindings/clock/rockchip,px30-cru.yaml     | 120 ++++++++++++++++++
 .../bindings/clock/rockchip,rk3036-cru.txt    |  56 --------
 .../bindings/clock/rockchip,rk3036-cru.yaml   |  80 ++++++++++++
 .../bindings/clock/rockchip,rk3188-cru.txt    |  61 ---------
 .../bindings/clock/rockchip,rk3188-cru.yaml   |  86 +++++++++++++
 .../bindings/clock/rockchip,rk3228-cru.txt    |  58 ---------
 .../bindings/clock/rockchip,rk3228-cru.yaml   |  82 ++++++++++++
 .../bindings/clock/rockchip,rk3288-cru.txt    |  67 ----------
 .../bindings/clock/rockchip,rk3288-cru.yaml   |  93 ++++++++++++++
 .../bindings/clock/rockchip,rk3308-cru.txt    |  60 ---------
 .../bindings/clock/rockchip,rk3308-cru.yaml   |  86 +++++++++++++
 .../bindings/clock/rockchip,rk3328-cru.txt    |  58 ---------
 .../bindings/clock/rockchip,rk3328-cru.yaml   |  82 ++++++++++++
 .../bindings/clock/rockchip,rk3368-cru.txt    |  61 ---------
 .../bindings/clock/rockchip,rk3368-cru.yaml   |  86 +++++++++++++
 .../bindings/clock/rockchip,rk3399-cru.yaml   |  59 ++++-----
 .../bindings/clock/rockchip,rv1108-cru.txt    |  59 ---------
 .../bindings/clock/rockchip,rv1108-cru.yaml   |  83 ++++++++++++
 arch/arm/boot/dts/rk3036.dtsi                 |   2 +
 arch/arm/boot/dts/rk3066a.dtsi                |   3 +-
 arch/arm/boot/dts/rk3188.dtsi                 |   3 +-
 arch/arm/boot/dts/rk322x.dtsi                 |   2 +
 arch/arm/boot/dts/rk3288.dtsi                 |   2 +
 arch/arm/boot/dts/rv1108.dtsi                 |   2 +
 arch/arm64/boot/dts/rockchip/rk3308.dtsi      |   5 +-
 arch/arm64/boot/dts/rockchip/rk3328.dtsi      |   4 +-
 arch/arm64/boot/dts/rockchip/rk3368.dtsi      |   2 +
 arch/arm64/boot/dts/rockchip/rk3399.dtsi      |   6 +-
 29 files changed, 853 insertions(+), 585 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,px30-cru.txt
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,px30-cru.yaml
 delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3036-cru.txt
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3036-cru.yaml
 delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3188-cru.txt
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3188-cru.yaml
 delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3228-cru.txt
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3228-cru.yaml
 delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3288-cru.txt
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3288-cru.yaml
 delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3308-cru.txt
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3308-cru.yaml
 delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3328-cru.txt
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3328-cru.yaml
 delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3368-cru.txt
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3368-cru.yaml
 delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,rv1108-cru.txt
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rv1108-cru.yaml

-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
