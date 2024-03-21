Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44962C54E68
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Mar 2024 14:39:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=URT6SCUw44tfFDRd8ui3q1iej00tKdFSg9bPEjQ168A=; b=KLu/5/Hhlhmk0Q
	MLDpYhQLH+g9R/VKW2Gl/LatxOTDJEP2M7jRnvrPsbKYSVPVY/wwmt82lMwtSLSgPd9aH7xJWoygG
	8k+5lnq7JkfqA3KSpEv3j4V3GC9Cd+acb34lLrQ+gURrhvKnFR71lXsGA1wPUOrSpZJdHaPAKh7Zk
	TiuJcc/92gIy1z/EqFqp1sJCdZmv4+NgZ2p5GV9XFzb0/1ZOTA/91aMEGyQcd03hUk2H9d61amDd4
	fyr2tXf9tU+smvNjYZfOUm7jIOSvrxjPZKhoOrN8OtqBGorBo106yv7C8uZwmLDopN8HbFMVyQ67O
	nJNEy0Bi1+my8irhOQMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnJZw-00000003Iq2-3JRv;
	Thu, 21 Mar 2024 14:39:36 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnJZs-00000003Ioh-3Mwk;
	Thu, 21 Mar 2024 14:39:34 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-56b9e5ed074so1486833a12.3;
        Thu, 21 Mar 2024 07:39:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711031969; x=1711636769; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8qXITx5mQ/vCXW+D4l5s0fzydZH5TzXg2O0bB4XMDMU=;
        b=CmAqxqQPD75mdo7rocoqVyzWNBrHjEaoEi/NxP6KQ4eLbAoWLiBXAJZ5KUGH8lARwj
         qESNBzTEJS9VppL34WyDvhRVff8cAPjKqhvCuHUX3CDsHNis/FP/k9Hr35ZyxKnSxxDh
         AF1Y4Pp/EqrPS1NNVUNTl017KhpurCH01MaHPWd3iKJNJvNLD4/phNfx548bcc26qe9l
         iDuU5PYWTQ6Adw83n4kYOYq1UY/SUq0WZh8H3brPXlDF7mPpJwHleP7qrRECP1Exulr9
         ccYHL+9eS1NgxhylsTjzRHqcTfLTeQLwM7vjSjfLRP6gc4ZFyAjqUiA6HXGrUnipbkmd
         +X8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711031969; x=1711636769;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8qXITx5mQ/vCXW+D4l5s0fzydZH5TzXg2O0bB4XMDMU=;
        b=L0BuYWASksy8RzYOXmU0NKtFGfJlT1RXphAKPh6MzMLkdygefuMWlkac395A3XE6JX
         lKhQ3B83GDpondVYEX5rhtSNCaTfbkEXNJ+ln95pSgOxqHBfBTBE2ghPFk1HhMhWRibT
         HS1sPgPZXZaZNgPxbh0Puetqz5Wb38zYG5ScAkfVy74rQWi+MT1LS8xdvsHBqO8O6E4D
         5Y85XYfxvu++svBKtnI4iODHB/3k0rGsSxlnWEfaw7m8DADygqHCX36tu06fwEDjoswg
         /p+oKopFbEgxqZZ1R3fHVSZoFWZaikObRY0q2/jkpwikaFwOb3ox8Vq1p3ut8AdzVDAA
         BOyg==
X-Forwarded-Encrypted: i=1; AJvYcCUow9F0bkvGtNZp0or1FXCPTKELg5Xb49+zNMV4XivYpxw2mnw/tnRzfXoHnIrzAL6Y23UJcivRFSUtZ0XJ/E4lecaEJSx1Y1BeP4+Y//a6A5N7dwWMbNXb4Nxck+MLu2YD7zROE+uDM6rVxZETLMlhN1vM1vnqw5M=
X-Gm-Message-State: AOJu0Yygn05bZ3jZxuY5xPv1QYTqvCwoFcD8uyTgefltiWVhJRRMcVi1
	0OLrHXBJV0F/KS4Vuz7FbAHzn4CcGX1ioFMIuKFK9u7XWGfiXMs=
X-Google-Smtp-Source: AGHT+IFTcd4jzFilF6dem225sa68PADk/S7/hKSTYPC+aEHwNm7QUVNRqEyLe/nR363LVmUMjJocqA==
X-Received: by 2002:a17:906:f757:b0:a46:fb17:8871 with SMTP id jp23-20020a170906f75700b00a46fb178871mr3147904ejb.76.1711031969400;
        Thu, 21 Mar 2024 07:39:29 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:b39:dab4:8e20:e918])
        by smtp.gmail.com with ESMTPSA id e3-20020a170906248300b00a46abaeeb1csm6147923ejb.104.2024.03.21.07.39.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Mar 2024 07:39:29 -0700 (PDT)
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
Subject: [PATCH 0/5] Add RK816 PMIC support
Date: Thu, 21 Mar 2024 15:39:07 +0100
Message-ID: <20240321143911.90210-2-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240321_073932_867072_4DB7206F 
X-CRM114-Status: GOOD (  14.22  )
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
PX3-SE (RK816-3) but might be used for other SoCs as well. The mfd consists
of an integrated RTC, a GPIO controller, two 32k clock outputs, a power key
(output), 4 buck- and 5 ldo regulators, 3 regulator-switches, and charger
with integrated fuel gauge. Charger and fuel gauge are not part of this
series. Two of the switches (otg/boost) are part of the binding, but not of
the driver. They must only ever by enabled if no battery charging is
happening, but it will be enabled automatically if a battery is attached.
Thus they need some incorporation of a yet to be added charger driver.
Integration in the existing rk8xx-infrastructure was pretty straightforward
and only needed very little tweaking. In order to not further bloat the
driver(s) too much with additional definitions I tried to re-use existing
ones wherever possible.

The patches are loosely based on the vendor's implementation, verified
against the datasheet and tested/measured on RK3126 board. As they are
touching several subsystems I'm sending them (very) early for the
6.10-cycle.

Alex Bee (5):
  dt-bindings: mfd: Add rk816 binding
  mfd: rk8xx: Add RK816 support
  pinctrl: rk805: Add rk816 pinctrl support
  regulator: rk808: Support apply_bit for
    rk808_set_suspend_voltage_range
  regulator: rk808: Add RK816 support

 .../bindings/mfd/rockchip,rk816.yaml          | 259 ++++++++++++++++++
 drivers/mfd/Kconfig                           |   4 +-
 drivers/mfd/rk8xx-core.c                      | 103 +++++++
 drivers/mfd/rk8xx-i2c.c                       |  45 ++-
 drivers/pinctrl/pinctrl-rk805.c               |  68 +++++
 drivers/regulator/rk808-regulator.c           | 218 ++++++++++++++-
 include/linux/mfd/rk808.h                     | 141 ++++++++++
 7 files changed, 831 insertions(+), 7 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk816.yaml

-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
