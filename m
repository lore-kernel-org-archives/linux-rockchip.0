Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DBB0CAC599
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Sep 2025 13:02:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fivyt/t+F92qCkgj6CTSatfjXrswPYCVa4MXfmQahnI=; b=iF1TVw2vfDVZow
	Q3Rng8J2sBnG0XhM+Oxv1Ggwq6+QJdiDlswZ1pprJ7ngjdHemM3AxHkeyZXP7dUn1vdANpRLtg0Je
	0UH5KY9FkoMf3hYVjeGqi2igR+EAsV+MqERWZMZmroaxP13XlemJfgfg4kd++MPCDM9fJcnJJQqWV
	GR6gpaS+E0LtaOJf0x0aPgVeET/OVztjthNFMGP63PGcaVQEl1bFedPF6kb1sayZoG7upO2YXKmFs
	nPXQ8GtLdFxYD9tEBhjlfpfyvkaYdBEpGF0FAuun22tOpeZevLn+cNiD5+t2VISlnvajVRPfcnEB4
	CVurJ3okI30f4ExNyK/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyVKZ-00000007rJG-078A;
	Tue, 16 Sep 2025 13:02:47 +0000
Received: from mail-qk1-x734.google.com ([2607:f8b0:4864:20::734])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyVKW-00000007rHr-0nhR
	for linux-rockchip@lists.infradead.org;
	Tue, 16 Sep 2025 13:02:45 +0000
Received: by mail-qk1-x734.google.com with SMTP id af79cd13be357-81999b1e9ccso479174085a.3
        for <linux-rockchip@lists.infradead.org>; Tue, 16 Sep 2025 06:02:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1758027763; x=1758632563; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=U7XVbefYP1T9aC1YC53q5bs8AZBmUU9WkTWwN/oYv1o=;
        b=Q/SqRE5TjnUhWmqwjrfwYKy9tYRLsCqIOCkH3MwmZWVNEUHjy7EBQ5pgE4BymWlxQh
         EqI5oaXph/NIVmtSLe3+fnJUjj2AjWqEiTaRYdyiJ2HSkvO78BvpA+OdehgAkK42odW/
         hxrICGV6mUyaRMafh8RZcrMcDMYTQlNXhKM6Fj/kNqyOgN72vHDkXBXhW3OxLfT1LWTn
         gNqgAUmLV8CamvTJIL2PjH1PMYa5aBNHUUComUWzyVXdCGQoP1sXcjjMXH30YXgb5Yyw
         XFLTsO197VwtOVCB5Q5g75SLCoA9H1711WowD7quEtE7yS2jR4ZuO26KZzmU3hh0leNo
         xHOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758027763; x=1758632563;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U7XVbefYP1T9aC1YC53q5bs8AZBmUU9WkTWwN/oYv1o=;
        b=fgsRNe0GaX7BXfrd+PsecEwIrmZUho2kBbi/Cgb9vms8iq/gohns09kkR2d4DIMKkF
         QCYkYWiZE9xKNOO/tPo6fdLyJksWV4Z4tgdUrX7M1I+6GZB27M7d5L+DwXRneMZMPgwx
         Sili0RwelbThfGop/Q9TffNL8/ByA9suZbiiF7n/TPwHywI7qgRHXqYMVWLnPXAsWskv
         K6wJVay/AcaJJn6SSOmOk6+RjMEbVg/9G9cLjaC9rIi+stwtkXVCpMEZw/abwQkWsK6/
         N5gCVSZ9aqvbD9Ur+c2AMRDMlK/+riJzqvnByKDiS7eM2n9hDlki9l9mMK1h4lG8jh9G
         0i8w==
X-Forwarded-Encrypted: i=1; AJvYcCWzthJBHzbFvM1WBuJI9jxOHPniymTlLUvJ5sgoaRrT2yp6vYvWK5vKlCwZWBlm1piBssp+fqTHpstuFi05nQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy3x/FPJLEtD4otMQ/9qriG6Z8CpycIKvqB4Mly2Jsuek66wNOD
	rejhJ0ZMxt3g0sfpFryVP5lXc4naxz2H0K8pT2t/MGUS7zDcKf+Z50qyHUOpfbFLMvw=
X-Gm-Gg: ASbGncsnXMBZILcZ8y4kCCq9Wtjtx9P9wVOC9CYC4KkKvFil2OslaqzKSKoTWc614c1
	gqF8R6VsMuE2rS7phpK/BGJaY10uwIsjgDPzWrChFI9f/W3CPgGEayhKI4SRjoqwxb6vag1v4w+
	jLQnD+RqlW0F7AH3v0rV4mLXlr71etmb8J9JqQdpDI4Gdcm8bQGWWV9S2keMn0immjM8zBYhV04
	Fix1Kyfu1g3RmxoFgFVd39QnmL5PiJGDnaakrcTFB6dua4YT5R2cnuU9IcVRY4wwQArtEeUc3G1
	KoGL9ZAtv5SBVlKZaX2iphVWqmw1coJJBnRX/OcTql5DyRhlYdPMerz6jHua9jQenZPYyT4x
X-Google-Smtp-Source: AGHT+IGgSNjoagg9mR50jyVvqVknWt7pO/h98DmCtfm4l0bnsXbM49f7ZWlU8/4EiRAMYAi5HACKDw==
X-Received: by 2002:a05:620a:a483:b0:813:4da8:8653 with SMTP id af79cd13be357-823fc1d4cb3mr1861079585a.25.1758027762539;
        Tue, 16 Sep 2025 06:02:42 -0700 (PDT)
Received: from ziepe.ca ([130.41.10.202])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-820ce19d151sm932484485a.50.2025.09.16.06.02.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 06:02:41 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1uyVKS-00000004ePY-3X0g;
	Tue, 16 Sep 2025 10:02:40 -0300
Date: Tue, 16 Sep 2025 10:02:40 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Will Deacon <will@kernel.org>
Cc: =?utf-8?B?SsO2cmcgUsO2ZGVs?= <joro@8bytes.org>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	robin.murphy@arm.com, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, heiko@sntech.de, p.zabel@pengutronix.de,
	mchehab@kernel.org, iommu@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com,
	linux-media@vger.kernel.org
Subject: Re: [PATCH v9 3/7] iommu: Add verisilicon IOMMU driver
Message-ID: <20250916130240.GO882933@ziepe.ca>
References: <20250911155720.180465-1-benjamin.gaignard@collabora.com>
 <20250911155720.180465-4-benjamin.gaignard@collabora.com>
 <vrngq76nnms3jyl5hnxqnkimjc6kil66o6fdyqn5vm3fpovmja@cfynipjw7ktp>
 <694b9ba15cd67f41a38f4a65a3811f035cf8e99d.camel@collabora.com>
 <rt6nvgazcl6mvyy4iuut3n7irf72t7rex2iwabbkuxp7cdvez5@2nanenqgxjdy>
 <20250915225806.GM882933@ziepe.ca>
 <aMkkYU-p2ouknnAc@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aMkkYU-p2ouknnAc@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250916_060244_358280_D5FD02AA 
X-CRM114-Status: GOOD (  20.94  )
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

On Tue, Sep 16, 2025 at 09:48:33AM +0100, Will Deacon wrote:
> > I would strongly object to trying to share map_pages, unmap_pages,
> > iova_to_phys, free and other iommu pt related functions in some
> > limited way instead of helping on the much more complete iommu pt
> > work. Which is what I said to Will, but for some reason he suggested
> > it anyhow.
> 
> If the answer is to convert this to iommu pt, then so be it. My
> understanding was that was still premature at this stage but you know
> better than me.

We are waiting for reviews, hopefull when people return from
vacation. You know how hard it is to wrangle people to review it. But
the code is all done, it has all been tested by multiple vendors now,
many people have projects blocked on it.

If this duplication is really important to you then you are welcome to
help review it and merge it. As is Benjamin

> When I bothered to look at this driver side-by-side with the rockchip
> driver which, despite apparently being totally different IP (honest!),
> is *remarkably* similar, I summarised the similarity in the default
> domain ops:

Presumably there are more HW control bits in the PTE than just valid
that we don't know about..

> I don't think it needs to be one or the other. afaict, these drivers
> should share the default domain ops and if the page-table code is using
> iommu-pt then that's even better.

Refactoring rockchip into an iopgtbl, and making it work with this
driver is quite alot of throw away work in my view. I would not ask
Benjamin to do this.

This is why I offered the compromise that if he writes and tests the
iommu pt version I will carry it and he can merge the driver
as-is. Hopefully in a few months it can all be sorted.

We can then attempt to convert rockchip as part of the followup
activity to try to move drivers to iommupt.

Jason

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
