Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE966C47DDF
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Jan 2024 20:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/80cEUXR8L95n3tHQxochfyHvMgfkOju8M/WOUkVJHU=; b=hhoEORSCeM89aF
	ipX9YDYW/6PpUUfSysJShuaWs0RVMvEjJv5CybFbm3XLjDgir+1mOG0WwqgJJnFg5I0Ahu2R3Xvrl
	i1DQ0vuoUWh50u3dohaMkJvdzPrOSHIZUT8T5uXQVZZbZvMUJ+3aUoRM7JYJ5YppkHIsCSGYr3qas
	ivfCUL/mAjjsKwzt5miJmnrux8gEZVu639fT9l/Wpc2CFLUQ7traZAUZNDdynetSPsxCt4L4PNcFN
	5B2nWWh8odg0pNndBuQWlDHWzuqR82PYFpha5AMy/BSxj/tdpT5JOWHG4AS1qTvpLaUKJx2TqkLAG
	G3yXMq7RjeVlOLLhaz+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSjtW-0050xj-15;
	Wed, 24 Jan 2024 20:30:46 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSjtI-0050t5-2F;
	Wed, 24 Jan 2024 20:30:34 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-40e80046264so74401475e9.0;
        Wed, 24 Jan 2024 12:30:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706128228; x=1706733028; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6VI6vBuko+qXcZ57Ez3xJHzWek0A70ejNW+GSI4wbas=;
        b=bKQRQC0H8C+4T4PGT3lvo5YpJlFe5HdLJ9WJOcxdJ2/GeDBxmqT+tm7IVsU6xJWVJg
         gDVXkKw70ojUT4jobYw9K91QjftpuqekS/wiuLdM+7SwZr1cKNjJujmr2gVfxzCQD42E
         QqNLt+JKS5bvLSthPolCudFaC2ipTKx7evsx2d/E3mMKekhWDD/41vYDckT7j9ZGdoih
         ab0AKLP/5u82zC1MUL4AVTEoBUeAJkXjgCHFOy60sQ8AqziTqsu+5mFiEyl1254roa38
         bVe+R589gLdOSete6b8eSKyEMrqqEUP4Wj4aoFiJJLlgGCn6VRCXHWTB63u5ciYBIDSC
         pCtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706128228; x=1706733028;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6VI6vBuko+qXcZ57Ez3xJHzWek0A70ejNW+GSI4wbas=;
        b=edXeGVZJ+oy8OxSXivHWFmMqyKZybC6DQd0VgIz0VTCZ7RZKBTo9YHPmfKz5qtx+Ow
         y25uPNhfwTdMl86APsWrpbPPutYIb+mzMDBWegWDgIw2lQRQMeIhKGtkZP21Hi05HnPV
         9XI60fkiQ9ltOjwjPC4ufgyXl8dGW+BR7jCfh/aUHBJMnGA0J0vd7oN3xNY/kAa3QD9J
         aNlrzDz1iRNPUfhaTH2GWHrRNindHCvPZEjTpZrJsSFI/fFRYt738qcXsSHJdiTfN6Qf
         Sf3M0KLC1aVYuPJDAzoURJvXRwvkbpLO6WZyUFzMnYG1ukCGdAMZtUum2bfHJqlbAAIR
         5r0g==
X-Gm-Message-State: AOJu0Yzf7XDdoybLwKHmQSC+Shh39IHzEzCKCGMtU3gpSi5qCfmYgLmY
	EZdQAjx4xBp7qk0w5y7Y1lKojTfKWtP0hENrGysaRaGJgHxhaiu6
X-Google-Smtp-Source: AGHT+IFyyDsTtkrw64HBFX1IHQsvIYAQH3MtMf9LlLq5GaTxcdXjVtLdyiil/BSAQyvnPaodlfUVWw==
X-Received: by 2002:a1c:7905:0:b0:40e:aee0:125b with SMTP id l5-20020a1c7905000000b0040eaee0125bmr1534637wme.181.1706128227803;
        Wed, 24 Jan 2024 12:30:27 -0800 (PST)
Received: from [172.30.32.188] ([2001:8f8:183b:50fb::d35])
        by smtp.gmail.com with ESMTPSA id r15-20020a05600c458f00b0040d62f89381sm174073wmo.35.2024.01.24.12.30.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jan 2024 12:30:27 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Subject: [PATCH 0/4] RK3588 and Rock 5B dts additions: thermal, OPP, rfkill
 and fan
Date: Thu, 25 Jan 2024 00:30:03 +0400
Message-Id: <20240125-rk-dts-additions-v1-0-5879275db36f@gmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAEtzsWUC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDQyMT3aJs3ZSSYt3ElJTMEqBaIMssxTzJ1MjcwjzJUgmoraAoNS2zAmx
 kdGxtLQC0LgGSYgAAAA==
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Dragan Simic <dsimic@manjaro.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1706128223; l=2476;
 i=alchark@gmail.com; s=20240125; h=from:subject:message-id;
 bh=Zphw5jSFEs0fQt9R++0K1tpqDhgnJQ1WYKuZaCBTVvU=;
 b=OXPnsOQ5Iq/W0WZ1F4YtQlFxGEwUcI4fsa3zeywZTfuleBhP1Q23MJwIc0KuetJ9//8ditpY+
 gG16JPhk22uAWhz01j3ISMWisSWRfa07EfXZn7LNtnKOUFyZM7mm0HW
X-Developer-Key: i=alchark@gmail.com; a=ed25519;
 pk=xRO8VeD3J5jhwe0za0aHt2LDumQr8cm0Ls7Jz3YGimk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240124_123032_752102_A92D8968 
X-CRM114-Status: GOOD (  12.43  )
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

This is an assortment of device tree additions for RK3588(s) and their
enablement on Radxa Rock5B.

Thermal zone information and cooling maps is the follow-up to feedback
received on v2 patch version [1] - thanks a lot to Dragan, Heiko and
Daniel for review and comments. The patch adds passive cooling maps
for the three separate CPU clusters found in RK3588, as well as
critical trips for all TSADC channels. Enablement on Rock 5B was
split out to a separate patch, where I also add active cooling via
the PWM fan optionally available there. Other changes from v2:
 - Zero hysteresis for critical trips, per Daniel's guidance
 - Zero 'polling-delay' for zones having no active cooling maps,
   given that the driver supports interrupts for crossing trip
   temperature and thus doesn't need polling there, per Daniel's
   guidance
 - Zero 'polling-delay-passive' for zones having no passive cooling,
   per Daniel's guidance
 - Extra passive cooling alerts before the control temperature
   to enable power allocation governor's PID parameters
   initialization, per Daniel's guidance
 - Renamed the thermal zone tracking the middle of the chip
   to package_thermal, per Dragan's guidance

OPPs help actually scale CPU frequencies up and down for both cooling
and performance - tested on Rock 5B under varied loads.

RFKILL patch is the same one sent earlier just before the merge window
opened [2]. It didn't get any feedback back then, so I'm just
resending it here for ease of reference. Tested on Rock 5B with an
Intel AX210 card.

[1] https://lore.kernel.org/linux-rockchip/20240109192608.5981-1-alchark@gmail.com/
[2] https://lore.kernel.org/linux-rockchip/20240106202650.22310-1-alchark@gmail.com/

Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
Alexey Charkov (4):
      arm64: dts: rockchip: add rfkill node for M.2 Key E WiFi on rock-5b
      arm64: dts: rockchip: enable built-in thermal monitoring on rk3588
      arm64: dts: rockchip: enable temperature driven fan control on Rock 5B
      arm64: dts: rockchip: Add OPP data for CPU cores on RK3588

 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts |  32 +-
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi       | 374 ++++++++++++++++++++++++
 2 files changed, 405 insertions(+), 1 deletion(-)
---
base-commit: 615d300648869c774bd1fe54b4627bb0c20faed4
change-id: 20240124-rk-dts-additions-a6d7b52787b9

Best regards,
-- 
Alexey Charkov <alchark@gmail.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
