Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A00B7CD11DD
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Mar 2024 08:59:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JCqz9hKQczREeA1Zpxa/Dbcv6KB47vuOxZ4Gf6T2r4s=; b=ugXC3eNqAN+pXo
	voa1MOtJxtT2g0oNKqTjKDqzpLEiDRADi76HIZ8e8skIZCmmanjx4TsHjhcaRZhXmnlJcXccpcOkc
	VMkbJ3olZZ+8JlPjtoOBmktqlSsrbnu6gAJJ61BlV/LRwmfWNZMIAva4wFc0W8xUztkJzfQb/m80L
	cJRiGa2ixX7Ipx//o1Rfj4kQiNFKmsAYaml7fSbntZDBY66R67Ju+FwVbObL2yNTRcleu3yEw34Sk
	agxcRfyIXtZBQrd6EQqZQN2RyOSC4j0NaR0qr7PJRaq4Acp130dt1G/NFTgh2Nl0uTShRY6X98Q8U
	h+t3VhQXyhT3jon3Q6Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnxDh-0000000A0wO-4B49;
	Sat, 23 Mar 2024 08:59:18 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnxDb-0000000A0rx-2Oik;
	Sat, 23 Mar 2024 08:59:13 +0000
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2d48d75ab70so42659111fa.0;
        Sat, 23 Mar 2024 01:59:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711184347; x=1711789147; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xJ9+KdXwScarwq3eZMEvlp2qSxDqomLTVGyznQMchR8=;
        b=SpRcBJPmMkchwLCtv9k1/39MCkwvQHLvEDaqNt+iDgM1uVxCA6BIYrpv/3WhB1+ug4
         sbE2TQl+Jy7H0p+pXeEi0gMp3R20EcJFFjFMBC59BBKlcb7ggGyKg1pysLZHhl+aGSLE
         65m4nfv5gs6sMqsTkYznmu2WLrMTFNX+uLdtL85ebuu5Gtx/ZeZoGgx4/deR3V0BXYhC
         ElZHWf0cUGeV2NIsql7tX4psO3EKKDLvner8ZIvza9V9rPKjig/eqO3VvwiH0bkA2JDz
         hzxuSSdQbXopDZa26YDsFgwCIUsYbp9ECtH65SGWGcvOQeb4LQClC6OFCiyJY8sKvxsZ
         C6lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711184347; x=1711789147;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xJ9+KdXwScarwq3eZMEvlp2qSxDqomLTVGyznQMchR8=;
        b=EWiguMs1QX1C6sy93PzoQNsINJ0gePguG38vZz5hBqQJXFetB0n8CPwT3wCoZeg2QZ
         MIPYDU3ehsgME6pzGqJtTr7BX9YXdi0pj49K1dgS6GI74obwCcW7PX/2PQdTv5Aps+6U
         HxeufqKYnq5bGtbxHiuZXbso24y4QzUbcL3c6HDvVBVf9Ib3J1Ii4j06LMixzG2idF0i
         m+Fys03fEmqg2WNE8MLs1iXJic+NG9nkADhNkKX1XLxQRUSKeLb7zzsCD9j0mbIRjTiY
         +FOCn73jglWZqVHSPAjA+zbo3o7/uP6iqsQrnWcjs6AsQ3bjU2wVkb6B1kigm0V/E9zh
         rT4w==
X-Forwarded-Encrypted: i=1; AJvYcCXVmCnvj7+dm/KC3trG2KpHpHrfHStB/mostaiZdYGzZXf7cFZeMfXRD/y5zU2rJsfmlOAAUyOM6aCDwJymcWaM9gXujeSKl4/tPx5ElKojD3rTpqNvHYElq45OJN8VO+gN2B6CRfyS4rpclxwAC2s7apEoDxAldio=
X-Gm-Message-State: AOJu0Yy+Arl/r4NIjZXD8DJFvF/9EM85HmR+pEkun2HJxi1H4s5az+CW
	Aj8XnYaSRT/rO2FVV3LPUM9PpYaVOWil1R+z1yvCtjPgvR4hYkE=
X-Google-Smtp-Source: AGHT+IGg0Fs7Ikhhf8Mkdjx09JhICxh/CwvAQBZW6CoPdutXLKfdUq9oRvKyht996A+Ebz9GhYfLBA==
X-Received: by 2002:a2e:934b:0:b0:2d4:d50:2358 with SMTP id m11-20020a2e934b000000b002d40d502358mr989680ljh.18.1711184347509;
        Sat, 23 Mar 2024 01:59:07 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:fbb8:7547:139d:a40f])
        by smtp.gmail.com with ESMTPSA id x16-20020a5d6b50000000b0033e93e00f68sm3965031wrw.61.2024.03.23.01.59.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Mar 2024 01:59:07 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Linus Walleij <linus.walleij@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>
Cc: Chris Zhong <zyw@rock-chips.com>,
	Zhang Qing <zhangqing@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 0/5] Add RK816 PMIC support
Date: Sat, 23 Mar 2024 09:58:47 +0100
Message-ID: <20240323085852.116756-1-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240323_015911_686703_05199981 
X-CRM114-Status: GOOD (  15.72  )
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

This series aims to add support for Rockchip RK816 PMIC series. As per
datasheet it's targeted for RK3126/RK3128 (RK816-1), RK1108 (RK816-2) and
PX3-SE (RK816-3) but might be used for other SoCs as well. The MFD consists
of an integrated RTC, a GPIO controller, two 32k clock outputs, a power
key, 3 buck- and 6 ldo regulators, 3 regulator-switches, and charger with
integrated fuel gauge. Charger and fuel gauge are not part of this series.
Two of the switches (otg/boost) are part of the binding, but not of
the driver. They must only ever be enabled if no battery charging is
happening, but it will be enabled automatically if a battery is attached
and an external power source is connected. Thus that needs some
incorporation of a yet to be added charger driver.
Integration in the existing rk8xx-infrastructure was pretty straightforward
and only needed very little tweaking. In order to not further bloat the
driver(s) too much with additional `#define`s I tried to re-use existing
ones wherever possible.

The patches are loosely based on the vendor's implementation, verified
against the datasheet and tested/measured on a RK3126 board. As they are
touching several subsystems I'm sending them (very) early for the
6.10.-cycle.

changes since v1:
  - integrated Krzysztof's feedback for the bindings and the resulting
    driver changes
  - fixed a sparse warning 

link to v1:
https://lore.kernel.org/lkml/20240321143911.90210-2-knaerzche@gmail.com/

Please see individual patches for details about the changes.

Alex Bee (5):
  dt-bindings: mfd: Add rk816 binding
  mfd: rk8xx: Add RK816 support
  pinctrl: rk805: Add rk816 pinctrl support
  regulator: rk808: Support apply_bit for
    rk808_set_suspend_voltage_range
  regulator: rk808: Add RK816 support

 .../bindings/mfd/rockchip,rk816.yaml          | 269 ++++++++++++++++++
 drivers/mfd/Kconfig                           |   4 +-
 drivers/mfd/rk8xx-core.c                      | 103 +++++++
 drivers/mfd/rk8xx-i2c.c                       |  45 ++-
 drivers/pinctrl/pinctrl-rk805.c               |  69 +++++
 drivers/regulator/rk808-regulator.c           | 218 +++++++++++++-
 include/linux/mfd/rk808.h                     | 141 +++++++++
 7 files changed, 842 insertions(+), 7 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk816.yaml

-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
