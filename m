Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83926C4167B
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Nov 2023 18:15:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QUJOu/Q0xtMlVb3qNFBwre/iUJFIzIttOnd0WT6btio=; b=dtWx2cEp5ZphZl
	NcqNZhbIoKTVoOefowMsBf1gkTzRz/an+b8kvn+Row4ixMst2uy/s0af8G0exsqkhvSevM6xSnuc2
	CNEZU+WiddeYQ2OwC7gTGzbrI3dZQHvK4HSKlS0Lo9lYbuxDiS0Y7JDiIV88jO3XVdbiijnm89/GA
	D4XqGfQ71H1Pm6C9lMmFOVv55EDX8Z1JEMyZtmZCh8AQW69V3FFLab/LCYxouCG9Zj+c+fbRY8qYF
	LQtnHVJxKE/hsSCTK6sgOEpbpo1DgkypCg67r2ZZTXFanbMWhrnneYdNG6UEGPqhH2JysKPCqyQyp
	g0KbR+e1dI/aSyEj9Ezw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7g8W-003CdF-2K;
	Mon, 27 Nov 2023 18:15:12 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7g8T-003Cbe-0Z;
	Mon, 27 Nov 2023 18:15:10 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-a02ba1f500fso657198166b.0;
        Mon, 27 Nov 2023 10:15:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701108907; x=1701713707; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x6EbGi5KYgfVG1CdJuzlcMAvljT6psfhah5arWG3Clc=;
        b=Pp3Npel2tjXnHHS4kJ37fd1eodJn9TCbNfZplKh7wQsfuv1g/qJ4muA8FrmQaQqbmc
         m/gZD/rTk9b18aGI/unzRfOTO16tzDpzYvAeE73OizNWOMgjFjbAFBGnPzYCKa3WF9eQ
         fXMVuoXx9aqof80gF23xdygn4OSJMItPGpa3dBWIcxeX2bcrgg5HTpkIpPV84sAWM23q
         CK0wvQoDxtMfALHkZkLJVtCPgHGY9eiK9z5qUAqSbIWQm/c2XX8oROnNJ2IGXK4yJJ+S
         ioQ1m7HpY7wxoniO5dojoWnKhQ/l0g51ca/7CJLWPXp+3e6cTo0QgSFYtHShgfEFQzNB
         E6xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701108907; x=1701713707;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x6EbGi5KYgfVG1CdJuzlcMAvljT6psfhah5arWG3Clc=;
        b=TgtPErBwxdgarXIozFzxTk+xajt0gu3hiiqQamC9SHlfQEoMcwSwkWnfJifW+9R9NE
         3cy+s3Tz3mgVGYCc7R0a+h177B855O6gpjMfCIndndYATa9bMfZyFzzY96bF16dmLqrb
         OPGtJyKyLlxOCIYdnkBxfq2cGZ+QMDd2F4HSl0ILTAj8FHuX9Qttl3zM/ODdsIwXP/RO
         HSJII9dB5TEXMSCBLe0EKVIkSsqMfdzbfCcgWsMd9DRSkRRlDubCqCSwfBtLOD3xOwAy
         PwPbP8J5x+TlahRjQEQcMr6ZLexGFlJiDqTjYTVOHvq6MSBXY6QJCoTjJ4fkgMp5glwu
         61cw==
X-Gm-Message-State: AOJu0YxlsDsRPqpEo7zOFyNldPMwYyVXkkYsNGZw3ua7YUCw9LxVXfwS
	7E3tVmaIE1+YnIoTQxx18Q==
X-Google-Smtp-Source: AGHT+IFDKpCYOvpyu5bhY+/rib0MinbIHsR2HWXwLD7BBCXHji0tHHN2u1zt2jvfC/UPg9cKtem6Bg==
X-Received: by 2002:a17:906:d28e:b0:9e5:cef:6ff with SMTP id ay14-20020a170906d28e00b009e50cef06ffmr10355980ejb.33.1701108906794;
        Mon, 27 Nov 2023 10:15:06 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:370c:d8f:2dce:7367])
        by smtp.gmail.com with ESMTPSA id dv19-20020a170906b81300b009a9fbeb15f2sm5952271ejb.62.2023.11.27.10.15.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Nov 2023 10:15:06 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Stephen Boyd <sboyd@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v3 2/2] clk: rockchip: rk3128: Fix SCLK_SDMMC's clock name
Date: Mon, 27 Nov 2023 19:14:18 +0100
Message-ID: <20231127181415.11735-6-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231127181415.11735-2-knaerzche@gmail.com>
References: <20231127181415.11735-2-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_101509_212750_4A63B50E 
X-CRM114-Status: GOOD (  15.02  )
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
fail as the parent can't be found under that name.
There is no need to suffix the name with '0' since RK312x SoCs do have a
single sdmmc controller - so rename it to the name which is already used
by it's children.

Fixes: f6022e88faca ("clk: rockchip: add clock controller for rk3128")
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 drivers/clk/rockchip/clk-rk3128.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-rk3128.c b/drivers/clk/rockchip/clk-rk3128.c
index fcacfe758829..22e752236030 100644
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
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
