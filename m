Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF04DC25B76
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 21:01:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TUv2kvBxmJffyQzCLl5ciTjewO8mviQFu9p3geFf+p4=; b=Hu2EgkvVPwabVV
	nE11JS7b7aP8bkS3E0oO78AF2TVO/QDsxGkqbHWMugd+ws/kxHS5DAWZNYUPtrumMN87V2IvZV2hM
	kA/ZIJVK/Kd0Llf4sZorsvjRrPQUDLHwCzVgvo8dO1GVcSethadbFQPGJ50J90jSTUi/z6WLvPd0Q
	ykv9v9k8p9ig/wRb6/s4zB1O9sOIiEMxqmF9rVNtND3bAFFAbeXftf8jZND5KBFp6vlg7BZz6lo1s
	W5Xlj0wH6VxCaja+rpnvbCn1Kaecqt+W9AhdX8QJZy7YDdQV+HxASg8DuiS5io6p2izBNZXfi0fMH
	zNsI/UEpfjkTsTk3mIKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sExkf-00000007XP4-1dXW;
	Wed, 05 Jun 2024 21:00:57 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sExkb-00000007XMi-0wPs;
	Wed, 05 Jun 2024 21:00:54 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-35dc9cef36dso196090f8f.3;
        Wed, 05 Jun 2024 14:00:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717621251; x=1718226051; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GEz1de1uXTIeqqebkZztUoW9m4tZyjUe1SpkIZLWTwI=;
        b=NaDUeLMB6wSA2xTlpOfdb46cfn7eZrWw9aUjYbB5nyocL8ehfs31FUl/uYMr9eK+Yr
         S5m3mSxChAqC1RBPUJ4/wqwi1ba/izKmtgDBtNR7pjYZIM2/RmopUXP1bHiG7XI2cZZ2
         cIdVKRUZl57ccO6bqZQ+/73oiBIiIWrvFjM4FK04AxQjl9WDVoIxPdMgfYkfzovjgtRb
         9o80qyMYHebqj2S6D+SzO5tfWZykLsUAXmwgFhRESDYd78w1R6QJbImo9msOtNGo1SS2
         MXMzmZzMCpt4PNjVpoCVX/uqS81/pS3gDJ/wXi//NSudSJu5tWJ2QYBFoo4YRHlcPBNf
         XZxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717621251; x=1718226051;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GEz1de1uXTIeqqebkZztUoW9m4tZyjUe1SpkIZLWTwI=;
        b=IyU8ZoiYPA8VwFkmq2ZX7+6hceW9RHV3RYdmGfkdWic/nE0bOLeUqI61xlPSHSsEFV
         dwKN8qidq7WYLgETxkT2iXPV5hRVAogAGYH0e+1yqAoThMVckzQuOxgJbJ2Qf9b/pEeq
         VkBEiYxOMmrTR6avoXVDn8PuxyqWvL70OsVusvF7ZamjFy9MRQ7BcU748//VxalsTHkX
         980s7w+iJe1Z/n/gwbVRhU8ywJU8TBUeuWdrbn21aOll7QBRvHJD9PotdI2bFJU2wz6Y
         MSf47GSs5u4Cynkij5NGI1znu3oTbKMS2QB2fMkF0xK8egIIpLpkicjBMroUlUPKuOoB
         4S2A==
X-Forwarded-Encrypted: i=1; AJvYcCVEIAjZJrTG39vMtAjE1xihuQ3VGnilY7NHMZVO0hAPs7rY8cBFdJpbyJ3zt15hADFf5reWZL7DP7Ox1ebroNef4m103CRAKR2omTK/iWUWB2Tv8YFdXmhzZ9eQcj+8mXnUQYxuNCvcPQk2k710IpPopiw0lqOCFZ8=
X-Gm-Message-State: AOJu0YwO16yOlJKOMnIakg9L11cyl26EQhvD8h9MoSBQHHkEo9lTaa8n
	ZXmSSYh1ZEYObMLJtlpt5xPPvjJ7HaE8qLblPRan+12nd1EZJlw=
X-Google-Smtp-Source: AGHT+IH9LL99z0MTv1+jQF9F2sePDzl73lNh17BbV9ZjLHWp7Mick2PRDD0mTpfpJyEfuh1jNHOhNg==
X-Received: by 2002:a5d:5547:0:b0:351:c2c1:3682 with SMTP id ffacd0b85a97d-35e8ef88819mr2810501f8f.62.1717621250945;
        Wed, 05 Jun 2024 14:00:50 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:5211:58fe:dfef:c48c])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35dd04c0d77sm15955721f8f.5.2024.06.05.14.00.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 14:00:50 -0700 (PDT)
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
Subject: [PATCH v2 0/5 RESEND] Add SFC support for RK3128
Date: Wed,  5 Jun 2024 23:00:44 +0200
Message-ID: <20240605210049.232284-1-knaerzche@gmail.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_140053_278056_66225868 
X-CRM114-Status: GOOD (  11.24  )
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

As without using some "id holes" we would run out clock ids in the binding
and would have to touch the ABI, I added patches which removes the
CLK_NR_CLKS macro and uses the recently introduced
rockchip_clk_find_max_clk_id helper instead to find the highest clock id.

changes since v1:
 - added patches to remove CLK_NR_CLKS (Connor)

Link to v1:
https://lore.kernel.org/all/20240605172154.193047-1-knaerzche@gmail.com/

Alex Bee (5):
  clk: rockchip: rk3128: Drop CLK_NR_CLKS usage
  dt-bindings: clock: rk3128: Drop CLK_NR_CLKS
  dt-bindings: clock: rk3128: Add HCLK_SFC
  clk: rockchip: Add HCLK_SFC for RK3128
  ARM: dts: rockchip: Add SFC for RK3128

 arch/arm/boot/dts/rockchip/rk3128.dtsi | 35 ++++++++++++++++++++++++++
 drivers/clk/rockchip/clk-rk3128.c      | 21 +++++++++++++---
 include/dt-bindings/clock/rk3128-cru.h |  2 +-
 3 files changed, 53 insertions(+), 5 deletions(-)


base-commit: 234cb065ad82915ff8d06ce01e01c3e640b674d2
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
