Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3E6CD132AB
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Nov 2024 11:00:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GdVHINHLjxGjOAJzlq/JuZXRHZPNxnN1UhLoHk1YzLo=; b=zv1X52Dms8nPTn
	05DaO8nUXEzlCbRzm2Yu3mx0ZQk1/nEzb9S+NmMlW9XRFVbIMROTKOClQI+4Qq0OIqNFDfeyBzMxL
	WLTcsbiRCgYfLbZeeHgvcq6vtiofexGzjB5ic6xcbR2H8OCNhhOFagBK2x5W9TMvSs7uLG3ouD8/2
	nBpBn86MAWNyC3Jo17zxVDdGZRMrw3w4fHCnYotujNAfo5gr1fU0UAC6roHbiGS68cAZkHA9dsbs2
	TEGmdVmxUoGXCwq6dFnJktebOWg+Eyd/MoNJYqASHSBuzwXaV59eZs3jFb3aAHtuLCuLMT3dOB9ho
	6/Y6Ue3RiUpL8/fLlnQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t7upA-0000000DPOb-0tVB;
	Mon, 04 Nov 2024 11:00:44 +0000
Received: from mail-yw1-x112a.google.com ([2607:f8b0:4864:20::112a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t7un5-0000000DOtZ-1zjJ
	for linux-rockchip@lists.infradead.org;
	Mon, 04 Nov 2024 10:58:37 +0000
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-6e3c3da5bcdso36969207b3.2
        for <linux-rockchip@lists.infradead.org>; Mon, 04 Nov 2024 02:58:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730717914; x=1731322714; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=A8OEwwbndwQP7wHdh9ISRQA4yW5gd+UJ76JpEPhxfag=;
        b=prcbZ7O4N/J9fZZiLpOgyc9fJ2xD+iWAiJJj6otktoy/B3l9vj3INmYzH2hbjvc9jX
         onMB2MPYzrlIzfhkrqJOusgXT1awkicALzrrQAujV9ODQEcHiv1pxMbe2V937yhTu0/Q
         HyvZkszVfO74R74zKwPHaEB5vfN92/6fNh25Zy2qpNQgIg6c9MmL32WwgpwSdCjZZsSu
         d7iQ7lAqP0xyyzAdYXuhDsEHhfxRV+qS47KkY6Lo8mHR/WzufJUqq45NXU8CIK2Uwado
         GN46a6sKlJogntZirB+909vG6EVAxYS1HaBFUWDy7mcGRxPcO4ddhx4vJBc1GlduHk0r
         Ie6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730717914; x=1731322714;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A8OEwwbndwQP7wHdh9ISRQA4yW5gd+UJ76JpEPhxfag=;
        b=D2EsojH1Ca9bCIkpgSMVY/A57BzH2/Q2JuJg8RmIVJjS52612MyhDL7IjQdqzCu2db
         2DaSxld9SgCRSss/fzM7c8fvS93u/iaLJB2Uyj3k8WvuF+KOkR9tX8uxXNGSg15OraXf
         b5VR0cTJ1C4yV+gDGO7+CM6WMA/6/Lx9q7GxjLXIIFz+8UfGQn8410u2QQR6qi7GP0kD
         ECUnvJz/Wr+XCVDvh4a2VV66P3KXcdUhOS7abAwxGDPpX+VPAjTJ9xdtzl1yler64WFJ
         t5uNwr88HaeRh0DMJlHsMkixX43E8VfVhSc/lyxXIiT0yjQjYQunA7u/3RxpM4fHTpWQ
         Glxg==
X-Forwarded-Encrypted: i=1; AJvYcCXGmqU2SpxL5g9kKzIFoj7tPWdTRj12NvCWqlarfd/aGVom2QHODRTU8Am10iUBhr7xLVUyuWgpszKCJvcc0Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YwgwEUfgUigi6WnWlloFqlSC+u2Y5zU3kljcJqpb7MHpUJqUfhP
	ZwkxNuJ5LcX0vfn4WS5wrG1kl5q47KnDAZDHGsvAey2xwSUIc5K2iOgyHhz2uKkqeTvwG1NFAt4
	NI+OXJQLUZuBNdrMMiGoSKzlNmoFHLJdspvkC/Q==
X-Google-Smtp-Source: AGHT+IHi7UAsQfjAiAGv3Fbp4VDCnNLJgrXpVXyVg0zWty3KS6vdc/17EwBBZWalLVopb7bNmLcxY/IvP/w/XllPp6g=
X-Received: by 2002:a05:690c:3005:b0:6e7:e92d:6c0c with SMTP id
 00721157ae682-6ea3b8954cdmr141759517b3.10.1730717914161; Mon, 04 Nov 2024
 02:58:34 -0800 (PST)
MIME-Version: 1.0
References: <1730705521-23081-1-git-send-email-shawn.lin@rock-chips.com> <1730705521-23081-8-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1730705521-23081-8-git-send-email-shawn.lin@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 4 Nov 2024 11:57:58 +0100
Message-ID: <CAPDyKFrig236e5xTSeOHfNR5Z3840o6u_h7LnoAG2P8Ck348WQ@mail.gmail.com>
Subject: Re: [PATCH v4 7/7] scsi: ufs: rockchip: initial support for UFS
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	"James E . J . Bottomley" <James.Bottomley@hansenpartnership.com>, 
	"Martin K . Petersen" <martin.petersen@oracle.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	"Rafael J . Wysocki" <rafael@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, 
	YiFeng Zhao <zyf@rock-chips.com>, Liang Chen <cl@rock-chips.com>, linux-scsi@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-pm@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241104_025835_569149_2BBB7954 
X-CRM114-Status: GOOD (  19.61  )
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

On Mon, 4 Nov 2024 at 08:34, Shawn Lin <shawn.lin@rock-chips.com> wrote:
>
> RK3576 SoC contains a UFS controller, add initial support for it.
> The features are:
> (1) support UFS 2.0 features
> (2) High speed up to HS-G3
> (3) 2RX-2TX lanes
> (4) auto H8 entry and exit
>
> Software limitation:
> (1) HCE procedure: enable controller->enable intr->dme_reset->dme_enable
> (2) disable unipro timeout values before power mode change
>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
>
> Changes in v4:
> - deal with power domain of rpm and spm suggested by Ulf
> - Fix typo and disable clks in ufs_rockchip_remove
> - remove clk_disable_unprepare(host->ref_out_clk) from
>   ufs_rockchip_remove
>

[...]

> +#ifdef CONFIG_PM
> +static int ufs_rockchip_runtime_suspend(struct device *dev)
> +{
> +       struct ufs_hba *hba = dev_get_drvdata(dev);
> +       struct ufs_rockchip_host *host = ufshcd_get_variant(hba);
> +
> +       clk_disable_unprepare(host->ref_out_clk);
> +
> +       /* Shouldn't power down if rpm_lvl is less than level 5. */
> +       dev_pm_genpd_rpm_always_on(dev, hba->rpm_lvl < UFS_PM_LVL_5 ? true : false);
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
> +#endif
> +
> +#ifdef CONFIG_PM_SLEEP
> +static int ufs_rockchip_system_suspend(struct device *dev)
> +{
> +       struct ufs_hba *hba = dev_get_drvdata(dev);
> +
> +       if (hba->spm_lvl < 5)
> +               device_set_wakeup_path(dev);

Please use device_set_awake_path() instead.

Ideally all users of device_set_wakeup_path() should convert into
device_set_awake_path(), it's just that we haven't been able to
complete the conversion yet.

> +       else
> +               device_clr_wakeup_path(dev);

This isn't needed. The flag is getting cleared in device_prepare().

> +
> +       return ufshcd_system_suspend(dev);

Don't you want to disable the clock during system suspend too? If the
device is runtime resumed at this point, the clock will be left
enabled, no?

> +}
> +#endif
> +
> +static const struct dev_pm_ops ufs_rockchip_pm_ops = {
> +       SET_SYSTEM_SLEEP_PM_OPS(ufs_rockchip_system_suspend, ufshcd_system_resume)
> +       SET_RUNTIME_PM_OPS(ufs_rockchip_runtime_suspend, ufs_rockchip_runtime_resume, NULL)
> +       .prepare         = ufshcd_suspend_prepare,
> +       .complete        = ufshcd_resume_complete,
> +};
> +

[...]

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
