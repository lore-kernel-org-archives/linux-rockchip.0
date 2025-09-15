Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F71BCAC597
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Sep 2025 08:33:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KBj5MIzb76ddpbaHef9u/h5vMXzZXiF/luTW7gf9EX4=; b=qaTd6aSIUp1ujs
	wMxZdbACkFVcV8K2dXdhqvUCS4xQw4MS5CxmkpkiroFLBQ21Zhm2Wnwmgg0k4K1TTRzYg8L6bNUPv
	jqnVg0r4ixUNwR0UZ4wcCk6cZe/bAqpu7R/z9OxawdLn9cmXJqEnRJd8Oo854ZEHg6/qpumo7YQD1
	d9J1tM9b9F3kzwgxNpWGuXYacIQehO9XyVJ3fwXZ8OOGvnBIuz2EcM/HtEVyBdUB3s8od2yc0oJC6
	lcU9qKkS1IBGT6tJk1jYpLw6D7tV8g0MThSaWjhiq8jBuGaVLYOaFsl1DsOXtVubU+Hdi/F/Zyw1r
	/Lo9eDT/G2B+jGBwgk5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uy4eY-00000003E45-1f1f;
	Mon, 15 Sep 2025 08:33:38 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uy4eV-00000003E34-1t01
	for linux-rockchip@lists.infradead.org;
	Mon, 15 Sep 2025 08:33:36 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-55f6f434c96so4368802e87.2
        for <linux-rockchip@lists.infradead.org>; Mon, 15 Sep 2025 01:33:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757925213; x=1758530013; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/EihPg0rDDUsO2zpTiZR4g9YFvnwO8fGm9cXNKFjmmM=;
        b=k9az18p6AypGxXc6zztfnM2xpI4NzDsiHrYLZFBS6NuoudWgkjlxCz5Lcl+faUJesF
         NLaYA3QwNuBntOBIiCFCVPstHrH2Q4dcxlpj7OHwBQiKUtnMa1oR1baytbAhY2IQKgaf
         dg3jpH7A2XujkrfJ6GsDNaJtt6lYz3zixtoltgkpv2u0PUXfCmp2+Qx+xennvnAcbKgT
         ZenhytkgTjuASgux1/5wOL8imoBBFlVDJepl2nojd3eAhjguUQxx+KAAz1+Q1jrwzbRq
         /CUUInFfI8A1hue5ujoDCM8HmHWhh2kTRZBjJyKyeZxvxCBXQonJBLBCWrTiOgwZdz1m
         eJZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757925213; x=1758530013;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/EihPg0rDDUsO2zpTiZR4g9YFvnwO8fGm9cXNKFjmmM=;
        b=v2V/8E9w6sSRrQVOve2SRkckQZV/ATeWZVLMRHn1a1337TESQe8RfQk1yh5cWG+zB1
         noSvRcRbBNt4rdDpel8so2U18Q/wzSJqR8IHHs8FDcgEVk3ihR2oa1RsAYxLPj7ih7Fg
         o5Oaszb/gWuAXfhlZIGhiHcgKdt4bucosReFVdRKUkIIdtpWmms4mHV03pSXjVB6BREo
         Gqble8nJBmwYtKjkqKZj4OQ9Ga13es38zQEURigfIlDsE9CP9KaFZ8ETfX6eONvLv3qe
         6WO6NbOdZ6hKidO5+Jv7CVGAFdPY48EzDRp+MF3gU7VH2Rf69GdkWE7IbWsUR31NJR0P
         w3HA==
X-Forwarded-Encrypted: i=1; AJvYcCUDMJvfm1c+zSWEaNbz96Pcvs1/LRobac7ivjVRv7QU/fXrKW0KmnwDeYuv4E6iP+lWpfdYzw02VRHRz9kjfA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyzNb04nXAEaI0Rcv3jW8YWnY68IgVsYkeBP5v2vniO+bKb1qfX
	a0u8HNkhHuL8T9yXVPD0LFHniJpCdEZOSaEUULEEV4xJuLHkAe2kthdphBDNVpkGbds=
X-Gm-Gg: ASbGncvM5FlkgPY5MXjQN+O0gJ4BSVaiUWY8xWxK67znW1gzgUsUnJJCXQW5ao+8i21
	8tYUHv/Zighuf99czC0yMy3XN5SJFpW84uIOfh6v86zwWrgeGJ62bEhtUPCFlhCoYyZqToAeGOl
	ep/z+TLyjOo1jInKyFwloTCz5iLgl7mlyfS7KtAkx2qYFxtkeSY3CHLpBj5ErehpXF0sI+veCeH
	NKMpuXfNw+p2d10X26l7bHtaMwUQSrqUIEvBWQrgASH5x3RRbLVNBArvRbVtDokyyK+k4fIwBYA
	hCG3iQb/CA8QRfdJSCnH2/O5Paj6nJZ1sZowrKZgA/txgpAqavwP//FzMhjEsNhkibkFRbzT4Gk
	Vhh0QCm8AGaW5A/JYD43sMOCDeFAJRYNNehYynYcYClY6WFoqiSrFETQokraTOw5SCp7MWrUh7E
	ZN
X-Google-Smtp-Source: AGHT+IGOXTY6MavVKngLCpLB1G9dg0jsTMPCjkwVytxoyznWD2WrW7pxjPzUDjOIZ3mMkSDu12yFmA==
X-Received: by 2002:a05:6512:2585:b0:55f:43ba:9410 with SMTP id 2adb3069b0e04-5704b52f23emr3366686e87.15.1757925212793;
        Mon, 15 Sep 2025 01:33:32 -0700 (PDT)
Received: from nuoska (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-571a6a33ba8sm2335142e87.46.2025.09.15.01.33.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 01:33:32 -0700 (PDT)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mmc@vger.kernel.org
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
	Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [PATCH v4 0/4] enable ROCKCHIP_PM_DOMAINS
Date: Mon, 15 Sep 2025 11:33:13 +0300
Message-ID: <20250915083317.2885761-1-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.50.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_013335_510530_36994040 
X-CRM114-Status: UNSURE (   8.35  )
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

Hi,

MMC_DW_ROCKCHIP needs ROCKCHIP_PM_DOMAINS before MMC is detected
on Rockchip rk3399 rockpi4b and similar devices. Make this dependency
more visible, or the default with ARCH_ROCKCHIP if possible.

v4: fixed Kconfig whitespace, added select REGMAP_MMIO to MMC_LOONGSON2
    instead of disabling COMPILE_TEST

v3: use "default ARCH_ROCKCHIP" in ROCKCHIP_PM_DOMAINS as suggested
    by Arnd Bergmann <arnd@arndb.de>, enable more MMC drivers for
    COMPILE_TEST and remove MMC_LOONGSON2 which doesn't link,
    remove PM dependency as suggested by
    Geert Uytterhoeven <geert@linux-m68k.org>
    https://lore.kernel.org/linux-mmc/aMQv1V49xa_MThGq@nuoska/T/#md2b3252f9dce14f3f79a493c426f2761cba1dc25

v2: changed from "depend on" in MMC driver to "select" as default
    on ARCH_ROCKCHIP as suggested by Ulf and Heiko
    https://marc.info/?i=20250912084112.2795848-1-mikko.rapeli%20()%20linaro%20!%20org

v1: https://lore.kernel.org/linux-mmc/20250911144313.2774171-1-mikko.rapeli@linaro.org/

Mikko Rapeli (4):
  pmdomain: rockchip: enable ROCKCHIP_PM_DOMAINS with ARCH_ROCKCHIP
  mmc: add COMPILE_TEST to multiple drivers
  mmc: select REGMAP_MMIO with MMC_LOONGSON2
  ARM: rockchip: remove REGULATOR conditional to PM

 arch/arm/mach-rockchip/Kconfig    |  2 +-
 drivers/mmc/host/Kconfig          | 10 ++++++----
 drivers/pmdomain/rockchip/Kconfig |  1 +
 3 files changed, 8 insertions(+), 5 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
