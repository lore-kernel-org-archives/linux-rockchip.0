Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42023C4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Apr 2024 16:13:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EcDc/AlvW3w0kSeVddXBNuFM9Z6V5Mcx7l3zQYPznpE=; b=R/u9exuCyT/Dua
	DiXS+3JXnuuDJTWy3YST9Xq7Ish1CmXmUETbvYNOvd7u8XoLQqZP+GVYt29TLBNtp/2Nq1082bVKO
	IVlGvqO7xXafqT9ylmOy7FVHmPTwDJo77WtcepOhplg/A6iZFaxAJHFd2d0m0PmeY8kt3rQLfA9nU
	/Nr5Tb6Yg3WmkCzeu7GCmsO+Y+0S8GVCIiIE97MmB6+jQwJVKpqz2cr98xp2cc2F4SyxHin1WAs0M
	vwNo3WfZffB+tNih27S7lvplG0zvgl3yI3avqwqw7/hEAsYQ9IMMqzgRytt2f+UHOfIwsUUc4LLJx
	zMBgo4l5rcOPlen+/Brw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwlQa-0000000Cwed-33m7;
	Tue, 16 Apr 2024 16:13:00 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwlQW-0000000Cwbu-2XMQ;
	Tue, 16 Apr 2024 16:12:58 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-343f1957ffcso2772746f8f.0;
        Tue, 16 Apr 2024 09:12:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713283973; x=1713888773; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lE0iIAKwN26IHZrOzJQ+UkxUYWi8S6bm+npmiEEpfoU=;
        b=KEkCSDTFdztjhwHQBjbxbKx4d1DG476T2JTCFcCbMfhZLaTOBp5CuByMzNcr10Okto
         V2Ngq84oHxyPKBpmmg99Pc0Eo4iZuxPjxdk4I6POAhAG9bXnl7mb8ZznOmmQraEj+sU7
         mJC9QCCFNlWQ6r46EVz6q8herB8pdGb76mwjJwuoYRhVSIxlJvy/XBorcHlNJmHD/404
         /4iAClLVZ6pu+Hgf63UaU8iOsjWaaC/XGYlkkhWVNs9dgC1lHQ1HRx6dfDPGYR9B84Wa
         G+3kJeKoS+lWLiyHEAUiRcePBlRQ/ZuudRBemmSbk1zhMgQicJ2yvv1Xqubd/izJuvcH
         jlRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713283973; x=1713888773;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lE0iIAKwN26IHZrOzJQ+UkxUYWi8S6bm+npmiEEpfoU=;
        b=L36Vq86fare2GW2Y2pZjiBSbg4Tk48riPIHWOE0cIFGDIhlsVcXF0WhxgEcDwr8ray
         XopsFyVOkkoDBBp4qMlPAE7H6Lkzdk9l/EFs7N+ZvXkGSmAHTC9dko0ycR38+Zk/+sYs
         TK4qIVObHdtuNxfKqrNCv1PT52YDQ0DnI32IsTZTzmCUCNZ+YY/Be+iyuUkKCr9V90D1
         WhaQxnEVld40Woa6ObU+zK3Oc3W/RJiCtb5lQAzeVPdXzF/KdzlIE1N9NIedf2xQ3hdK
         Tuv09O/5ZU6cM8dxwasfAGdLcB4JgxsjecGwbCKpdM1ajehNsPhGNWinorHRt5OSmabX
         R0vg==
X-Forwarded-Encrypted: i=1; AJvYcCWAdnSD9rk3PHflfQeM7trjK5zH66RBhtQFbc0nUtKacZrmZElb7i2CjUlHkT3lCm2/3li8YOVdXDGBK/3PFRmBbD4/dfNw5CmuBPnf414+bFCD8wEcQ6Kk15FqaM9kf2R8+5tL2w/3dkAb7EeQ/rs1KkLy5SRKwEY=
X-Gm-Message-State: AOJu0YyCwpa/Vm0h+up7EslsX0N0oRNT/OgPb41B1y2+q8DNQJ0M/MTL
	40uFAv0wq4R7L2bKruZoNttn8yssQDOtMaeDLLzUFBLrMY8PP/E=
X-Google-Smtp-Source: AGHT+IG9ARM425fPZMKoPQYcOH+P46IbQ6VFXNx/9g39D202o1HbwRny8IvK1x5SH0HBZINbFbyuOg==
X-Received: by 2002:a05:6000:1041:b0:33e:d139:412c with SMTP id c1-20020a056000104100b0033ed139412cmr2499659wrx.30.1713283972768;
        Tue, 16 Apr 2024 09:12:52 -0700 (PDT)
Received: from U4.lan ([91.66.160.190])
        by smtp.gmail.com with ESMTPSA id t7-20020adfe447000000b00343eac2acc4sm15350743wrm.111.2024.04.16.09.12.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Apr 2024 09:12:52 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Linus Walleij <linus.walleij@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Chris Zhong <zyw@rock-chips.com>,
	Zhang Qing <zhangqing@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v4 0/5] Add RK816 PMIC support
Date: Tue, 16 Apr 2024 18:12:32 +0200
Message-ID: <20240416161237.2500037-1-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_091256_667227_912F7C9B 
X-CRM114-Status: GOOD (  16.25  )
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
against the datasheet and tested/measured on a RK3126 board.

I'd like to gently ping pinctrl and regulator maintainers: please have a
look at this series. I've now added Sebastian Reichel to the recipients, as
he recently added RK806 support and re-worked parts of the rk8xx drivers.

changes since v1:
  - integrated Krzysztof's feedback for the bindings and the resulting
    driver changes
  - fixed a sparse warning 

link to v1:
https://lore.kernel.org/lkml/20240321143911.90210-2-knaerzche@gmail.com/

changes since v2:
  - integrated Krzysztof's feedback to v2 of the bindings and the resulting
    driver changes

link to v2:
https://lore.kernel.org/lkml/20240323085852.116756-1-knaerzche@gmail.com/

changes since v3:
  - integrated Krzysztof's feedback to the bindings of v3 
  - integrated Lee's feedback to the mfd part of v3 

link to v3:
https://lore.kernel.org/lkml/20240323132757.141861-2-knaerzche@gmail.com/

Please see individual patches for details about the changes.

Alex Bee (5):
  dt-bindings: mfd: Add rk816 binding
  mfd: rk8xx: Add RK816 support
  pinctrl: rk805: Add rk816 pinctrl support
  regulator: rk808: Support apply_bit for
    rk808_set_suspend_voltage_range
  regulator: rk808: Add RK816 support

 .../bindings/mfd/rockchip,rk816.yaml          | 274 ++++++++++++++++++
 drivers/mfd/Kconfig                           |   4 +-
 drivers/mfd/rk8xx-core.c                      | 104 +++++++
 drivers/mfd/rk8xx-i2c.c                       |  45 ++-
 drivers/pinctrl/pinctrl-rk805.c               |  69 +++++
 drivers/regulator/rk808-regulator.c           | 218 +++++++++++++-
 include/linux/mfd/rk808.h                     | 144 +++++++++
 7 files changed, 851 insertions(+), 7 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk816.yaml

-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
