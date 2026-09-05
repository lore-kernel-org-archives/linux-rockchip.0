Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5748DC624D3
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Sep 2026 13:25:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5wS2saszwSo+Y2ZXQkwIdVA14wdoeICZ1LC+F6MvI0I=; b=zX6W3aSndLcR0w
	xULXGs5wtSRN/ftyOPKbbOsv2lg/KiVLSGdx3POb6oj+IDxhWKA+tdiMjJd4QXnVd+gPJIdpGl+HW
	fUuLa1WBIgXHwgEtuGniiGyp3MXi7n5NfE/W/8TFmROsIEPqLW9TkWVdFcu88HU2/op7+tuKQzVsY
	BJh6PXRGKt647mRVFyAFGWGXQ9cTYLyAtXGxQofte1fM4jdtClvZsj0X3MzqI2WKFgz7MjBACM+2b
	j1Sz7QfNh6KcNUQFXcfdjQ/O4n4PepDsXh891aGeE5pG8hq9Q16nQ88kJWXfhfiz0qAsKh6+YiR0B
	rT+5wGJmm3INh2FL8bHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2qOc-0000000468I-0zFq;
	Sat, 05 Sep 2026 13:25:26 +0000
Received: from mail-pf1-x430.google.com ([2607:f8b0:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2qOY-0000000467G-1Jcd
	for linux-rockchip@lists.infradead.org;
	Sat, 05 Sep 2026 13:25:24 +0000
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-855d2bfae95so3550453b3a.1
        for <linux-rockchip@lists.infradead.org>; Sat, 05 Sep 2026 06:25:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=furiosa.ai; s=google; t=1788614718; x=1789219518; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=UCPQY2s7Li9KbXRAy98AdJWgLwoyUR6+yD7sEQfOnDg=;
        b=nQoGuLcpBE1eszb7gXhQNtgJrnMvYuLvOQPYNl4LzObHAzREvVlkejJTv6P23ySqqe
         ybGy+aL3pjRZjzv9+ObJO9uYfV3b9+E3pYjFXu31FZuh5SUKpPrGskrzpLuNKQwJgzqP
         rh2nnCSU/l6QTkrUvozQudw5iTx2QjMRGCpwE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788614718; x=1789219518;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=UCPQY2s7Li9KbXRAy98AdJWgLwoyUR6+yD7sEQfOnDg=;
        b=OKimRzjesWIpxQ/UR13ZAwVUHfJq6/BaU+1Sk9+TvoOIk3qoxjzIKKwK+86qoSh72U
         EnalvjFnpeLq/QNxx4KvXLXN3gvw9+0r8w0Qwl7S3vcp1Oaw7oXujOSJJ0ZtRCt++ZF9
         P2cqTqo3X0dbMGY8xtXPiR/r7Dxqun3lPks2In3ixchpR5GplkTyauu3mAq9UZBaSEN7
         o7eKpQWxVmlG2HTj2/t4c03o6aopcb8MH8td8/PFcxhrU8mqPNWDs8MidxGQXMEdQ+em
         hJ+rz9mzMsqSglTOHyzC329EDzNehlT8Ss1HinACh3caHDz7/fjx1XGwYFjwT6PAiJLk
         3Qqg==
X-Forwarded-Encrypted: i=1; AKwUvBwVh3NBXSzos5mKRH6Pgtqnfs3L7kzT4E+QKwTXWZgHOFmL0MJAZZjVGSEb0W6VQsGm4TbtNJL4XEr3/lFQuQ==@lists.infradead.org
X-Gm-Message-State: AFuF++m1Ka6doB2dhB80AS4/9HFzDoyJQrQ5kcr6fIq5xg/qnpz5rY3J
	BUnZzGQEKSynCpI/lOOacEwoM81l1e8wHOVKG6Jpj1GdGi6E8mWTYPSKov1OvcVHMzQ=
X-Gm-Gg: AYBFou2YY+WXdDy4/kQ8LqG4FiZS3gWYinQaoWXBV1OrUMOkdZ3DnuXAv8lBloyFMFX
	9NUvk7CSxWZj0u/HIQiuIXB754yVYQO+aF2yeZ6zB3LxRFT/0WoxEKPQffzqj59C0e7p1Av+CyZ
	4zs8V2qdmtzhEZy4rFXeIyi8wk2wR0sEazwA+uOSS8jAkdvkYZ1H78RbILrTxWb1kIcSiHZRf8n
	68xCIeK/LtVZsUzVcgOQYWf3lBUT0mAPgvIMCvH4Y22Frh+9ZuLk9bpibr/f1UJNsqqHHosVa94
	+auoLywKhL1IMcjXm1nkArLu4I7OKImT8Yls+5yDgtejF1/k8ujR5goeaCrue404u8NkNpYVcUw
	VSgMN7/r1KOLlDFCwR2Hp8UiPdxxl30A6HRRvKRpxphNMPiuKJPAWL4KHrmZOspJSVdiNLPSzrg
	uokZLIoGSKGlrbfQY/J1mWON0V/dkLsqsJ42sCNbjZ57nF7++1GRl0jY77neHps/Fd
X-Received: by 2002:a05:6a21:a395:b0:3d3:aed2:6f28 with SMTP id adf61e73a8af0-3da2168b2c9mr18634503637.28.1788614718057;
        Sat, 05 Sep 2026 06:25:18 -0700 (PDT)
Received: from rock-5b-plus ([61.83.209.48])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cc465376831sm903641a12.9.2026.09.05.06.25.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Sep 2026 06:25:17 -0700 (PDT)
Date: Sat, 5 Sep 2026 22:25:02 +0900
From: Sidong Yang <sidong.yang@furiosa.ai>
To: Igor Paunovic <royalnet026@gmail.com>
Cc: Tomeu Vizoso <tomeu@tomeuvizoso.net>, Oded Gabbay <ogabbay@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Jiaxing Hu <gahing@gahingwoo.com>, 
	dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH] accel/rocket: search every core slot when a core is
 removed
Message-ID: <apwUewaRnoTNXHCt@rock-5b-plus>
References: <20260904125936.26234-1-royalnet026@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260904125936.26234-1-royalnet026@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260905_062522_440209_CB2B69CE 
X-CRM114-Status: GOOD (  35.60  )
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

On Fri, Sep 04, 2026 at 02:59:36PM +0200, Igor Paunovic wrote:
> rocket_remove() decrements rdev->num_cores for each core it removes,
> while find_core_for_dev() searches slots 0 to num_cores - 1. Unbinding
> the cores in the order they were bound therefore loses the last one: by
> the time it is removed the search range has already shrunk past its
> slot, so find_core_for_dev() returns -1 and rocket_remove() gives up
> without doing anything.
> 
> num_cores never reaches zero, rocket_device_fini() never runs, and the
> file-scoped rdev keeps pointing at a device that is going away. Binding
> the cores again starts from that stale count, because rocket_probe()
> takes rdev->num_cores as the slot to fill. On an RK3588, which describes
> three cores, the second round lands on slots 1, 2 and 3 while rdev->cores
> was allocated with room for three:
> 
>   rocket fdab0000.npu: Rockchip NPU core 1 version: 1179210309
>   rocket fdac0000.npu: Rockchip NPU core 2 version: 1179210309
>   rocket fdad0000.npu: Rockchip NPU core 3 version: 1179210309
> 
> The write to rdev->cores[3] is past the end of the array.
> 
> Nothing in tree reads the core array often enough to notice, so the
> overrun is silent today. It turned up while testing a devfreq series on
> top of this, where a worker walks every core a few times a second, and
> UBSAN caught the first bool it read out of the overrun entry:
> 
>   UBSAN: invalid-load in drivers/accel/rocket/rocket_devfreq.c:47:10
>   load of value 5 is not a valid value for type '_Bool'
>   Workqueue: devfreq_wq devfreq_monitor
> 
> Record how many slots were allocated and search all of them. Every core
> is then found on removal, num_cores reaches zero, the device is torn down
> and a later bind starts from a clean rdev.
> 
> This does not make unbinding a single core out of several work. probe
> still takes num_cores as the slot to fill, so rebinding one core while
> its siblings stay bound would write over a slot that is already in use,
> and rocket_open() still reaches for cores[0] whether or not anything is
> there. Both of those want more thought than a fix should carry.
> 
> Found by unbinding and rebinding all three cores on an Orange Pi 5 Plus.
> With this applied, 25 unbind/rebind rounds and 5 module unload/reload
> rounds run clean there: the cores land in slots 0, 1 and 2 every time,
> whichever order they are bound in, and the shared supply goes back to a
> single user after each round.
> 
> Fixes: ed98261b4168 ("accel/rocket: Add a new driver for Rockchip's NPU")
> Cc: stable@vger.kernel.org
> Signed-off-by: Igor Paunovic <royalnet026@gmail.com>
> Assisted-by: LLM sparse checkpatch
> ---
>  drivers/accel/rocket/rocket_device.c | 2 ++
>  drivers/accel/rocket/rocket_device.h | 1 +
>  drivers/accel/rocket/rocket_drv.c    | 2 +-
>  3 files changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/accel/rocket/rocket_device.c b/drivers/accel/rocket/rocket_device.c
> index 46e6ee1e72c5f..efd004194c1af 100644
> --- a/drivers/accel/rocket/rocket_device.c
> +++ b/drivers/accel/rocket/rocket_device.c
> @@ -31,6 +31,8 @@ struct rocket_device *rocket_device_init(struct platform_device *pdev,
>  		if (of_device_is_available(core_node))
>  			num_cores++;
>  
> +	rdev->max_cores = num_cores;
> +
>  	rdev->cores = devm_kcalloc(dev, num_cores, sizeof(*rdev->cores), GFP_KERNEL);
>  	if (!rdev->cores)
>  		return ERR_PTR(-ENOMEM);
> diff --git a/drivers/accel/rocket/rocket_device.h b/drivers/accel/rocket/rocket_device.h
> index ce662abc01d3d..c62d567010696 100644
> --- a/drivers/accel/rocket/rocket_device.h
> +++ b/drivers/accel/rocket/rocket_device.h
> @@ -19,6 +19,7 @@ struct rocket_device {
>  
>  	struct rocket_core *cores;
>  	unsigned int num_cores;
> +	unsigned int max_cores;

Hi Igor,

I've tested this patch in Radxa Rock 5 B+ and it works. The test is that unbinding all
cores in sequence 0,1,2 and rebind all. It seems that there is other issue about num_core.
For example, sched_to_core() finds core for sched with num_core and it could make same
error like find_core_for_dev().

Tested-by: Sidong Yang <sidong.yang@furiosa.ai> # RK3588, 3 cores

Thanks,
Sidong

>  };
>  
>  struct rocket_device *rocket_device_init(struct platform_device *pdev,
> diff --git a/drivers/accel/rocket/rocket_drv.c b/drivers/accel/rocket/rocket_drv.c
> index 8bbbce594883e..2bcfe4ab3c68f 100644
> --- a/drivers/accel/rocket/rocket_drv.c
> +++ b/drivers/accel/rocket/rocket_drv.c
> @@ -223,7 +223,7 @@ static int find_core_for_dev(struct device *dev)
>  {
>  	struct rocket_device *rdev = dev_get_drvdata(dev);
>  
> -	for (unsigned int core = 0; core < rdev->num_cores; core++) {
> +	for (unsigned int core = 0; core < rdev->max_cores; core++) {
>  		if (dev == rdev->cores[core].dev)
>  			return core;
>  	}
> -- 
> 2.43.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
