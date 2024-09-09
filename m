Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA4A1ECE579
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Sep 2024 14:01:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iJs7FHYNMoRLgEjfLNsg4J9LbWLkB3Dx9oGw8vkCA78=; b=TLTI3ysI+Npm9V
	I4JSvq1QeEOHQPEd729j8+N114+ZiMwfL8Ba2NlITFBp8gKyU1RxV25MnkjwnIxFWEakGLIZrjkXq
	4O6lQ0GR3HCTyOlVcbEV1gteRvOQ0LycCRQN1k95azn5a8sO8xFyuPBLALtX7u7i4b4uyny5i376O
	vWU2djsWwiMPSpgVgcYyO+b99AmL3OxKLyOW3PhHDttfrTNPTC3xTf9VCwtmVHcxqHLZDCm5faEXn
	ppuBJW3KmAbHviJLcb/vOyzqXU4PJG/3Rl+MvjZF13bQWQ8e6Ei6tceCj1CDtTb+qW/i+7LNp6046
	CEo5vRQrAaD5QziQsKjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snexZ-00000002Bft-1kpr;
	Mon, 09 Sep 2024 14:01:41 +0000
Received: from mail-qk1-x731.google.com ([2607:f8b0:4864:20::731])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sneo9-000000028hU-0Afl
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Sep 2024 13:51:59 +0000
Received: by mail-qk1-x731.google.com with SMTP id af79cd13be357-7a9ac2d50ffso154498985a.1
        for <linux-rockchip@lists.infradead.org>; Mon, 09 Sep 2024 06:51:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1725889914; x=1726494714; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yj7+HNUhZ42zQ7e1zqARXsVl9jwOBImumTxZ0tEXKC0=;
        b=iyqpCuI/EaZsRMQXC8QmqndGT2EV0tN61R5huUuZoff1bKFBuWGuW2qrnSPagKC6P1
         8eibdGKECHQZW6umxneWPfGGTaoEQtDA43IV5q6gQg5qrmvunsSlt1aqPOg21eg9FZzI
         XLOm4atod2JisOy0x8avKqQvdClb5hztLAq4eplC2wmOTzuKaNav34nOrfxcmqgtFKfb
         FgdAKIwGHf99V8lJyNs9jwUIAw0uhj8SKgGsHPkJvedwUlCmrqk5IQraLLKISVJsMdyD
         5/wL2Eay+L/XoQI3GXlYg9r+lgDEfCGE5oHSwoWxHppz3VjEPiwfAPgb78c4YedGBzqh
         IuCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725889914; x=1726494714;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yj7+HNUhZ42zQ7e1zqARXsVl9jwOBImumTxZ0tEXKC0=;
        b=DaNpH+yX3bLQKMqaDavP4zh+5SV0OUI6q+PLfjm4SbQr3kpxiQsH+/yO334s7WqBZo
         gYdtABhHzqDozi9OqBPlHSFl095mPBia/TWV/W4B01Vr6fG5pqd9StBAQKjvVXAjdLsk
         S7cIBQhWDjvjqSbMn/GL7fKM5Xj5+zSJ8nrGasSIrJssWEMVnVf+mUH0LFgFJpna9Sx9
         Ht43N6YVUqC/Rj7oda3I617GzvfxiZGVMRdFpqow5hXCoecYNBp+O2wsCeDT2CV0SaKN
         +B/ZY3FwzgT6TRp7ebVMSPNegKM4UtlWNub96+ALorZTvc8urxakzxTB6Rn1Uc7IJ2ZJ
         F7BQ==
X-Forwarded-Encrypted: i=1; AJvYcCX6R5Cy9s70RhG3Gv0tPwONpR00m0vdK1xDjmJCxeaeDuYVWvsBSmp9kxR++qSAzjCTDTiQnpWT6nT7AtBKZw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwVwW4w5JmGNjZJx9oKYa4Se8FNltCI1m+MdPkvFmGqciKfQnJL
	KsOOAoX2RZ2rEFwW69QmXEmU1YllJhDTDg089qiAzOq4D49ESiuNB8nAp9UmQSk=
X-Google-Smtp-Source: AGHT+IE32skbFpKLVZQvvKRGIbOT+Lk4glz9hLQYid2tc58+roSuuIWcYGTezpJn4PsYDlHvh90irg==
X-Received: by 2002:a05:620a:24d3:b0:7a9:b80b:81e with SMTP id af79cd13be357-7a9b80b0f7dmr521832985a.10.1725889914151;
        Mon, 09 Sep 2024 06:51:54 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-68-80-239.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.68.80.239])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6c5343295f7sm20958506d6.21.2024.09.09.06.51.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Sep 2024 06:51:53 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1sneo4-000es1-U3;
	Mon, 09 Sep 2024 10:51:52 -0300
Date: Mon, 9 Sep 2024 10:51:52 -0300
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
Message-ID: <20240909135152.GA105117@ziepe.ca>
References: <20240902014700.66095-1-baolu.lu@linux.intel.com>
 <20240902014700.66095-2-baolu.lu@linux.intel.com>
 <a43c31da6a6989874eb0998dc937d7a611ec542c.camel@redhat.com>
 <20240905132459.GG1909087@ziepe.ca>
 <243808ad949823a0d64cd785ed05a375ccdba096.camel@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <243808ad949823a0d64cd785ed05a375ccdba096.camel@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240909_065157_273831_37862454 
X-CRM114-Status: UNSURE (   9.17  )
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

On Thu, Sep 05, 2024 at 12:26:31PM -0400, Lyude Paul wrote:
> I did take the one patch - but I'm happy to push the others to drm-misc
> (provided they all get reviewed. 2/3 seems to be reviewed already but not 3/3)

The whole series is acked now, can you pick it up please?

Thanks,
Jason

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
