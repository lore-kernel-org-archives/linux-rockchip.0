Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C393EEE57FD
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Sep 2024 02:53:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lCedlAD5PgiUgSqgm86AoMUIOHDiAXk7SFYlHtplJwg=; b=gtnHAQdCvuljrK
	UYVlwTU/y5S47XhR77XOL7kqpvjkBSZFaC5XxPk/tBsEwJ0eyPfPKtD/CrbY4vTCD2SZghepdvxH1
	QIxB/DGhBhSjUqS4f5wvd/9oaGbSIza+NgiUrObP184AKSwWmYiLEqNDe5pTaz2X0lUEHxFA8pjAX
	eTLYFe8CYiamkLzLvSFP/7Ne13YjkunpPq1hVCRPjvgIOn9mDoI9LKNsEW62lTpLk2wFZZja9OJIM
	QJ+NKLxvVXCEGTxRZxR1n5zFVCcdu5Nsd7GaBs2mowUSyptln36C2NfVpZ5Y5Td2g6HCxWroC6KgV
	A3TOjr+NCq1UgziDhLCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soZxV-0000000BfYj-2ZUG;
	Thu, 12 Sep 2024 02:53:25 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soZwQ-0000000BfGG-1lpL;
	Thu, 12 Sep 2024 02:52:19 +0000
Received: by mail-pg1-x531.google.com with SMTP id 41be03b00d2f7-7cf5e179b68so351783a12.1;
        Wed, 11 Sep 2024 19:52:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726109537; x=1726714337; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GN8Y5jLtGngAPKb20laPRiEUlwzjLCXpSghC4FPie78=;
        b=c2gywWM9wcFIkBehmtvx/B+2rESK53nxl3NrCFeOZ3fnhJmPAUgRDrbuiNE5ac++5G
         GPT4BqyekiJeg7DRvyWk2agljMzpZyp5ktbbItizNUE1AJxIFPS4Pb38mihtY3X2CqhQ
         +hyeHovdGSIvqao4CgwZplrW1xlgmXYsDaDSwe9vooHrTkGUvrI3ELN0pxcB6eOiuPJg
         wgH3z8xMJAM3XLZfDnIOV00bsebrAg8NzDQvQTsy1XEL+8upQlDsew87UGEVK0v+KdjE
         KGm8DzPOR5zgQtzYHrfkle0wpNbtq9Zyu8jjbrkPGj68ql+Q4kovmZMg37L0hjmf1zki
         hHeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726109537; x=1726714337;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GN8Y5jLtGngAPKb20laPRiEUlwzjLCXpSghC4FPie78=;
        b=UxFnHUCqvK5WKRJNn9EOk8q0Qx2oaBxJ4Pn+M6bDjK1TPjYTGxuFOFILvWJ63mFfP4
         9pgQ9KXGVhO6oT3j0QwOFrb4eRR3ShEk17TapOtzYm3vlQcaLVelYSXJIruEGltIIAfH
         7RWFy5uG/CHrSGMx2WgqyhAvjnNsbMhWOrR+wWcbCVO61JUrQJ/4b4UkPI65VV4a1oWD
         BECG1HKOIvmh8s6Mh86ZGbcT5JLtYLIyxpZZQdkO7XaJD0+jOD0AlJz9oN7yxINRU0nG
         9MkK8QqOA4E0fNWKFpEyndcXhAr3BF0JWgsud7rlamIyMBYA5csScRscy6t9VJTQKJgF
         uEpQ==
X-Forwarded-Encrypted: i=1; AJvYcCU8Csqo82pnOSa0plJfgoFyc8k7q2kPkCIVzBkRSw4BFzLXy+uPw71umljGUAdBIgpAP3v3O8PUM2+BOTPApcw=@lists.infradead.org, AJvYcCUlmDrWRcY/iTiHY1gftkN78IM4nqvt1VVhYk1dlQmkXN65w9Cu8ajtQUFmvnWkZkbZc4ANulkyZzjkXmFtctWj@lists.infradead.org
X-Gm-Message-State: AOJu0YwNFHtl5LMh1pctMqhKnoaIWzTqQMQFc/YeDBjPrHhzeJl9/3d9
	DW0j01MlDkGlBq1tFLHkNs10GFUhT0LCijA+fTsa7YIMeocntk4d
X-Google-Smtp-Source: AGHT+IFmfVrBqKtjEq474kWG0li+Uj14wPYbL5vT/8+W1a0u51o+IZpRgcjA2sklD/7gZZupssq1WA==
X-Received: by 2002:a05:6a21:1519:b0:1cf:3248:48a0 with SMTP id adf61e73a8af0-1cf756c3ee2mr1960305637.18.1726109536661;
        Wed, 11 Sep 2024 19:52:16 -0700 (PDT)
Received: from luna.turtle.lan ([2601:1c2:c184:dc00::315])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7db1fbbf877sm569023a12.50.2024.09.11.19.52.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 19:52:16 -0700 (PDT)
From: Sam Edwards <cfsworks@gmail.com>
X-Google-Original-From: Sam Edwards <CFSworks@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ondrej Jirman <megi@xff.cz>,
	Chris Morgan <macromorgan@hotmail.com>,
	Alex Zhao <zzc@rock-chips.com>,
	Dragan Simic <dsimic@manjaro.org>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Jing Luo <jing@jing.rocks>,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?Daniel=20Kukie=C5=82a?= <daniel@kukiela.pl>,
	Joshua Riek <jjriek@verizon.net>,
	Sam Edwards <CFSworks@gmail.com>
Subject: [PATCH 0/5] Turing RK1 SoM DT updates
Date: Wed, 11 Sep 2024 19:50:29 -0700
Message-ID: <20240912025034.180233-1-CFSworks@gmail.com>
X-Mailer: git-send-email 2.44.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_195218_482450_DD102A81 
X-CRM114-Status: GOOD (  10.64  )
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

Hello list,

It's been a little under a year since support for the Turing RK1 RK3588-based
SoM board, was introduced upstream. Since then, the driver developers have had
great successes in further RK3588 enablement, achieving such enhancements as:
- Stable thermal ADC support
- USBDP PHY support
- Panthor: a driver for the Mali-G610 GPU found in RK3588

Accordingly I am pleased to present this DT patchset, which leverages those
driver advancements to enable the corresponding features in the Turing RK1:
- Automatic fan speed control (patch 3/5)
- USB support (patch 4/5)
- GPU support (patch 5/5)

It also includes a bugfix (patch 2/5) for a previously-discussed [1] PCIe boot
hang problem, for which it was decided [2] that a fix required first splitting
apart the pinctrl defs for the low-speed signals (patch 1/5).

These patches are ordered by importance. Please apply this series partially if
deemed necessary.

Thank you for your time,
Sam

[1]: https://lore.kernel.org/lkml/20231205202900.4617-1-CFSworks@gmail.com/
[2]: https://lore.kernel.org/lkml/6311244.MhkbZ0Pkbq@diego/

Sam Edwards (5):
  arm64: dts: rockchip: Split up RK3588's PCIe pinctrls
  arm64: dts: rockchip: Fix Turing RK1 PCIe3 hang
  arm64: dts: rockchip: Enable automatic fan control on Turing RK1
  arm64: dts: rockchip: Enable all 3 USBs on Turing RK1
  arm64: dts: rockchip: Enable GPU on Turing RK1

 .../dts/rockchip/rk3588-base-pinctrl.dtsi     | 271 ++++++++++++++----
 .../boot/dts/rockchip/rk3588-turing-rk1.dtsi  | 137 ++++++++-
 .../boot/dts/rockchip/rk3588s-rock-5a.dts     |   6 +-
 3 files changed, 363 insertions(+), 51 deletions(-)

-- 
2.44.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
