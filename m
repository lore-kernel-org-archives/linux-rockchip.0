Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7327EEAA4E
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Sep 2023 14:40:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8eZaQTN13XPlraqXf8kszAzMvKtuhg0DeqVvqn9Xa30=; b=o5aljnoZKfI5sQ
	kIk1PAzE3lsXXtvXkJhhm6JJU1ltnkYnzhFyyCv4JD+nHQOSL+eXafoU0Uv8zf9HGvkdmrjX1E6Jx
	VSa8WNkLKT3N8Il4SGcgZYXnpmKFCcMYE+4ALQFK4PdK8B21Eow5PNhpKFcuNQ94acbH/Hx1q+Tak
	YRZkdUf8lJ1N3VBZFYRzPD8phkfRnZ6UqcKz0DBAJ+wKZUzHOaoIyc9kWt25MvljQFxnn/gijbZND
	Pg7QTW/4RVhzzo50q72lEA/dhXZ64q2ZSL+fmP44Q9mwzLSEO8eieVZTJV4M1L1dPHWrhGOZGYGcC
	ErXijTnbUwVBvdn1gCFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgnWG-008f3R-0C;
	Thu, 14 Sep 2023 14:40:36 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgnWC-008f2H-0c;
	Thu, 14 Sep 2023 14:40:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DF6DE1FB;
	Thu, 14 Sep 2023 07:41:05 -0700 (PDT)
Received: from [10.57.93.68] (unknown [10.57.93.68])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 513A43F738;
	Thu, 14 Sep 2023 07:40:26 -0700 (PDT)
Message-ID: <c15e4dd9-4250-0aac-4c03-5c1618288840@arm.com>
Date: Thu, 14 Sep 2023 15:40:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 06/13] media: rockchip: rga: set dma mask to 32 bits
Content-Language: en-GB
To: Michael Tretter <m.tretter@pengutronix.de>,
 Jacob Chen <jacob-chen@iotwrt.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Shengyu Qu <wiagn233@outlook.com>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Diederik de Haas <didi.debian@cknow.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de
References: <20230914-rockchip-rga-multiplanar-v1-0-abfd77260ae3@pengutronix.de>
 <20230914-rockchip-rga-multiplanar-v1-6-abfd77260ae3@pengutronix.de>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20230914-rockchip-rga-multiplanar-v1-6-abfd77260ae3@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230914_074032_272786_C17F8279 
X-CRM114-Status: GOOD (  17.50  )
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

On 2023-09-14 13:40, Michael Tretter wrote:
> The RGA DMA descriptor list contains only 32-bit addresses. Set the
> dma_mask to only allocate memory that is addressable by the descriptors.
> 
> This prevents errors when preparing vb2 buffers that were allocated by
> the RGA. Imported buffers may still fail the preparation, as they may be
> allocated above the 4 GB boundary.
> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---
>   drivers/media/platform/rockchip/rga/rga.c | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
> index f18fccc7b204..149deb1f1e03 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -824,6 +824,12 @@ static int rga_probe(struct platform_device *pdev)
>   		goto err_put_clk;
>   	}
>   
> +	ret = dma_set_mask(rga->dev, DMA_BIT_MASK(32));

You want dma_set_mask_and_coherent(), given that you are using coherent 
allocations as well. The driver's getting away with it since the default 
masks happen to be 32-bit anyway, but it's better to be explicit.

Thanks,
Robin.

> +	if (ret) {
> +		dev_err(rga->dev, "32-bit DMA not supported");
> +		goto err_put_clk;
> +	}
> +
>   	ret = v4l2_device_register(&pdev->dev, &rga->v4l2_dev);
>   	if (ret)
>   		goto err_put_clk;
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
