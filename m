Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0351C4167B
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Nov 2023 00:28:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yG0VoBMju+pG3MCymOo3cJVUduTcyUJWjOlzvXkALeQ=; b=CB3fmiLNYRc7hZ
	UOkGUaq04bDY+yB92mYtqhxRpvlnt+ORXv4ZtL6NgFwsn4It+si481xZu5cjjeGlR2lPk23OBYyN3
	Z3uIq1wWsyCPiw2wAWi3cewrCjEi2j4YrnpU9wJKHLmcIZAsBE8ZjJXv3THhXtG487OtSEeo8lOzR
	mEY9cPUgGuAsZ8HG4SeLFLX78T/WLv53GAE7GbWG4dI6E2EUOlVs81IMBcztIw0LJNf8fXyB+OD5k
	KK3xRD/v9wIfwrjbm8/q8v0HSyjDrNaQIOuaAmGg0DtOPnwwLvtbPJSGGpFkn9plXP0zF3SkSTkkr
	DAKa+S9u7T6pJw12XRvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r88RM-006g1W-2O;
	Wed, 29 Nov 2023 00:28:32 +0000
Received: from mail-oo1-xc30.google.com ([2607:f8b0:4864:20::c30])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r88RI-006g0A-2O
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Nov 2023 00:28:30 +0000
Received: by mail-oo1-xc30.google.com with SMTP id 006d021491bc7-58ceab7daddso2973828eaf.3
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Nov 2023 16:28:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1701217708; x=1701822508; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OMYRcf/Kii/rrCclUYaD6+8KP9DIOITQj8zQjAaRv7g=;
        b=XIake4r/LnNqfR6yMWekqmBrJTpvIgSTQgrhEsTPUI2jp/wabTPMzTkLlr9ya05n0D
         wj8GnNqTCtUNb3JY77sxv9oKI5v5qx6n3CK/cIPWt2c5Nu+NCjezB9ht7DJMTOEIm6ur
         YmRCNGEO0mWombTkcicpB1pHu4uLpo5/lyLAPF+fX4CfxZGeo/tShORXpC/HV1oOnce7
         Fh5XYsdvoitsWtJXn8o2A8GAqTCABL0vkcpRPjUAtuULkS6DWMg6rXqLUoJo1mv6zLaN
         R3oN9v+fGRTP5V5n0Foha0MbyvkqO0I7BY1hpBqxkOwj1j9regeiqif/HXslGsMBSomE
         7u9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701217708; x=1701822508;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OMYRcf/Kii/rrCclUYaD6+8KP9DIOITQj8zQjAaRv7g=;
        b=gcFUoO09LRIRnOab2vg+ROe46qgJ+aT1syF/0r7g3oCWIRGR4JuIwvW/NmDBOlp3I7
         u3sNqN1Ghpte+MEOpA3b5J9JieKW2TcPc+DH6DppgF4bhKw1S88dY5An9dV2bczT8QFC
         4hR1nE8vtZrpkCUz02MjEBJ2AU3Sh8orFKfqk0GYN96mvD5W7Xp/gFGC2I6O7uBqKvdP
         nDIHFjdNGZ9hdLcD5fr4iDK6slybjesIGW7PA3nCLLPTpBavTdWawDHyyvx+DDFkfkIe
         DFdnc5TxxZJWU3KxTwT1jg2BN4haQ1vpCrx0pY+mV5NsgC3Ljnmo4hGdjol8jFVNfBxl
         oXRg==
X-Gm-Message-State: AOJu0Yz6HbCb6abUL8OzaCocEXg+/fmdyC+r1OCgkq7l06D1BdTQHjQf
	YycyDH+TiuoIMIEZdBo/Hckn0A==
X-Google-Smtp-Source: AGHT+IHxOFYr1Wu9Fd6OY7DYtdTti5/c4rkTAyn2SfjWCS9pDJNiXdB/2NGtfvjIa+mQCcwPiiU58Q==
X-Received: by 2002:a05:6820:1504:b0:58d:97fb:cce9 with SMTP id ay4-20020a056820150400b0058d97fbcce9mr7193926oob.0.1701217707699;
        Tue, 28 Nov 2023 16:28:27 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-134-23-187.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.134.23.187])
        by smtp.gmail.com with ESMTPSA id l5-20020a4ac605000000b00581e090fd1fsm682626ooq.8.2023.11.28.16.28.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Nov 2023 16:28:27 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1r88RG-005k2k-DG;
	Tue, 28 Nov 2023 20:28:26 -0400
Date: Tue, 28 Nov 2023 20:28:26 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Yosry Ahmed <yosryahmed@google.com>
Cc: Pasha Tatashin <pasha.tatashin@soleen.com>, akpm@linux-foundation.org,
	alex.williamson@redhat.com, alim.akhtar@samsung.com,
	alyssa@rosenzweig.io, asahi@lists.linux.dev,
	baolu.lu@linux.intel.com, bhelgaas@google.com,
	cgroups@vger.kernel.org, corbet@lwn.net, david@redhat.com,
	dwmw2@infradead.org, hannes@cmpxchg.org, heiko@sntech.de,
	iommu@lists.linux.dev, jasowang@redhat.com,
	jernej.skrabec@gmail.com, jonathanh@nvidia.com, joro@8bytes.org,
	kevin.tian@intel.com, krzysztof.kozlowski@linaro.org,
	kvm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-doc@vger.kernel.org, linux-fsdevel@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-mm@kvack.org,
	linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev,
	linux-tegra@vger.kernel.org, lizefan.x@bytedance.com,
	marcan@marcan.st, mhiramat@kernel.org, mst@redhat.com,
	m.szyprowski@samsung.com, netdev@vger.kernel.org,
	paulmck@kernel.org, rdunlap@infradead.org, robin.murphy@arm.com,
	samuel@sholland.org, suravee.suthikulpanit@amd.com,
	sven@svenpeter.dev, thierry.reding@gmail.com, tj@kernel.org,
	tomas.mudrunka@gmail.com, vdumpa@nvidia.com,
	virtualization@lists.linux.dev, wens@csie.org, will@kernel.org,
	yu-cheng.yu@intel.com
Subject: Re: [PATCH 00/16] IOMMU memory observability
Message-ID: <20231129002826.GG1312390@ziepe.ca>
References: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
 <CAJD7tkb1FqTqwONrp2nphBDkEamQtPCOFm0208H3tp0Gq2OLMQ@mail.gmail.com>
 <CA+CK2bB3nHfu1Z6_6fqN3YTAzKXMiJ12MOWpbs8JY7rQo4Fq0g@mail.gmail.com>
 <CAJD7tkZZNhf4KGV+7N+z8NFpJrvyeNudXU-WdVeE8Rm9pobfgQ@mail.gmail.com>
 <20231128235214.GD1312390@ziepe.ca>
 <CAJD7tkbbq6bHtPn7yE3wSS693OSthh1eBDvF-_MWZfDMXDYPKw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJD7tkbbq6bHtPn7yE3wSS693OSthh1eBDvF-_MWZfDMXDYPKw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_162828_790515_B7832DFE 
X-CRM114-Status: GOOD (  17.26  )
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

On Tue, Nov 28, 2023 at 04:25:03PM -0800, Yosry Ahmed wrote:

> > > Right, but as I mention above, if userspace starts depending on this
> > > equation, we won't be able to add any more classes of "secondary" page
> > > tables to SecPageTables. I'd like to avoid that if possible. We can do
> > > the subtraction in the kernel.
> >
> > What Sean had suggested was that SecPageTables was always intended to
> > account all the non-primary mmu memory used by page tables. If this is
> > the case we shouldn't be trying to break it apart into finer
> > counters. These are big picture counters, not detailed allocation by
> > owner counters.
> 
> Right, I agree with that, but if SecPageTables includes page tables
> from multiple sources, and it is observed to be suspiciously high, the
> logical next step is to try to find the culprit, right?

You can make that case already, if it is high wouldn't you want to
find the exact VMM process that was making it high?

It is a sign of fire, not a detailed debug tool.

Jason

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
