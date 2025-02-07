Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E30BC02196
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Feb 2025 10:10:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EYCtUwe0+AVlVhEj6cURanmqvAg6+fHLUpq3GFFy9sE=; b=TO+EZZWW9y9Gf7
	NBICvrbsqpP+XSSuZAeF9lTz7ADaMXa32/JmUNX3l3r9PgRVw74Utv8ceJ4+aNLdOm99VAwvytT5y
	eNRtcuJqSSyNdfC0xfbyYKzcHkAPaWssT7ilq4K4Gh6ahOQnvrJzdyGkFvICpeZvd5JPIvpvEdsHO
	DXFD1LDdpXPs4R5S+yIHa4LtRJIq/uPaOAFS/aZ59zyXbqwWOkfRI7qe1BRDumG5XdZ+F9rP10A/Q
	SpwCR6Stn1AXrUjaoixoCJEMOEXt45hyiy7+OqbYi40O2x22bBEaMiBsxyNv3NRiUg/4YMU6ii6pG
	hElVSUJzt9wAteFNrezg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgLJ9-000000099mf-2aYW;
	Fri, 07 Feb 2025 10:09:59 +0000
Received: from mail-yb1-xb31.google.com ([2607:f8b0:4864:20::b31])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgLJ7-000000099lJ-36oA
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Feb 2025 10:09:59 +0000
Received: by mail-yb1-xb31.google.com with SMTP id 3f1490d57ef6-e479e529ebcso1398340276.3
        for <linux-rockchip@lists.infradead.org>; Fri, 07 Feb 2025 02:09:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738922997; x=1739527797; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=aMlnBxSr88oKxJqvSdzTpvP2j51w5II8vu4/hm//nuA=;
        b=OKUqr25nAk46HxThKKQ5WcwXGHDJKdY1fuLmb8FEFWVff4hQ8+mQjk7aUNaKMFBQvo
         /bqXQk9yT0laXHOfWru6BCuzSZk8omg6E2xkK5qDuA+QImM7yOnuUrHxCWqkLSPNMgsI
         b/1fsWnRbzmgYpNiTsoQuyyR6Ob4pNcaZzt0KXQaVNmJaJSKfyqV14QF8kL3NHWno/oE
         B5wDBr4uJrodp6MF3PBYkOqTLveo142Q2i4qhxBNw3csTD7G2nR0+LWAzL86xnEVDTuw
         dRtovHfapRZZXwT0gpkIQVkYptCs1ixI9zmw8qYnbEYTAygWMGJJYjMCYAUqN0ug3b/q
         6Arw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738922997; x=1739527797;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aMlnBxSr88oKxJqvSdzTpvP2j51w5II8vu4/hm//nuA=;
        b=J9hB7skhpc8mv6b7FuPpY8oRFZ/hyrzyTiDedqcECZKYinEKcqx2wjmddj1i5MhqOo
         yrZvJe/jYpOdkWo2FFe1juGaK4Aa4IwnCKOrQ3XXpud+iLSgGgVekssFQJnNydQ5VbW1
         lxWDjH26fxwFRXyhmVMY6C/NPO+HPFo3QYAy385w0peGCuO2YGxjsMXlsUXexAthSWv4
         j3x7/83/SdWra2WjZ0mMPmq3t4wD/rTbQZq7G2bYMZbNeZ9r8Z72m7mv8ujWNXEgJhPj
         /axws2m3EN1DK0QqvjSK3acU03pR04kfjdKwz4YpuK6txMNEnluTjDZPYySpvAcGLdBj
         fySQ==
X-Forwarded-Encrypted: i=1; AJvYcCVt3esd8U6qKL4OdPrDjtBuf76O5l9M1xWViLMdxGcQ3UVZU3mA3SYkLijxQ9Sg/TerzLfJirgqI8rfw57JTg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxBzzKeaBMGuGTEVYcDv88pno3PFAVNHbWNtTQDsgFz4/Oy9SX/
	eF1mSr1BSr86PcKOktMBNV4TDY6UviK7cGqrefCvhQ2qDz2nbxLxlYv1vM+/haZ0hl7/jaYsLdI
	5H62BL1VYuQIYJrtadK4CpXlmmTXYIYMlTDlSng==
X-Gm-Gg: ASbGncvV7rUSWd6e+71CVO/3StyLuLreGZ0B/7/JP6aMe9JifWgWjNa7qGeDBfL36Tp
	nrBdA6IcbQYrTKIUyw3nbwXhoie8R7k5ItGm7m27BgkHM9yQCRTSxXVpvpu15ktcMMLN1Mjbd+A
	==
X-Google-Smtp-Source: AGHT+IHoiInh1hUMnE6qERiHNS3cS8CKAY9eNIzyp9FkL/HZJzjp42lBKNL5doKpGdV1ysL98ISo0TrNPBDVJXuqONw=
X-Received: by 2002:a05:6902:1147:b0:e5b:44a6:6a49 with SMTP id
 3f1490d57ef6-e5b461e3b73mr2069997276.27.1738922996853; Fri, 07 Feb 2025
 02:09:56 -0800 (PST)
MIME-Version: 1.0
References: <1738736156-119203-1-git-send-email-shawn.lin@rock-chips.com> <1738736156-119203-7-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1738736156-119203-7-git-send-email-shawn.lin@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 7 Feb 2025 11:09:20 +0100
X-Gm-Features: AWEUYZlh5I7dXTfcGIsd-Bb5BhscOMYbYEdqLf2ekINZFP8SE-lE7AuxpmHbrEo
Message-ID: <CAPDyKFpzfyacXidTwU1ec9L4058k3Mrx43MS0JTnukgwqci6BA@mail.gmail.com>
Subject: Re: [PATCH v7 6/7] scsi: ufs: rockchip: initial support for UFS
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
X-CRM114-CacheID: sfid-20250207_020957_784733_793B8710 
X-CRM114-Status: GOOD (  17.14  )
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

On Wed, 5 Feb 2025 at 07:18, Shawn Lin <shawn.lin@rock-chips.com> wrote:
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

One minor comment, see below. Nevertheless, feel free to add:

Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>

[...]

> +#ifdef CONFIG_PM_SLEEP
> +static int ufs_rockchip_system_suspend(struct device *dev)
> +{
> +       struct ufs_hba *hba = dev_get_drvdata(dev);
> +       struct ufs_rockchip_host *host = ufshcd_get_variant(hba);
> +       int err;
> +

The below code seems to require that the device is runtime resumed.
Maybe that is guaranteed by the upper UFS layer, I don't know. If not,
we need a pm_runtime_get_sync() here - and thus a corresponding
pm_runtime_put_noidle() in ufs_rockchip_system_resume().

> +       /*
> +        * If spm_lvl is less than level 5, it means we need to keep the host
> +        * controller in powered-on state. So device_set_awake_path() is
> +        * calling pm core to notify the genpd provider to meet this requirement
> +        */
> +       if (hba->spm_lvl < UFS_PM_LVL_5)
> +               device_set_awake_path(dev);
> +
> +       err = ufshcd_system_suspend(dev);
> +       if (err) {
> +               dev_err(hba->dev, "UFSHCD system susped failed %d\n", err);
> +               return err;
> +       }
> +
> +       clk_disable_unprepare(host->ref_out_clk);
> +
> +       return 0;
> +}
> +
> +static int ufs_rockchip_system_resume(struct device *dev)
> +{
> +       struct ufs_hba *hba = dev_get_drvdata(dev);
> +       struct ufs_rockchip_host *host = ufshcd_get_variant(hba);
> +       int err;
> +
> +       err = clk_prepare_enable(host->ref_out_clk);
> +       if (err) {
> +               dev_err(hba->dev, "failed to enable ref_out clock %d\n", err);
> +               return err;
> +       }
> +
> +       return ufshcd_system_resume(dev);
> +}
> +#endif
> +
> +static const struct dev_pm_ops ufs_rockchip_pm_ops = {
> +       SET_SYSTEM_SLEEP_PM_OPS(ufs_rockchip_system_suspend, ufs_rockchip_system_resume)
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
