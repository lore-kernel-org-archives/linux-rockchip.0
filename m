Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4294C83F22
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Jul 2025 18:10:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cT4Jj7RWPC58I67I7R0XNy6Fm5l+c6rxsCN6XYBnbkU=; b=siwtlSVbJJec+j
	04qxzXViTNloU59LPue/KnRjUJFEmch9jP6Z/P+iuhe1xykUhdlPPFIKDVB0eTNjtYtAUeCj4Im4l
	NP4fdmqO49JBqmiTP5winAKCuLyo1iEx4VvcT6OyZQIn3pTodpb21mi7kVBKKkxMyr/EJNzX2BzDv
	LiRlzdRe489bQ57QDpE1DvIwXZmVGicJD+DAGdVBT78Q3iFvvMY9P6GUsjzRuuEJW4XrXvhfRFtV9
	yEFqC9qKfH0SXUCWpoL9OXteKLEE29Ynbd7Kv5TULuIewDJ+PFEsKHBetDxoQSnNDalZewbZ9sf1k
	GWLz7gu0+xOYqOXvHnSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaICj-0000000FT4l-37Xk;
	Fri, 11 Jul 2025 18:10:37 +0000
Received: from fllvem-ot03.ext.ti.com ([198.47.19.245])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaHk5-0000000FQLX-3ZNf;
	Fri, 11 Jul 2025 17:41:03 +0000
Received: from fllvem-sh04.itg.ti.com ([10.64.41.54])
	by fllvem-ot03.ext.ti.com (8.15.2/8.15.2) with ESMTP id 56BHemug1861107;
	Fri, 11 Jul 2025 12:40:48 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1752255648;
	bh=avkCSBI/cy3dHICmDxAzJXYe1H+unqcSXKS5zVohgaE=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=MfxRnRrKgfCUgO2J9UsENDPiXwTOrv7M+KRQK4+WubWagVc1t8P07KW7Eqp+XtZUK
	 kEbQVJRSEM/E4NEI1bAIugDacmCrpCTnuo/gdgQp7j9MAA3mc4VLjM+KuTu0R+rRO6
	 ZiN1UFF5JJS6uX5fPKjBaY5Yzkevs1GL6yNSaKfk=
Received: from DLEE101.ent.ti.com (dlee101.ent.ti.com [157.170.170.31])
	by fllvem-sh04.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 56BHem8U533293
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
	Fri, 11 Jul 2025 12:40:48 -0500
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55; Fri, 11
 Jul 2025 12:40:47 -0500
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55 via
 Frontend Transport; Fri, 11 Jul 2025 12:40:47 -0500
Received: from [10.250.35.60] ([10.250.35.60])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 56BHekf83588411;
	Fri, 11 Jul 2025 12:40:46 -0500
Message-ID: <7178abc9-8f92-4bba-9b50-ffdf5f8d1279@ti.com>
Date: Fri, 11 Jul 2025 12:40:46 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 03/10] accel/rocket: Add IOCTL for BO creation
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Oded Gabbay <ogabbay@kernel.org>, Jonathan
 Corbet <corbet@lwn.net>,
        Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
        Sebastian
 Reichel <sebastian.reichel@collabora.com>,
        Nicolas Frattaroli
	<nicolas.frattaroli@collabora.com>,
        Kever Yang <kever.yang@rock-chips.com>,
        Robin Murphy <robin.murphy@arm.com>,
        Daniel Stone <daniel@fooishbar.org>, Da
 Xue <da@libre.computer>,
        Jeff Hugo <jeff.hugo@oss.qualcomm.com>
CC: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <dri-devel@lists.freedesktop.org>, <linux-doc@vger.kernel.org>,
        <linux-media@vger.kernel.org>, <linaro-mm-sig@lists.linaro.org>
References: <20250606-6-10-rocket-v7-0-dc16cfe6fe4e@tomeuvizoso.net>
 <20250606-6-10-rocket-v7-3-dc16cfe6fe4e@tomeuvizoso.net>
Content-Language: en-US
From: Andrew Davis <afd@ti.com>
In-Reply-To: <20250606-6-10-rocket-v7-3-dc16cfe6fe4e@tomeuvizoso.net>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250711_104101_986716_1417193B 
X-CRM114-Status: GOOD (  16.76  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 6/6/25 1:28 AM, Tomeu Vizoso wrote:
> This uses the SHMEM DRM helpers and we map right away to the CPU and NPU
> sides, as all buffers are expected to be accessed from both.
> 
> v2:
> - Sync the IOMMUs for the other cores when mapping and unmapping.
> 
> v3:
> - Make use of GPL-2.0-only for the copyright notice (Jeff Hugo)
> 
> v6:
> - Use mutexes guard (Markus Elfring)
> 
> v7:
> - Assign its own IOMMU domain to each client, for isolation (Daniel
>    Stone and Robin Murphy)
> 
> Reviewed-by: Jeffrey Hugo <quic_jhugo@quicinc.com>
> Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>
> ---
>   drivers/accel/rocket/Makefile        |   3 +-
>   drivers/accel/rocket/rocket_device.c |   4 ++
>   drivers/accel/rocket/rocket_device.h |   2 +
>   drivers/accel/rocket/rocket_drv.c    |   7 ++-
>   drivers/accel/rocket/rocket_gem.c    | 115 +++++++++++++++++++++++++++++++++++
>   drivers/accel/rocket/rocket_gem.h    |  27 ++++++++
>   include/uapi/drm/rocket_accel.h      |  44 ++++++++++++++
>   7 files changed, 200 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/accel/rocket/Makefile b/drivers/accel/rocket/Makefile
> index abdd75f2492eaecf8bf5e78a2ac150ea19ac3e96..4deef267f9e1238c4d8bd108dcc8afd9dc8b2b8f 100644
> --- a/drivers/accel/rocket/Makefile
> +++ b/drivers/accel/rocket/Makefile
> @@ -5,4 +5,5 @@ obj-$(CONFIG_DRM_ACCEL_ROCKET) := rocket.o
>   rocket-y := \
>   	rocket_core.o \
>   	rocket_device.o \
> -	rocket_drv.o
> +	rocket_drv.o \
> +	rocket_gem.o
> diff --git a/drivers/accel/rocket/rocket_device.c b/drivers/accel/rocket/rocket_device.c
> index a05c103e117e3eaa6439884b7acb6e3483296edb..5e559104741af22c528914c96e44558323ab6c89 100644
> --- a/drivers/accel/rocket/rocket_device.c
> +++ b/drivers/accel/rocket/rocket_device.c
> @@ -4,6 +4,7 @@
>   #include <linux/array_size.h>
>   #include <linux/clk.h>
>   #include <linux/dev_printk.h>
> +#include <linux/mutex.h>
>   
>   #include "rocket_device.h"
>   
> @@ -16,10 +17,13 @@ int rocket_device_init(struct rocket_device *rdev)
>   	if (err)
>   		return err;
>   
> +	mutex_init(&rdev->iommu_lock);

devm_mutex_init() again keeps you from needing rocket_device_fini().
Same in the next patch even if you don't end up needing the iommu_lock.

Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
