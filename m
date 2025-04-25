Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1AB92C369D3
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Apr 2025 16:30:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uMoxU+VcB0KS7s7macZdF6gkb4fPXT79LRXdhzO7hPU=; b=ALgMiKqH/5Jn49
	WsX4Lor9OsXTBeGMkV8IZzGSqsBReTRSHEO16DaOEkvsuXIIjtk8/GqQMBlAg/wRi30MAKaakdtkh
	NxHZIgfh//R1zuSQOHbPzoh8lbASk4Nm5NwgAoZyZHfKxu8WlgNzFhcTnmOTB082HktkeptqUn+ZE
	p8jH0tMjed1cai0+i9Msh+yorAHCvi1zDSm1MdKEFZECQY6hVpfr0JmuSNlWK8VJy2FhuWKgbmRlC
	7u/RSh+X7IGxK08vQh4oM/4dh+HjA051AgBfdTyJt/41+rKou7fa4C7u+l92Dm5RWfxFfKtPJUBg0
	nDT/7NqTNxQ3A+iJxOKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8LwL-00000000DvJ-2Ic1;
	Fri, 25 Apr 2025 16:30:13 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8KpD-0000000013P-32bF
	for linux-rockchip@lists.infradead.org;
	Fri, 25 Apr 2025 15:18:49 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-ac2902f7c2aso399513066b.1
        for <linux-rockchip@lists.infradead.org>; Fri, 25 Apr 2025 08:18:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thaumatec-com.20230601.gappssmtp.com; s=20230601; t=1745594325; x=1746199125; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3ghCaB0hzHCWB/lFbG9vF6MwKWZS9AGmGkqVTq/KrfM=;
        b=hBcNBQNTN7Ws9irhbP6lgL0/jDW2M1QlwbOLUGWI81BehRs+6lzCwvWC30WwGrvGNq
         XiOWkf3yAlWRtYZzLcxOHT+BRk1gJFC9aJWrdqol41Jb5mXY4LQ5dezjk7C+akzaRgu/
         2sDB04Y8bmfDg/RpiftGIR8EmJ/q2fWhM1uO9lHFARFAbzEqlbyYZNdwJ2Wt7R3A4IkB
         34rhDfcWfNiQ32NyjIKDWxZicKXqHixA67oxA9j4sLZET85d+QpjjlyoFm4gI0hinxQm
         ljarfOLxJYIilekg1gcIv6eEEpKKwUi5Mi08vn7ek742/IF519muMUhem6wvmp7I1K9H
         9dlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745594325; x=1746199125;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3ghCaB0hzHCWB/lFbG9vF6MwKWZS9AGmGkqVTq/KrfM=;
        b=S8sZuUS9Jx/16UGhFoBgAOhCIYSsD4BDB25TQVg8OemLv2rwTbxgXzWHdsjFPID44m
         Sy3/GLKWvTWs2mdZbNnjqdxEwniElmSdCuoQeO8dMQpPCpHk/InimjrgufJ6q2I10+Jo
         ZsSUR91bIvhGQyZCB5iLdTfQp+xz677G8TUFy9ijZ6bciplAToeaMzRAi2OtxtIJeGjh
         EVJ1GlMOvRWLdEz39VRTcN8tz882Wu6NIPpc22+pIyIdCAB7/AGrrtmLfGGu0hZUrJVg
         paGcEXnMLsZfZHgrXmXIZfvSsi+MfP7H7PF/jxU5rYSeNABfs04uZU/V3tLt7t04niR+
         U84A==
X-Forwarded-Encrypted: i=1; AJvYcCUQuR4gziK+nKJSf1YesMuzqOZ/muYaGPIXqX/C44D5wKkEo+DyoHh9gsXi4RzHfbVW8VhTBXXCDgRwWjNg7Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YyOPq68jyPnfeC88Oh3U9O0/SF5b0o0vV9WKpk46tbQcuCzyyqm
	rCHfnmDs7t17DWBGb0CmJd3MpCCpnFnm8MI5evaeJACYDmODOfPOE+Iu+MmJt88=
X-Gm-Gg: ASbGncsXheoKuOZ88nes01Z6wsFUaZwlpAdJsAggZRYiu3IzudsoMjEE2D4w5Zl1KvU
	o+HeyVAnz0puBjgQYWV4jqMb3Xm/Ksi9JQLf394aUOZY8QvGBKCGH8cfNbGzZiVlPAPHFfgjB1W
	44JADSYmABjOryAo65jwBDA82XBNgoc85WVqO6jHJNn8pxj7Aw85+Y9+ZlwQ1pvY1g3v6vNAUV4
	u48Aluy6/fmqkr+IACcn3pzNm7mfNl5hTs6U/mq76VTZ4GW7imj0sxoNyMLm7/VnUsi+HqiiDjJ
	Bi6yf9PF+vunc9xy+41G8hmDDLOZVmjLRejsOZG2hNdghWFmSSAT67iA/GPf9UM9w/TS
X-Google-Smtp-Source: AGHT+IHZJ81zFkmLlmOHjq8b1Drpt97ks2gb1lVoqv7+XTRItZNdJHhWhZeKg3aZUqr8AUurmOKZUQ==
X-Received: by 2002:a17:907:6d27:b0:ac6:edd3:e466 with SMTP id a640c23a62f3a-ace710b0b78mr299551666b.19.1745594325144;
        Fri, 25 Apr 2025 08:18:45 -0700 (PDT)
Received: from [127.0.1.1] ([185.164.142.188])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6e59649fsm151099766b.85.2025.04.25.08.18.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 08:18:44 -0700 (PDT)
From: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
Subject: [PATCH v2 0/5] Fix onboard USB hub instability on RK3399 Puma SoM
Date: Fri, 25 Apr 2025 17:18:05 +0200
Message-Id: <20250425-onboard_usb_dev-v2-0-4a76a474a010@thaumatec.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAK6nC2gC/3WOzW7DIBAGX8XiXCrAQLBPfY8qipYfxyvVdgLYa
 hXl3bt2Dj31+CF2Zh6spIypsL55sJw2LLjMNNRbw8II8zVxjLSZEsqIVlm+zH6BHC9r8ZeYNg6
 nIGwLDow0jK5uOQ34fRA/z7RHLHXJP4dgk/vr/6xNcsFBewEmSt+q8FFHWCeoKbyHZWLn50uQ0
 32l0vqy/IVS947W0vBYucc54nzlROdEx5A4QW5Q0X+lwqVzw4lUTnrdb2pv91COPxPWvnGtBg3
 WdbbrRCdACxultcqLFoYBnJfGRNJR1fMXyU7UBEcBAAA=
X-Change-ID: 20250326-onboard_usb_dev-a7c063a8a515
To: Matthias Kaehlcke <mka@chromium.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Benjamin Bara <benjamin.bara@skidata.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Klaus Goger <klaus.goger@theobroma-systems.com>
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Lukasz Czechowski <lukasz.czechowski@thaumatec.com>, stable@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250425_081848_049056_27C5D1F8 
X-CRM114-Status: GOOD (  14.06  )
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

The RK3399 Puma SoM contains the internal Cypress CYUSB3304 USB
hub, that shows instability due to improper reset pin configuration.
Currently reset pin is modeled as a vcc5v0_host regulator, that
might result in too short reset pulse duration.
Starting with the v6.6, the Onboard USB hub driver (later renamed
to Onboard USB dev) contains support for Cypress HX3 hub family.
It can be now used to correctly model the RK3399 Puma SoM hardware.

The first commits in this series fix the onboard USB dev driver to
support all HX3 hub variants, including the CYUSB3304 found in
the RK3399 Puma SoM. 
This allows to introduce fix for internal USB hub instability on
RK3399 Puma, by replacing the vcc5v0_host regulator with
cy3304_reset, used inside the hub node.
Please be aware that the patch that fixes USB hub instability in
arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi can me merged only
after updating the Onboard USB dev driver, otherwise the hub
will not work. 

Two last commits in the series disable unrouted USB controllers
and PHYs on RK3399 Puma SOM and Haikou carrier board, with no
intended functional changes.

This series depends on the patch:
Link:  https://lore.kernel.org/linux-usb/20250418-dt-binding-usb-device-compatibles-v2-1-b3029f14e800@cherry.de/
("dt-bindings: usb: usb-device: relax compatible pattern to a contains")

Signed-off-by: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
---
Changes in v2:
- Removed additional entries from onboard_dev_match table and
  updated dt-bindings list, as suggested by Krzysztof and Conor.
  Fallback compatible entry in SoM's dtsi file is used instead.
- Added vdd-supply and vdd2-supply entries to onboard hub nodes
  to satisfy bindings checks.
- Changed the default cy3304-reset pin configuration to pcfg_output_high.
- Added dependency to: change-id: 20250415-dt-binding-usb-device-compatibles-188f7b0a81b4
- Link to v1: https://lore.kernel.org/r/20250326-onboard_usb_dev-v1-0-a4b0a5d1b32c@thaumatec.com

---
Lukasz Czechowski (3):
      usb: misc: onboard_usb_dev: fix support for Cypress HX3 hubs
      dt-bindings: usb: cypress,hx3: Add support for all variants
      arm64: dts: rockchip: fix internal USB hub instability on RK3399 Puma

Quentin Schulz (2):
      arm64: dts: rockchip: disable unrouted USB controllers and PHY on RK3399 Puma
      arm64: dts: rockchip: disable unrouted USB controllers and PHY on RK3399 Puma with Haikou

 .../devicetree/bindings/usb/cypress,hx3.yaml       | 19 +++++++--
 .../arm64/boot/dts/rockchip/rk3399-puma-haikou.dts |  8 ----
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi      | 48 +++++++++++-----------
 drivers/usb/misc/onboard_usb_dev.c                 | 10 ++++-
 4 files changed, 48 insertions(+), 37 deletions(-)
---
base-commit: 834a4a689699090a406d1662b03affa8b155d025
change-id: 20250326-onboard_usb_dev-a7c063a8a515
prerequisite-change-id: 20250415-dt-binding-usb-device-compatibles-188f7b0a81b4:v2
prerequisite-patch-id: f5b90f95302ac9065fbbe5244cc7845c2a772ab6

Best regards,
-- 
Lukasz Czechowski <lukasz.czechowski@thaumatec.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
