Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 162DDCAC597
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Sep 2025 08:33:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lIh/HawPq5cWxzwyse9ESCNzOMFtC6DpsbutUF+32gk=; b=TuY0pFoIuMbv3h
	gW0ozGYmq5cGTXmudJZASvewJTDEe+EdWIKZ6Jrr8s0SieJKZY903Na0hrin1MzTwvl6Jj61GB4Xo
	BDWlQEOWrkTLmpfYEBYzDFxbuX8z1UFrtGhe0j53nNwY+srU29qnbsUIYZMKXifJz/JyxRV8Pxzgf
	IbtU2VNUUwfhVdfQbhcLRtDpewcO7FHOM3wg2DtgEIvc2XOSGpF91UHxHxyV7P0ylDYyO5vkUWZgl
	atKbTM3gXhwBkNSh4nQZpKRN84hgRCf2+n2qnnwgR5jrMVbkySKNnyFwc2pc7DwZBl8NhuaGbwgvm
	jsKCBv06Kl+riW7GQZDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uy4ef-00000003EB5-3RoP;
	Mon, 15 Sep 2025 08:33:45 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uy4ec-00000003E64-1keG
	for linux-rockchip@lists.infradead.org;
	Mon, 15 Sep 2025 08:33:43 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-5679dbcf9d8so3398709e87.0
        for <linux-rockchip@lists.infradead.org>; Mon, 15 Sep 2025 01:33:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757925220; x=1758530020; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r0bQRlmnKfDqgMf8snk80FkB/8ickhLw4rD40tCbpRQ=;
        b=dPhC1rTnfMwjMg++P+XAoA5boru25x0Ac+JKCwxNHrfB8IAR3R5vPPqcP/TTUg1Pcy
         fHigAKFWlB6Q3AQq6T6YB7RxgoLuoUxs5nqvM0hzB7SDVSguNzCt3ee4TPnGqiZrxiR6
         JEWzhMDXovZUJZJ15lgR6puAG5nL8Po/liirzLucimYguzRAlFLnAvL8YRYQjnRaLHoS
         g3cmDtgpyeuMajSQ7jjmD4E+vIcZVFUbu3y7inMELx9S6NJF5gtjVg4wbvfkiJrVitH1
         elsTkFD8yFCaCQsNp0R2JXiMDmydVztr447rIc6QfFXnBaUSYBmrstaY42NaAzh0C0B6
         CTng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757925220; x=1758530020;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r0bQRlmnKfDqgMf8snk80FkB/8ickhLw4rD40tCbpRQ=;
        b=KArGApi5EnMjhje1U/qOTHN5qnpwqcvk478BaD8aZ9MGYn2+h9lSFLLkxNwfPrnWMS
         cIw25pnT3z7f8fEpMN+AVYQ4lDxqDt5RBf8w+pEo0Xnj8AlviWJj8diWWT368cPxCmn1
         KpMNr/Ao+01AjlFhEP7tLeN6wPv0fnFzHLdMwNI09gKnFfc2omluan6Th4pHIMVyOP7o
         sqz9wp4Jrq6aypD8cNT6e9OC8HAHueIiJcsnFkuOsITW/PZTIjK792EbWJhpV2jUhefF
         IOEgi1WOGp+qOevA4C78+m2/6hMJKLq4LmU99cXQjlWsgKBcTfZYu8XHUWDaqqbUzYaZ
         ZpjA==
X-Forwarded-Encrypted: i=1; AJvYcCXmVGK7nApPNdccORkfT9SGff6M0TsGMNu2kJRN/EzOuzC9O9R07J1cR+8PZIbVtlRuEAaag70AxhczhPZO3w==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy4u+bXsucLagaVFaIVnVTwhliu37uKS89GgKiu7hkViIhojH+c
	aOP3y1O2IKxFEr9ZO87Ebg166hKkbCSOO3x8ueVA4gGBZBQwvwfvPvjiYOZAVHeOaFY=
X-Gm-Gg: ASbGncuW/LQkSTv0jufou09HuoTDS67vRi1L+93MuuuWxmRShDFJHGFqCA9oFOZwPlL
	uQOnP0nhBmaesr5RVvj9pIl3dSFDSLq1xJtt/a1AEepao8Vl1umLU2bpmWAi3vqmJbul+vmmLbp
	3Azj+PgjXjGfwtOSbmmVF3esroySSOrEBeuHQcdFGiUhdI1JAk/XLGfAWzB1LllLt9jQm3mOdWd
	tOam91gLQBXgRFHhgBxGSj5fuENvH7fFgRdSKPc5Cwkkjm28BxSUpvHlMwAcHgi7uMjl8CUPVmt
	OqmOwXkZSPWJVsOoB8LDkj9uKuQ6KvKjQDmYeGvkgTffasXdp9UpWSMr82HT/YiDEoJluidODyZ
	GfinBPyzUUa9LvATtYNLcsG77+AUKzYoX7Kpc2NNKp595Rfc9uUMCnfw=
X-Google-Smtp-Source: AGHT+IGPhTuEG2m4SiCDqh898kzAlhbg8Uvlnka6m56w2D7gJmLC1nJiufAqd/hfn5WD27cwWn5ytA==
X-Received: by 2002:ac2:4cb1:0:b0:55f:6d28:bcee with SMTP id 2adb3069b0e04-5704f1cf24amr2705611e87.34.1757925220270;
        Mon, 15 Sep 2025 01:33:40 -0700 (PDT)
Received: from nuoska (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-571a6a33ba8sm2335142e87.46.2025.09.15.01.33.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 01:33:39 -0700 (PDT)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mmc@vger.kernel.org
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
	Mikko Rapeli <mikko.rapeli@linaro.org>,
	Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v4 2/4] mmc: add COMPILE_TEST to multiple drivers
Date: Mon, 15 Sep 2025 11:33:15 +0300
Message-ID: <20250915083317.2885761-3-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250915083317.2885761-1-mikko.rapeli@linaro.org>
References: <20250915083317.2885761-1-mikko.rapeli@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_013342_489959_D22F9FE0 
X-CRM114-Status: GOOD (  10.45  )
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

These compile on x86_64 with =y and =m.

Acked-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 drivers/mmc/host/Kconfig | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/mmc/host/Kconfig b/drivers/mmc/host/Kconfig
index 7232de1c06887..b14daa045eff9 100644
--- a/drivers/mmc/host/Kconfig
+++ b/drivers/mmc/host/Kconfig
@@ -56,7 +56,7 @@ config MMC_STM32_SDMMC
 
 config MMC_PXA
 	tristate "Intel PXA25x/26x/27x Multimedia Card Interface support"
-	depends on ARCH_PXA
+	depends on ARCH_PXA || COMPILE_TEST
 	help
 	  This selects the Intel(R) PXA(R) Multimedia card Interface.
 	  If you have a PXA(R) platform with a Multimedia Card slot,
@@ -608,7 +608,7 @@ config MMC_SDHCI_MSM
 
 config MMC_MXC
 	tristate "Freescale i.MX21/27/31 or MPC512x Multimedia Card support"
-	depends on ARCH_MXC || PPC_MPC512x
+	depends on ARCH_MXC || PPC_MPC512x || COMPILE_TEST
 	help
 	  This selects the Freescale i.MX21, i.MX27, i.MX31 or MPC512x
 	  Multimedia Card Interface. If you have an i.MX or MPC512x platform
@@ -866,7 +866,8 @@ config MMC_DW_PCI
 
 config MMC_DW_ROCKCHIP
 	tristate "Rockchip specific extensions for Synopsys DW Memory Card Interface"
-	depends on MMC_DW && ARCH_ROCKCHIP
+	depends on MMC_DW
+	depends on ARCH_ROCKCHIP || COMPILE_TEST
 	select MMC_DW_PLTFM
 	help
 	  This selects support for Rockchip SoC specific extensions to the
@@ -948,7 +949,7 @@ config MMC_USHC
 
 config MMC_WMT
 	tristate "Wondermedia SD/MMC Host Controller support"
-	depends on ARCH_VT8500
+	depends on ARCH_VT8500 || COMPILE_TEST
 	default y
 	help
 	  This selects support for the SD/MMC Host Controller on
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
