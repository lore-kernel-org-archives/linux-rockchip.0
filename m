Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46EDAEB28F8
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Feb 2026 09:21:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g+fMSuDmjFrWpKsmPt1Y0i72XMorZAsmYfUeUXQBQdw=; b=Zh8RdpFCtZ8p5g
	5KyjIUWQgI8vJJz6LdS6svokLdv1HxXv1Mv++s3IdI2jRzaQwO6gaxI9bRJDS7c/x5ccdj3cPGKg/
	RyV9pusrRCFv6LsU8gInN7nokDKAlbvh9RPxOHrdtTdijZv7y2apJ/C+KwpJQNG27jHKYhGMU0ZV3
	ATMNcQkAL6WthVjuGRVtUWL135J4IF+2NFeKzANVihOC2i3CNWo0TJuNh2pf/NnmG+1AtqW12qODP
	qhya1A8vyHHymJ5GXhF9rE/KFH09qaZCwyiI6jj/trpxX6umY15de1Sv00ZGM93h9iOsn3pEA74YB
	hdUgqJ+yQWxQZPwieRNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voI1x-0000000B66t-3Wg3;
	Fri, 06 Feb 2026 09:21:37 +0000
Received: from mail1.manjaro.org ([142.132.176.110])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voI1t-0000000B65J-3cjK;
	Fri, 06 Feb 2026 09:21:36 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 0BCBA41B4A;
	Fri,  6 Feb 2026 10:21:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1770369685; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=YojMfz3Ugs/7NMma4XPSlNth2z1uxj8Jmj8kTgaV0WM=;
	b=CJqe5vSMiGZD2fr5TmUOHE/R2xiyuXaS+vcF7IJtwWHnQbQlVCeMmzyUbpyoQl25aRuOVw
	V5C3A3Dlon5AFQa4DtStu4E/aq40eWOCcewN6NRBFKLa1M6E3tVPv9Ks3BDVz1ePezNGCc
	YdlGn2y6ksZT0hVPCYfnGA9pgIe8tHHtpBGtkoBB94/bV0ve9cK3dQcU3tDQmUyNeFoMGP
	KGJpwlFZESzRAFUsbPqOS67uIZoPQ9vB45/UhvQ4reejWaqJwi4wdLjGEy/GXj4FvVH/Vi
	XkkBjJTC9jOG8IZkiOLe6EyYpg0fFyEYbrv7vAPVVsuqiuuSe7/zpaAPGH9Kjg==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <20260206084220.543267-1-nichen@iscas.ac.cn>
References: <20260206084220.543267-1-nichen@iscas.ac.cn>
Date: Fri, 06 Feb 2026 10:21:19 +0100
Cc: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, damon.ding@rock-chips.com, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
To: "Chen Ni" <nichen@iscas.ac.cn>
MIME-Version: 1.0
Message-ID: <5eac199e-dbe3-3707-4876-f6bf7754f124@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH] =?utf-8?q?drm/rockchip=3A?=
 =?utf-8?q?_analogix=5Fdp=3A?= Add missing error check for 
 =?utf-8?q?platform=5Fget=5Fresource()?=
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260206_012134_890129_0CCBAC7B 
X-CRM114-Status: GOOD (  11.94  )
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

Hello Chen,

On Friday, February 06, 2026 09:42 CET, Chen Ni <nichen@iscas.ac.cn> wrote:
> Add missing error check for platform_get_resource() return value to
> prevent NULL pointer dereference when memory resource is not available.
> 
> Fixes: 718b3bb9c0ab ("drm/rockchip: analogix_dp: Expand device data to support multiple edp display")
> Signed-off-by: Chen Ni <nichen@iscas.ac.cn>
> ---
>  drivers/gpu/drm/rockchip/analogix_dp-rockchip.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> index fdab71d51e2a..3f5be14010c1 100644
> --- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> @@ -461,6 +461,8 @@ static int rockchip_dp_probe(struct platform_device *pdev)
>  		return -ENOMEM;
>  
>  	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	if (!res)
> +		return -EINVAL;
>  
>  	i = 0;
>  	while (dp_data[i].reg) {

Thanks for this patch!  It is looking good to me, but I think it should be
propagated into the stable kernels as well.

Please feel free to include

Reviewed-by: Dragan Simic <dsimic@manjaro.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
