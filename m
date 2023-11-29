Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59252C4167B
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Nov 2023 21:37:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UKde6KV/hjJE3oZdt7l4ykMbHQ5O/KNqVNQYH/dqkxU=; b=OcC5MKwPoHYfSO
	iYOnI2TZtDW48JaUnJzVE31YfYgMPmdY+zHz2vVBxyrVx1Iio/PxSd7+POoVnvRj+478DXswsdhz2
	M79b8vbqoWTjXcGxpXA8g0U9lwi3gzAkZ1EWkfTTXl4avp9bWw77mL597Xxm5f1gdKdSs9goDCoZl
	zLnA+ivZ+ftF8BQCLBQkJx5ZPXowj628O3WryJLfbPP3MVX+8FLZoZgj7KSC/3VFv1APqE6CgxtGh
	F4rfGllECx73ivNKrIbSQq01Exk7uy5ZXaME6giVF9E+ApuYrrwVOxCrADp9uJF9bQ+7hh55hN5di
	j8rDfsxsBGUjpqxClVOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8SEp-009M9N-0n;
	Wed, 29 Nov 2023 21:36:55 +0000
Received: from mail-qt1-x830.google.com ([2607:f8b0:4864:20::830])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8SEk-009M81-36
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Nov 2023 21:36:52 +0000
Received: by mail-qt1-x830.google.com with SMTP id d75a77b69052e-4219f89ee21so1442671cf.3
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Nov 2023 13:36:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1701293809; x=1701898609; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RKdw1vp5oLSx4gO3m1/rl4eR0j44oWuSmpeWEj8OyEg=;
        b=TqlLIRlWMNQlKPMBGuMKZpJS3HrLT2RonO9CGzBbqlIbUEZvkfNJ1CUSSensUDwcAr
         j+/hPSXCNIijzB22tUkA1tBL8NFM+smdJZgpqxxW1MJZx7rg13sWccOD3Xg4l7ZbffIf
         n3+FuNdiRiOaqd75ANEOVdbU6JqOHL3fpWmgNo65mcHrcYACyjnCjPnVbgy7O10yZhHp
         VXRwyytJz6IK7utNoy8NZ1YeGAVh1WUbP2sfLakn9evjtIKx48NIMLrIGrGhjShsceM2
         EVXHMpNAE85yg+QQ1q7jJm4WViuLcKWUf/eJ5hLDx/kNKn6CThd2gWM1xZ33orI6bojy
         Qh5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701293809; x=1701898609;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RKdw1vp5oLSx4gO3m1/rl4eR0j44oWuSmpeWEj8OyEg=;
        b=WLTqMtaivrQRlSyQLnQlM3uv724ke944D+t/cnLOp9/p/RqKyYjDWrPZcxEDRbTtfS
         8eZdZHrk5VEo6Tgj2gHjo52CHYQaqDIozwTHNDUgPWF0QLummaiynnrIk7gcWlbyJNor
         2CYjlXKDdk+N8yCxc32N3T0a39MSSEnbKvczNcd292s7i7GZ90UEEzOD0xq6WUKwfaDr
         UDMgvw5GGUnbwtlqzY581G1nfDrjPIvLZ5ExQ4r11T4ibDIVINQa9qsOg4br9nDN9QL4
         wwQ2nw/dNF3kn89J7V+M8XjY34BQKg4OJPDR/+NDgbepQI63rrbyVqvw96WLsOpbgmUJ
         uOGg==
X-Gm-Message-State: AOJu0YxP6ESZxXiD07DsAZWEIPNlX5jzdUbWaZkuxVlYZGwGv588TUk4
	TXm7Ed7udFlOWILSWNhUb5BY2dEadFy5IMfIoCAvKQ==
X-Google-Smtp-Source: AGHT+IH1s42XbpuMqfnRK8jqZvUrCxoQ7Or7Gzckcwkn35i1gPeN3cfJsGoJeMBusJpvpuIBcFrnBzJ4nZCRPQFGmZI=
X-Received: by 2002:ac8:5c0e:0:b0:423:6e2a:1c36 with SMTP id
 i14-20020ac85c0e000000b004236e2a1c36mr29092766qti.35.1701293808838; Wed, 29
 Nov 2023 13:36:48 -0800 (PST)
MIME-Version: 1.0
References: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
 <20231128204938.1453583-17-pasha.tatashin@soleen.com> <20231128235357.GF1312390@ziepe.ca>
In-Reply-To: <20231128235357.GF1312390@ziepe.ca>
From: Pasha Tatashin <pasha.tatashin@soleen.com>
Date: Wed, 29 Nov 2023 16:36:12 -0500
Message-ID: <CA+CK2bBK=4qbHJG_6B=HSMOXe1vmg7D9TZmsJFhsqVmQau503g@mail.gmail.com>
Subject: Re: [PATCH 16/16] vfio: account iommu allocations
To: Jason Gunthorpe <jgg@ziepe.ca>
Cc: akpm@linux-foundation.org, alex.williamson@redhat.com, 
	alim.akhtar@samsung.com, alyssa@rosenzweig.io, asahi@lists.linux.dev, 
	baolu.lu@linux.intel.com, bhelgaas@google.com, cgroups@vger.kernel.org, 
	corbet@lwn.net, david@redhat.com, dwmw2@infradead.org, hannes@cmpxchg.org, 
	heiko@sntech.de, iommu@lists.linux.dev, jasowang@redhat.com, 
	jernej.skrabec@gmail.com, jonathanh@nvidia.com, joro@8bytes.org, 
	kevin.tian@intel.com, krzysztof.kozlowski@linaro.org, kvm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, 
	linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-mm@kvack.org, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev, 
	linux-tegra@vger.kernel.org, lizefan.x@bytedance.com, marcan@marcan.st, 
	mhiramat@kernel.org, mst@redhat.com, m.szyprowski@samsung.com, 
	netdev@vger.kernel.org, paulmck@kernel.org, rdunlap@infradead.org, 
	robin.murphy@arm.com, samuel@sholland.org, suravee.suthikulpanit@amd.com, 
	sven@svenpeter.dev, thierry.reding@gmail.com, tj@kernel.org, 
	tomas.mudrunka@gmail.com, vdumpa@nvidia.com, virtualization@lists.linux.dev, 
	wens@csie.org, will@kernel.org, yu-cheng.yu@intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_133651_296384_65FD01D7 
X-CRM114-Status: UNSURE (   9.73  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVHVlLCBOb3YgMjgsIDIwMjMgYXQgNjo1M+KAr1BNIEphc29uIEd1bnRob3JwZSA8amdnQHpp
ZXBlLmNhPiB3cm90ZToKPgo+IE9uIFR1ZSwgTm92IDI4LCAyMDIzIGF0IDA4OjQ5OjM4UE0gKzAw
MDAsIFBhc2hhIFRhdGFzaGluIHdyb3RlOgo+ID4gaW9tbXUgYWxsb2NhdGlvbnMgc2hvdWxkIGJl
IGFjY291bnRlZCBpbiBvcmRlciB0byBhbGxvdyBhZG1pbnMgdG8KPiA+IG1vbml0b3IgYW5kIGxp
bWl0IHRoZSBhbW91bnQgb2YgaW9tbXUgbWVtb3J5Lgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IFBh
c2hhIFRhdGFzaGluIDxwYXNoYS50YXRhc2hpbkBzb2xlZW4uY29tPgo+ID4gLS0tCj4gPiAgZHJp
dmVycy92ZmlvL3ZmaW9faW9tbXVfdHlwZTEuYyB8IDggKysrKystLS0KPiA+ICAxIGZpbGUgY2hh
bmdlZCwgNSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Cj4gWW91IHNob3VsZCBzZW5k
IHRoZSBzZXBlcmF0ZWx5IGFuZCBkaXJlY3RseSB0byBBbGV4LgoKVGhhbmtzLCBJIHdpbGwuCgo+
Cj4gSmFzb24KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
