Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00A78C25B76
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 17:22:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/6TqtxgY09f3Bn0qQxj9os7uZTGSZqc5V89/pkvihfw=; b=owUX0OSAjfhLwj
	fbCQQZAD1kRCQWxH27J3u7Iu1sDE4pWpn64PFWTMo0sRPfr12Ek2E5B1uKXvwCXZmDz8ZSFdLPgTG
	4F/0bjBv2trfUPlNPjRoqI6GcrfScTV2yQzzQaqi3ZCVMVjHYfV+x2j27LG1kvP5AczlqUJMV573l
	KQbVKQ8DIfa8DIt+E/U3z6FAb6+fo03vXWmNOUF2rTffV3P4tkivSTbVsAcIRMvx4PX+BH8eb/b6e
	a6z30TYyNmnBySzXDhNycLATpB9X7hgtshq92wy9jmxYKhmoB4YfCDKVdBAZyomvdiJhernpYJurM
	LgXHBAj5slfPxL+XCejg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEuKs-00000006xsi-1RWc;
	Wed, 05 Jun 2024 17:22:06 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEuKn-00000006xqi-2JUi;
	Wed, 05 Jun 2024 17:22:02 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-52b8e0e98adso161253e87.0;
        Wed, 05 Jun 2024 10:21:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717608116; x=1718212916; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=T8glBAflWGPxyQzSe6ZrKekZDJ1XPYC0j6Piv/TsYko=;
        b=E5R1gaai7lE8IldYqdjAhKK/h2hiLBjsbxtuHB5VGRKHTjyazJbWkLguwLxxy1w0TH
         eZhBNYdVe//ITqPCnj9I81hgmTlsgkH/ce84LNU4rmSwIu2AXN8ER4pc14E7GjLpCbOB
         ObvhLIDLFhPHYLsdlhEEcrDCPgtJ8Pt/TcFdtYXP8cPEPYNOEOLJDdX+oEzo48hqy00W
         tNuoMc4kzWHDM/V6i9C/mpH+ubLUR6gLIz0HaYf1xei0qR4aNIujHPmxIJSTaN92iC/b
         j0HS7rrAkBpjl9LVH2C6oEEGc/PoC9fLe/LeZPb6de22f5qDM6feA3rztmYtOuA4v/HF
         tvuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717608116; x=1718212916;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T8glBAflWGPxyQzSe6ZrKekZDJ1XPYC0j6Piv/TsYko=;
        b=b9gVOmmppiK8PwZPu4RLGHdC0+lvANpFNeEFosQNrZa+IhHOMFvuwplXpQDEPBzuMC
         bMlHrKjuTB6cl0TdKk2kEaBJi3itMLnxGFznVrSzuanyJmC7cxa4E+qC9NI5CupFPPbq
         bkc1z6nUL8yVK5zrLoO6GUVcAqIthH6R8l5u8ztJKL57OpL6ZO/YuaXKBlmJ/F2SsYWx
         2wd97o8zbzukMagFATsz9sJqevVTCwB326rBwDheqzdyiwP9L8A7y5aCtSnPXQ9cBscx
         6/h+Ewj8Otzx7gnfdhVXoS/J4J2V9jYOOqTog/v7K28hhZes8mrSq0nK/z7FyTAlEJMK
         KnOg==
X-Forwarded-Encrypted: i=1; AJvYcCXDnqBJDt5IoNPnW+gq6M5ZIRP1Jx2aJANytfuj8hC3RY6tHR+Ks3OBbrkTiY2aHpOVvZLtEwsIenTPc8tcdLd+S4hzte1WEhqt4i09vBmKO4xsQNQwTHQs3i3UjKAyZgM+SkvHHlE60I6msJRwp9vUTGZ8uBp7tEI=
X-Gm-Message-State: AOJu0Yz/VlI78/Y3GCDxZAYKciR673948zzN6Dqv7O3Cka/DVVlwcFCx
	te/0+EtHdLjVEJs6WUdvIMWFFdiV35AA5kFbK0c7wcO0pP0dCz0=
X-Google-Smtp-Source: AGHT+IG6Yr4exGBFMy0IEqN7rexShi+4lRW6cG85bsBwhPAXk4YCTWoySewvAl8hcezOj1tu9mIW6Q==
X-Received: by 2002:a05:6512:224c:b0:52a:9db1:9d7a with SMTP id 2adb3069b0e04-52bab50944emr2612149e87.58.1717608116135;
        Wed, 05 Jun 2024 10:21:56 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:34f:df25:1c86:f2e7])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57a31c6d594sm9666663a12.69.2024.06.05.10.21.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 10:21:55 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 0/3] Add SFC support for RK3128
Date: Wed,  5 Jun 2024 19:21:51 +0200
Message-ID: <20240605172154.193047-1-knaerzche@gmail.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_102201_615765_04DE819F 
X-CRM114-Status: UNSURE (   9.08  )
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

This series adds support for the Serial Flash Controller (SFC) found in
RK3128 SoCs.

The existing driver can be used as-is.

Alex Bee (3):
  dt-bindings: clock: rk3128: Add HCLK_SFC
  clk: rockchip: Add HCLK_SFC for RK3128
  ARM: dts: rockchip: Add SFC for RK3128

 arch/arm/boot/dts/rockchip/rk3128.dtsi | 35 ++++++++++++++++++++++++++
 drivers/clk/rockchip/clk-rk3128.c      |  1 +
 include/dt-bindings/clock/rk3128-cru.h |  1 +
 3 files changed, 37 insertions(+)


base-commit: 234cb065ad82915ff8d06ce01e01c3e640b674d2
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
