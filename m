Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 885CAC54798
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Feb 2024 19:27:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LM855xCBPrfRVpvg14oAAdGz3EOBFTZI9ww3sRKRaOA=; b=nSQnkq2/OJSApi
	DiX7W0sVmUXFEpk8PbpuWjXxujAk5lcbDeXn3BkVJ7+bJBoSdTF3hy3EZXtDZdkZ2iyVFylgqcE+l
	uS4fyuqHnRkOPM+mqK6GnZdSAz8lltihBsLRM61GtIcKlOh14bOxQO2jyvBm0zM3LIegtsYq8dh41
	B2fXDthNj6+zucmFQWgdpeV/ODEVpzG00Qib7J8Mcba45Os5ToUn7AYAyhME4tzc0uHYIFZi17jQF
	llY3NmQuNiqqM940L0KtpnYF2L/M/LJ1MgWE9vzZyAj1ec7SVwYDIU3lJBSop1f/7CRJRWgjcEoFZ
	KEyQVix+VP/kGX/d3TJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfm3g-0000000Es6x-3qjt;
	Thu, 29 Feb 2024 19:27:08 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfm3b-0000000Es1a-1eaR;
	Thu, 29 Feb 2024 19:27:04 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-412c34a73aeso2807315e9.0;
        Thu, 29 Feb 2024 11:27:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709234820; x=1709839620; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tJOJyUFKE6vWJvYSz1LvG697rW0U88KqR4dAP+GyGq4=;
        b=OsjhoCyuno0wtQ5HoxvIpf7RJsGb3zoo5hHaQB5YitETKlHNKVDMU0LDOZhdPdCyvT
         Idmwc2CfRznz4FYq5wQtnVeR14MjvVCnVLRl8F5HfTzDl/fgtjt2pe6jDMHUuiNyCeJA
         S+q0oKCMVpdJiuwa0NMikNIOndQ+rZaglA13rTcJ+kMwx3DXEkPSBM1d/MaFNx/p8dqB
         rJ/atZ0VZomI4s/VruJGSkvaEVaY9s46Fr8A/p6msGG49XrHlIylNxMCn97Uc3uOjUFJ
         UyUt0EtPRZT9FW5kEqUNpafXJF928FUnefdKi6TFvrbZ6uQFKMJ88Bc0P4oPqnfgDkLl
         JOAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709234820; x=1709839620;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tJOJyUFKE6vWJvYSz1LvG697rW0U88KqR4dAP+GyGq4=;
        b=Dc2MjbtRlByccc3gyGAK6puckkYJ/+USuHje2Og8WK8XOhD4CP5HFa6gdzJxhzvPmz
         0T7YNyvdnQDogoL1woE+F8n4OMye1DZgjSLpjOBLAoHtENEQGzv+Ij9nx7GMQ8X/zGvl
         zOmy1ySu2kiJTaEL8koJrIO8c4QUSo2wqZ9RG4cG8dMf5wWZkwOy3+Ps99YbQKJvDAeI
         jKvZRfS68hB2z7zfitP2WkzderjViRgm+yRS19G7XYKt39aH+3tPtWmpz4yOCmqEag4I
         1sNJ7z/KHv6TDoSUDHNcU7kEWyi9LFKUN9e1mk/hJIa8+xl0EcR9urTri0wZwkLmTNJp
         iYoA==
X-Forwarded-Encrypted: i=1; AJvYcCUnfKCc1LHcbaHaX2PPo0/bCXMINffCwE6KNxWXjcmxxEgm20trFYHMfhQHn/8me+47RhS8F4ohukKEVySE1j94lr0Bz2h+ExvpftsW79XWeeUhj2Erx2F1YUiGxsTzUGnLDA73UnFh16MON4Wui9mG3SDqPZV7SsA=
X-Gm-Message-State: AOJu0YzwsRv1DdjBVyMWv18BXeFYlFKMzgeAEW5jAbWahAkIF3EGF/8N
	ohRrD2STUpM1I0eRmpmtOQ/DSDf0w5gbxg96eTyNRW3pdhmANrGK
X-Google-Smtp-Source: AGHT+IEmConaemKMtcTzN62uobZUuH1/Oz6g74N2+DYM6UgwDD8QkXzhIsYPJiHOQJ25qJEWxsvgdA==
X-Received: by 2002:a05:600c:444e:b0:412:bd9b:2a55 with SMTP id v14-20020a05600c444e00b00412bd9b2a55mr2325602wmn.13.1709234820222;
        Thu, 29 Feb 2024 11:27:00 -0800 (PST)
Received: from [172.30.32.188] ([2001:8f8:183b:6ebc::d35])
        by smtp.gmail.com with ESMTPSA id j20-20020a05600c1c1400b00412bca49a5bsm2853944wms.42.2024.02.29.11.26.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Feb 2024 11:26:59 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Subject: [PATCH v3 0/5] RK3588 and Rock 5B dts additions: thermal, OPP and
 fan
Date: Thu, 29 Feb 2024 23:26:31 +0400
Message-Id: <20240229-rk-dts-additions-v3-0-6afe8473a631@gmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAGfa4GUC/23NwQ6CMAwG4FchOzszCmPgyfcwHmAd0KhgNrJoC
 O9uITHR6K1/8/frLILz5II4JLPwLlKgceCQ7RJh+3ronCTkLEBBrlLIpb9InIKsEWniLk8Fmka
 DKU1TCT67e9fSYyNPZ849hWn0z+1DTNftG9O/WEylkro0FRiNTVa0x+5W03Vvx5tYsQgfQKb+A
 MCALQDA5taU+AUsy/IC2/+ckvEAAAA=
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Dragan Simic <dsimic@manjaro.org>, Viresh Kumar <viresh.kumar@linaro.org>, 
 Chen-Yu Tsai <wens@kernel.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1709234816; l=4526;
 i=alchark@gmail.com; s=20240125; h=from:subject:message-id;
 bh=hAYEg69gGvrO2LTlkt7LFP2fOAof7WF6nmTQJr0yRQs=;
 b=8Jd8dVO6bUfYp/U7rjYgPVzmRlNnRBnMSq82B8/2P2cj+d66afXQk6tm+K1xjrrxSTY/72ER6
 hk5QZc0BWj4AS/b5yjnWVo+X0dTuTjtACCdHufZH5JGxxfXs5z/zs2w
X-Developer-Key: i=alchark@gmail.com; a=ed25519;
 pk=xRO8VeD3J5jhwe0za0aHt2LDumQr8cm0Ls7Jz3YGimk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_112703_482434_0D368EC3 
X-CRM114-Status: GOOD (  20.02  )
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

This enables thermal monitoring and CPU DVFS on RK3588(s), as well as
active cooling on Radxa Rock 5B via the provided PWM fan.

Some RK3588 boards use separate regulators to supply CPUs and their
respective memory interfaces, so this is handled by coupling those
regulators in affected boards' device trees to ensure that their
voltage is adjusted in step.

In this revision of the series I chose to enable TSADC for all boards
at .dtsi level, because:
 - The defaults already in .dtsi should work for all users, given that
   the CRU based resets don't need any out-of-chip components, and
   the CRU vs. PMIC reset is pretty much the only thing a board might
   have to configure / override there
 - The boards that have TSADC_SHUT signal wired to the PMIC reset line
   can still choose to override the reset logic in their .dts. Or stay
   with CRU based resets, as downstream kernels do anyway
 - The on-by-default approach helps ensure thermal protections are in
   place (emergency reset and throttling) for any board even with a
   rudimentary .dts, and thus lets us introduce CPU DVFS with better
   peace of mind

Fan control on Rock 5B has been split into two intervals: let it spin
at the minimum cooling state between 55C and 65C, and then accelerate
if the system crosses the 65C mark - thanks to Dragan for suggesting.
This lets some cooling setups with beefier heatsinks and/or larger
fan fins to stay in the quietest non-zero fan state while still
gaining potential benefits from the airflow it generates, and
possibly avoiding noisy speeds altogether for some workloads.

OPPs help actually scale CPU frequencies up and down for both cooling
and performance - tested on Rock 5B under varied loads. I've split
the patch into two parts: the first containing those OPPs that seem
to be no-regret with general consensus during v1 review [2], while
the second contains OPPs that cause frequency reductions without
accompanying decrease in CPU voltage. There seems to be a slight
performance gain in some workload scenarios when using these, but
previous discussion was inconclusive as to whether they should be
included or not. Having them as separate patches enables easier
comparison and partial reversion if people want to test it under
their workloads, and also enables the first 'no-regret' part to be
merged to -next while the jury is still out on the second one.

[1] https://lore.kernel.org/linux-rockchip/1824717.EqSB1tO5pr@bagend/T/#ma2ab949da2235a8e759eab22155fb2bc397d8aea
[2] https://lore.kernel.org/linux-rockchip/CABjd4YxqarUCbZ-a2XLe3TWJ-qjphGkyq=wDnctnEhdoSdPPpw@mail.gmail.com/T/#m49d2b94e773f5b532a0bb5d3d7664799ff28cc2c

Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
Changes in v3:
- Added regulator coupling for EVB1 and QuartzPro64
- Enabled the TSADC for all boards in .dtsi, not just Rock 5B (thanks ChenYu)
- Added comments regarding two passive cooling trips in each zone (thanks Dragan)
- Fixed active cooling map numbering for Radxa Rock 5B (thanks Dragan)
- Dropped Daniel's Acked-by tag from the Rock 5B fan patch, as there's been quite some
  churn there since the version he acknowledged
- Link to v2: https://lore.kernel.org/r/20240130-rk-dts-additions-v2-0-c6222c4c78df@gmail.com

Changes in v2:
- Dropped the rfkill patch which Heiko has already applied
- Set higher 'polling-delay-passive' (100 instead of 20)
- Name all cooling maps starting from map0 in each respective zone
- Drop 'contribution' properties from passive cooling maps
- Link to v1: https://lore.kernel.org/r/20240125-rk-dts-additions-v1-0-5879275db36f@gmail.com

---
Alexey Charkov (5):
      arm64: dts: rockchip: enable built-in thermal monitoring on RK3588
      arm64: dts: rockchip: enable automatic active cooling on Rock 5B
      arm64: dts: rockchip: Add CPU/memory regulator coupling for RK3588
      arm64: dts: rockchip: Add OPP data for CPU cores on RK3588
      arm64: dts: rockchip: Add further granularity in RK3588 CPU OPPs

 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts   |  12 +
 .../arm64/boot/dts/rockchip/rk3588-quartzpro64.dts |  12 +
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts    |  30 +-
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi          | 385 ++++++++++++++++++++-
 4 files changed, 437 insertions(+), 2 deletions(-)
---
base-commit: cf1182944c7cc9f1c21a8a44e0d29abe12527412
change-id: 20240124-rk-dts-additions-a6d7b52787b9

Best regards,
-- 
Alexey Charkov <alchark@gmail.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
