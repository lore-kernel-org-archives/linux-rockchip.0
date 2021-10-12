Return-Path: <SRS0=t7eY=PA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0C238C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Oct 2021 03:24:27 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CE16C60EE9
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Oct 2021 03:24:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org CE16C60EE9
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=vanguardiasur.com.ar
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gy/lAP7IaIS5VtsbjRoIHpNvGmnlMuOn2/IGDdVk/FI=; b=Y1gWA0z39KlIkk
	igwJg6vcVOrEuJa88BX5pp+urTO5zC83mJxDu64VjKiuimcbfUf9K68234/Cy/ie10GJ4VhJskZRw
	U4Vxe7pyOnFPliEBI8az3j1MRbTZ2ESeyCaUcAD960W7oHXArghSliXSjrGGs/yU9/XGmx4dIZGP6
	uOwDxp9CTqEfCwvYAL5FgfX2ktopFi2i/pCgSJKCTxn8YnNm91Ce813gn+jeGRaOPKneqHcROn9DC
	VKrj6wVLOEZMH7p9inz4sU89lXO92x4ZFMztfAyT2QJpktabQmi7Cpi59pInDbyHFWi5L2EOQkiZM
	EKCQT8d+Ft468oni7IfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ma8Ot-00BKMO-DA; Tue, 12 Oct 2021 03:24:23 +0000
Received: from mail-ua1-x932.google.com ([2607:f8b0:4864:20::932])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ma8Og-00BKJY-Sw
 for linux-rockchip@lists.infradead.org; Tue, 12 Oct 2021 03:24:13 +0000
Received: by mail-ua1-x932.google.com with SMTP id u5so16051336uao.13
 for <linux-rockchip@lists.infradead.org>; Mon, 11 Oct 2021 20:24:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=05JfAVZ+h7mE5tV9xgtjhMjstYtcv3IxzoXo5DOS8Bc=;
 b=XGM4AalAX1+8HICtDV3dnndPWh3DVI6pEv6JOSiquVEJ1SblB3Wh3SA3h/YwHdvHIw
 TFeHRn7DVGGovIQm7GiSEo3TTWu35UdhamQiNmKjFLeewc2jMEfCNBXcewwbWg3pV/RE
 aZr/IatgS7PASkKmeIKcom7ExlE6sslE3J1fMgCoBWeYfE1k1KOtcLvXJlYdCyYbOgai
 Y3zwAT51islrFirLE3tZfvAVm3kIk07XXO+eyI9isVaswWeHdttF+IyKI5PCSz6pQJgB
 u6MIriWEatRnfAGsuACo/ebRYPdGwQ1MhyjI2KZoOS97VFWWq+Hds8CNDsG6ZQ2R+iKX
 1Ziw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=05JfAVZ+h7mE5tV9xgtjhMjstYtcv3IxzoXo5DOS8Bc=;
 b=v2QQtJHofTfx0mRaVIOaNUDVvPfG29iF/CG8BDfm3U3yl+VZDIW5tOWIc46JHDkSK0
 CPRuRvr9oYdRnyH2ZSumWX1GIoYmpG76EfTCH4BSRm2W1RVJOBr68p1UcMZ4IMknJVoy
 G1M7mP/D+hcBZ2Duv1vl2qoJhW/WGVAD6L8zTGbyK2bsZm2cBDOp3o/AUbjm93OU1M51
 TS8scySN9ML3kKYkEh04GRI/6GfZlxkBLuqrxg1eL3vbbm99KyzpXp8PPXEbxHJZthyQ
 RYBGVjT4DElXQisvp9xwb8mNSpwbxgi5VIfFgQqaIy5NP0y5q+jNjGspASQ+ZNGLUTRP
 WlkQ==
X-Gm-Message-State: AOAM531gM17nZEPbEpbxLO/Au9IH1IEZn8GPAGGjOJmfyPmkBIMS2LxB
 L2hi6mtuxIu+GmpmjnIyUG6rqA==
X-Google-Smtp-Source: ABdhPJz6WgBYu+RuHEVXvxf+e7LXJGJEwNqVoWCRKe+0ncKGBgDXKyCoe2oWAuKnrdznsGHQS8IaDw==
X-Received: by 2002:a67:d48a:: with SMTP id g10mr27580438vsj.3.1634009047974; 
 Mon, 11 Oct 2021 20:24:07 -0700 (PDT)
Received: from fedora ([2803:9800:98c2:8470:9f4:8e2a:88e5:ec01])
 by smtp.gmail.com with ESMTPSA id p8sm4317509vke.11.2021.10.11.20.24.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Oct 2021 20:24:06 -0700 (PDT)
Date: Tue, 12 Oct 2021 00:24:02 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Mikhail Rudenko <mike.rudenko@gmail.com>
Cc: linux-media@vger.kernel.org, Helen Koike <helen.koike@collabora.com>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] media: rockchip: rkisp1: use device name for debugfs
 subdir name
Message-ID: <YWT/0gx1ByXQ7JyY@fedora>
References: <20211010175457.438627-1-mike.rudenko@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211010175457.438627-1-mike.rudenko@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211011_202410_970096_B59BDDEC 
X-CRM114-Status: GOOD (  15.83  )
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

On Sun, Oct 10, 2021 at 08:54:57PM +0300, Mikhail Rudenko wrote:
> While testing Rockchip RK3399 with both ISPs enabled, a dmesg error
> was observed:
> ```
> [   15.559141] debugfs: Directory 'rkisp1' with parent '/' already present!
> ```
> 
> Fix it by using the device name for the debugfs subdirectory name
> instead of the driver name, thus preventing name collision.
> 
> Signed-off-by: Mikhail Rudenko <mike.rudenko@gmail.com>

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Thanks!

> ---
>  drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> index 7474150b94ed..560f928c3752 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> @@ -426,7 +426,7 @@ static void rkisp1_debug_init(struct rkisp1_device *rkisp1)
>  {
>  	struct rkisp1_debug *debug = &rkisp1->debug;
>  
> -	debug->debugfs_dir = debugfs_create_dir(RKISP1_DRIVER_NAME, NULL);
> +	debug->debugfs_dir = debugfs_create_dir(dev_name(rkisp1->dev), NULL);
>  	debugfs_create_ulong("data_loss", 0444, debug->debugfs_dir,
>  			     &debug->data_loss);
>  	debugfs_create_ulong("outform_size_err", 0444,  debug->debugfs_dir,
> -- 
> 2.33.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
