Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D160CC4167B
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Nov 2023 00:03:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VQqP3C/6PxjQXqydPYFpB/QWfPz+Qwz5dghMOsuAyFY=; b=BkQz07Wg4JSdJA
	Yt0bcRUKHwZmF2btw5s/cxuj4AEyRFfdMpLdd5/9EisjHadW1m0LyX//gM/dcyJgyfJwH5ZtJZMCW
	PRDPPU4WR8dZJaTulmMmdbTDgQ0bkNoL+f3mzW3G40LTYoiq5gB/puQx9JoqJRDa787l+Kvx+o/SP
	W6xknRo3t1DFL8E/BjGpjTFGIxhn5gbj4VAVEs5bSqjyu8ZwpWFo0Z8+VHeCXS28TGXXOVboWUhXE
	+8uOD+fDT938gURCGYkgr0jCNmWDL2z7nsGK/OJlOohf6SXWTW+3P+1GlwmUuWVf/KRvWZdy+Y7xb
	zLQmoaYiVLwADCneXf6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8UWI-009Y2t-1i;
	Thu, 30 Nov 2023 00:03:06 +0000
Received: from mail-oa1-x35.google.com ([2001:4860:4864:20::35])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8UWF-009Y1H-0f
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Nov 2023 00:03:04 +0000
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-1fa22332ca1so688409fac.1
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Nov 2023 16:03:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1701302581; x=1701907381; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iqaBGyfV5ntKwlfmxQAMawFx8i861c6WUBXKE0OU9B4=;
        b=IZG2tKXm0TI/oZiBfGC1O8/VI74m0nDOvZtTk9TQ52MOf2aLNCqJ0UuuCAKT7ZI88i
         6hLALKPlDzdJFUjo5Ou/n4MhrD/ifTDZePLIm5hph4jIZQb/7jGMP11Is9d/SJWPwPnR
         yAxKuWUSU5+lvnFxcjbRzM3TY/F/bE6waFlDRKeIycIF0Qwdtfdfn6/rQlPlFHXa1+vY
         AnjpCrVqll5l6tolC2v50LzJ/tZpDHniifapUrjy9N7SaYFkIvnS2bkxbYYG4TF46XMV
         ljMIKH8VGD3UQxgA5AG8/4ld9Sf3dWRa2JkDgY8BzhCt4PrUJ4u0oiSGMK6TTYxJ5R9P
         0qwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701302581; x=1701907381;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iqaBGyfV5ntKwlfmxQAMawFx8i861c6WUBXKE0OU9B4=;
        b=NxSr5fWrG1XI5fP9sq6VxpqnyMPajhlxcN5D855B8mMTT95w94anhLSvTBxHj5fWTr
         aZQ2p8de4lSO6UIz+B7CFSPyt9cy56dyiY6TR7rWiy/UGSQQTpCz7srGnxrik0LNn54S
         vD8sLC7050cOloeKme7o4QQD8heItp9qZ5xYoAwXDrJXTGBjXooyHP50C1N8cB8HEE6F
         0QAiIcPWLScLqKjRCGfIqv7qkhvGe10ckzFR7g7+92twN5ptpRK+x7257zjIZ5h2L9ty
         jSaIBUAf3F8L7JtPfVxIA86ClMWr/OjanKAu0HMGdVxG/ZOY8ITCbJBu97SqefA5XOvD
         j8ow==
X-Gm-Message-State: AOJu0YzhqkH550KkHfK/MzWBhdgil3ktVpm0F+dewGl/x0/nyBFtDpa1
	o24FMthdMO5vqQs2GvCUrrdVpA==
X-Google-Smtp-Source: AGHT+IH9mJrgeBca3QDmdqlZSO64E6UWuuZZMjhMVoz9rZsKA5pWXiF1aXxzzo/4HFbYhkfRvbso7A==
X-Received: by 2002:a05:6870:1603:b0:1f9:eb7e:6621 with SMTP id b3-20020a056870160300b001f9eb7e6621mr10166623oae.18.1701302580971;
        Wed, 29 Nov 2023 16:03:00 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-134-23-187.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.134.23.187])
        by smtp.gmail.com with ESMTPSA id ry4-20020a056871208400b001efa3446d4esm3609159oab.43.2023.11.29.16.03.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 16:03:00 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1r8UWB-005qQQ-Hz;
	Wed, 29 Nov 2023 20:02:59 -0400
Date: Wed, 29 Nov 2023 20:02:59 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Pasha Tatashin <pasha.tatashin@soleen.com>
Cc: akpm@linux-foundation.org, alex.williamson@redhat.com,
	alim.akhtar@samsung.com, alyssa@rosenzweig.io,
	asahi@lists.linux.dev, baolu.lu@linux.intel.com,
	bhelgaas@google.com, cgroups@vger.kernel.org, corbet@lwn.net,
	david@redhat.com, dwmw2@infradead.org, hannes@cmpxchg.org,
	heiko@sntech.de, iommu@lists.linux.dev, jasowang@redhat.com,
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
Subject: Re: [PATCH 09/16] iommu/iommufd: use page allocation function
 provided by iommu-pages.h
Message-ID: <20231130000259.GS1312390@ziepe.ca>
References: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
 <20231128204938.1453583-10-pasha.tatashin@soleen.com>
 <20231128235254.GE1312390@ziepe.ca>
 <CA+CK2bC=vMU54wXz1GSzpOcLFCuX5vuE6tD49JF8cMbz4tis-g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+CK2bC=vMU54wXz1GSzpOcLFCuX5vuE6tD49JF8cMbz4tis-g@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_160303_282269_5C11EEFA 
X-CRM114-Status: GOOD (  19.38  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gV2VkLCBOb3YgMjksIDIwMjMgYXQgMDQ6NTk6NDNQTSAtMDUwMCwgUGFzaGEgVGF0YXNoaW4g
d3JvdGU6Cj4gT24gVHVlLCBOb3YgMjgsIDIwMjMgYXQgNjo1MuKAr1BNIEphc29uIEd1bnRob3Jw
ZSA8amdnQHppZXBlLmNhPiB3cm90ZToKPiA+Cj4gPiBPbiBUdWUsIE5vdiAyOCwgMjAyMyBhdCAw
ODo0OTozMVBNICswMDAwLCBQYXNoYSBUYXRhc2hpbiB3cm90ZToKPiA+ID4gQ29udmVydCBpb21t
dS9pb21tdWZkLyogZmlsZXMgdG8gdXNlIHRoZSBuZXcgcGFnZSBhbGxvY2F0aW9uIGZ1bmN0aW9u
cwo+ID4gPiBwcm92aWRlZCBpbiBpb21tdS1wYWdlcy5oLgo+ID4gPgo+ID4gPiBTaWduZWQtb2Zm
LWJ5OiBQYXNoYSBUYXRhc2hpbiA8cGFzaGEudGF0YXNoaW5Ac29sZWVuLmNvbT4KPiA+ID4gLS0t
Cj4gPiA+ICBkcml2ZXJzL2lvbW11L2lvbW11ZmQvaW92YV9iaXRtYXAuYyB8IDQgKystLQo+ID4g
PiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+Cj4g
PiBUaGlzIGlzIGEgc2hvcnQgdGVybSBhbGxvY2F0aW9uLCBpdCBzaG91bGQgbm90IGJlIGNvdW50
ZWQsIHRoYXQgaXMgd2h5Cj4gPiBpdCBpcyBhbHJlYWR5IG5vdCB1c2luZyBHRlBfS0VSTkVMX0FD
Q09VTlQuCj4gCj4gSSBtYWRlIHRoaXMgY2hhbmdlIGZvciBjb21wbGV0ZW5lc3MuIEkgY2hhbmdl
ZCBhbGwgY2FsbHMgdG8KPiBnZXRfZnJlZV9wYWdlL2FsbG9jX3BhZ2UgZXRjIHVuZGVyIGRyaXZl
ci9pb21tdSB0byB1c2UgdGhlCj4gaW9tbXVfYWxsb2NfKiB2YXJpYW50cywgdGhpcyBhbHNvIGhl
bHBzIGZ1dHVyZSBkZXZlbG9wZXJzIGluIHRoaXMgYXJlYQo+IHRvIHVzZSB0aGUgcmlnaHQgYWxs
b2NhdGlvbiBmdW5jdGlvbnMuCj4gVGhlIGFjY291bnRpbmcgaXMgaW1wbGVtZW50ZWQgdXNpbmcg
Y2hlYXAgcGVyLWNwdSBjb3VudGVycywgc28gc2hvdWxkCj4gbm90IGFmZmVjdCB0aGUgcGVyZm9y
bWFuY2UsIEkgdGhpbmsgaXQgaXMgT0sgdG8ga2VlcCB0aGVtIGhlcmUuCgpFeGNlcHQgaXQgaXMg
YSBtaXMgdXNlIG9mIGFuIEFQSSB0aGF0IHNob3VsZCBvbmx5IGJlIHVzZWQgZm9yIHBhZ2UKdGFi
bGUgbWVtb3J5IDooCgpKYXNvbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
