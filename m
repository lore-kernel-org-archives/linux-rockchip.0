Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 262B8C7EE26
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 May 2023 21:38:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uFEgtqoGu4qJUFBAguz+C15Endc84wPNagoNVGR1kXI=; b=eaOAAuRk4hYDt1
	yXfzHzkVf/CG6EQC6Ae4cMWryRPk29Q9cbh07R9jZDR4PkkAz5Y9f0Vxo/ix9NwLpd1riecrIuEoa
	MsOavXm9LSVZlxaomNA9/zI0anQMOJcr1NNPnkLGwBw0GIvK8Y1fxEpwYnJDK05QQ5PWdsz8dfOKG
	Aah78EU3FSjuOEv5WHwD2qrjkETiGEyEFsbrJqiKpzYZk5/d8PuH3ddx9J5cl+6LgisTlpj8sPFt7
	HdRr6/HbH4vxMKbSsWIhISz8c1Ml40P/+fSqM52xnsfSOkmxK+VxY1qhn0845AwQObY1HIM6CsBFm
	H+EK1EibUDdfakc0MZyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1ZiH-00BVR3-2R;
	Tue, 23 May 2023 21:38:37 +0000
Received: from mail-ot1-x336.google.com ([2607:f8b0:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1ZiE-00BVOn-27
	for linux-rockchip@lists.infradead.org;
	Tue, 23 May 2023 21:38:35 +0000
Received: by mail-ot1-x336.google.com with SMTP id 46e09a7af769-6af812703b6so53161a34.1
        for <linux-rockchip@lists.infradead.org>; Tue, 23 May 2023 14:38:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684877912; x=1687469912;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=arqptb0OK5jJvfCDv3LmhvqgIyzYXs27jb/mT9pkapg=;
        b=Opz4IE1pgS3b+YNtQXnRxbTZ9Xc9wk5U+dXsSL5bASel6njkJGJD1McpafVnUDHNTX
         gAM4ZPUaaJCttEi/15Ylm6U6nsOFg4s8BYTdHzPAFYp4uuIrXYXUKZU70TgAy1/4OB07
         SvEvCUEUqfEyGxcdtHbzXOUPPhkXt9soUGYhOpJyWbrhhrl70Blyek6cf+IWtLZHMhld
         TRoKc6pH4+b3eMrHDHH30ZCzpOHEcv4oc7nBKHnR5TEvYRNIvGV+/Cdibx61eLZlKtSt
         dyn8dE4RbO6sxAfKUBsUrhkF6LUmIQdGuoI04kAsnDoZK/y1p5DtIzw6hZD4bagNJSs5
         BZng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684877912; x=1687469912;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=arqptb0OK5jJvfCDv3LmhvqgIyzYXs27jb/mT9pkapg=;
        b=Qr0/qt65JfPzEs0hfqSIAYcbuQvg7ULnPOwyunBNPhFNU7HZ4BlPA5l7GRsbuIXuh7
         OTI5N+MnYYoo0yyw08AQODBFNOxnUnFsuLkl7Xn9q7PTBoaoAUjptFzC3W4WdmTa/XGV
         wsKl9m2SvVKZd8Lxx4mGDG/+DE4cVy4UXuzVIsN1b0bpIqIa5hzjkHNor286jkLpLdoj
         D59rNmwL4T2VCfffCfJHk8C+X8AKzaOGmHyDHIziRQHnpS1ujhu6/U6ORvxdHzUGlXqQ
         bYkZPBYe0/0hlRosTtoMuJpdDdE7NhnYH3wztkwOb8cTZaetHF9hme+tgShxb/D+MiMV
         itYA==
X-Gm-Message-State: AC+VfDzO6POwuKrSYDY2U3XsKnqmQghWOvD3GCXcsNi2NUQ51Vi/rbdg
	yBP4WMKThjeQBbRvjYdRKjmmpuv1MNZwSg==
X-Google-Smtp-Source: ACHHUZ4NZdtIsaO5n44Zn7IKr1DzCMLgEaBZw8ilmvOfkDar/T7XjSOMt5GKhFnsBoinBC59QI98xQ==
X-Received: by 2002:a05:6808:216:b0:396:42a9:9877 with SMTP id l22-20020a056808021600b0039642a99877mr7898056oie.37.1684877911885;
        Tue, 23 May 2023 14:38:31 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id y83-20020acae156000000b0037832f60518sm4442359oig.14.2023.05.23.14.38.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 14:38:31 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org,
	zyw@rock-chips.com,
	sebastian.reichel@collabora.com,
	andyshrk@163.com,
	jagan@amarulasolutions.com,
	broonie@kernel.org,
	perex@perex.cz,
	tiwai@suse.com,
	lgirdwood@gmail.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/6] Add Support for RK3588s Indiedroid Nova
Date: Tue, 23 May 2023 16:38:19 -0500
Message-Id: <20230523213825.120077-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_143834_715755_5243ACB3 
X-CRM114-Status: GOOD (  10.16  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the RK3588s based Indiedroid Nova. Note that this
series is dependent on regulator support for the RK806 being
upstreamed.

https://lore.kernel.org/linux-rockchip/20230515152044.GT10825@google.com/

Chris Morgan (6):
  ASoC: es8328: Enabling support for 12Mhz sysclk
  arm64: dts: rockchip: add default pinctrl for rk3588 emmc
  arm64: dts: rockchip: Add sdio node to rk3588
  dt-bindings: vendor-prefixes: add Indiedroid
  dt-bindings: arm: rockchip: Add Indiedroid Nova
  arm64: dts: rockchip: Add Indiedroid Nova board

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 761 ++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     |  18 +
 sound/soc/codecs/es8328.c                     |  17 +
 6 files changed, 804 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
