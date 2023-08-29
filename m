Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FD04C6FA8F
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Aug 2023 17:18:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CzENDpxLOG/p4p1tQFEOh5QBwsLs3JebIIDcavcreJo=; b=WhkMIHbky4dF5/
	qtIrx8mG0oLuOtOsipxDTRocS6tCHJcpFBdXYRnKaUjvRLNDmZYEAF6C5lBfyypCH6O6+MS2z0PKn
	x35bMwrw1IDMjBxL5qa4voH0mC2Wd000xqAOTXTMQ2VPZGtGRZ0/qcB/KE6ePOTK99ugAMmbf5e7D
	nTSyVfEulYERYnSAtwzSPgiOPWFbKzH3NJhPltwQxoUHGoVHQGZOir0LyBG3orGed2eSh7gPyma5h
	TnCEfeOcuE2yG7RM+694v46cEd8oA9XCWXIYtxTQyRGOtoAeMXXqerIcq2Ai1fdEv+kSlaMIaw3h7
	vNncOpHfv5WpmdGM8AZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2Lr-00Bvqj-0X;
	Tue, 29 Aug 2023 17:18:03 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2LM-00BvJr-1S;
	Tue, 29 Aug 2023 17:17:33 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-9a1de3417acso8723866b.0;
        Tue, 29 Aug 2023 10:17:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693329451; x=1693934251;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qFpS6puAfr1Vvk5xVzMQk3TJscyGtiLTY36CCDlYgn4=;
        b=rd4R0yJ5NUtAr7vhhugqHokzMG56l1owqCa+6Uo9jX4+N93yF6mL+9b3ty5yWW1gb8
         45j8dPKZO5qBshEI153JhNmUeVkwS/HYRK/7Ig4EPjMahNhGO8glOHHCmG9M5QsEcjN+
         PZaZpsQ8MjKL4ZNaaYSP5RYuSNPzEVXRRrEQmVppf2asd7xYBwREmY6QDap/IoLNQJhP
         oMwmwhWExypc3amwKJTcTufbASYFqr+zAPb5KG5+Q2fU8+lktFnAMC903v4IiIq4gXK7
         IQK0Qnwn/VY6Xgl3lnbGpqlQKDL6bXiN5avdEyQXwSnICg3ZCR2QLy2/RQ7qAWvLaOxc
         WxUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693329451; x=1693934251;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qFpS6puAfr1Vvk5xVzMQk3TJscyGtiLTY36CCDlYgn4=;
        b=MSHsvuAD0rpV0HQFSiQynUwTzzX003kfnr705CbQBr7tZHNt94PO7ZNvAYdvDwzFll
         8lZyUMFy2oAQz/c5vjuSU6FOdAfm6Cf+b02MynOM169pnw0nL8bEI/j6Q9fbKP6UBIC5
         W6Mf2tgw3frtfy0MecdOcQxBOgKimblPd05sYBG1N9LS1fK7DY57jz2mftQS8nWxIeL0
         HqEX0QbFaGRUrHm50MdsHWrWrZE++qTW55SYfq9+MouChRhTbLw+pm2gZK6Kmsg275xU
         Q3uJLF0uuRscLnxRtYQAp7aNXmjjKlfyW+4npvCh+LrYyp2MtQv+ZfxuzeJoVRc/Hnld
         gMEQ==
X-Gm-Message-State: AOJu0YySbMJ1peCFY8h471ej/3TAtR0Y1sF8Oi8Ju2DBK0waSneUba64
	a8Ota6ddfm0lMtOc4RAM4Q==
X-Google-Smtp-Source: AGHT+IEybP8U8H/6OMY/edFtzGMriI16g5JEKpV7+P1CM2OUvZ0MmOIK8JNoZk0RoYw/W+BVoa1UJQ==
X-Received: by 2002:a17:906:cc47:b0:9a5:bceb:1cf8 with SMTP id mm7-20020a170906cc4700b009a5bceb1cf8mr3568824ejb.3.1693329451153;
        Tue, 29 Aug 2023 10:17:31 -0700 (PDT)
Received: from U4.lan ([2001:9e8:b958:3410:8e0c:ed68:cd6c:7cb8])
        by smtp.gmail.com with ESMTPSA id a21-20020a1709062b1500b00993cc1242d4sm6115834ejg.151.2023.08.29.10.17.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 10:17:30 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Lee Jones <lee@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
	Johan Jonker <jbx6244@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	alsa-devel@alsa-project.org,
	linux-clk@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 07/31] clk: rockchip: rk3128: Fix SCLK_SDMMC's clock name
Date: Tue, 29 Aug 2023 19:16:23 +0200
Message-ID: <20230829171647.187787-8-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230829171647.187787-1-knaerzche@gmail.com>
References: <20230829171647.187787-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_101732_489714_690A18BD 
X-CRM114-Status: GOOD (  15.74  )
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

SCLK_SDMMC is the parent for SCLK_SDMMC_DRV and SCLK_SDMMC_SAMPLE, but
used with the (more) correct name sclk_sdmmc. SD card tuning does currently
fail as the parent can't be found under that name
There is no need to suffix the name with '0' since RK312x SoCs do have a
single sdmmc controller - so rename it to the name which is already used
by it's children.

Fixes: f6022e88faca ("clk: rockchip: add clock controller for rk3128")
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 drivers/clk/rockchip/clk-rk3128.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-rk3128.c b/drivers/clk/rockchip/clk-rk3128.c
index 17bacf6dd6e7..75071e0cd321 100644
--- a/drivers/clk/rockchip/clk-rk3128.c
+++ b/drivers/clk/rockchip/clk-rk3128.c
@@ -310,7 +310,7 @@ static struct rockchip_clk_branch common_clk_branches[] __initdata = {
 	GATE(SCLK_MIPI_24M, "clk_mipi_24m", "xin24m", CLK_IGNORE_UNUSED,
 			RK2928_CLKGATE_CON(2), 15, GFLAGS),
 
-	COMPOSITE(SCLK_SDMMC, "sclk_sdmmc0", mux_mmc_src_p, 0,
+	COMPOSITE(SCLK_SDMMC, "sclk_sdmmc", mux_mmc_src_p, 0,
 			RK2928_CLKSEL_CON(11), 6, 2, MFLAGS, 0, 6, DFLAGS,
 			RK2928_CLKGATE_CON(2), 11, GFLAGS),
 
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
