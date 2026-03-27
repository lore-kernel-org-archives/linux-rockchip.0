Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DF9410F2867
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Mar 2026 20:24:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KqP+sXM8wLEYtQi+YOy/OB1EcD1pBg2JDB6tMd1ajVM=; b=sMdosWRcZrMhjs
	Uel3iB7AaxXvxhMFu4jZvvZFXRhMUhWUrYwtcN8hMEM+wVdV47LuHUHsfeTGcHtB5BWlyJ1iOdG+E
	Y+Tj9bCYvrFSuuF3dJnfXTlvBgCc5B2tvShcLwD2DoWkXHDWikdtVb4Wd3gKWZbuZ9O3hwf3kmGTG
	R7OwGjnvt96c62pgdz4/L2hg3yA2hSpNRWdBQuFcWiE1iCZ9zm2h+o3GNxSU5MhF/lqYiDf8cmV4h
	dHyB/zltV9Q+wiTXEiSXgEaLS3eMvygzsUDargFmPlo16Zv/YGxz/+M74S6bTTh3RgUWGJv2pGCqm
	QKHJAnSj5uuuizWsWAcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6Dj3-000000089oo-3aa0;
	Fri, 27 Mar 2026 20:24:13 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6Dj0-000000089n5-2CUI
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Mar 2026 20:24:12 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-66b51bfe5f3so1545365a12.2
        for <linux-rockchip@lists.infradead.org>; Fri, 27 Mar 2026 13:24:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774643047; cv=none;
        d=google.com; s=arc-20240605;
        b=lwkZ/pHCpj9GCRDGjMRTpTaRl6X1mZFqSYuDoj2WBu/w0vPMKLH4iVAzLVTJITsrFD
         Qpvdbq10aWY8zTWao3q9HZw5W6gnUDBT25WcwFXzf1SYEM08rFTivMFN+lhrNhPgYnzR
         tUvnDNxUKadleFhFCMtJyaUfPbE0zdbYAKEsfNu/NPoa92kws0g7UwGbLHmWfRvKA41z
         1nf2xXzj3hxH1As0rEKWFYg6z1aiVUStg0kFBj2U5BYn7v6bvLcmWDOfyXO6+Lg26C2H
         RpE4XsWGd04F54SAHFVnjVenp2locpWCb5G3GjtF4s90aLkRFfQcSOfsGpDmaLZKfkqZ
         60IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9WeOtA6rLKd2feImk1nWk/a5NsEeM0kN8oqqyEId0bQ=;
        fh=5oqJGf4tKyNu5uV6JrhJFZxZmJEMgW6HRzXvni74l28=;
        b=Gpb3FRFxUg43fCTFmJawO8iqNwmRGJHrYDAs035CTPnArO9NfnQ0NqqcJ8seQELyVT
         to+LEHfnvA55gPPq7FfQNPI2u2EJNQaNzlWKccLCqb4a0AP58WhEYX7XlmPwWT2ushG3
         iN9hAIANyRjuqsRQnhSrfALI0/0zXOV4PX01S+AuQDYgx0G5rhc5LMztEEzdLqv7gX1n
         HhHn6M3Zu38JZa9784us81kQgYWamicD4pUC54G4pq5Y7kWwyUOGIpuz9wYNOpZ08XDW
         g5svpuFd+mD7kjXJ2/mmTqS2GMc64vcY+MAW/15JuTR4uwUqVwDxDaSJiSOy5QMxbMvn
         s+Lg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1774643047; x=1775247847; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9WeOtA6rLKd2feImk1nWk/a5NsEeM0kN8oqqyEId0bQ=;
        b=tPiVudZrKWH5LTTvmhnYDqFOJyyk5sAfhGUhLn+yB/mCpgOz9auKLaegCrXEQ59Vvi
         YJDDhg2iIOYQ19A+L+8/WF3KyXJj8F4uOuHKUPuZZYPeZNbHlHqOTnLZQEfXax1vFbWt
         8627Ed1dpmJJ+QuGFA24cl/IaVeGKBYc9ZcAqdWQLqri6lLclJsHw/3P5g+v5oi1wC1v
         w55pPNoq8e4RX89LaC69Q6KfXNPCI1PXv2GpaTpNZe5rELaEMIyrB9Gs81v/UW4H8aYI
         lhbAHfpUi7/I60wRNvP8bU7UCtCW72gV0ch4y9G7PCRVTyyjlYLrZIA6KsPNmEyyoDoL
         zoXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774643047; x=1775247847;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9WeOtA6rLKd2feImk1nWk/a5NsEeM0kN8oqqyEId0bQ=;
        b=Ef6Pt4CoAeB+516cTngUjGxLZeGLUcDsFgtkKVfBJiqNO81ShcBAE8MiR+cT5klT19
         yonVaI5WXWIp8AtQcfl3PKAvolt4q9eOqrVqY0fDc6yq4OyCv/SYP/BQjdOSNO0ByxLY
         iH9dR52uRrnJhtmRpL7lhFmpc4EahRCcW86MDMpQVk1o2No12/szlS16Spi0Khn7HxMY
         0g3wO4rJb4wHDlovYzQ1U2GufatQZdB7BEwmoGEUFT7Y+s6DYwb/aFQEHMj8Bu9viHO+
         tGrWjn1YUX89o4h8bBMGsXHJl37qaJpwGxrI5JIcanqfLuzN35zwyfvUmhuszImQvhX+
         hzww==
X-Forwarded-Encrypted: i=1; AJvYcCWCD3hAVtd7VFB04Q3U/KkR76zc5iwoY0MMAClS6SmrdZ7V3SWHI/atfMooIQC/MjYi7wq1BCeTW4EMVBpODw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz7ZIZGvNa+IOFYC554kroqmnHi6S3p2m9hYTVUODfyr9MVHpcl
	KBnziuLuyPZhIjLrPl0lYooo9nT9nhzmoaROQo4ev9FIT6gC+ZUjvrq+Fejoh5nq8rF1pwJyw68
	StYkl5nq6jKIRFyO1WZttcGhOEEF4h6k/pEIo/STicw==
X-Gm-Gg: ATEYQzyCkV+59RgjSl0JNG5GIuc89vebHxIHmJYCHVQ/k0n7lUX5TnXc4H8O9sDVnaO
	gvzoZYHK5lXvTusCpM8vzmWISHrvX7sPk53ElxYFb5pAXZPV9Gm3bbC/kJmOYpFvfM1P5dhrW07
	fVlRy8jaffGobrjjEOuV+0S9UDuzTwRQissVdrh3JyMBROhjfO+qS6lnyNA26YtfgCXm2AKXvgW
	qCS+iO4Bbh20SLgYNs5bb/+Z3Zr1RAHvBxhX8xisPJHoGso3j5zveSHiU7CJ4qCQ5qYXVPGrD11
	sggfmSSWnI/tZy2O1NYOlI19LpMdVOJT1By5gv4n
X-Received: by 2002:a05:6402:46db:b0:66a:199d:138 with SMTP id
 4fb4d7f45d1cf-66b28c66cbemr2039826a12.20.1774643046839; Fri, 27 Mar 2026
 13:24:06 -0700 (PDT)
MIME-Version: 1.0
References: <20260327184706.1600329-1-vladimir.oltean@nxp.com> <20260327184706.1600329-10-vladimir.oltean@nxp.com>
In-Reply-To: <20260327184706.1600329-10-vladimir.oltean@nxp.com>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Fri, 27 Mar 2026 20:23:54 +0000
X-Gm-Features: AQROBzCjrloDfUGTlNvOpQXdM4anVOjHCl2P0WQRB2XbIrpLYVg7AhYSjcExBJI
Message-ID: <CADrjBPqMwtrae7LB9A8xipg6R0rHGewe69awQ_jJnsf=2c=eTw@mail.gmail.com>
Subject: Re: [PATCH v6 phy-next 09/28] scsi: ufs: exynos: stop poking into
 struct phy guts
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-can@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-ide@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-scsi@vger.kernel.org, 
	linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org, 
	linux-usb@vger.kernel.org, netdev@vger.kernel.org, spacemit@lists.linux.dev, 
	UNGLinuxDriver@microchip.com, Bart Van Assche <bvanassche@acm.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, 
	"James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>, 
	"Martin K. Petersen" <martin.petersen@oracle.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Chanho Park <chanho61.park@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260327_132410_608401_1B6D8EC5 
X-CRM114-Status: GOOD (  28.60  )
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

On Fri, 27 Mar 2026 at 18:48, Vladimir Oltean <vladimir.oltean@nxp.com> wrote:
>
> The Exynos host controller driver is clearly a PHY consumer (gets the
> ufs->phy using devm_phy_get()), but pokes into the guts of struct phy
> to get the generic_phy->power_count.
>
> The UFS core (specifically ufshcd_link_startup()) may call the variant
> operation exynos_ufs_pre_link() -> exynos_ufs_phy_init() multiple times
> if the link startup fails and needs to be retried.
>
> However ufs-exynos shouldn't be doing what it's doing, i.e. looking at
> the generic_phy->power_count, because in the general sense of the API, a
> single Generic PHY may have multiple consumers. If ufs-exynos looks at
> generic_phy->power_count, there's no guarantee that this ufs-exynos
> instance is the one who previously bumped that power count. So it may be
> powering down the PHY on behalf of another consumer.
>
> The correct way in which this should be handled is ufs-exynos should
> *remember* whether it has initialized and powered up the PHY before, and
> power it down during link retries. Not rely on the power_count (which,
> btw, on the writer side is modified under &phy->mutex, but on the reader
> side is accessed unlocked). This is a discouraged pattern even if here
> it doesn't cause functional problems.
>
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> Reviewed-by: Bart Van Assche <bvanassche@acm.org>
> Acked-by: Alim Akhtar <alim.akhtar@samsung.com>
> Tested-by: Alim Akhtar <alim.akhtar@samsung.com>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

> Cc: Alim Akhtar <alim.akhtar@samsung.com>
> Cc: Peter Griffin <peter.griffin@linaro.org>
> Cc: "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>
> Cc: "Martin K. Petersen" <martin.petersen@oracle.com>
> Cc: Krzysztof Kozlowski <krzk@kernel.org>
> Cc: Chanho Park <chanho61.park@samsung.com>
>
> v5->v6: collect tags from Alim Akhtar
> v4->v5: collect tag, add "scsi: " prefix to commit title
> v3->v4: none
> v2->v3:
> - add Cc Chanho Park, author of commit 3d73b200f989 ("scsi: ufs:
>   ufs-exynos: Change ufs phy control sequence")
> v1->v2:
> - add better ufs->phy_powered_on handling in exynos_ufs_exit(),
>   exynos_ufs_suspend() and exynos_ufs_resume() which ensures we won't
>   enter a phy->power_count underrun condition
> ---
>  drivers/ufs/host/ufs-exynos.c | 24 ++++++++++++++++++++----
>  drivers/ufs/host/ufs-exynos.h |  1 +
>  2 files changed, 21 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/ufs/host/ufs-exynos.c b/drivers/ufs/host/ufs-exynos.c
> index 76fee3a79c77..274e53833571 100644
> --- a/drivers/ufs/host/ufs-exynos.c
> +++ b/drivers/ufs/host/ufs-exynos.c
> @@ -963,9 +963,10 @@ static int exynos_ufs_phy_init(struct exynos_ufs *ufs)
>
>         phy_set_bus_width(generic_phy, ufs->avail_ln_rx);
>
> -       if (generic_phy->power_count) {
> +       if (ufs->phy_powered_on) {
>                 phy_power_off(generic_phy);
>                 phy_exit(generic_phy);
> +               ufs->phy_powered_on = false;
>         }
>
>         ret = phy_init(generic_phy);
> @@ -979,6 +980,8 @@ static int exynos_ufs_phy_init(struct exynos_ufs *ufs)
>         if (ret)
>                 goto out_exit_phy;
>
> +       ufs->phy_powered_on = true;
> +
>         return 0;
>
>  out_exit_phy:
> @@ -1527,6 +1530,9 @@ static void exynos_ufs_exit(struct ufs_hba *hba)
>  {
>         struct exynos_ufs *ufs = ufshcd_get_variant(hba);
>
> +       if (!ufs->phy_powered_on)
> +               return;
> +
>         phy_power_off(ufs->phy);
>         phy_exit(ufs->phy);
>  }
> @@ -1728,8 +1734,10 @@ static int exynos_ufs_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op,
>         if (ufs->drv_data->suspend)
>                 ufs->drv_data->suspend(ufs);
>
> -       if (!ufshcd_is_link_active(hba))
> +       if (!ufshcd_is_link_active(hba) && ufs->phy_powered_on) {
>                 phy_power_off(ufs->phy);
> +               ufs->phy_powered_on = false;
> +       }
>
>         return 0;
>  }
> @@ -1737,9 +1745,17 @@ static int exynos_ufs_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op,
>  static int exynos_ufs_resume(struct ufs_hba *hba, enum ufs_pm_op pm_op)
>  {
>         struct exynos_ufs *ufs = ufshcd_get_variant(hba);
> +       int err;
>
> -       if (!ufshcd_is_link_active(hba))
> -               phy_power_on(ufs->phy);
> +       if (!ufshcd_is_link_active(hba) && !ufs->phy_powered_on) {
> +               err = phy_power_on(ufs->phy);
> +               if (err) {
> +                       dev_err(hba->dev, "Failed to power on PHY: %pe\n",
> +                               ERR_PTR(err));
> +               } else {
> +                       ufs->phy_powered_on = true;
> +               }
> +       }
>
>         exynos_ufs_config_smu(ufs);
>         exynos_ufs_fmp_resume(hba);
> diff --git a/drivers/ufs/host/ufs-exynos.h b/drivers/ufs/host/ufs-exynos.h
> index abe7e472759e..683b9150e2ba 100644
> --- a/drivers/ufs/host/ufs-exynos.h
> +++ b/drivers/ufs/host/ufs-exynos.h
> @@ -227,6 +227,7 @@ struct exynos_ufs {
>         int avail_ln_rx;
>         int avail_ln_tx;
>         int rx_sel_idx;
> +       bool phy_powered_on;
>         struct ufs_pa_layer_attr dev_req_params;
>         struct ufs_phy_time_cfg t_cfg;
>         ktime_t entry_hibern8_t;
> --
> 2.43.0
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
