Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FFE7CD11DD
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 13:50:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vMhodSx+a4Izyqb9iAL0UdhT9hn3ENFdve9MhlMLun4=; b=1qDu4NA/h/pgT+
	O+E2Sr07BE+KmTiEZGtu77AgdTNlF7E+aqOnbQV+VGVOInSVzXbruXAOIlWXf/egc57BCBVZVeFzt
	S7cVcSA046VQ4w+uf53OHn86PchP/L+RBYDX+7G48qOlbIZYCXGT8vybZaRZxuQ8pV7r/tC5BdPnQ
	97d1qR69n7pny2MoM/P3mfLRWQzxqJagnQn2izNEyJesMmrE/kFsh0PnS3i4b9Fs9dfPZV808/8Zp
	NzLfRMjtunc5JaOytHBx17KzE1TXxQsGzW/6ZvOCn730/m2lM0kU6jMxJKb46ePWK7ZrClXNOlYq3
	oOztvUCXq7+IF3jYt0ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rokiO-000000003j7-1ZiO;
	Mon, 25 Mar 2024 13:50:16 +0000
Received: from mail-oa1-x2e.google.com ([2001:4860:4864:20::2e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rokiH-000000003fN-3bWx
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Mar 2024 13:50:12 +0000
Received: by mail-oa1-x2e.google.com with SMTP id 586e51a60fabf-22200c78d4fso2144621fac.1
        for <linux-rockchip@lists.infradead.org>; Mon, 25 Mar 2024 06:50:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711374607; x=1711979407; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TZEm7dLC7DLgBBuXFeLiLeXWBBGx7yk8NhEbIQaE86A=;
        b=XnX/jywv1IJRKv5SUzFkqt8zLpGB+otSh49ymYBzZZxcJCBfmWOobxVUoFfOUOuWJk
         aPkcpz8gJZRlFyD2si6P1RZzPqHJ2uWvvKVDpsJ9nuOf+9Y3lUQRdKXpCRdwsWY3zliQ
         7Caex0MsO8llagOjh6oeNGVKnTsRRUXzdIkSImvFerVAhvJNskhhQ+kmk/K7PcHaTOBI
         fTkbH8b2yGoHwU7uffeJq087DB2vOjx/FpIYpHTcA9nnoMXRghthAbgO+Ydw6PzoFOsT
         Vvj4of6k7yIxWqMFFRiCUMSRWoa9zntxHJtd9XzGM/Pau3/v+/dhYZVlk7BVu37P/Ini
         XS9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711374607; x=1711979407;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TZEm7dLC7DLgBBuXFeLiLeXWBBGx7yk8NhEbIQaE86A=;
        b=jrUi1tZJjaQ8B1rptJCIJEEBC7roCloh7MK8IwzZpy/nOMGWWFHUvBZKZKqbqUseDG
         Q4GgrwxDCVSpoeB5pTEshbNaR1Yqfu4a96DA3OqAI2wdd7Z40O7bwq4JoisM5pc5T4PJ
         d+7Xi/prWcDqUrZUqN3lvIEwfFlrkUg71w/9pYS4oeIDtzw1iIjtsX4L2AzC+JEK6pSq
         Fd17N/I/PCYCqLFF+tahi8CqowJKrjy/h2tgGUG8FoDf3ryoiBR+cMQo6iyKx4rLBF3T
         yK7FWpo4Fvwah6ZJp1c3Vr316iaydWT5TvZQfy/oHgJt/+org76rGiQXatc9aRTOrjNu
         Z90g==
X-Gm-Message-State: AOJu0YykmP99samCbDGZkkhrJep9VmypDDKzgFYONnhtci7tCHgVyTbt
	bO6YwEJRvvoKh/w1YtRTIfqwT1scVNjYv5RFvbwjka30NZxMaDTbL1xuwz2a
X-Google-Smtp-Source: AGHT+IEuxzOZwBoIMGZhGDau9fYZ1S9BgGTKCMVOyBdlostVlEY2F4PkvLWDocaBgYB5mDFwp371nw==
X-Received: by 2002:a05:6870:2251:b0:221:5739:a144 with SMTP id j17-20020a056870225100b002215739a144mr7518495oaf.37.1711374607232;
        Mon, 25 Mar 2024 06:50:07 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id z8-20020a05683010c800b006e673e2d2a3sm1118250oto.77.2024.03.25.06.50.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 06:50:07 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	megi@xff.cz,
	kernel@puri.sm,
	agx@sigxcpu.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/5] Add Support for RK3326 GameForce Chi
Date: Mon, 25 Mar 2024 08:49:54 -0500
Message-Id: <20240325134959.11807-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_065009_924573_8ED429D0 
X-CRM114-Status: UNSURE (   9.10  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the GameForce Chi [1].

The GameForce Chi has the following hardware:
Tested:
 - 3.5" dual lane 640x480 DSI display.
 - 15 GPIO based face buttons.
 - 2 ADC based face buttons.
 - 1 ADC joystick (left) connected to internal SARADC.
 - RGB LED arrays for key backlighting
 - Dual internal speakers.
 - Realtek RTL8723BS SDIO WiFi.
 - Single SDMMC slot.

Not Working (with notes in device-tree):
 - Bluetooth - missing firmware
 - 1 ADC joystick (right) connected to unknown UART based ADC.

[1] https://gameforce.fun/pages/gallery-of-gameforce-retro-gaming-handheld

Chris Morgan (5):
  dt-bindings: vendor-prefix: Add prefix for GameForce
  dt-bindings: display: Add GameForce Chi Panel
  drm/panel: st7703: Add GameForce Chi Panel Support
  dt-bindings: arm: rockchip: Add GameForce Chi
  arm64: dts: rockchip: Add GameForce Chi

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../display/panel/rocktech,jh057n00900.yaml   |   2 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3326-gameforce-chi.dts     | 811 ++++++++++++++++++
 drivers/gpu/drm/panel/panel-sitronix-st7703.c |  87 ++
 6 files changed, 908 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3326-gameforce-chi.dts

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
