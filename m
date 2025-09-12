Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E567CA101F
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Sep 2025 14:36:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=VSkmB7oSNKfeF4A5PyQYZWcvosPdXtEc1CFW1KODotI=; b=nFHUY/ViWSOp3G
	lYUKrqfMKIGMn4++p2bdBhomKg+/wLNvbQjYjG9udb0vgB1RSYnyRYTpYTvG4JysrR9GQPqBRxUkK
	W0lVxGG9Au7VfiL/93HeL5mEUm6gaqCw4UAiaqmHmk50UCDLMeoTDWSfACcFaH0SyONzppf8Fjwmp
	3Ctp+GhnbnCwbM8bEMTUziVNb5j8BQ0N4f2hS0Rxn0bpNOqntEC8g3FasJaIpoqfn6MWEyDT+G/m0
	b5iS+sHjGqt7HkXoFpzNhN4mtCPahyVRBPxDOhrUZeM6MIGr2+CXfpLH/psGbSxDL29iXxVX6Sfza
	graIX04LlftpwJvfAJ+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux4so-00000009wY1-0WGX;
	Fri, 12 Sep 2025 14:36:14 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux4sl-00000009wVK-0Xoz
	for linux-rockchip@lists.infradead.org;
	Fri, 12 Sep 2025 14:36:12 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-55f98e7782bso2382674e87.0
        for <linux-rockchip@lists.infradead.org>; Fri, 12 Sep 2025 07:36:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757687769; x=1758292569; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=jVGUoZl7QKW/jrUqmLdcQ17BKW7CKZzyHqO+L1oBJKU=;
        b=vrUlGkoF7G0kfIQAeliaDXm5L2nWf5q9j5tTfNAX/o+tSsMYgMn4Kq7eBRCt8odrCd
         ltHvY9gmm5ttO08qcxEVFgUymeVAbY+oUaFzASYWvkxoAMOPUNLlvWbDTUqclmC87/YX
         DI85kGSsbBkhQNxOJA51WJXj/tWeK1vscCn2i0Wsb26qAIZu/+7f9wXUMmuzphvE+A+A
         uyulbEB3WnxiWkLSq8roArH+jPZQN9tq4Z7/kjWnZwY7LochipiQ5myVTa4qCEPtkZ2x
         1ioPlC+ESEq6RPyg8o53FfbXp2tPn26hoyUAMvDz3vc0+NXhZg/mbGgmkRfEXWNIEZds
         XPRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757687769; x=1758292569;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jVGUoZl7QKW/jrUqmLdcQ17BKW7CKZzyHqO+L1oBJKU=;
        b=GAt30eJVDYjCVGg1B5HU+O1T6urnaQ9hEWxFmqdMPBOXnckx8CHtGPX+GmXE/K3c7K
         n9303M/v+ocv1mF/dR0rT1ZAymFrhSiyF61Y0wUebooNtWfD5uLuY3JFa/YvUV76Aurm
         sAfoCtXfPMsZUFdYduBk+wVDRpFjMfn2G1v5uR9GpU8IKxqmKHxnZwsUVXHjROI6bU+u
         kmfep+RWEOvBhJDr615TMUK7z1ohmkr2RHrjiLpDomROkzI1838yF6qZmvPGAz/5J5xj
         g2eDlXaGnPEPL45j9+HU1Rdrb4odUOLmLBYOLudJKNa9C4ejo7j6TFihdiu38Ot3Gfji
         I+Sw==
X-Forwarded-Encrypted: i=1; AJvYcCXuy/PDCz3vBukXQVH8rTQOxWxv/+LRMhKX5bWDT5ezK9FTDb998Kq/PWtPvcMylihSXqT/T8iiKZ93mLFGNw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwxBRRWfM45BoMkdMLYEmrrNozSq4RvSdlP1OXsODdqKWyirSsb
	zga2ZCnZfKL9J/u454v3GOy0oy9MgQ2X14ryeJa0oXKKidoM43ecyuBj/DRiEHutsnw=
X-Gm-Gg: ASbGncssqe7U6mQATjbz/akx2YpjTFlA8U7Dm+9B7dVNKlJj92NQ6GhwHH5fSYgOtSP
	W0HafXocO4CLPTSRRc7oxjSqIzIvNtHjt8XZpSKGqrpPMK/rpF2enO6KYg1bw+WpAw4IHbjWyev
	bf6vmAgiLfCtIZmtRIUcMuTeFct7EFs1Z0gYG0qZpqVyIRgpSMNyot+oLYkbPY2ppXF38bo1Ajl
	nMEqY8umoFZjNOPmU06oguROdaWTmX+8VjdM3DvPWvVzvLxxQw578p31W+32AKXb6W03Knrj8ds
	l8PF+eqTiAWJv4GuLnUUtvTAor+H0vU5RnfNn5NzvoxyNBzNqv7WFJ5Ovvet4azmegNNyPHpkAs
	1y/QOqCYjkjNrAeH/CM3yAL7cibmqioRmTyAtInXMHx7AMi2pwMiWGbJ/JMjpX2SIRw==
X-Google-Smtp-Source: AGHT+IEsSVAtYO0GTF2dOCpPZHkcGM8bs2rKRqzsbq84UASkP3MlDRwNQk3IdJUJ/J8IxFpxvDpQOQ==
X-Received: by 2002:ac2:51d0:0:b0:55f:3ae4:fe55 with SMTP id 2adb3069b0e04-5705be234camr1238974e87.4.1757687767437;
        Fri, 12 Sep 2025 07:36:07 -0700 (PDT)
Received: from nuoska (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e64fa7192sm1199028e87.124.2025.09.12.07.36.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 07:36:07 -0700 (PDT)
Date: Fri, 12 Sep 2025 17:36:05 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: linux-mmc@vger.kernel.org, linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Russell King <linux@armlinux.org.uk>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: ulf.hansson@linaro.org, linux-kernel@vger.kernel.org,
	adrian.hunter@intel.com, victor.shih@genesyslogic.com.tw,
	ben.chuang@genesyslogic.com.tw, geert+renesas@glider.be,
	angelogioacchino.delregno@collabora.com, dlan@gentoo.org,
	arnd@arndb.de, zhoubinbin@loongson.cn,
	Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH v3 0/4] enable ROCKCHIP_PM_DOMAINS
Message-ID: <aMQv1V49xa_MThGq@nuoska>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250912143036.2844523-1-mikko.rapeli@linaro.org>
 <20250912142735.2843958-1-mikko.rapeli@linaro.org>
 <20250912142253.2843018-1-mikko.rapeli@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_073611_227427_B8FF2013 
X-CRM114-Status: GOOD (  31.64  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

Sorry I did not use scripts/get_maintainers.pl correctly after
changes were moving from one susbsystem to another based on review
comments but I hope correct maintainers and lists have received
the patches now.

Cheers,

-Mikko

On Fri, Sep 12, 2025 at 05:22:49PM +0300, Mikko Rapeli wrote:
> Hi,
> =

> MMC_DW_ROCKCHIP needs ROCKCHIP_PM_DOMAINS before MMC is detected
> on Rockchip rk3399 rockpi4b and similar devices. Make this dependency
> more visible, or the default with ARCH_ROCKCHIP if possible.
> =

> v3: use "default ARCH_ROCKCHIP" in ROCKCHIP_PM_DOMAINS as suggested
>     by Arnd Bergmann <arnd@arndb.de>, enable more MMC drivers for
>     COMPILE_TEST and remove MMC_LOONGSON2 which doesn't link,
>     remove PM dependency as suggested by
>     Geert Uytterhoeven <geert@linux-m68k.org>
> =

> v2: changed from "depend on" in MMC driver to "select" as default
>     on ARCH_ROCKCHIP as suggested by Ulf and Heiko
>     https://marc.info/?i=3D20250912084112.2795848-1-mikko.rapeli%20()%20l=
inaro%20!%20org
> =

> v1: https://lore.kernel.org/linux-mmc/20250911144313.2774171-1-mikko.rape=
li@linaro.org/
> =

> Mikko Rapeli (4):
>   pmdomain: rockchip: enable ROCKCHIP_PM_DOMAINS with ARCH_ROCKCHIP
>   mmc: add COMPILE_TEST to multiple drivers
>   mmc: remove COMPILE_TEST from MMC_LOONGSON2
>   ARM: rockchip: remove REGULATOR conditional to PM
> =

>  arch/arm/mach-rockchip/Kconfig    |  2 +-
>  drivers/mmc/host/Kconfig          | 10 +++++-----
>  drivers/pmdomain/rockchip/Kconfig |  1 +
>  3 files changed, 7 insertions(+), 6 deletions(-)
> =

> -- =

> 2.34.1
> =


On Fri, Sep 12, 2025 at 05:27:35PM +0300, Mikko Rapeli wrote:
> On rk3399 based rockpi4b, mounting rootfs from mmc fails unless
> ROCKCHIP_PM_DOMAINS is enabled. Accoriding to
> Heiko St=FCbner <heiko@sntech.de> all SoCs since 2012 have power
> domains so the support should be enabled by default
> on both arm and arm64.
> =

> Failing boot without CONFIG_ROCKCHIP_PM_DOMAINS=3Dy:
> =

> https://ledge.validation.linaro.org/scheduler/job/119268
> =

> /dev/disk/by-partuuid/1d48ffd8-f2a7-4a33-b52f-186089b3c85e: Can't lookup =
blockdev
> /dev/disk/by-partuuid/1d48ffd8-f2a7-4a33-b52f-186089b3c85e: Can't lookup =
blockdev
> /dev/disk/by-partuuid/1d48ffd8-f2a7-4a33-b52f-186089b3c85e: Can't lookup =
blockdev
> /dev/disk/by-partuuid/1d48ffd8-f2a7-4a33-b52f-186089b3c85e: Can't lookup =
blockdev
> /dev/disk/by-partuuid/1d48ffd8-f2a7-4a33-b52f-186089b3c85e: Can't lookup =
blockdev
> /dev/disk/by-partuuid/1d48ffd8-f2a7-4a33-b52f-186089b3c85e: Can't lookup =
blockdev
> dw-apb-uart ff1a0000.serial: forbid DMA for kernel console
> root '/dev/disk/by-partuuid/1d48ffd8-f2a7-4a33-b52f-186089b3c85e' doesn't=
 exist or does not contain a /dev.
> rk_gmac-dwmac fe300000.ethernet: deferred probe timeout, ignoring depende=
ncy
> rk_gmac-dwmac fe300000.ethernet: probe with driver rk_gmac-dwmac failed w=
ith error -110
> rk_iommu ff650800.iommu: deferred probe timeout, ignoring dependency
> rk_iommu ff650800.iommu: probe with driver rk_iommu failed with error -110
> dwmmc_rockchip fe320000.mmc: deferred probe timeout, ignoring dependency
> rockchip-typec-phy ff7c0000.phy: deferred probe timeout, ignoring depende=
ncy
> dwmmc_rockchip fe320000.mmc: probe with driver dwmmc_rockchip failed with=
 error -110
> rockchip-typec-phy ff7c0000.phy: probe with driver rockchip-typec-phy fai=
led with error -110
> rockchip-typec-phy ff800000.phy: deferred probe timeout, ignoring depende=
ncy
> rockchip-typec-phy ff800000.phy: probe with driver rockchip-typec-phy fai=
led with error -110
> rk_iommu ff660480.iommu: deferred probe timeout, ignoring dependency
> rk_iommu ff660480.iommu: probe with driver rk_iommu failed with error -110
> rk_iommu ff8f3f00.iommu: deferred probe timeout, ignoring dependency
> rk_iommu ff8f3f00.iommu: probe with driver rk_iommu failed with error -110
> rk_iommu ff903f00.iommu: deferred probe timeout, ignoring dependency
> rk_iommu ff903f00.iommu: probe with driver rk_iommu failed with error -110
> rk_iommu ff914000.iommu: deferred probe timeout, ignoring dependency
> rk_iommu ff914000.iommu: probe with driver rk_iommu failed with error -110
> rk_iommu ff924000.iommu: deferred probe timeout, ignoring dependency
> rk_iommu ff924000.iommu: probe with driver rk_iommu failed with error -110
> platform fe800000.usb: deferred probe pending: platform: wait for supplie=
r /phy@ff7c0000/usb3-port
> sdhci-arasan fe330000.mmc: deferred probe timeout, ignoring dependency
> platform fe900000.usb: deferred probe pending: platform: wait for supplie=
r /phy@ff800000/usb3-port
> sdhci-arasan fe330000.mmc: probe with driver sdhci-arasan failed with err=
or -110
> platform ff1d0000.spi: deferred probe pending: (reason unknown)
> platform hdmi-sound: deferred probe pending: asoc-simple-card: parse error
> =

> Working boot with CONFIG_ROCKCHIP_PM_DOMAINS=3Dy:
> =

> https://ledge.validation.linaro.org/scheduler/job/119272
> =

> dwmmc_rockchip fe320000.mmc: IDMAC supports 32-bit address mode.
> dwmmc_rockchip fe320000.mmc: Using internal DMA controller.
> dwmmc_rockchip fe320000.mmc: Version ID is 270a
> dwmmc_rockchip fe320000.mmc: DW MMC controller at irq 45,32 bit host data=
 width,256 deep fifo
> dwmmc_rockchip fe320000.mmc: Got CD GPIO
> ff1a0000.serial: ttyS2 at MMIO 0xff1a0000 (irq =3D 44, base_baud =3D 1500=
000) is a 16550A
> printk: legacy console [ttyS2] enabled
> mmc_host mmc1: Bus speed (slot 0) =3D 400000Hz (slot req 400000Hz, actual=
 400000HZ div =3D 0)
> dw_wdt ff848000.watchdog: No valid TOPs array specified
> mmc_host mmc1: Bus speed (slot 0) =3D 50000000Hz (slot req 50000000Hz, ac=
tual 50000000HZ div =3D 0)
> mmc0: CQHCI version 5.10
> rk_gmac-dwmac fe300000.ethernet: IRQ eth_wake_irq not found
> mmc1: new high speed SDHC card at address aaaa
> fan53555-regulator 0-0040: FAN53555 Option[8] Rev[1] Detected!
> fan53555-regulator 0-0041: FAN53555 Option[8] Rev[1] Detected!
> rk_gmac-dwmac fe300000.ethernet: IRQ eth_lpi not found
> mmcblk1: mmc1:aaaa SC16G 14.8 GiB
> rk_gmac-dwmac fe300000.ethernet: IRQ sfty not found
> GPT:Primary header thinks Alt. header is not at the end of the disk.
> rk_gmac-dwmac fe300000.ethernet: Deprecated MDIO bus assumption used
> GPT:1978417 !=3D 31116287
> rk_gmac-dwmac fe300000.ethernet: PTP uses main clock
> GPT:Alternate GPT header not at the end of the disk.
> rk_gmac-dwmac fe300000.ethernet: clock input or output? (input).
> GPT:1978417 !=3D 31116287
> rk_gmac-dwmac fe300000.ethernet: TX delay(0x28).
> GPT: Use GNU Parted to correct GPT errors.
> rk_gmac-dwmac fe300000.ethernet: RX delay(0x11).
>  mmcblk1: p1 p2 p3 p4 p5 p6 p7 p8
> =

> Suggested-by: Ulf Hansson <ulf.hansson@linaro.org>
> Suggested-by: Heiko St=FCbner <heiko@sntech.de>
> Suggested-by: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
> ---
>  drivers/pmdomain/rockchip/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> =

> diff --git a/drivers/pmdomain/rockchip/Kconfig b/drivers/pmdomain/rockchi=
p/Kconfig
> index 218d43186e5b9..17f2e6fe86b6f 100644
> --- a/drivers/pmdomain/rockchip/Kconfig
> +++ b/drivers/pmdomain/rockchip/Kconfig
> @@ -3,6 +3,7 @@ if ARCH_ROCKCHIP || COMPILE_TEST
>  =

>  config ROCKCHIP_PM_DOMAINS
>  	bool "Rockchip generic power domain"
> +	default ARCH_ROCKCHIP
>  	depends on PM
>  	depends on HAVE_ARM_SMCCC_DISCOVERY
>  	depends on REGULATOR
> -- =

> 2.34.1
> =


On Fri, Sep 12, 2025 at 05:30:36PM +0300, Mikko Rapeli wrote:
> PM is explicitly enabled in lines just below so
> REGULATOR can be too.
> =

> Suggested-by: Geert Uytterhoeven <geert@linux-m68k.org>
> Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
> ---
>  arch/arm/mach-rockchip/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kcon=
fig
> index b7855cc665e94..c90193dd39283 100644
> --- a/arch/arm/mach-rockchip/Kconfig
> +++ b/arch/arm/mach-rockchip/Kconfig
> @@ -13,7 +13,7 @@ config ARCH_ROCKCHIP
>  	select HAVE_ARM_SCU if SMP
>  	select HAVE_ARM_TWD if SMP
>  	select DW_APB_TIMER_OF
> -	select REGULATOR if PM
> +	select REGULATOR
>  	select ROCKCHIP_TIMER
>  	select ARM_GLOBAL_TIMER
>  	select CLKSRC_ARM_GLOBAL_TIMER_SCHED_CLOCK
> -- =

> 2.34.1
> =



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
