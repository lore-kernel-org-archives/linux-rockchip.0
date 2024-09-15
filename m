Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 082C8C35FE4
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 Sep 2024 14:09:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZPWKbHiSd8HPrfW54P3lmaA2WuXTXEKDgWrCfPphUzs=; b=vEjUL2IYOAY1CR
	n1t/t0bB54o0/NdSu6Pe41Rdggq3KBBCVmXt9ysQX+3Jn8hH4rxhZo59mPHe1Cb6WwWj2Dbf0+DEP
	UzKWEvsq8T8lCSTNx3aKBRp0PwsKToLPO9fxxdtC8px40knqsiII0c2krN8V+/M5/sHmCFnZZ/3ng
	cLerJeQjB1ugjBZWdNeSqzmg+7v4N3UV5b5XwEFBc6nDrqTTFg6vFgehvWzjyD2bBhVoj5b3/wc5k
	zLXsT6+0LhlzXMyD1csl48lKph/lgOQpCD2EtsZgH++ZFri+bH3WxlUkpr8yMEAWjWy2mifdIYPyf
	KLsrrm3R3zTt0hBGABLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sppwD-00000002B8W-0ZZc;
	Sun, 15 Sep 2024 14:09:17 +0000
Received: from mail-qv1-xf35.google.com ([2607:f8b0:4864:20::f35])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sppv6-00000002Ayl-33qu
	for linux-rockchip@lists.infradead.org;
	Sun, 15 Sep 2024 14:08:10 +0000
Received: by mail-qv1-xf35.google.com with SMTP id 6a1803df08f44-6c355155f8eso19840966d6.0
        for <linux-rockchip@lists.infradead.org>; Sun, 15 Sep 2024 07:08:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1726409287; x=1727014087; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qETOmqLs3VcWBE6fq/NLpP/VdMfGfLvWYa4naTceEbU=;
        b=dLIas+8ZXSCB6d8OGOz7PeNSJavD2PPsFbYVQua+4HBvCU4njurMarORaxedz+aIr4
         Ad+wYspxWr5VVz+KYnYTK+tdsPmcgfK9JJ4XvdklOfW4JaEFe2Jm85WXP2zPf4PL5WXw
         6bfOIPGyhMgiVkzWNn+EF2dk3Q6WWEjI3m+3RGL23YGErsSNGwJtq6Msz2oKfjEJKZpn
         a4w17/Qi/Ol4FZWeP3DQgJNXMD7HG0M1nHUIBEc4zmiuyrsdU+rzWgCDVzxlz7pny010
         7pJ+B2e+yd7RVLoOzLmiT7mw5AFpQPg4Fnx605YqMSCPiWqCsRPvllcXq+NNISP9KhlS
         M+fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726409287; x=1727014087;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qETOmqLs3VcWBE6fq/NLpP/VdMfGfLvWYa4naTceEbU=;
        b=ar8Cp6yd+XVuF7Yin4OcXVH2nfP6OapOXkcwDDltOEhFFFWYo+Tx1Yj7MThnwj49cE
         TgYaPOBPyK92AdCd0Pww2yxB1TYXGRzY46Z9pHf4h4nQ1iaI4p4OtICqF+9n5jg2jflp
         G0iIBkM0oBn38AhQ9uymLv3CpPZFBwJ/UrQTsbwRldH4GQe32gpRzKnYf6wO6EObqwmZ
         5h6DeTM8IJK5keM21Nvptb4gc7o7kkFTlY062iDKTRdrWeU6MqFpoKY8ksYLjBdkxCIo
         9NCspu1Rahc2QlbBK1AMMiaXOYGs5UBPxW3fh6rqYT+qNy+qmezMVjvLD1qtkoZ1Avt3
         kDEg==
X-Forwarded-Encrypted: i=1; AJvYcCUgOb0L2gPNAIznUtGsQzbda6b82OU9KOLJfscHJWRwt/Cj528+JXQO/WcaGbUpmBLvfjSahhUpY8/FAuaVcA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwqPwTGqIECwo7192LWW694NlkTIhDqIJ68LxqBkxs97wQblOne
	1sfrgMm9DClZfKgw7kRmrSYJtG5Yro8BIrQ4yUZF55AvuiKjbzVH+3dQ89GdLrg=
X-Google-Smtp-Source: AGHT+IEGScRXWkjCa1MsukJtaEHzEo9sxiP6ZOXcwDMa/t01rqjqte/GHdDfO4BuPAC0Ip8flPeYYw==
X-Received: by 2002:a05:6214:5a07:b0:6c5:5326:18a5 with SMTP id 6a1803df08f44-6c57dfb94a0mr155649476d6.28.1726409287152;
        Sun, 15 Sep 2024 07:08:07 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-68-80-239.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.68.80.239])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6c58c632f7bsm16033696d6.37.2024.09.15.07.08.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Sep 2024 07:08:06 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1sppv4-007h2G-0a;
	Sun, 15 Sep 2024 11:08:06 -0300
Date: Sun, 15 Sep 2024 11:08:06 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Lyude Paul <lyude@redhat.com>
Cc: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Lu Baolu <baolu.lu@linux.intel.com>,
	Karol Herbst <kherbst@redhat.com>,
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
Message-ID: <20240915140806.GE869260@ziepe.ca>
References: <20240902014700.66095-1-baolu.lu@linux.intel.com>
 <20240902014700.66095-2-baolu.lu@linux.intel.com>
 <a43c31da6a6989874eb0998dc937d7a611ec542c.camel@redhat.com>
 <20240905132459.GG1909087@ziepe.ca>
 <243808ad949823a0d64cd785ed05a375ccdba096.camel@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <243808ad949823a0d64cd785ed05a375ccdba096.camel@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240915_070808_799091_1FE54EE9 
X-CRM114-Status: GOOD (  10.10  )
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

On Thu, Sep 05, 2024 at 12:26:31PM -0400, Lyude Paul wrote:
> I did take the one patch - but I'm happy to push the others to drm-misc
> (provided they all get reviewed. 2/3 seems to be reviewed already but not 3/3)

Did it get lost?

$ git reset --hard next-20240913
$ git grep 'iommu_domain_alloc(' drivers/gpu/
drivers/gpu/drm/nouveau/nvkm/engine/device/tegra.c:		tdev->iommu.domain = iommu_domain_alloc(&platform_bus_type);

??

 drivers/gpu/drm/nouveau/nvkm/engine/device/tegra.c |  4 ++--
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c        | 10 +++++++---
 drivers/gpu/drm/tegra/drm.c                        |  5 +++--

Now we have the other two but not nouveau?

Jason

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
