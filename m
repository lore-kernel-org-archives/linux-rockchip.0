Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E908C27C55
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 20:53:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TUv2kvBxmJffyQzCLl5ciTjewO8mviQFu9p3geFf+p4=; b=fc5m0Q/thbsz7k
	htoxvKtxcaKjWTVooDkwRXOCSEmpMS1Yq/bAGOE0QGIDavHYpKStiTzTnnd7IjyoU8FVAXpVk+gD/
	NTZkh/EXE1h7sFOb+hR5oFA56H01T38GY9+rPiJoTUd8mvkXeKW2pLhO3+FL9QK0UO07Eko3+oew7
	uMkhkmEaF52pmuwyYBDtDY4tiM/1D26QfOYrK8L7BfLghdzYOOHyGaV1q+O2JFpe715Cb/OxmSRy/
	jANX7K9lIA0f1ioVOv7/XT+oytJGjPfafkchLifdqmGjlUhLscTDd18FzWM+bVe3mafjbtQK+mlyX
	o4EpVEJJjqJm5v6+620A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sExd5-00000007Vh2-1VwX;
	Wed, 05 Jun 2024 20:53:07 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sExcO-00000007V3J-4BnN;
	Wed, 05 Jun 2024 20:52:27 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-a696cde86a4so24861966b.1;
        Wed, 05 Jun 2024 13:52:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717620736; x=1718225536; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GEz1de1uXTIeqqebkZztUoW9m4tZyjUe1SpkIZLWTwI=;
        b=Sd0FUY6GUTHvHxcxXcaQFl6YFdDETUj3yTPY21lwnv1OjvXHr6gKrTobW4ynpWDcxo
         iaOL8L9OUd56LcsKoByfR4CnP9GoNoF2cQRFLpARw88juvlu1Q4N4LHyhTsdgLV0G/zz
         HMekAJpPWxfw3Zs/BItqbWFaak9OHKmecdHZZpJJ1fCK86xMiUksrSj5RTsNsBdFA6qY
         ifB8oaWi8sH914raDdVoW7itlJRppDaM+8dm8ZQ4/aFyu18kr5EzS60LuygtE0IqGXEo
         gs3cvC9w/MjLXRTW0lBi15a8AEFwU2zScs5uMdjzq1/2m15AWng6UtjxjHhLuYI8SmfA
         OFdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717620736; x=1718225536;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GEz1de1uXTIeqqebkZztUoW9m4tZyjUe1SpkIZLWTwI=;
        b=X01hVutf+WSMWi0yFiig1WMQnf3lV3wniaA7XYRUzQD13+ec/BtbQJ3C0LTqBzywDK
         Q4CmfLs3jlYieFxA+FwoaUp3MmvZbmznEtsvL2annpW1aztF539jJ4BTKt89aez/cn4P
         ET6ZeF7QYyWqdrc3ahdNkfSfa1hV8ELdyuvnBPHidBefKzjUfsOjB+rwsTG2JV5KHEsD
         xrbY+QepJW/vkxHyFdVzGfdI1UXaUMtgP1Xwkclic1PSZe8IbnS5X9uRiD9TqTiheKu2
         0CkyXsBGUKQjTjv0s1L1t93M6IAhOZ/FhpW84uk5vJEVIHqv3PRZ54DvvNKykQR3zEv9
         Qbyg==
X-Forwarded-Encrypted: i=1; AJvYcCUyBS9Zn2N+9r2uSrWnPa7xj8tzmVmZC6/l1POm8UdRos+kJxJHPd4gBACes9HC6m19xlVSeSVM3y6xAdgsClvYcMLNLwj+tWlypQNUKzQ7PbT83FbtmNCaADX9nmcMcbA/GKgGud9p5np3vhQ6KBylbEDvkQ2DQeE=
X-Gm-Message-State: AOJu0YzKaffK8Xh1IS5cm9UQrhs1TvFuuYmzXHJJ4ETMoYvzUblrIya6
	ZtgK3yd2Q/M8JKvDntu6EHdEeq3sOo8HsQjnorYNkOyxWVbvuiw=
X-Google-Smtp-Source: AGHT+IFvJVNAro7XNZmkDXN79dHCw0ldWI5/pYO5embn2/8D1cTCJZJXT7rOoRKPufaz4yQyjUACYg==
X-Received: by 2002:a17:906:33d8:b0:a6a:296d:6cfe with SMTP id a640c23a62f3a-a6a296d74f3mr192207066b.26.1717620735477;
        Wed, 05 Jun 2024 13:52:15 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:5211:58fe:dfef:c48c])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6c71bb5affsm72265866b.147.2024.06.05.13.52.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 13:52:15 -0700 (PDT)
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
Subject: [PATCH v2 0/5] Add SFC support for RK3128
Date: Wed,  5 Jun 2024 22:52:04 +0200
Message-ID: <20240605205209.232005-6-knaerzche@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240605205209.232005-1-knaerzche@gmail.com>
References: <20240605205209.232005-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_135225_207397_3ADAEB8F 
X-CRM114-Status: GOOD (  12.28  )
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
