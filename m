Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77897CD5BC7
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Sep 2024 13:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fNrkMOv4ch2JssWubNlhm8MWYCETru/Gh/ptljGcWPM=; b=z763qQ9Q3T5ZSv
	cIY6mCc3wnfG6awqN+84tTIEFC0+uetYygUAzg+gpx7hUF48HgHoW10RzHthbQUmCD76TrEZ4ppOK
	y03XHiqZVX8lGDmRe6mw+d1dcKTXsRs20gfkDHyReRIrbeji5oP0Kw21SwFVdnDu06jZdJDdlOCLb
	Zo9plKxVuaWsOYYOPfhms1MxpAS3hKgs+NUwu88dmmnqURIYkPDaCasauiN1HtOoGC8farLLo7BTz
	aPde9lZIXzro3IC8nuCnidiv3WdMl+ME84YbhYgIzZt+IK4OofAG8KwCm53ZxnelRI0n+g5xtEVl4
	hmv84MfNAXow6SfJ/9VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smCVp-00000008WwY-2czs;
	Thu, 05 Sep 2024 13:27:01 +0000
Received: from mail-qk1-x72f.google.com ([2607:f8b0:4864:20::72f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smCTu-00000008WYd-0Dve
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Sep 2024 13:25:04 +0000
Received: by mail-qk1-x72f.google.com with SMTP id af79cd13be357-7a816a9007cso183464085a.0
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Sep 2024 06:25:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1725542701; x=1726147501; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=QQZ/prAHSJzNYvQ41aDnul/jxJL4VTE2Yg49JItkgwg=;
        b=FoCiKq5LVl+0n+SVrqFqqLTj6MjwFSlZ0T0afGlJvtfDJxNexvwIQq8ZvlUFoDCYoP
         4TPg9ntL0Rp/5TTyr0yylOfeXKdgCXu5iDjvBaBvEgYd/4vH3RxqJAtykg32QasyHr4B
         XHa4RW4shb9o8Y42J2veGvBd0HCrqQvxVefcmzvZEk90Ygi5Hc+AaZN1+WyokN8J+ytA
         tT86OAxuQvcxL6eYPQvTloaPmIGqgkDXfG8L04Iem7SALgdDsJK1Ny2EJ1P+QMrW67cn
         3PS7v90pydKtDEtQ9R7OYAKnDKMvsTSwCAe9C7dIi29eGWiOGdhM2sWC1HDgjRh1kkL2
         enZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725542701; x=1726147501;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QQZ/prAHSJzNYvQ41aDnul/jxJL4VTE2Yg49JItkgwg=;
        b=KQRVQvSMtRe6GTLzKGEY6dIFVnfhL95jmP/0l9FfkparhZiQzbZ4a0Ar/SptvFuxuL
         +v13COzX38H2HrC9dxQlYrD+gUydteaYSG+LKX/6zxqwbSkOboKSuFJHrh8idNRRP6Dq
         9o86bBAXTrHJ8Xyem9OCDKC53qZ6pD2ENsulh98GfqQOB1K+mISeMNFen0IFmf7dSjS0
         CTkTLUftUv3V1PhBXwKaAlVamR7gpPdo4LahjPyEwHRp7uLFRqdyexlbhxvwYpXcccr0
         dxOGilUKVXGRUAKMdjriU0dlC72UjJYWhxchpMO89Xz9THPNVSZOHuY/ycABNpIuXQiv
         nFgw==
X-Forwarded-Encrypted: i=1; AJvYcCWC4tZeTCCu5MZDXeptEPVd+CFZW31C9VPCYv8gr1zjSnPbB7a1aB+4dpOtspAoibIFv0KT+1Mg+gSr1QuzYg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzikdQfxKXqfSEOscJCQjl0fL+zDxoryI93NyaKTkGncMQAZ4/A
	Wzt+Vpt0Zgpo2OHm6I1BwTYkt0Qepc51pb375FhqehTs2teoi1PyCSE3jBfw/Pc=
X-Google-Smtp-Source: AGHT+IEDu6pY51+TBXvcoJ6tFwe8exqs/WY3csyGmyVmQ8kYoFXlzHQS0zH+YsMUz1IR39QgtqrhaA==
X-Received: by 2002:ad4:44a8:0:b0:6c3:6799:dde3 with SMTP id 6a1803df08f44-6c5191197b4mr91124026d6.23.1725542700794;
        Thu, 05 Sep 2024 06:25:00 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-68-80-239.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.68.80.239])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6c5201dff49sm7525176d6.15.2024.09.05.06.25.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Sep 2024 06:25:00 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1smCTr-00CTrV-Rv;
	Thu, 05 Sep 2024 10:24:59 -0300
Date: Thu, 5 Sep 2024 10:24:59 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Lyude Paul <lyude@redhat.com>, David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>
Cc: Lu Baolu <baolu.lu@linux.intel.com>, Karol Herbst <kherbst@redhat.com>,
	Danilo Krummrich <dakr@redhat.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Sandy Huang <hjc@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Mikko Perttunen <mperttunen@nvidia.com>,
	Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	Kevin Tian <kevin.tian@intel.com>, dri-devel@lists.freedesktop.org,
	nouveau@lists.freedesktop.org, linux-tegra@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org,
	iommu@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] drm/nouveau/tegra: Use iommu_paging_domain_alloc()
Message-ID: <20240905132459.GG1909087@ziepe.ca>
References: <20240902014700.66095-1-baolu.lu@linux.intel.com>
 <20240902014700.66095-2-baolu.lu@linux.intel.com>
 <a43c31da6a6989874eb0998dc937d7a611ec542c.camel@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a43c31da6a6989874eb0998dc937d7a611ec542c.camel@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240905_062502_152578_5B0D1369 
X-CRM114-Status: UNSURE (   7.62  )
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

On Wed, Sep 04, 2024 at 03:06:07PM -0400, Lyude Paul wrote:
> Reviewed-by: Lyude Paul <lyude@redhat.com>
> 
> Will handle pushing it to drm-misc in just a moment

Did you just take this one patch? 

Who will take the rest of the series for DRM?

Jason

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
