Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E567DFEE4F0
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Feb 2026 20:54:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iqs1AUi5MrIRYIaM8It/AzdwurcRtFgBoH+0Ttw2nCg=; b=iD84y1/YrJe/8U
	hpOOhB5pR/2UFqXS4sHY1DdiMolI9E7qqOuxzk1hXjCGkRcQdsVvnnwKwFxyg+jeATX8cs44BPAgH
	MwMyqPweF1/oPp6v4E1ardgi51cXqG4TjWqALs8gAIdPEQqVEBm3odppxuvmd8luIwYeHJWmrT+I8
	YOpxOvLWjaI04fPohjjPFGpGso3ut4LBMaKmf9pj4msqA7RTbTFTf/iLQ/kYG8am8brGGts+dTP7a
	+bDni9yX93GjBQPNnPYpnYLLn5J4GEEWSNqIuFAVShBzASDxhokq0lzUKWl7PnOP09QHXeVQscIXG
	9IDYggX8zEuHvrtyZYXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwRKT-0000000AGh5-3QxA;
	Sat, 28 Feb 2026 20:54:25 +0000
Received: from mail-yw1-x1162.google.com ([2607:f8b0:4864:20::1162])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwRKQ-0000000AGfO-3N3z
	for linux-rockchip@lists.infradead.org;
	Sat, 28 Feb 2026 20:54:24 +0000
Received: by mail-yw1-x1162.google.com with SMTP id 00721157ae682-79868eae536so31024877b3.0
        for <linux-rockchip@lists.infradead.org>; Sat, 28 Feb 2026 12:54:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1772312061; x=1772916861; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Y+AHGyh3OXoEomGwyE8iNdHvjyGaJiecqa7H5SxpJzA=;
        b=dLY0NYo4FxbRz0dIkX8t8iIEMn0xoxJh2x/NrnJU0Ip61+RyZaCQVFQTezZDWKeRuW
         3XyzJZyYRGu4s4XnKvZRoMVhUqFoU7SZur2F03xfSlDIQlVtStQ9XgtbSayMOzaLSL2e
         ACRrul97fXDcRNrzrHUGPD9yU03RjDkACTweYayEFKVaD8D0I3SjawzuYQjYygn+UIlS
         wL37xe+LyWkgIoHlWTKIx4SDYPMxaVQrnQR8IhvMLm+/YbnVhT48oks30qhvxRGE8189
         r5svd4/jA4KSxeBiJWfowDaVQlY7lx7FXL28EWdmjoXn378XNKdWM8jDGv9FsYTkY/VI
         SYFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772312061; x=1772916861;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y+AHGyh3OXoEomGwyE8iNdHvjyGaJiecqa7H5SxpJzA=;
        b=UhsXsdsmooQANG0MiooFXXuby1/SOVHzBzwkpwIJRyRbuslI77Px3tTesMkiC+MrmR
         RNC+/SgFyUqbp78OfbTcVHrZxFi3CNQmO0bfFUNKniCgyKZc8XszSI4fPZiGzjNRej1o
         O7faxemSYdgLiwryLL2qPsTy1by6qRwlrQF3Xz2wAhMNJrJ6ru7hNxT6ppVuDloO8OaI
         FlJySySMNisT1mggjup8WXyohMJddTaE1FVhbMDm8LRZ0Ux+7dgCu5aE+r+DP2EZOvXY
         Uisf1BAnZwNcFOfHPaXu0GrICkIlVSfw7VBU2cG7oAAMpwvKfikH83klVRgt+F7Hhlwv
         zeXw==
X-Forwarded-Encrypted: i=1; AJvYcCXslwacEogElSjdhVRytTEYbHF9DjdvHfk6OWBcmIsmk14t42L6fhIJN56SU1/UU3g3vbAEINK/v57JuYm+EA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yykg7G3symQ1A6HV3N1CUQKUmDoWblPCwEZLXA0Xkdg6Ufjy9r0
	Pf25H35X07IkMbsZoI36wn+lOqOoLCJkcDHeFe9TEIHMbLuCYu48tb6dSnu6jVQm6/t6dM4wOzJ
	TsOr8Yrx6RFuMbcHHU3344TsNbCY3ktuBZ8k/
X-Gm-Gg: ATEYQzxOUhiSTVao5QCbug/5Bb4S++dCGq1X9P8TBhsu0IFjKd/w7XjZnbC3fV9fFLV
	fwt4x7+xU86LoaL43CsbEvTisCF/hBKLStuHDQe2OWoDiDcLgyyK6PNE/b8mEWDo/YHe04etgWS
	AJCzY0g2OfAmjk9ajSPxD5FgkRtKFFmvEkJIQlsxvAINMyKF6AbbUkqafflOaEi9dwJQL5aC3dq
	D3fmx6Hic2VyrsCKON51LLoS/MDKg3ygwGsbO3BGwm8KkVcKU/IX7rMk3wl43k6B4MtHkBUHDXY
	CTWYtOMl8+Ur49tvcSWseOfGzPiupaTseyA1vGdWseD+U2AZthLZVL4yTUpe/aOoLUeXaldnlHE
	7kM+/PaKO5vtFUHpNAxLAsI6GnsaVYhtbTM8dOlBB7plF
X-Received: by 2002:a05:690c:399:b0:798:6042:12f8 with SMTP id 00721157ae682-798855d67b7mr70561227b3.55.1772312061036;
        Sat, 28 Feb 2026 12:54:21 -0800 (PST)
Received: from ryac.ausil.us (207-179-239-100.mtco.net. [207.179.239.100])
        by smtp-relay.gmail.com with ESMTPS id 00721157ae682-79876bf333esm10213567b3.16.2026.02.28.12.54.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Feb 2026 12:54:21 -0800 (PST)
X-Relaying-Domain: ausil.us
From: dennis@ausil.us
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: FUKAUMI Naoki <naoki@radxa.com>,
	Hsun Lai <i@chainsx.cn>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	John Clark <inindev@gmail.com>,
	Michael Opdenacker <michael.opdenacker@rootcommit.com>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Andrew Lunn <andrew@lunn.ch>,
	Alexey Charkov <alchark@gmail.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Dennis Gilmore <dennis@ausil.us>
Subject: [PATCH 0/2] Add support for Orange Pi 5 Pro
Date: Sat, 28 Feb 2026 14:54:15 -0600
Message-ID: <20260228205418.2944620-1-dennis@ausil.us>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260228_125423_003394_68C47D3A 
X-CRM114-Status: UNSURE (   9.38  )
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

From: Dennis Gilmore <dennis@ausil.us>

This series adds initial support for Orange Pi 5 Pro. The network
driver was just added. The only thing missing is the second HDMI port
that is connected via a DP to HDMI adaptor


The series was tested against Linux 7.0-rc1

Please take a look.

Thank you,

Dennis Gilmore

Dennis Gilmore (2):
  dt-bindings: arm: rockchip: Add Orange Pi 5 Pro
  arm64: dts: rockchip: Add Orange Pi 5 Pro board support

 .../devicetree/bindings/arm/rockchip.yaml     |   1 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3588s-orangepi-5-pro.dts   | 376 ++++++++++++++++++
 3 files changed, 378 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-pro.dts

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
