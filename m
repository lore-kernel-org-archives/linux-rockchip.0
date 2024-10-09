Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BED76CEDD90
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Oct 2024 13:15:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+A+M2DlPt+tIhLQvE4U77rL/HBb6xrQlLPl6n/YNoew=; b=JYn/rx9Cgj3REV
	a5ybhLzQijdxDVtjkwcb1u/VydkymqL4IdYVDcGVhDRwJrvcTVGMFClbxH/Uk0v4uC7ibWh+PBAJU
	HApBG6zKwUAD69CpArgIxvVAqLiNvhvrXuAk2VIFtzK9g7ej5DWJC6Wpi+XZdt0E8/8krMjGRN0tt
	M8Lt9yG9ufm+qndupaWv5vfMBv/mKTRJr3Ygq3WbQnerZ8yc9fdtPxhLPpUEP5ZXrGKJ7dW09MMoo
	aGKgb5zWRgSZn3SzLV6B7qeaGTVhLrXG5zUtTTVP61zsw89xOlFjCL4FDHsXAJ4i5bXYEXcBZrbex
	+PJEcjgWe3CCkwq6DzFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syWXX-00000009MjW-0Yio;
	Wed, 09 Oct 2024 13:15:43 +0000
Received: from mail-yb1-xb2f.google.com ([2607:f8b0:4864:20::b2f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syWXU-00000009Miy-0oJq
	for linux-rockchip@lists.infradead.org;
	Wed, 09 Oct 2024 13:15:41 +0000
Received: by mail-yb1-xb2f.google.com with SMTP id 3f1490d57ef6-e03caab48a2so691287276.1
        for <linux-rockchip@lists.infradead.org>; Wed, 09 Oct 2024 06:15:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728479738; x=1729084538; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=X/BVh51Wei3dZ71+FMVXs9o7VKFoyrGm7h9GIR6kEtE=;
        b=EAYV8z3rkA8/bEtb3M9r4IjNfz7cnunSqbWrlkNH57iV4LJ+nf8OOJD2MX2ttPVIRG
         9Hy67+WFCqKkLGsDh5gOlaawFLupb254B47oOvmbHii8HftF7+UfmN5iqGVxM+M3HvDJ
         BV/h36wV+rYeYICGWdkyF3vcTki/uMITqrQr8LTSo/eXn3Yss/8mXziiA8UeQnOZ+u/B
         iAgUatZrrllWTAgRCeBW0tOw4sMTBYlOtsvyX0pzseWHYXTmgf6Bg0A0hUrscru8NgNb
         gLMFrmmZIy8bzTNe+JjhKwkFCX8vgHMmXsPdCP66hbQATNFbV0QEt+b4vjkSlWhyIdFf
         ndhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728479738; x=1729084538;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X/BVh51Wei3dZ71+FMVXs9o7VKFoyrGm7h9GIR6kEtE=;
        b=ew/Ps6f+jofkcUNRiDkgvWE7e0obYBRkislzFPqlXuRTKsxaTZB7437XJg0H34zufY
         U/s3V102j1eX5xe24h3+TjmdIsZt6Zsbu/K9pVCPs6XVRty/ZGeLctEkVbF+GHgQomYE
         3nufaNtspujzbUB+Umrcjs9CgZiKyYliz3wpBK26o11MRQDiZKx6yAvqYhe0r4rkmpOl
         B4jl+Fn5gJSeAhtGFtd3q/c8Pe8IB4O5OXTORJhab8TT0rlfotivKWuwzqGI0H4+xPAX
         +q9Q2Lhv7WdWkYQcnpnzstfuAEDJoi9qWPaW6/0vNFgWm3lSDAnkCdSoClIF6CRVoT8H
         xSgg==
X-Forwarded-Encrypted: i=1; AJvYcCWP87IWNbEuVKEGbvfobhpvf2eQEbLsnfoOWYNaNa19HudTX0VWRARsSWPJtqs6Wc2f6QLB6ZaF6piMz9nMXQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxsfNWHHh/PJM6DNcqXucwnpqGxys5n04UOAPH+n9qEuijlQORl
	2cDWEKbwH/kPcsfwVGnoFXWxYd2d3B3guNqCHqNYOqnLpVGw7sUwz47OUCBzcn2fVcTTCaGMpU5
	5WqGajFlhF9Iry7VcbNIo2kgC8NF6cTBH5Kp4jg==
X-Google-Smtp-Source: AGHT+IHp9MRWyf8+0EngQ/HGstXTs67OY8NhmDANMfWbtr8KbjZARvSO50M8FTVHd6rQq5UIIfOKejL4W5ObG6+T/7A=
X-Received: by 2002:a05:6902:18d3:b0:e0b:4cb6:ec53 with SMTP id
 3f1490d57ef6-e28fe348682mr1747706276.3.1728479738519; Wed, 09 Oct 2024
 06:15:38 -0700 (PDT)
MIME-Version: 1.0
References: <1728368130-37213-1-git-send-email-shawn.lin@rock-chips.com> <1728368130-37213-6-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1728368130-37213-6-git-send-email-shawn.lin@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 9 Oct 2024 15:15:02 +0200
Message-ID: <CAPDyKForpLcmkqruuTfD6kkJhp_4CKFABWRxFVYNskGL1tjO=w@mail.gmail.com>
Subject: Re: [PATCH v3 5/5] scsi: ufs: rockchip: initial support for UFS
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	"James E . J . Bottomley" <James.Bottomley@hansenpartnership.com>, 
	"Martin K . Petersen" <martin.petersen@oracle.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, 
	YiFeng Zhao <zyf@rock-chips.com>, Liang Chen <cl@rock-chips.com>, linux-scsi@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-pm@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_061540_255799_9963C033 
X-CRM114-Status: GOOD (  20.27  )
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

[...]

> +
> +static int ufs_rockchip_runtime_suspend(struct device *dev)
> +{
> +       struct ufs_hba *hba = dev_get_drvdata(dev);
> +       struct ufs_rockchip_host *host = ufshcd_get_variant(hba);
> +       struct generic_pm_domain *genpd = pd_to_genpd(dev->pm_domain);

pd_to_genpd() isn't safe to use like this. It's solely to be used by
genpd provider drivers.

> +
> +       clk_disable_unprepare(host->ref_out_clk);
> +
> +       /*
> +        * Shouldn't power down if rpm_lvl is less than level 5.

Can you elaborate on why we must not power-off the power-domain when
level is less than 5?

What happens if we power-off anyway when the level is less than 5?

> +        * This flag will be passed down to platform power-domain driver
> +        * which has the final decision.
> +        */
> +       if (hba->rpm_lvl < UFS_PM_LVL_5)
> +               genpd->flags |= GENPD_FLAG_RPM_ALWAYS_ON;
> +       else
> +               genpd->flags &= ~GENPD_FLAG_RPM_ALWAYS_ON;

The genpd->flags is not supposed to be changed like this - and
especially not from a genpd consumer driver.

I am trying to understand a bit more of the use case here. Let's see
if that helps me to potentially suggest an alternative approach.

> +
> +       return ufshcd_runtime_suspend(dev);
> +}
> +
> +static int ufs_rockchip_runtime_resume(struct device *dev)
> +{
> +       struct ufs_hba *hba = dev_get_drvdata(dev);
> +       struct ufs_rockchip_host *host = ufshcd_get_variant(hba);
> +       int err;
> +
> +       err = clk_prepare_enable(host->ref_out_clk);
> +       if (err) {
> +               dev_err(hba->dev, "failed to enable ref out clock %d\n", err);
> +               return err;
> +       }
> +
> +       reset_control_assert(host->rst);
> +       usleep_range(1, 2);
> +       reset_control_deassert(host->rst);
> +
> +       return ufshcd_runtime_resume(dev);
> +}
> +
> +static int ufs_rockchip_system_suspend(struct device *dev)
> +{
> +       struct ufs_hba *hba = dev_get_drvdata(dev);
> +       struct ufs_rockchip_host *host = ufshcd_get_variant(hba);
> +
> +       /* Pass down desired spm_lvl to Firmware */
> +       arm_smccc_smc(ROCKCHIP_SIP_SUSPEND_MODE, ROCKCHIP_SLEEP_PD_CONFIG,
> +                       host->pd_id, hba->spm_lvl < 5 ? 1 : 0, 0, 0, 0, 0, NULL);

Can you please elaborate on what goes on here? Is this turning off the
power-domain that the dev is attached to - or what is actually
happening?

> +
> +       return ufshcd_system_suspend(dev);
> +}
> +
> +static const struct dev_pm_ops ufs_rockchip_pm_ops = {
> +       SET_SYSTEM_SLEEP_PM_OPS(ufs_rockchip_system_suspend, ufshcd_system_resume)
> +       SET_RUNTIME_PM_OPS(ufs_rockchip_runtime_suspend, ufs_rockchip_runtime_resume, NULL)
> +       .prepare         = ufshcd_suspend_prepare,
> +       .complete        = ufshcd_resume_complete,
> +};
> +
> +static struct platform_driver ufs_rockchip_pltform = {
> +       .probe = ufs_rockchip_probe,
> +       .remove = ufs_rockchip_remove,
> +       .driver = {
> +               .name = "ufshcd-rockchip",
> +               .pm = &ufs_rockchip_pm_ops,
> +               .of_match_table = ufs_rockchip_of_match,
> +       },
> +};
> +module_platform_driver(ufs_rockchip_pltform);
> +

[...]

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
