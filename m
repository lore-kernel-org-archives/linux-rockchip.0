Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF192C0219C
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Feb 2025 10:18:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i9oZRpUfajS33U2kiDgoFx76W2WRzeCvYBONavKpBZ8=; b=aiOhoHGmEymB/B
	ze+gWgwH9l9GXhonPIdqPtgqpnxozjE4NYUpI0+brcCTOX8t749k1BVoZVCl2ck3I+sTTU+OBf3Z4
	L5S3xdIIkMgtbKosEy18W3EVqyCyXK8OGysWE35TNNnQQEkTJxefsVi9rxcIRCmNk4Fwl+paU1skD
	ifbBKfV/cumZie+ALe9fkDB11b8VRJBjptxCsurQzKgMiKAr0Da1fCeDyWK8wIXVi8BcpbxYqo/ex
	Ks9Fa1elGUmS1PISsKS4uU1oHGnzHv9RL/S+Hb4aoVInbiMng66GCFceFQdqUbQntZi155Gjwh1BJ
	pRXknZMUGLN262aOZG6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgLRK-00000009AoR-1AXa;
	Fri, 07 Feb 2025 10:18:26 +0000
Received: from mail-yb1-xb35.google.com ([2607:f8b0:4864:20::b35])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgLRH-00000009Amw-0cT8
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Feb 2025 10:18:24 +0000
Received: by mail-yb1-xb35.google.com with SMTP id 3f1490d57ef6-e53c9035003so1355276276.2
        for <linux-rockchip@lists.infradead.org>; Fri, 07 Feb 2025 02:18:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738923502; x=1739528302; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=k2O4Pdt3lmbd3SSqpJ+FSdd/ZryfZbPXCdjWvrm1MQ4=;
        b=LfMoGr2S1pe7foSYUj0PjKfUIoJuHXNJClkuJKLRq8tW8oHNQkbDp2WZkR4k+sxRc+
         9thQ4yONbtevaM2llO/1Vww7gzPTx6Eq1/T8ylUG8AXTNGUhA3WvZbRwnB52mS3tJMFg
         MihP44ATGid7k+vezc/Cl2Aq5J5qG7KdjhzM5dwvMwt9oXHNkmctNj+tH+pLLT6ODCnY
         JLrI9tt78w097wwh4+YfgNJLWgPw3F2k7ht/SES8QpmBuGHPGu8x23+ak3LIvSPfVX/5
         CDKUXy0e6+Nu9paUk0NMTuzn/IK20k4vG2xgWU3bfckH/h03RbGHxQa7JQdwPw6jyXvK
         DdCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738923502; x=1739528302;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k2O4Pdt3lmbd3SSqpJ+FSdd/ZryfZbPXCdjWvrm1MQ4=;
        b=P/pukLxFwDBS+UtF61/p/lqIVGYyG6KAuX+iJ7t9d9fsliJkDWPTwEXCqcJNQwmpKa
         bVgsO5jlr00z6zf+poDFKlDVid4BXX9Qatsz9JNVG7XPTxhQM73tl9qs4dZvnXS/zPNu
         yI68KUTJThxw0nIOIKe+UwPv3KItfASTHxWutC+cen//BnXKVPTENbshAu95umbf60ds
         SQ3Kpv5BQ5RhePK7Wm3w9mwgoCAVYbZrYGz//SfTlWvgx2QLS5vTyjjghviol2kHffV1
         2w1KQ/euG1cryxBm3lOgUkThFjtWguOIWrkHPuZWsAaHCBw/UWVcy5hXg7pbY+ZBeeKx
         IiOg==
X-Forwarded-Encrypted: i=1; AJvYcCWNg4Xe3c3gjPut7V7q2tZxkfe2SfP6oYzj1ZOABFAZgLsDE3PMvBjF7wBeIhKdh2X4NyRk3nDcbML7AK6Ixg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxRLrtGxkvr3fiwU3yo4KF7st9wAd76zLfid7fGoq4pvAbJOx9g
	j8GwXh/ePImuePCs9o8J46YgS3Ome1mTbljwLP9W2CKEmcNtPwtf9T+FUyN4HagMHKgUYsp6Gqr
	0JJ0QFawXi+3r7xvEWStDCO2UdhSOZC3lsjrFzw==
X-Gm-Gg: ASbGncsBHwH0lZPHflNAIhXtS+wAssBNCLc8RX3nBS2N1aGJdUpVCz2v8gow5eiSGk3
	zAdNThY0UTtlw4jSdPlEkFZ9NVIE87hNP1hkjQfTDACSaGOEPLFkJSyZ6WSi90aNNuodFOK3m+Q
	==
X-Google-Smtp-Source: AGHT+IEmzZf2075id9cclwyGT9DbXThEdzScuMXDu+oELf+4CgST0QdmLWP6xyTxn4FlyYvfafBj1CcF9N5xwSZznZA=
X-Received: by 2002:a05:6902:1142:b0:e5b:2352:7875 with SMTP id
 3f1490d57ef6-e5b461728d5mr1878106276.8.1738923501974; Fri, 07 Feb 2025
 02:18:21 -0800 (PST)
MIME-Version: 1.0
References: <1738736156-119203-1-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1738736156-119203-1-git-send-email-shawn.lin@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 7 Feb 2025 11:17:46 +0100
X-Gm-Features: AWEUYZmQZT92aTUfye4lvbLVdLcBAyqbrxP8axB62G9bX6fJamFMemAPNZXrIyo
Message-ID: <CAPDyKFq+pWXq75xEtfkeCkmkdZtfp9dAFej4M+6rO6EAUULf=w@mail.gmail.com>
Subject: Re: [PATCH v7 0/7] Initial support for RK3576 UFS controller
To: "James E . J . Bottomley" <james.bottomley@hansenpartnership.com>, 
	"Martin K . Petersen" <martin.petersen@oracle.com>, Shawn Lin <shawn.lin@rock-chips.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	"Rafael J . Wysocki" <rafael@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, 
	YiFeng Zhao <zyf@rock-chips.com>, Liang Chen <cl@rock-chips.com>, linux-scsi@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-pm@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250207_021823_202005_77219599 
X-CRM114-Status: GOOD (  25.07  )
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

On Wed, 5 Feb 2025 at 07:16, Shawn Lin <shawn.lin@rock-chips.com> wrote:
>
> This patchset adds initial UFS controller supprt for RK3576 SoC.
> Patch 1 is the dt-bindings. Patch 2-4 deal with rpm and spm support
> in advanced suggested by Ulf. Patch 5 exports two new APIs for host
> driver. Patch 6 and 7 are the host driver and dtsi support.

Looks like this series is almost ready to be merged?

If so, may I suggest that I pick patch2, patch3 and patch4 via my
pmdomain tree and share them via an immutable branch, so they can be
pulled into James/Martin's scsi tree? Or do you prefer another route?

Kind regards
Uffe

>
>
> Changes in v7:
> - add definitions for all kinds of hex values if possible
> - Misc log and comment improvement
> - use udelay for less than 10us cases
> - other improvements suggested by Mani
> - Use 0x0 for consistency
> - Collect Mani's acked-by tag
>
> Changes in v6:
> - fix indentation to 4 spaces suggested by Krzysztof
> - export dev_pm_genpd_rpm_always_on()
> - replace host drivers with glue drivers suggested by Mani
> - add Main's review tag
> - remove UFS_MAX_CLKS
> - improve err log
> - remove hardcoded clocks
> - remove comment from ufs_rockchip_device_reset()
> - remove pm_runtime_* from ufs_rockchip_remove()
> - rebase to scsi/next
> - move ufs_rockchip_set_pm_lvl to ufs_rockchip_rk3576_init()
> - add comments about device_set_awake_path()
> - remove comments suggested by Mani
>
> Changes in v5:
> - use ufshc for devicetree example suggested by Mani
> - fix a compile warning
> - use device_set_awake_path() and disable ref_out_clk in suspend
> - remove pd_id from header
> - reconstruct ufs_rockchip_hce_enable_notify() to workaround hce enable
>   without using new quirk
>
> Changes in v4:
> - properly describe reset-gpios
> - deal with power domain of rpm and spm suggested by Ulf
> - Fix typo and disable clks in ufs_rockchip_remove
> - remove clk_disable_unprepare(host->ref_out_clk) from
>   ufs_rockchip_remove
>
> Changes in v3:
> - rename the file to rockchip,rk3576-ufshc.yaml
> - add description for reset-gpios
> - use rockchip,rk3576-ufshc as compatible
> - reword Kconfig description
> - elaborate more about controller in commit msg
> - use rockchip,rk3576-ufshc for compatible
> - remove useless header file
> - remove inline for ufshcd_is_device_present
> - use usleep_range instead
> - remove initialization, reverse Xmas order
> - remove useless varibles
> - check vops for null
> - other small fixes for err path
> - remove pm_runtime_set_active
> - fix the active and inactive reset-gpios logic
> - fix rpm_lvl and spm_lvl to 5 and move to end of probe path
> - remove unnecessary system PM callbacks
> - use UFSHCI_QUIRK_DME_RESET_ENABLE_AFTER_HCE instead
>   of UFSHCI_QUIRK_BROKEN_HCE
>
> Changes in v2:
> - rename the file
> - add reset-gpios
>
> Shawn Lin (6):
>   dt-bindings: ufs: Document Rockchip UFS host controller
>   soc: rockchip: add header for suspend mode SIP interface
>   pmdomain: rockchip: Add smc call to inform firmware
>   scsi: ufs: core: Export ufshcd_dme_reset() and ufshcd_dme_enable()
>   scsi: ufs: rockchip: initial support for UFS
>   arm64: dts: rockchip: Add UFS support for RK3576 SoC
>
> Ulf Hansson (1):
>   pmdomain: core: Introduce dev_pm_genpd_rpm_always_on()
>
>  .../bindings/ufs/rockchip,rk3576-ufshc.yaml        | 105 ++++++
>  arch/arm64/boot/dts/rockchip/rk3576.dtsi           |  24 ++
>  drivers/pmdomain/core.c                            |  35 ++
>  drivers/pmdomain/rockchip/pm-domains.c             |   8 +
>  drivers/ufs/core/ufshcd.c                          |   6 +-
>  drivers/ufs/host/Kconfig                           |  12 +
>  drivers/ufs/host/Makefile                          |   1 +
>  drivers/ufs/host/ufs-rockchip.c                    | 353 +++++++++++++++++++++
>  drivers/ufs/host/ufs-rockchip.h                    |  90 ++++++
>  include/linux/pm_domain.h                          |   7 +
>  include/soc/rockchip/rockchip_sip.h                |   3 +
>  include/ufs/ufshcd.h                               |   2 +
>  12 files changed, 644 insertions(+), 2 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/ufs/rockchip,rk3576-ufshc.yaml
>  create mode 100644 drivers/ufs/host/ufs-rockchip.c
>  create mode 100644 drivers/ufs/host/ufs-rockchip.h
>
> --
> 2.7.4
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
