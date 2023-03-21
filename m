Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01D93C6FD1D
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Mar 2023 14:38:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DwP6u000fFgz5wr/a0wcKniHzz0vf34Kk2GDhZxhckk=; b=sS7igxtpkcovGO
	w7VGnBQcyc+oK68Fewgxxo7z3bHlB8ljKVjB6j69mFqNWzvjbaPcLj3Ko/IFCfxEQPcMTmG6nMVMM
	0PaALWZdI0eAl27HH3dCuCtdqHcyjXSOg8YMrtn8ekgWzoH7Y7sQsT4n93z8EA9NxwVAr0IMUakYJ
	moAiRj5wHFXqP9R3+fUUWiwCzQbdC/D4akNjq7ztbeJN2jaaVw+sG1RorhfDDhBqsGnTaY+tW5a8b
	61ZPchVSipZzJ/kR1yW4GFbKH+oWxJ7QCUu7UVRL+DFQScUn7lOfsTY2ZjkHKpE2YUaZyuiTgWbq9
	zTLbGPLJX9cKwxqJhMAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ped7z-00Clu1-05;
	Tue, 21 Mar 2023 14:38:19 +0000
Received: from mail-qt1-x833.google.com ([2607:f8b0:4864:20::833])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ped7v-00Cls6-25
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Mar 2023 14:38:17 +0000
Received: by mail-qt1-x833.google.com with SMTP id c19so18050985qtn.13
        for <linux-rockchip@lists.infradead.org>; Tue, 21 Mar 2023 07:38:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1679409493;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9DVlCgRoSZ9XdR+Dy6Lh3PgMM9vzKokhgsg4QRxt5Aw=;
        b=Ii9vwY2OjmyAvNnxf+T08UQB+cF+jbbCZtE+3u0iN3aU/0+jauV4ZjMJebbSFttUPK
         hUYsjvQ0kbH3NJZhESF3Tr2JFGUWH80Hd9GG9kJSplusYknJKi2MeLejFpoZG4Fws6j7
         aYnqUk750Lm2vq5fA/R+jrxF8qvilvSThOZGCz/dsmgHeLlax1X4TErUYAbb5gK8Eexq
         lC/ZHY1ZIvfZRi7wpzKm0MIMuKGlgcJUiVXuvKLMhGgi+jWlT40mrIl6Zj6B1XoLBuyF
         aWBUOoty+Rxmw9HWXoMmA731Vj07RBjHP4lhxsZP/fxvbEr8xjH+MO4HXIzjTa0HSSMd
         015g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679409493;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9DVlCgRoSZ9XdR+Dy6Lh3PgMM9vzKokhgsg4QRxt5Aw=;
        b=wsAZSX+GBP96N96itNMbRLWWxGf1SrNLcYkElvSVG/yHETL66smHfuCJY/fHHsxfx/
         kEU3CYyZ+Niivy+4X6NpSaSvP3sI+CHm+SLJcsCmaEezghqSwaT2ALL949clSIo/kPfO
         OKPfC9fTHVNdo6hfnRCc38D0JiJqPHYKtPhyIVOuLUw/e925mNoxHIAxHZfcQquaFjBs
         RweyJzTBH2g95Y699FRRV97+YlmL0qD2bbtbt3RBVabdXD3kEoIz1R8Y94cUvXKvtxgv
         sOAoiZIIBghvkMQj0osjO4UkFdkEZquI4pOfE0bEOPeCyLGB95/zHPcdafYD3QtSgXjH
         oi3A==
X-Gm-Message-State: AO0yUKXuyoHsXVlgTOn1P1Fy8T7t9txuycWzQXEspWQNJoCHK6Esbvf4
	MzcsIqfdQLIXzKj0DNgymqAvPA==
X-Google-Smtp-Source: AK7set+5mApLIf05UV9lI1WrSUTLqjn2u3xMtQ0MG3GtGOXeh/M+a5iOeRv/Y1L8h+HxYiW3FbYnTQ==
X-Received: by 2002:ac8:7d15:0:b0:3dc:ce21:6f87 with SMTP id g21-20020ac87d15000000b003dcce216f87mr191326qtb.11.1679409493048;
        Tue, 21 Mar 2023 07:38:13 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-68-25-194.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.68.25.194])
        by smtp.gmail.com with ESMTPSA id z9-20020a376509000000b0074283b87a4esm2198697qkb.90.2023.03.21.07.38.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Mar 2023 07:38:12 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1ped7r-000VWi-TM;
	Tue, 21 Mar 2023 11:38:11 -0300
Date: Tue, 21 Mar 2023 11:38:11 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Steven Price <steven.price@arm.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
	iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Lu Baolu <baolu.lu@linux.intel.com>
Subject: Re: [PATCH] iommu/rockchip: Add missing set_platform_dma_ops callback
Message-ID: <ZBnBU9OU4iV6CV0W@ziepe.ca>
References: <20230315164152.333251-1-steven.price@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230315164152.333251-1-steven.price@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230321_073815_705454_2A1C56EA 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
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

On Wed, Mar 15, 2023 at 04:41:52PM +0000, Steven Price wrote:
> Similar to exynos, we need a set_platform_dma_ops() callback for proper
> operation on ARM 32 bit after recent changes in the IOMMU framework
> (detach ops removal).
> 
> Fixes: c1fe9119ee70 ("iommu: Add set_platform_dma_ops callbacks")
> Signed-off-by: Steven Price <steven.price@arm.com>
> ---
> This fixes a splat I was seeing on a Firefly-RK3288, more details here:
> https://lore.kernel.org/all/26a5d1b8-40b3-b1e4-bc85-740409c26838@arm.com/

Reviewed-by: Jason Gunthorpe <jgg@nvidia.com>

Do you know what state the iommu is left in after
rk_iommu_detach_device()? Ie is it blocking DMA or doing identity or
something else?

Jason

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
