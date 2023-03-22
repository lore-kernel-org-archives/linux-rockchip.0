Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F128C6FD1C
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Mar 2023 12:50:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ifKyueZtIVZwO88TOWdRQMA0YoDkdweYoTlzHz7PwkE=; b=btesB0Sx+DqavB
	hRxvs5srafTR0IQch2pT1Q8yLTniGcPh6tufoJ23ykaBfwf1j9CkRjt5Pk1OMixICt1xkkszMaLEs
	vjcJCm2+GfUi6if6uRUJE2rFqiakUkKeJoE7D1mK4LeeoUxovOcM4SnXvbNBEsbOvpZnCzihQmaRt
	FrL2+r0RVXGn/6uoxu2xV0H02R9VzzlSeA6vaB/OF0i46G3kyDvsiyExcmJ+0zfWfpaL+YRWQIESd
	PYu06djM4TerxtGNtbGXpx+/wkNKPXJYNHPJECC+ko0kI0zK1X4gZdXJnNdk2NfZx2g2bwSU9Wchi
	oymJV3cgW8O0wMk+bcTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pexux-00G0UY-27;
	Wed, 22 Mar 2023 12:50:15 +0000
Received: from mail-qv1-xf2a.google.com ([2607:f8b0:4864:20::f2a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pexut-00G0RI-2p
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Mar 2023 12:50:13 +0000
Received: by mail-qv1-xf2a.google.com with SMTP id m16so4667239qvi.12
        for <linux-rockchip@lists.infradead.org>; Wed, 22 Mar 2023 05:50:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1679489404;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=w7gE8texmE3DXA6Si9qcI9IbQl6PzfIzMyuDdUR1aGM=;
        b=Zmsb6zCFzu/kmtgX9pgfKoiphZnKawAnRXfkkAM6tgS4xNN/QcVxADZ/FRRGWXnrab
         J2f5Eoq2GgYVO/M0SALVmy0xbQZb+iixEPkCyuWoBOPZe5PVSC2wjTV8ZTKnWzTXa2lz
         gaRUjJsv1G8VfJ8UJbkgyRpko0RTono1j5VeDpU0+C7AMiRrGBNYFMm/M9QoVEfH3BXp
         oHNqoN4L6EjXEXlE20euDUiPvzvLQAmAMIY4mxt7ztSVV7e7vJchdolzra66iFm4RTOb
         poH15Jsrv6+Q/QNzzeWqctmZFEF18GsTKFsjRJm7XpHEnZk/x8DO9KzfiaynQJg2oKW3
         k/dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679489404;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w7gE8texmE3DXA6Si9qcI9IbQl6PzfIzMyuDdUR1aGM=;
        b=gC1x6iKatmUVfzlOZuZezn8gSbFloHpYpv23tuJ/tYa8PW4Ejc3m6pJ1BAi3akC/0d
         ije95bFYlyY4EuejjcoYA5iDqWvmoBv4O0JDrVho0YAAXOcZqUwFhdpCwjMghaqC6pig
         VpTpp+uHhaJ7aUK/1BGLhs+4rlCgv4O1qwpl9deMJaMgSg1YkqcO+MzAGvv0nFXUwmED
         dC2zyVSA8Kf08Uw5qJnixL/1pI5cjbyvs8b8weQWFRP5jLZozNs0/6DWql9TFaLqjKr5
         dK43NOHkqsGAOEKKrnUWCrkGGuC7Ql320vrb6S79fExgNcxneVSTjmsNsHJw9XaEJ94F
         ihIQ==
X-Gm-Message-State: AO0yUKUeyGw4A8ZsS5tcZkPBq+M1RAq4GOSQqkFcZcZCpKlBkBpE3cP5
	pzCBvhWT4rO0So+bhBthkJSQ9w==
X-Google-Smtp-Source: AK7set+VnGTjKIIgaUl7XLaK5Bz0mAnMGv9q8V5I9Mle27qkRgJWN3VPYUoIH6BqWcnLhci14N1fww==
X-Received: by 2002:a05:6214:acd:b0:5ac:77ef:f76 with SMTP id g13-20020a0562140acd00b005ac77ef0f76mr5491411qvi.44.1679489404535;
        Wed, 22 Mar 2023 05:50:04 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-68-25-194.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.68.25.194])
        by smtp.gmail.com with ESMTPSA id c68-20020a379a47000000b00746aa080eefsm1655211qke.6.2023.03.22.05.50.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Mar 2023 05:50:03 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1pexul-000mfl-Ct;
	Wed, 22 Mar 2023 09:50:03 -0300
Date: Wed, 22 Mar 2023 09:50:03 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Steven Price <steven.price@arm.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
	iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Lu Baolu <baolu.lu@linux.intel.com>
Subject: Re: [PATCH] iommu/rockchip: Add missing set_platform_dma_ops callback
Message-ID: <ZBr5e6tn1i7EE/16@ziepe.ca>
References: <20230315164152.333251-1-steven.price@arm.com>
 <ZBnBU9OU4iV6CV0W@ziepe.ca>
 <85607806-b888-2d5e-67a4-e9d63ebd1976@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <85607806-b888-2d5e-67a4-e9d63ebd1976@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230322_055011_915960_C30D70E7 
X-CRM114-Status: GOOD (  18.69  )
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

On Wed, Mar 22, 2023 at 09:02:41AM +0000, Steven Price wrote:
> On 21/03/2023 14:38, Jason Gunthorpe wrote:
> > On Wed, Mar 15, 2023 at 04:41:52PM +0000, Steven Price wrote:
> >> Similar to exynos, we need a set_platform_dma_ops() callback for proper
> >> operation on ARM 32 bit after recent changes in the IOMMU framework
> >> (detach ops removal).
> >>
> >> Fixes: c1fe9119ee70 ("iommu: Add set_platform_dma_ops callbacks")
> >> Signed-off-by: Steven Price <steven.price@arm.com>
> >> ---
> >> This fixes a splat I was seeing on a Firefly-RK3288, more details here:
> >> https://lore.kernel.org/all/26a5d1b8-40b3-b1e4-bc85-740409c26838@arm.com/
> > 
> > Reviewed-by: Jason Gunthorpe <jgg@nvidia.com>
> 
> Thanks for the review.
> 
> > Do you know what state the iommu is left in after
> > rk_iommu_detach_device()? Ie is it blocking DMA or doing identity or
> > something else?
> 
> To be honest I really don't know for sure. But from my small
> understanding of the code: rk_iommu_detach_device() ends up in
> rk_iommu_disable_paging() which appears to switch to identity mode
> ("Disable memory translation").

Can you consider writing this patch like this instead:

https://lore.kernel.org/linux-iommu/ZBnef7g7GCxogPNz@ziepe.ca/

?

I'd much rather we move toward clearly documenting what is going on
with the HW and remove this undefined "detach" language.

Jason

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
