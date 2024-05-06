Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01806C25B5F
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 May 2024 09:37:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W4UJGuVoVkE5KieRnnCqPGj8K4I/qLOkLSrtzMpdLVM=; b=2WD+m0nZ3OeRNl
	+tZdIn60GbXbRGb8Yaa7yc6z0Vi58FF3xh3L6foB6hNURZdKweqB8L/9jHBBwW7H3RkZTTgL6Wlya
	3NzslaM1xqaRY1Rjp7pZx6HhOGYXP+Wt9dzLcFdbD71nmFBXuiQ1drtc8PujIIvZSvBzU2JUm0Iy6
	xTsYHWpR3xnyB1okFJKGFZAPP4Sz68EA0iTlEyNc8bexpP/5tR5Bl6lAY4naGbUX8kJoPH+7XSjl0
	6aDlvUrQxy9SmBwMnrTjVNA/zcuwb1cmU+0LEP25+0FTAxfPAFyKnUNxyrNRcIeaqOgoWBoBGW01R
	a2HcsvXGEKa8K3n4XWiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3uma-00000006oWH-1rww;
	Mon, 06 May 2024 09:37:16 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3umX-00000006oUM-125j;
	Mon, 06 May 2024 09:37:14 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-572baf393ddso6966864a12.1;
        Mon, 06 May 2024 02:37:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714988229; x=1715593029; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=r5jIPijYH58Tf3UqAkdEdhYtcZDbmpkBfkvefoQcR1g=;
        b=MOef9qCZ8Tlz84t+gwhKu2hxDhHBsT8TVgL+5zaHk6hZtflt3/orpxzsYfiT/l/rO8
         GdV1qiJrvNISxxGxaoa3l4iP0c8YdRBGaI1apLh5PUh5xFgT/29iyZ1D4UxAeiAdyf7Z
         ZZaGWmcFkc0iAyW4Re9xtkRP41vH7NhG3WH8IK+IfmyZllOm9V6wuVTVzICyExo/Y9l3
         tqDfjJ1w15MU3b6di/7dFqdyVLiuDfpONfL21qvgZpf1EUxWVpw1p/iWaeL/DOOIP2Tr
         FD0ncQJfhTee/EC0Y1h1uEVX0fEFdJC0gBI33oyiurEYr5qz1zynwRBt5gekfyH7mKN7
         adww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714988229; x=1715593029;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=r5jIPijYH58Tf3UqAkdEdhYtcZDbmpkBfkvefoQcR1g=;
        b=MgwqLpQGBDlanJJjEtibWfZM2DaNVrw5o6sdtBMIdYNLhAFfCPUtI29hUhFqcP+Ya3
         riwaIw5CdFEr9ym97LHe8lZuVDU56talcwch7jePkoNSV2p+8lYtzWq5AajGyeWXam5k
         4IUVCJfy0UcoxqatCG+h4Dfgiqmlna4ihU7cD5Yw9fQXXxD1Xp3zzfTz0GyPSx77dsdZ
         cIxectiiMbcD04Yxqe23uSAHGGzi3KxYHnq0xamw5w1ZVg16llwxYsNy+VfO2i32PeAW
         dWE7gEgWjQHuLH0sY8i3duGkWojwI/2DgGdc08/smMyQOUqtBbeFaWA9HWay4VDLt1ma
         SRxA==
X-Forwarded-Encrypted: i=1; AJvYcCWjRvWoLUUn/7vNmwSQa54DEn3cwJOUHRzqHRP0JOvLkX9pkQrjjugDG/TRZ/ETCo8Qxqek9vGddb5tfn3ziY8eseqWyRgc9bm2T3mBxh2xilpRa8r78Q90UimsY37pQkyK/XLc2moGDCgvEeFAaBdjrBLcVklViz0=
X-Gm-Message-State: AOJu0YyQmNZx/PE6C9ib+tuhR/DvtyWKV3rHdjamPJ1WZL0vkRBhuICY
	14AG+sZAvhDD/MoGZsW6IB+evio/QLGTaE+kKsfxPjcttQK5JoPl
X-Google-Smtp-Source: AGHT+IEIt+uXhXBzY5x1yHpICtzLpB4DBfyF6+9n8Ln7qiLnBjv56h1If998ClUbsWoO14PRhjI8pg==
X-Received: by 2002:a17:907:983:b0:a59:92b0:e0d3 with SMTP id bf3-20020a170907098300b00a5992b0e0d3mr7434959ejc.34.1714988228446;
        Mon, 06 May 2024 02:37:08 -0700 (PDT)
Received: from [172.30.32.119] ([2001:8f8:183b:f2c::d35])
        by smtp.gmail.com with ESMTPSA id f6-20020a056402160600b005722ce89ae2sm4983647edv.38.2024.05.06.02.37.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 May 2024 02:37:07 -0700 (PDT)
From: Alexey Charkov <alchark@gmail.com>
Subject: [PATCH v4 0/6] RK3588 and Rock 5B dts additions: thermal, OPP and
 fan
Date: Mon, 06 May 2024 13:36:31 +0400
Message-Id: <20240506-rk-dts-additions-v4-0-271023ddfd40@gmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAKCkOGYC/23NQQ6DIBAF0KsY1qWBAUG76j2aLhBQSas2YEgb4
 92LJk1NdDd/8ufNhIL1zgZ0ySbkbXTBDX0K/JQh3aq+sdiZlBEQ4IQCx/6BzRiwMsaNqZsmYWS
 VgyxkVaJ09vK2du+VvN1Tbl0YB/9ZP0S6bH9YvscixQTnhSxB5qZior42nXLPsx46tGARNgAjB
 wAkQAsA0FzLwuwA9gcAygOAJUCo2hZcMiUY3QLzPH8BaK8b5DIBAAA=
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Dragan Simic <dsimic@manjaro.org>, Viresh Kumar <viresh.kumar@linaro.org>, 
 Chen-Yu Tsai <wens@kernel.org>, Diederik de Haas <didi.debian@cknow.org>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1714988224; l=5215;
 i=alchark@gmail.com; s=20240125; h=from:subject:message-id;
 bh=7vZGPc76DrGzVO0f10p7VjAUkU9H6GCoaoBNveOsq+I=;
 b=s+4z6Z//zqaTm0lGuKZ8UgFm6uu2TETMUwL1oXERwQO1v59SLNQrg71k+12jQqguH3qa4XY7o
 41zRfeO4x0jArjk0vxhg5jwu6CT/um8WzHMoGQb6SFSGMHxfuu5SMm8
X-Developer-Key: i=alchark@gmail.com; a=ed25519;
 pk=xRO8VeD3J5jhwe0za0aHt2LDumQr8cm0Ls7Jz3YGimk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_023713_326296_C7527D88 
X-CRM114-Status: GOOD (  20.64  )
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

This also enables the built-in thermal sensor (TSADC) for all boards
that don't currently have it enabled, using the default CRU based
emergency thermal reset. This default configuration only uses on-SoC
devices and doesn't rely on any external wiring, thus it should work
for all devices (tested only on Rock 5B though).

The boards that have TSADC_SHUT signal wired to the PMIC reset line
can choose to override the default reset logic in favour of GPIO
driven (PMIC assisted) reset, but in my testing it didn't work on
Radxa Rock 5B - maybe I'm reading the schematic wrong and it doesn't
support PMIC assisted reset after all.

Fan control on Rock 5B has been split into two intervals: let it spin
at the minimum cooling state between 55C and 65C, and then accelerate
if the system crosses the 65C mark - thanks to Dragan for suggesting.
This lets some cooling setups with beefier heatsinks and/or larger
fan fins to stay in the quietest non-zero fan state while still
gaining potential benefits from the airflow it generates, and
possibly avoiding noisy speeds altogether for some workloads.

OPPs help actually scale CPU frequencies up and down for both cooling
and performance - tested on Rock 5B under varied loads. I've dropped
those OPPs that cause frequency reductions without accompanying decrease
in CPU voltage, as they don't seem to be adding much benefit in day to
day use, while the kernel log gets a number of "OPP is inefficient" lines.

Note that this submission doesn't touch the SRAM read margin updates or
the OPP calibration based on silicon quality which the downstream driver
does and which were mentioned in [1]. It works as it is (also confirmed by
Sebastian in his follow-up message [2]), and it is stable in my testing on
Rock 5B, so it sounds better to merge a simple version first and then
extend when/if required.

[1] https://lore.kernel.org/linux-rockchip/CABjd4YzTL=5S7cS8ACNAYVa730WA3iGd5L_wP1Vn9=f83RCORA@mail.gmail.com/
[2] https://lore.kernel.org/linux-rockchip/pkyne4g2cln27dcdu3jm7bqdqpmd2kwkbguiolmozntjuiajrb@gvq4nupzna4o/

Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
Changes in v4:
- Rebased against linux-rockchip/for-next
- Reordered DT nodes alphabetically as pointed out by Diederik
- Moved the TSADC enablement to per-board .dts/.dtsi files
- Dropped extra "inefficient" OPPs (same voltage - lower frequencies)
- Dropped second passive cooling trips altogether to keep things simple
- Added a cooling map for passive GPU cooling (in a separate patch)
- Link to v3: https://lore.kernel.org/r/20240229-rk-dts-additions-v3-0-6afe8473a631@gmail.com

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
Alexey Charkov (6):
      arm64: dts: rockchip: add thermal zones information on RK3588
      arm64: dts: rockchip: enable thermal management on all RK3588 boards
      arm64: dts: rockchip: add passive GPU cooling on RK3588
      arm64: dts: rockchip: enable automatic fan control on Rock 5B
      arm64: dts: rockchip: Add CPU/memory regulator coupling for RK3588
      arm64: dts: rockchip: Add OPP data for CPU cores on RK3588

 .../boot/dts/rockchip/rk3588-armsom-sige7.dts      |   4 +
 .../dts/rockchip/rk3588-edgeble-neu6a-common.dtsi  |   4 +
 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts   |  16 ++
 arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts   |   4 +
 .../arm64/boot/dts/rockchip/rk3588-quartzpro64.dts |  12 +
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts    |  34 ++-
 .../arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts |   4 +
 .../arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi |   4 +
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts   |   4 +
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi          | 281 +++++++++++++++++++++
 10 files changed, 366 insertions(+), 1 deletion(-)
---
base-commit: 160b088184ec81028ff67a5032be33f1baea4b67
change-id: 20240124-rk-dts-additions-a6d7b52787b9

Best regards,
-- 
Alexey Charkov <alchark@gmail.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
