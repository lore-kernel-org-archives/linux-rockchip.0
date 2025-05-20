Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B0C0C3DA6D
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 May 2025 11:12:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i5iGg1Ia/iCV+9rq+LCEikeFHUQ+tJF/N8jSKf6D7lg=; b=b9Co03VKhPUfNq
	YxY2TYhKp9cVyLL815hJ8ZguG/QkqW269JXyhEvxKi1xQchjxXy88lTpnQS8pCkQHTHxUN8FSoURo
	UGAo0epWOm75vvKhW+dku2t5mA1ru8cbly0VRMVdSdwbH2DGIWocG4YZa1WsRLh87FXzUHrsUnPGp
	8Xv8nc8YdtLE+Qq/jTJxx9i4WgLvw4Vl2uVGe22ERSSlixnAv9x/s5r/YnWUTF9bo5kTOJvOK9k6M
	tjb9qpnrNA4ETTsw071CgthBX20GaUl8eMhp964y8ffWqgGVcP3E0KrYYBvtr4Ia/WUzEri8phmtU
	TUJDW+Au+dDj4gQ9Ao7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHKtU-0000000CYtR-3c57;
	Tue, 20 May 2025 11:12:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHKQR-0000000CPbD-3k8R
	for linux-rockchip@lists.infradead.org;
	Tue, 20 May 2025 10:42:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1uHKPz-0001aN-MM; Tue, 20 May 2025 12:41:55 +0200
Message-ID: <e7c08305612e7323ca9d9ff6c44f3e2b63f171ff.camel@pengutronix.de>
Subject: Re: [PATCH v5 08/10] accel/rocket: Add IOCTLs for synchronizing
 memory accesses
From: Lucas Stach <l.stach@pengutronix.de>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Oded Gabbay
 <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>,  Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>,
 Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Sebastian
 Reichel <sebastian.reichel@collabora.com>,  Nicolas Frattaroli
 <nicolas.frattaroli@collabora.com>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, 
	linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
Date: Tue, 20 May 2025 12:41:47 +0200
In-Reply-To: <20250520-6-10-rocket-v5-8-18c9ca0fcb3c@tomeuvizoso.net>
References: <20250520-6-10-rocket-v5-0-18c9ca0fcb3c@tomeuvizoso.net>
	 <20250520-6-10-rocket-v5-8-18c9ca0fcb3c@tomeuvizoso.net>
User-Agent: Evolution 3.52.4 (3.52.4-2.fc40) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250520_034223_922627_63BA79E4 
X-CRM114-Status: GOOD (  18.43  )
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

Hi Tomeu,

Am Dienstag, dem 20.05.2025 um 12:27 +0200 schrieb Tomeu Vizoso:
> The NPU cores have their own access to the memory bus, and this isn't
> cache coherent with the CPUs.
> 
> Add IOCTLs so userspace can mark when the caches need to be flushed, and
> also when a writer job needs to be waited for before the buffer can be
> accessed from the CPU.
> 
> Initially based on the same IOCTLs from the Etnaviv driver.
> 
> v2:
> - Don't break UABI by reordering the IOCTL IDs (Jeff Hugo)
> 
> v3:
> - Check that padding fields in IOCTLs are zero (Jeff Hugo)
> 
> Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>
> ---
>  drivers/accel/rocket/rocket_drv.c |  2 +
>  drivers/accel/rocket/rocket_gem.c | 80 +++++++++++++++++++++++++++++++++++++++
>  drivers/accel/rocket/rocket_gem.h |  5 +++
>  include/uapi/drm/rocket_accel.h   | 37 ++++++++++++++++++
>  4 files changed, 124 insertions(+)
> 
> diff --git a/drivers/accel/rocket/rocket_drv.c b/drivers/accel/rocket/rocket_drv.c
> index fef9b93372d3f65c41c1ac35a9bfa0c01ee721a5..c06e66939e6c39909fe08bef3c4f301b07bf8fbf 100644
> --- a/drivers/accel/rocket/rocket_drv.c
> +++ b/drivers/accel/rocket/rocket_drv.c
> @@ -59,6 +59,8 @@ static const struct drm_ioctl_desc rocket_drm_driver_ioctls[] = {
>  
>  	ROCKET_IOCTL(CREATE_BO, create_bo),
>  	ROCKET_IOCTL(SUBMIT, submit),
> +	ROCKET_IOCTL(PREP_BO, prep_bo),
> +	ROCKET_IOCTL(FINI_BO, fini_bo),
>  };
>  
>  DEFINE_DRM_ACCEL_FOPS(rocket_accel_driver_fops);
> diff --git a/drivers/accel/rocket/rocket_gem.c b/drivers/accel/rocket/rocket_gem.c
> index 8a8a7185daac4740081293aae6945c9b2bbeb2dd..cdc5238a93fa5978129dc1ac8ec8de955160dc18 100644
> --- a/drivers/accel/rocket/rocket_gem.c
> +++ b/drivers/accel/rocket/rocket_gem.c
> @@ -129,3 +129,83 @@ int rocket_ioctl_create_bo(struct drm_device *dev, void *data, struct drm_file *
>  
>  	return ret;
>  }
> +
> +static inline enum dma_data_direction rocket_op_to_dma_dir(u32 op)
> +{
> +	if (op & ROCKET_PREP_READ)
> +		return DMA_FROM_DEVICE;
> +	else if (op & ROCKET_PREP_WRITE)
> +		return DMA_TO_DEVICE;
> +	else
> +		return DMA_BIDIRECTIONAL;
> +}

This has copied over the bug fixed in etnaviv commit 58979ad6330a
("drm/etnaviv: fix DMA direction handling for cached RW buffers")

Regards,
Lucas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
