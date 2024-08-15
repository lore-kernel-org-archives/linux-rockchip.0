Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FA09C52D7C
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Aug 2024 14:22:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ouo35s9uF9v3CYS8mpjMdHeooja078Y/mS+4capNDTI=; b=wuhpR9M6ff1s36
	du2jLwE9JJ+7jZpmPkH5zF7vkJ2hd/fd5XvU5dxDFHo5vLQ/wqfNCIbPsj20mZe9906GksIxQQ+Nw
	AofBSaQjpIOC29NuFk4oNtQkJoanrYNoqSxPkYOAO/REx8+lw5bCOhWlUMbtej+fVP2l4P9+aJM4O
	NeOF603Vjs2RFLZyfxhfJYphqeP4PH8ppxlqfiRM/npR9YFt3Ps2vVaOq79F5w7WLJY01I6zWg5G/
	TJnqdHnlpCIKNfwIZCeKFODEbf8Qmn21VS7lJc+TrYq1XXwdFplT003oCwNrfV5w9ZKhr6bROVekD
	QYjEh8I2iQ6geka4lO8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sebNK-0000000AC8V-10TQ;
	Thu, 15 Aug 2024 14:22:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sebMf-0000000ABwL-2oTu;
	Thu, 15 Aug 2024 14:22:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=fUdYMf0fIQJ6ml8nv0t9/DBiRHKMZgkMHt7sQfyC6Yo=; b=OYJVc1T2qui93MirtcLWGtxnsX
	zLjIiVVi5ZbGQV0oovmYfOsXgOZ/uIOHK6uyln/OrWfpihGSUP2PXJ+Atde2uNwZ0aC19IJ+dJy3s
	LCPdJV1+Qd/ZkLIXP4lLID7EJ5yOCRfs8YLthEIgSWVzYj/5eCWka9c+eUcZgGSYpYFU8k10c4j1q
	0qt88wmrWjDHfnuuJI+9KZbEE+eIKNnuNQI/07/co3r61Z6MmpcYNROBjwIXvALd3HkdaRf6s9HsE
	xE8rCDPF6Cv+2+jR6YR9pS+QWg8pOiR8rwQBGAeGYZUphkRdH+lIiVI33glNj0CXyBX97xIym6oDW
	dCa83ngg==;
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sebMF-0003fh-7S; Thu, 15 Aug 2024 16:21:43 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sean Paul <seanpaul@chromium.org>, Jeffy Chen <jeffy.chen@rock-chips.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Mark Yao <markyao0591@gmail.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH RESEND] drm/rockchip: Unregister platform drivers in reverse order
Date: Thu, 15 Aug 2024 16:21:42 +0200
Message-ID: <9027071.qdD9tO9HgI@diego>
In-Reply-To: <20240808-rk-drm-fix-unreg-v1-1-c30d9a754722@collabora.com>
References: <20240808-rk-drm-fix-unreg-v1-1-c30d9a754722@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240815_072209_762584_1BE68EA2 
X-CRM114-Status: GOOD (  18.49  )
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

Am Donnerstag, 8. August 2024, 13:58:02 CEST schrieb Cristian Ciocaltea:
> Move rockchip_drm_platform_driver unregistration after its sub-drivers,
> which ensures all drivers are unregistered in the reverse order used
> when they were registered.

are you sure about that?

I.e. currently rockchip_drm_init() does 
  platform_register_drivers(rockchip_sub_drivers, ...)
to register the sub-drivers and only after that registers the main
drm-platform-driver

rockchip_drm_fini currently does the reverse of first unregistering the
main drm-platform-driver and after that unregistering the array of sub-
drivers.


So as it stands right now, rockchip_drm_fini does already do exactly the
reverse when de-registering.

> Fixes: 8820b68bd378 ("drm/rockchip: Refactor the component match logic.")
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> index 44d769d9234d..ca7b07503fbe 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> @@ -528,10 +528,9 @@ static int __init rockchip_drm_init(void)
>  
>  static void __exit rockchip_drm_fini(void)
>  {
> -	platform_driver_unregister(&rockchip_drm_platform_driver);
> -
>  	platform_unregister_drivers(rockchip_sub_drivers,
>  				    num_rockchip_sub_drivers);
> +	platform_driver_unregister(&rockchip_drm_platform_driver);
>  }
>  
>  module_init(rockchip_drm_init);
> 
> ---
> base-commit: 1eb586a9782cde8e5091b9de74603e0a8386b09e
> change-id: 20240702-rk-drm-fix-unreg-9f3f29996a00
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
