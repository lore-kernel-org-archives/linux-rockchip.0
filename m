Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92C15C3600B
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Mar 2025 16:25:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=k4uXePCvwCttukwPHFXmobW5deRSS2Z2DL8mMv2TAos=; b=WRqf1tTcBDsBhd
	LlZh6V+KrkrVn+JxVdDCr6ofrmVwmz141/F1OcYZyUvT/TYxnjH0qpVV1kiv39GXwkdQ+wPs3ir8c
	4JhxfZBwEcAjo8bMt+TRP2C7HibAU2Tinr5UXdxL0A1shmZrP/+QjHVDKu3uz5237QmFKbGh2p/Hk
	3k43NoME11Aty4WdDQWjH9xAnA8eaUYOy1slfXyl9/JgHGPQk9un9HKja2EdKrVYF11GiyG/5MwTr
	e24RYmARrF4dKbabQs0zEiUYYM9+5OfHYemrmUdXr/0ptS2sbMNm5uMA2Qbgymld48/gSw4k4ofXU
	Ea6SSRV+FJ28IQqiaDvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txTZV-000000090bD-3hub;
	Wed, 26 Mar 2025 16:25:41 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txTXj-000000090Ki-3QOh
	for linux-rockchip@lists.infradead.org;
	Wed, 26 Mar 2025 16:23:54 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-abbb12bea54so1813666b.0
        for <linux-rockchip@lists.infradead.org>; Wed, 26 Mar 2025 09:23:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thaumatec-com.20230601.gappssmtp.com; s=20230601; t=1743006229; x=1743611029; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fKYanQIfYCncszgpyLAY2Jfcp3L50T71jyYK0/4Yps0=;
        b=yJ4o9kFUH0s6E7p0zsnERumhYxGyN4AoFkHSJY/GMVqSB5AT+O1WfLGrqYv1kKNEQK
         jD6NjqX6PI1g4pNY+iOl0dMhnrGdGTVkqi0mY3u+f+LfJnGA7/QVy1I+fFPkiAAfClhn
         a0Ja5n3hMdIpa1F5zvX5+Ii0hIvmSLS5Kcwa+RUszhidbbiz1THCB1SJvI81hRXYq93F
         oV+N0HFOLsTnD8o0ned/mD7JkQU9PsjDfqSJjk8ZP7niN6d6BEFRoUvP+pGRlBa4Uja2
         tF/ZwWi1F3WAOBS0Y6ITFVNedFFtF0QBwoeWz54JD6CqOG4GrU1+xuKIWfBu8mtJlLO6
         wbSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743006229; x=1743611029;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fKYanQIfYCncszgpyLAY2Jfcp3L50T71jyYK0/4Yps0=;
        b=WKEwM+6t9njBk08c3Ys1fRbUUe2D7FUH4+QFBfnP8UVjo9jtYB8jNj+VsPfIeojnPd
         hGd+8rxNbE4o4t723Gadx/oIbOdpKjTG07hI3H81BUN8dw2750daYXKYk589DbosfejA
         L71sTHSy5GIleOVm8el+4aBunvSAgTaqFPxgLryKGktdyvk5WVoj3Z7OK0YuzIVHVKoS
         XA1i3hfXN0/u5ERA99c0Qk6m7Q+0EDhSYgk2sdSpgm1qgNeIIo24DgCsZgYymtJhdH/Y
         xOwYJL0EicgyoT5g+yVv2SGYjtRM1podXbzMFubQqfdjrA8GElGek6rDJ/zlGG7An3oW
         xyVQ==
X-Forwarded-Encrypted: i=1; AJvYcCWWMXqgPg+5KbaGmEyiUC1ZMPc9D7W1kpVLdkKgjlbMkEQU218Lwglrc4ihls8sFLmS1pNLYjoh5jf3wIyjtg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxXiiav64sZuzLTSpo/B0W8EvU0FX/AE8YGWgf4oUNXfFVQdA3v
	+pSAyWWubPojXQLw5tM20gDK4fGCesFS848X8YW/w7GnefS81nggp2WtHCD2M0U=
X-Gm-Gg: ASbGnct6PFlvtmPjLGXBBwQmXxazDU0RqpEmvyvFBKdihIEh86B9wy49av8zSM29MrD
	mIMDvT4MYbMAHbNCIpZ/M2yvwPrJMdoKIqw8cZhvqsB0OgMEaCqq351jhUFczVWNCt88K9HBTU3
	HpHQ0XjSFAoCK88tDHbg3/YUMjvvkSETzfFkyVX+J5GCKTiADiXBufscmGwoNSqWPFBnMWffw8E
	4nnnEG8aluPyOVA8pF2bZvalfrBgtJ+2X1qWJmwDmsMpk8xLqIYQN8zlnaR/RIiaKAl2VDAtmAS
	LJKLk4lguU0MFWPtTd6TMa5BOtPAVBJRs6RpcXINIjZTbhzHU3cBCN85Gw==
X-Google-Smtp-Source: AGHT+IHTxPRGm5mNkyz/LXIEUO2w8nqKfRSkk2yHl8zPEU3IqZLbPjnGdEzUK5cPc1Bb6wHgkTIrlA==
X-Received: by 2002:a17:906:7949:b0:abf:3cb2:1c04 with SMTP id a640c23a62f3a-ac6fae428c5mr5377966b.9.1743006229345;
        Wed, 26 Mar 2025 09:23:49 -0700 (PDT)
Received: from [127.0.1.1] ([91.90.172.13])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac6f0f498ecsm76678866b.135.2025.03.26.09.23.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Mar 2025 09:23:49 -0700 (PDT)
From: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
Subject: [PATCH 0/5] Fix onboard USB hub instability on RK3399 Puma SoM
Date: Wed, 26 Mar 2025 17:22:55 +0100
Message-Id: <20250326-onboard_usb_dev-v1-0-a4b0a5d1b32c@thaumatec.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAN8p5GcC/x3MQQqAIBBA0avIrBPUsKKrRMSUU81GY6QIorsnL
 d/i/wcyCVOGXj0gdHHmFAtspWDZMW6kORSDM86b2jU6xTmhhOnM8xTo0tgupqmxQ289lOoQWvn
 +j8P4vh/3hyZEYQAAAA==
To: Matthias Kaehlcke <mka@chromium.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Benjamin Bara <benjamin.bara@skidata.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Klaus Goger <klaus.goger@theobroma-systems.com>
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Lukasz Czechowski <lukasz.czechowski@thaumatec.com>, 
 quentin.schulz@cherry.de, stable@vger.kernel.org
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250326_092352_130330_78846F88 
X-CRM114-Status: GOOD (  12.17  )
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

Signed-off-by: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
---
Lukasz Czechowski (3):
      usb: misc: onboard_usb_dev: fix support for Cypress HX3 hubs
      dt-bindings: usb: cypress,hx3: Add support for all variants
      arm64: dts: rockchip: fix internal USB hub instability on RK3399 Puma

Quentin Schulz (2):
      arm64: dts: rockchip: disable unrouted USB controllers and PHY on RK3399 Puma
      arm64: dts: rockchip: disable unrouted USB controllers and PHY on RK3399 Puma with Haikou

 .../devicetree/bindings/usb/cypress,hx3.yaml       |  6 +++
 .../arm64/boot/dts/rockchip/rk3399-puma-haikou.dts |  8 ----
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi      | 43 ++++++++++------------
 drivers/usb/misc/onboard_usb_dev.c                 | 10 ++++-
 drivers/usb/misc/onboard_usb_dev.h                 |  6 +++
 5 files changed, 39 insertions(+), 34 deletions(-)
---
base-commit: 1e26c5e28ca5821a824e90dd359556f5e9e7b89f
change-id: 20250326-onboard_usb_dev-a7c063a8a515

Best regards,
-- 
Lukasz Czechowski <lukasz.czechowski@thaumatec.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
