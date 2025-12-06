Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 003ABD3ABF8
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Dec 2025 08:28:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7UEaZnij6R2b84rsDBnqk0YeKkpbk9utbW+5pNv8Mhc=; b=n/unypgFcwqTF5
	XRHsvqg8ulzPfoFLKoRIabAWhgnhUnhIiSWC6XKOSYDaTXkz1XOCX6tYhD7TdiMeToOMuIOQvldLn
	OOQ/N8lrygoS50Z3NWqjGImOI7ub+ZEjtsEkUnfX8FrtH04DVR88QYLYD66LUo6K+uHttVKCTYwlg
	haeeGzRUn5opi17aPdwGbr4mgDrOE0EJvl4N/0GiUHF07pgnZl6Pf7GAOKb/1e1FqZ86NGVwqE/g9
	ycvThUzbbQbaxdZ4/JHXkk2NAGuer+x0kFcI/XcKuesUjDjwEPxhqOLzFoZaF5+ErXCR8xWxMJyZA
	etGfS9W8EBW3kai4Uatg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRneR-0000000AkR1-0RQk;
	Sat, 06 Dec 2025 08:28:23 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRneN-0000000AkPZ-3Kno
	for linux-rockchip@lists.infradead.org;
	Sat, 06 Dec 2025 08:28:21 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-4779cc419b2so32458535e9.3
        for <linux-rockchip@lists.infradead.org>; Sat, 06 Dec 2025 00:28:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765009697; x=1765614497; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FezSaBLf7wCo5DY/lU0PUbH+WokJ3F83+Nys5IdDnP0=;
        b=U/WDd1F/0igxgNvWP1GIXlnXItirkT0iLYnfX96cfsLjhWvTskTQME/dXS1EcdFn74
         r1DiXtwz6eGVh3HvwRXIelReCpOXjJRmrAcceAdXrLvbCSeUG4gdE4lsbo/9+4KlqCQw
         B6l5JSgTv2nIXqIE/LTX3Q8p20jgGX21oc7qGrZNi0/xevpAr3UaY6jT2Md+bWRyyEEo
         cJISeZmpGJ7R/Eek1aXGfRLGRaqCKkMl3dCNg8IzQkehY1M5OPmuFcNOatgWwSqeolGE
         KGysF5XGkUTs/qlVQP9Nr0AjpyMidZCUykbl8YrPTE24X4/0roIh21fVoJ1801UrMLnY
         3vAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765009697; x=1765614497;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FezSaBLf7wCo5DY/lU0PUbH+WokJ3F83+Nys5IdDnP0=;
        b=Q3JP/kEilQeDI8Y1767GAyYamYmNVBRn1hoypwm09N+lq518P5D+zdb8yb84nTrxEV
         6d78JhmRKp1tAzJuZDlT6W02c6mew0gnQGX5aLFR1pO5N+VkNebLBb97KsERow+prazR
         7iO+XPrazcqwTFHY0yKmMgPUEac9hiFyCJ/3oqfzGRNafHmfsWMRn1ifPToP/ZMjrbCG
         XVjfplaUeIJrY2C52Ds5AMYujr0dHEn2LNDR0OdcOCA1FXVzI/AnL8T4wEK/2ZM3Ufs3
         UK/vmn2syikutj9j3isC/+KCiMyjMyS3eGmKotlkenrZcHWwyo6P501gj8nfEIjMLOQV
         3cOQ==
X-Forwarded-Encrypted: i=1; AJvYcCWGpbr0lWJ+KJn5w8tG/itKy8JdF7x3Hp3p2QAY6nJdMVm1U1Std8koeKKI+GSqjN9m/uEld3lu+B6GVpY6Jw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyCwUG8eLz7y/rVvswniOo5wz37f84qXFRWrJAO4T2qLmna57ar
	K3VHhv40NyxhdZejm6CDeebnk2vaikGOlDn+BdcdLs1cfzQooErycCZt
X-Gm-Gg: ASbGnctfZt7OlvB1GtJNrPEsoCjzCbAZBfyR4zU0JYLHTdLJqvlTrZQ1rtokttRFvif
	xTxE62q61C5SsRWs8H42d05PeMCYL0tiK/RlvWu31VLQs0k6hTnEG27lzXjC2kjz8dVpz96RdKi
	t1xeZfHOEuAaZ7WgPIytOgWxJkS3GWrW2ih3+IOeJsg0mKcOD9FsDpdImAhtGDL/mUjMuCrQOh3
	mDvMd5K2si1qbw7KAfdw+u0JSuka+FoIH2OI/m9ePXws+iwzUe84g5jJdUyn/6mROzfSVdLO1Yn
	Y8Abym6tCsBvcV9rvgZYHb/rT3YE8hVuDRUg0Rno2oASzWdmeCeA4qHnsp4e73JpvHxB0bdgqiZ
	5g5nArdEUSzK8/X6NDkJvnw7MMOY3VXY6Vg2jeGpGN9oYUk0iuI5L1dUn3A2hkkRk9lTPoIP+ly
	WRRwMJpr6PPAmsVQY=
X-Google-Smtp-Source: AGHT+IEkUrPBcFh97XMz8GJKKpFnTbZn0ROoOhlMrdyTdBPLjuhn+cNwEGqKaQDpj9DV4jFElIFQvw==
X-Received: by 2002:a05:600c:1f8d:b0:477:af74:ed64 with SMTP id 5b1f17b1804b1-47939e3d0a6mr13423475e9.27.1765009697222;
        Sat, 06 Dec 2025 00:28:17 -0800 (PST)
Received: from toolbox.. ([87.200.95.144])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-479310a6d9dsm123094705e9.2.2025.12.06.00.28.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Dec 2025 00:28:16 -0800 (PST)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Detlev Casanova <detlev.casanova@collabora.com>,
	=?UTF-8?q?Olivier=20Cr=C3=AAte?= <olivier.crete@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Dmitry Osipenko <dmitry.osipenko@collabora.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH DO-NOT-MERGE 1/4] media: rkvdec: minor fixes for current DETLEV patches
Date: Sat,  6 Dec 2025 08:28:06 +0000
Message-Id: <20251206082809.2040679-2-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251206082809.2040679-1-christianshewitt@gmail.com>
References: <20251206082809.2040679-1-christianshewitt@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251206_002819_842675_E5E77490 
X-CRM114-Status: GOOD (  13.67  )
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

RK3588 TRM Part 1 para 5.5.9 shows RKVDEC_SWREG12_SENCODARY_EN as
the register name so the 'secondary' typo looks maybe intentional,
but using correct spellings improves code readability.

RK3588 TRM Part 1 para 5.4.3 shows RKVDEC_1080P_PIXELS should use
1920x1088 (to be 4px aligned) not 1920x1080.

Also correct some H264 references in the H265 driver.

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 .../media/platform/rockchip/rkvdec/rkvdec-vdpu381-regs.h    | 4 ++--
 .../media/platform/rockchip/rkvdec/rkvdec-vdpu383-hevc.c    | 6 +++---
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec-vdpu381-regs.h b/drivers/media/platform/rockchip/rkvdec/rkvdec-vdpu381-regs.h
index 11b545e9ee7e..7cc6cbb8e549 100644
--- a/drivers/media/platform/rockchip/rkvdec/rkvdec-vdpu381-regs.h
+++ b/drivers/media/platform/rockchip/rkvdec/rkvdec-vdpu381-regs.h
@@ -24,7 +24,7 @@
 
 #define MAX_SLICE_NUMBER	0x3fff
 
-#define RKVDEC_1080P_PIXELS		(1920 * 1080)
+#define RKVDEC_1080P_PIXELS		(1920 * 1088)
 #define RKVDEC_4K_PIXELS		(4096 * 2304)
 #define RKVDEC_8K_PIXELS		(7680 * 4320)
 #define RKVDEC_TIMEOUT_1080p		(0xefffff)
@@ -90,7 +90,7 @@ struct rkvdec_vdpu381_regs_common {
 		u32 reserved4			: 7;
 	} reg011;
 
-	struct rkvdec_vdpu381_sencodary_en {
+	struct rkvdec_vdpu381_secondary_en {
 		u32 wr_ddr_align_en		: 1;
 		u32 colmv_compress_en		: 1;
 		u32 fbc_e			: 1;
diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec-vdpu383-hevc.c b/drivers/media/platform/rockchip/rkvdec/rkvdec-vdpu383-hevc.c
index dd7481a4353d..b4fc0d423c16 100644
--- a/drivers/media/platform/rockchip/rkvdec/rkvdec-vdpu383-hevc.c
+++ b/drivers/media/platform/rockchip/rkvdec/rkvdec-vdpu383-hevc.c
@@ -275,11 +275,11 @@ static void set_pps_ref_pic_poc(struct rkvdec_hevc_sps_pps *hw_ps, u32 poc, int
 static void assemble_hw_pps(struct rkvdec_ctx *ctx,
 			    struct rkvdec_hevc_run *run)
 {
-	struct rkvdec_hevc_ctx *h264_ctx = ctx->priv;
+	struct rkvdec_hevc_ctx *h265_ctx = ctx->priv;
 	const struct v4l2_ctrl_hevc_sps *sps = run->sps;
 	const struct v4l2_ctrl_hevc_pps *pps = run->pps;
 	const struct v4l2_ctrl_hevc_decode_params *dec_params = run->decode_params;
-	struct rkvdec_hevc_priv_tbl *priv_tbl = h264_ctx->priv_tbl.cpu;
+	struct rkvdec_hevc_priv_tbl *priv_tbl = h265_ctx->priv_tbl.cpu;
 	struct rkvdec_hevc_sps_pps *hw_ps;
 	bool tiles_enabled;
 	s32 max_cu_width;
@@ -479,7 +479,7 @@ static void config_registers(struct rkvdec_ctx *ctx,
 
 	memset(regs, 0, sizeof(*regs));
 
-	/* Set H264 mode */
+	/* Set HEVC mode */
 	regs->common.reg008_dec_mode = VDPU383_MODE_HEVC;
 
 	/* Set input stream length */
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
