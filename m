Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5CA0C6FD1F
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Mar 2023 17:36:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h7KZ/p4F0FcWw5V+PFRw0AOXrrCkR9aaWLDDs2fV3q4=; b=zHvz5rDdc80gjj
	Oa31npFvtsBsVJLYLVJdE490n2Xcsbhlv24Dwfy/zGa90LaYhmMF72lN9B+oXwUpdLqivaN4mrQ0N
	KXSovyIh6/rDrFKCAW635g0bXqOls/TQYEodp4HNoSnmwiTdobUpsJ/6BBjc04QR/CJtcTR27iHvW
	yKmgfiYhAF7dBMRVp5OLrF5DMFNzs9XLf/4KqWuO6Yjpxfp+4ApfHlHDum/F1df2gXlcdyMozg6oO
	Q7cWa9//kmB+FbaplCuZ8eN5mHaTGfj8KMPAH5/OBB36NgdRznnbp2JbX6f1xdgFevFyesmUQq75U
	E6kHdGlLh9b8g9LQV7LA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pf2Nz-00GroC-0S;
	Wed, 22 Mar 2023 17:36:31 +0000
Received: from mail-qt1-x834.google.com ([2607:f8b0:4864:20::834])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pf2Nt-00GriS-0I
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Mar 2023 17:36:27 +0000
Received: by mail-qt1-x834.google.com with SMTP id w25so1040326qtc.5
        for <linux-rockchip@lists.infradead.org>; Wed, 22 Mar 2023 10:36:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1679506581;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mWbfKdnzylqruLkb669PxI2Ds25u6VYLIbbrabovtsY=;
        b=PQJwj1HPzHv1dtC0s3LoMHBNrziJ3IVIJiiSj7ubk1Ssg4NpoJ16lj3aVjbzQKzGGX
         XMvtY+X/emL9T9l07jeS5LSy+n1C6AQ4TI/c3g3fFpB4zyjl5w7QslGs7TvOO9N7YRDW
         kKq1cJ4HDgAdkQ9UrrlfAU/u79UYRgjiOpTkBKtGNW29CXuv/cJFdTBRR+GURcZ5mQ+a
         4Rrof8zPjg6cdzZmbRiIe35cfkSaVKcuRDD7ogzBdeh5H3KGTejCaXvDZuTnkjr6ahbY
         368qtfEBHTUEs8FXhi5Ex9el+l8BdPR+fjWt+m+0uncVwnmkqa93zXp55EXw7foH0W/C
         kvXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679506581;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mWbfKdnzylqruLkb669PxI2Ds25u6VYLIbbrabovtsY=;
        b=SSzAwrF/c/UnywAJW325Q+q5EfbQZ7mmQH2oGX98icsvX1zPkDfa4WF6ORa4eVeHi6
         WHcTmQ+ilFyOZgTNALJGSqQdpZUgKqs1fHEE0/uajo3k1MZpDufoGBIdbq7o50Xz7JWJ
         69k+w0LbBeR4aTJ1vjAnWKurh+pNZ1cCZG+k5AhXZj3GkngmD3F5bihG0ZqXIWpUCjRC
         2pOqwBsydKvpVY0ziB93YZPcq0dy5kSiz6Ib/RRRbVqMfii6dXTY3Nji7QrpQbNL9nim
         YyT0/CiZkRmqj41WjJqevWT65gHtuUh5kq9tikpPrWcMojDrCmJTUqrn/kxvhfQvXAg9
         87AQ==
X-Gm-Message-State: AO0yUKUyZr3LWo8C5CIOb1lTXwJ1hhqVlqF5Bxwln/xPFaNZUMM9h3+y
	jL0Y5xZG2EgheLPQlst055d4Y5udt3IZyV2UTE0=
X-Google-Smtp-Source: AK7set+1jTuQ5BkMw9ArPzCi/uxOuElPpNpMdi9teoMqfXrR/0DmTYHtW2bV7gjcoP3ib42QHmjm2w==
X-Received: by 2002:a05:622a:1806:b0:3e3:791e:72d0 with SMTP id t6-20020a05622a180600b003e3791e72d0mr8033898qtc.19.1679506580800;
        Wed, 22 Mar 2023 10:36:20 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-68-25-194.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.68.25.194])
        by smtp.gmail.com with ESMTPSA id g1-20020a37b601000000b00743592b4745sm11604976qkf.109.2023.03.22.10.36.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Mar 2023 10:36:20 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1pf2Nn-000yQO-Iz;
	Wed, 22 Mar 2023 14:36:19 -0300
Date: Wed, 22 Mar 2023 14:36:19 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Steven Price <steven.price@arm.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
	iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Lu Baolu <baolu.lu@linux.intel.com>
Subject: Re: [PATCH] iommu/rockchip: Add missing set_platform_dma_ops callback
Message-ID: <ZBs8k8nki/iqUiwE@ziepe.ca>
References: <20230315164152.333251-1-steven.price@arm.com>
 <ZBnBU9OU4iV6CV0W@ziepe.ca>
 <85607806-b888-2d5e-67a4-e9d63ebd1976@arm.com>
 <ZBr5e6tn1i7EE/16@ziepe.ca>
 <a5b946f0-5be8-a656-a8d5-1cd75399f0c4@arm.com>
 <ZBsb01emBJJMZIt0@ziepe.ca>
 <bee3e168-3fc3-89e8-6b10-a830f052cf55@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bee3e168-3fc3-89e8-6b10-a830f052cf55@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230322_103625_476979_DA930956 
X-CRM114-Status: GOOD (  24.20  )
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

On Wed, Mar 22, 2023 at 04:04:25PM +0000, Steven Price wrote:
> On 22/03/2023 15:16, Jason Gunthorpe wrote:
> > On Wed, Mar 22, 2023 at 03:08:41PM +0000, Steven Price wrote:
> >> @@ -1035,8 +1055,9 @@ static int rk_iommu_attach_device(struct iommu_domain *domain,
> >>  	if (iommu->domain == domain)
> >>  		return 0;
> >>  
> >> -	if (iommu->domain)
> >> -		rk_iommu_detach_device(iommu->domain, dev);
> >> +	ret = rk_iommu_identity_attach(&rk_identity_domain, dev);
> >> +	if (ret)
> >> +		return ret;
> > 
> >>  
> >>  	iommu->domain = domain;
> >>  
> >> @@ -1049,8 +1070,6 @@ static int rk_iommu_attach_device(struct iommu_domain *domain,
> >>  		return 0;
> >>  
> >>  	ret = rk_iommu_enable(iommu);
> >> -	if (ret)
> >> -		rk_iommu_detach_device(iommu->domain, dev);
> > 
> > I think this still needs error handling, it should put it back to the
> > identity domain and return an error code if it fails to attach to the
> > requested domain.
> 
> What confused me here is that there's already a call to
> rk_iommu_identity_attach() just above. But I can obviously add a...

I don't know this driver at all, but to me it looks like this is
perhaps undoing a partially failed rk_iommu_enable() since it doesn't
seem to enetirely fix itself. Ie it zeros the INT_MASK and DTE_ADDR

Maybe it would be better to put that error cleanup direclty into
enable and just move the iommu->domain assignment to after enable
success.

>        if (ret)
>                rk_iommu_identity_attach(&rk_identity_domain, dev);
> 
> ... in here. But I don't know how to handle an error from
> rk_iommu_identity_attach() at this point. Does it need handling - is a
> WARN_ON sufficient?

WARN_ON should be fine, that is kind of hacky, it would be better to
organize things so there is an identity attach function that cannot
fail, ie pre-assumes all the validation is done alread.y

> 
> > It should also initlaize iommu->domain to the identity domain when the
> > iommu struct is allocated. The iommu->domain should never be
> > NULL. identity domain means the IOMMU is turned off which was
> > previously called "detached".
> 
> I presume you mean in rk_iommu_probe()?

It would be best if it was setup at allocation time so in
rk_iommu_of_xlate() before dev_iommu_priv_set()

Jason

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
