Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64FFEC27C55
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Jun 2024 14:37:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zsDyRSGQaa+ouVTR5mM2gu+T0HEgCEipHmPILBSV2nc=; b=E4asrFpzH4WE4G
	QE6GAK81lY6/ycbEw1o5LeWOQLLHoAdPkLwb8u6TWEhgEUga8SJSHtLCnQD9VVmb/0QYM0eAnn0C2
	o79anAq5JIOzUDqXedqXQtQuxHPD4Fz8yhvlj7eH6K2meOedByz9JU18i69rA32IUTBVQAzXHWlZH
	RhJ4HRSXUJjPgfYF0KheZomn6FMGfSfzsj0fFN3siIo//NwDQEdaeUf7YErQRheCNiZ1c/+l/sQZw
	wQpa15Y6LcCVgbfiulYoyAJM8bulYSAVlz4bI2oHynwfrTOh7/IYKosNWECOKSF0owVdevL60Sf6I
	JYg0H9YWkzLm75VSKMgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFEFC-0000000A6j7-3aWi;
	Thu, 06 Jun 2024 14:37:34 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFEF6-0000000A6de-1LMu;
	Thu, 06 Jun 2024 14:37:30 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-57a68b0fbd0so1172913a12.1;
        Thu, 06 Jun 2024 07:37:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717684646; x=1718289446; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IQPdfmgPChtjBlPSUXP3XdJ6QoXKWpgusRBHic1ZZbo=;
        b=avQVn7Ad8aqAhpNie2CgJY5L9+3x78yURI0H/LiIGlT9OEECakjM8pzaBT0vE2fZOg
         PROv1iJQO8FlKKIMhuGx1ieIvqz1QUKx+yWwiEuBAKhIzubQ8RDOhIrpQW+O6rT0bVWi
         MiiVofaS1AjdH3B/KD8CZXY4rPIJ7+Yb3Fjrh8M7Ch7xvWKm5qr0Ftspgt6Zm3OmV3EB
         jiV3ZUwizxJhCqQSVFWw21MJrHy10oo75NZAmmkYPZ4V5dFEczB6m0ijGvdM9DvBB73y
         XjlKRIpl2SBKX0bjV8XNvCE8WHkp08j0e0RbM4vMENOJ5+ay89S+ZuHL0DKnlSsnzQSA
         fNKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717684646; x=1718289446;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IQPdfmgPChtjBlPSUXP3XdJ6QoXKWpgusRBHic1ZZbo=;
        b=c3nitySF9hhwawOfbmGEnUD/i8/JiDVeIY0OFRaETmwdpZqWe/mU0Lm5OIvN+z4Y3z
         ZKR5NzpDixTRfOlIWH436qzRYyIBTilWkPUlvondKfKsg9eSIWqcHsAhdoTTpkSg2FGU
         CyK8iYVZmvw7Z6DISQwyOw2ZLGLOef6OHzjA0JuHy7QQ9eovC8VM5Q/qePy9fr4bRGRT
         yY834DBWhv2hg5mDDaAlKWdSIKN+rFyDwghrARRBVh8LplUS3Kmsb+X0wS0lJIjQP/Nz
         OurWY/CGaMeL6SfNlTRob6UiVlrv41EFYGPdExbQ47zdTFjxFX2Jbkl5MevdGmfaPcDE
         r49w==
X-Forwarded-Encrypted: i=1; AJvYcCXM58C+ACIAFlx80x1Nh2ZTdLQULT6S4mILqO8VclMkgurqN7FuNLBqr5jI/hXBZWD3DKCNxI2RHQAsEA5+Q+aAOsPproTd2GYq6FkA0PFoPahxr/PFB1V4K/yzYWE8kKRPnxkwBlAaDWkt+k4RkSvyXmeH3aXb6T0=
X-Gm-Message-State: AOJu0YwUhs1GvseD9Utsvcf843v5fT1+XTObiV/NzjcgXBpKtFgG6Eo0
	kruu3JENHF5XuvOETccmp2xUUkkrfuorr2AUL/gFhA878Ld758Y=
X-Google-Smtp-Source: AGHT+IHNL5yo/Bdpu8nBzCloyRZW3BrEOgVM80xio31mispBtwt0CtqJWneNcLyY0SGGgTvqC7aD1A==
X-Received: by 2002:a50:f61d:0:b0:57a:2d01:13cc with SMTP id 4fb4d7f45d1cf-57a8bccb52fmr3586977a12.39.1717684646306;
        Thu, 06 Jun 2024 07:37:26 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:ed9f:91b7:21f2:3109])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57aae1008adsm1190925a12.38.2024.06.06.07.37.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jun 2024 07:37:25 -0700 (PDT)
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
Subject: [PATCH v3 0/5] Add SFC support for RK3128
Date: Thu,  6 Jun 2024 16:33:57 +0200
Message-ID: <20240606143401.32454-2-knaerzche@gmail.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_073728_431483_67D5E748 
X-CRM114-Status: GOOD (  12.61  )
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
RK3128 SoCs. The existing driver can be used as-is.

As without using some "id holes" we would run out clock ids when adding the
additional SFC AHB clock in the binding and would have to touch the ABI, I
added patches which remove the CLK_NR_CLKS macro and use the recently
introduced rockchip_clk_find_max_clk_id helper instead to find the highest
clock id.

changes since v1:
 - added patches to remove CLK_NR_CLKS (Conor)

Link to v1:
https://lore.kernel.org/all/20240605172154.193047-1-knaerzche@gmail.com/

changes since v2:
 - collect acks for the dt-bindings patches
 - fixed pinmux settings for chipselect pincontrols

Link to (the messed version of) v2:
https://lore.kernel.org/all/20240605205209.232005-1-knaerzche@gmail.com/

Alex Bee (5):
  clk: rockchip: rk3128: Drop CLK_NR_CLKS usage
  dt-bindings: clock: rk3128: Drop CLK_NR_CLKS
  dt-bindings: clock: rk3128: Add HCLK_SFC
  clk: rockchip: Add HCLK_SFC for RK3128
  ARM: dts: rockchip: Add SFC for RK3128

 arch/arm/boot/dts/rockchip/rk3128.dtsi | 35 ++++++++++++++++++++++++++
 drivers/clk/rockchip/clk-rk3128.c      | 21 +++++++++++++---
 include/dt-bindings/clock/rk3128-cru.h |  3 +--
 3 files changed, 53 insertions(+), 6 deletions(-)


base-commit: 234cb065ad82915ff8d06ce01e01c3e640b674d2
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
