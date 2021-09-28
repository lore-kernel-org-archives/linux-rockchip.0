Return-Path: <SRS0=31Gl=OS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12D77C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Sep 2021 04:16:57 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BC7CA60F24
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Sep 2021 04:16:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org BC7CA60F24
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6D7sYEvnkECvh78TRsZDYvPrwZ6iM82OZ8pz+5pW5ns=; b=v5xgH7ld/ksPYZ
	uh8DTmdmtAkCNd6hgotcxEns9+qYyKXrQWsLDAhWdfgLAw7vVOIDs1MkDXSDSGFrY6rtbiJjZSDdx
	ruHM/D1N1lbEHsCXlINYwYjnjXGw61THwGiXypaqNhzIpuspRblOEKqgQfGI4I4GiuSFqQJiu/na+
	gYgaliFWPQ9Uef1uRN9hHmU9HPZoUB3G8sBwLZdAbOyz4eqbyB7xLNbovpUmJWjq4/ebvWam7GKzj
	hkX+PJBScBhT7IfHwkmDHK8UxOjoh7SwqsBpWuYKfv+45WuTY/unfkmgS7AdQz56lTGl7jebzmEvR
	24GUQotmU9w7XMD9Frzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mV4Xx-005Vhd-En; Tue, 28 Sep 2021 04:16:49 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mV4Xv-005Vgc-G1
 for linux-rockchip@lists.infradead.org; Tue, 28 Sep 2021 04:16:48 +0000
Received: by mail-lf1-x135.google.com with SMTP id g41so86645958lfv.1
 for <linux-rockchip@lists.infradead.org>; Mon, 27 Sep 2021 21:16:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eL8IYhkBbLYcNm7LWC+avj2icvoXrApd/DMgvG7Twyg=;
 b=Eg8E7WnVcCUfLf8Ic979XRm2k2bRRRS5cfcByGjlYk3mZw++clN8E9Mu0gCn2g6jlc
 DvNLz5lv3HRmcDkWz/2pi56Sq9GD884uDlV0wwmN8zU1fcmA/urMrQR6/KXxqYfP7/v0
 mQoGiTMoWWRKzKyYckYDAauVPWpN/zkm1al4k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eL8IYhkBbLYcNm7LWC+avj2icvoXrApd/DMgvG7Twyg=;
 b=YG1UkMWXcKsSPrrh0Wxrp3c7vixMCuuNBOQOH+8BoIKltVL/bfMd20FuL1mYGXwRCF
 c6hBXUp6blreuUSd/B4PGVGZFIy5VuOk1+c0uK9hqt0378+wtIn3lNtQuieInp1XO7Oc
 0PiavaPFWSnTlh2bC8+ajW+7JjRj6OT0HB65TK/sLwcsLzDp400MZd7ns4XhmhMNK6cz
 vvpbqyCTE4H4ClLHfkH8qIz79d1O8AhiCjbtd9QwrWLH5uqreh4p9ocKsB7Oro7EK08C
 AoUTtXMD3K8iQsCf+Phgyxv/X2JBl6zqDG4r6O4LySnMkTbABkKvd+TjusybNlqkk6GS
 Ruow==
X-Gm-Message-State: AOAM531sQPseEn9UtbHhJBzJbMRVmS48+S8rgQ98FuKnvnBjkg464Mhn
 cOv+zpuL+Fq9DiKMM8RYR6MTdx9fz9lDWA/qJkAj8g==
X-Google-Smtp-Source: ABdhPJx8KGnrGRNzuf6NG48x9cD+ZD+NRNaWIdRd4p9u7i9UtAdmAM8/xxrYlRzBWfIl36gUQk5oYDUYQcbS4fqjI5U=
X-Received: by 2002:ac2:4bc1:: with SMTP id o1mr3397436lfq.597.1632802602866; 
 Mon, 27 Sep 2021 21:16:42 -0700 (PDT)
MIME-Version: 1.0
References: <20210927175944.3381314-1-briannorris@chromium.org>
 <20210927105928.v2.3.I8bb7a91ecc411d56bc155763faa15f289d7fc074@changeid>
In-Reply-To: <20210927105928.v2.3.I8bb7a91ecc411d56bc155763faa15f289d7fc074@changeid>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Tue, 28 Sep 2021 12:16:31 +0800
Message-ID: <CAGXv+5GxCHJM_CewS8dPTLc7NPC6jcKZvrUFat0nemzZpu8PUQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] drm/rockchip: dsi: Disable PLL clock on bind error
To: Brian Norris <briannorris@chromium.org>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Thomas Hebb <tommyhebb@gmail.com>, dri-devel <dri-devel@lists.freedesktop.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Sandy Huang <hjc@rock-chips.com>, LKML <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210927_211647_599510_10BA2974 
X-CRM114-Status: GOOD (  18.47  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Tue, Sep 28, 2021 at 2:00 AM Brian Norris <briannorris@chromium.org> wrote:
>
> Fix some error handling here noticed in review of other changes.
>
> Reported-by: Chen-Yu Tsai <wenst@chromium.org>
> Signed-off-by: Brian Norris <briannorris@chromium.org>

Fixes: 2d4f7bdafd70 ("drm/rockchip: dsi: migrate to use dw-mipi-dsi
bridge driver")

Otherwise,

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

Additionally, I would move patch 2 and this patch before the first patch,
as these two fix a commit introduced in v5.0, while the first patch fixes
something introduced in v5.14. This would make automatic backporting cleaner.

> ---
>
> Changes in v2:
> - New
>
>  drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> index fa4080176719..0ed13d81fe60 100644
> --- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> @@ -943,7 +943,7 @@ static int dw_mipi_dsi_rockchip_bind(struct device *dev,
>         ret = clk_prepare_enable(dsi->grf_clk);
>         if (ret) {
>                 DRM_DEV_ERROR(dsi->dev, "Failed to enable grf_clk: %d\n", ret);
> -               goto out_pm_runtime;
> +               goto out_pll_clk;
>         }
>
>         dw_mipi_dsi_rockchip_config(dsi);
> @@ -955,17 +955,19 @@ static int dw_mipi_dsi_rockchip_bind(struct device *dev,
>         ret = rockchip_dsi_drm_create_encoder(dsi, drm_dev);
>         if (ret) {
>                 DRM_DEV_ERROR(dev, "Failed to create drm encoder\n");
> -               goto out_pm_runtime;
> +               goto out_pll_clk;
>         }
>
>         ret = dw_mipi_dsi_bind(dsi->dmd, &dsi->encoder);
>         if (ret) {
>                 DRM_DEV_ERROR(dev, "Failed to bind: %d\n", ret);
> -               goto out_pm_runtime;
> +               goto out_pll_clk;
>         }
>
>         return 0;
>
> +out_pll_clk:
> +       clk_disable_unprepare(dsi->pllref_clk);
>  out_pm_runtime:
>         pm_runtime_put(dsi->dev);
>         if (dsi->slave)
> --
> 2.33.0.685.g46640cef36-goog
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
