Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 425FCC07CB1
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Nov 2023 22:00:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qxCvxSY1iwzDEEUEnZ0WO9MOWCLY33xXDLZq9pvjnSY=; b=D9ox4kk+tkHLDc
	3Pej4xQ1Qe3Ipv5HWxrwmFDGAf7lDySGFysmn95rfIp3uQHEud213wW8x+yRUXVEZKmpVtRqhj10r
	wnKhd1mohIBHGkripLgpX8dVnPG5ptm4WMGIVg89/he6kO/zixwd4jv6+jSuM0TMETX395VmBHEkK
	K1zDdqgDQ+Lxl8ZGECChV1xNlxEgSJUHuT6uc5ZeQsny92EISjRFlqqCS0D8RXrcZEuwYM6SQhxYw
	qHmkYS4FP2m/I62k7FMTZMU2b5HA1QrqJxhpBPZwuloJOJb3/MoCnQkiy+Yp1coO95KPuNZrvWGGl
	MU5UKgMpT8g7V/5Z0D2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8Sbh-009OSv-1j;
	Wed, 29 Nov 2023 22:00:33 +0000
Received: from mail-qt1-x833.google.com ([2607:f8b0:4864:20::833])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8SbW-009OMs-1r
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Nov 2023 22:00:24 +0000
Received: by mail-qt1-x833.google.com with SMTP id d75a77b69052e-423e7e0a619so2234871cf.1
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Nov 2023 14:00:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1701295220; x=1701900020; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aiOfm5uGDMrP0UYnHwC5BRUcA0oU3b2DbcdcIFPiI/Q=;
        b=kix6m29SsmRSRtTZjyGo9AMkP6IxL1BFa+3zXAXKEe+laRx/NiZ/BYgKuzStB3s8rA
         guuXSkca+4b+kBBznv1IfnzM+8inJzjcHix4PXtXpxV3Ld+YATKMZWUsT8HUeM8rXy89
         FT0GKEqU+a8Tv5fg58/hz0h9MfDUannhKgz0vnvWYvWH/qkoKVWqdkwftAxwp1dKtj/1
         /0jf7cdZ/MZ+78JGgEJkDiPLiC1T5OzHT5Zd8uHPaoL+/pEplA1BEOleTGfmGEgQOmi7
         kcCJVJTTPRktmD/+C7osTxFdZ51Knj4t4xm859AFVmB30jIFFjtzZPEfGRJsSnSCh2Dn
         6A8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701295221; x=1701900021;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aiOfm5uGDMrP0UYnHwC5BRUcA0oU3b2DbcdcIFPiI/Q=;
        b=oayTfQUpSfb7zvubUpQC64Tl2rQLsyBeH+TBXfWwzK0652cgQrMIQKe3wJSDNmwFOC
         Ji+05uizsg7ugjty2qEy4aHVOHettEslOqhC1z7ZfZgeqXIN8wQ8wvA8l0A3mUrIgaem
         TROyLPRICIerxhuSZNj/xX/hR5n6M470KU283j7/Sbm+LtHw0Y8+COgjVS9jGnUxJ7e4
         UZDzSAo1+2ecaKpXzwkKH77pXmHpZb//nQESOM8XjSWOW3Ilx3mUhgadWdQR0/ldvPum
         eCeiKJ1QD+ye88Flfe2Rkx6MOlk+pxkX/6n4hVTIp7SyvsSPqlwVq6J9ri3SToSLe4Yq
         vlvw==
X-Gm-Message-State: AOJu0YxSPPVRgt2DHKTRMM2EaxszWIOMhzMjNmjwi7Jq1Z520gW1nybS
	Heh6pMlMlimzsigWxYR7q5SjeUFFyV4xkPeU+wILlA==
X-Google-Smtp-Source: AGHT+IGmE/x/Q9wBAAP4WSVeu6Pzwkh80gJNXkwIoavJV9VXufokUhNCLXMfXFExg6GRm7Q1Y/p8TrFXYkay1vjqtA4=
X-Received: by 2002:ac8:5ac4:0:b0:41c:d62b:fb51 with SMTP id
 d4-20020ac85ac4000000b0041cd62bfb51mr39263562qtd.26.1701295220560; Wed, 29
 Nov 2023 14:00:20 -0800 (PST)
MIME-Version: 1.0
References: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
 <20231128204938.1453583-10-pasha.tatashin@soleen.com> <20231128235254.GE1312390@ziepe.ca>
In-Reply-To: <20231128235254.GE1312390@ziepe.ca>
From: Pasha Tatashin <pasha.tatashin@soleen.com>
Date: Wed, 29 Nov 2023 16:59:43 -0500
Message-ID: <CA+CK2bC=vMU54wXz1GSzpOcLFCuX5vuE6tD49JF8cMbz4tis-g@mail.gmail.com>
Subject: Re: [PATCH 09/16] iommu/iommufd: use page allocation function
 provided by iommu-pages.h
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
X-CRM114-CacheID: sfid-20231129_140022_611027_12219D38 
X-CRM114-Status: GOOD (  14.42  )
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

T24gVHVlLCBOb3YgMjgsIDIwMjMgYXQgNjo1MuKAr1BNIEphc29uIEd1bnRob3JwZSA8amdnQHpp
ZXBlLmNhPiB3cm90ZToKPgo+IE9uIFR1ZSwgTm92IDI4LCAyMDIzIGF0IDA4OjQ5OjMxUE0gKzAw
MDAsIFBhc2hhIFRhdGFzaGluIHdyb3RlOgo+ID4gQ29udmVydCBpb21tdS9pb21tdWZkLyogZmls
ZXMgdG8gdXNlIHRoZSBuZXcgcGFnZSBhbGxvY2F0aW9uIGZ1bmN0aW9ucwo+ID4gcHJvdmlkZWQg
aW4gaW9tbXUtcGFnZXMuaC4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBQYXNoYSBUYXRhc2hpbiA8
cGFzaGEudGF0YXNoaW5Ac29sZWVuLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvaW9tbXUvaW9t
bXVmZC9pb3ZhX2JpdG1hcC5jIHwgNCArKy0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0
aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPgo+IFRoaXMgaXMgYSBzaG9ydCB0ZXJtIGFsbG9jYXRp
b24sIGl0IHNob3VsZCBub3QgYmUgY291bnRlZCwgdGhhdCBpcyB3aHkKPiBpdCBpcyBhbHJlYWR5
IG5vdCB1c2luZyBHRlBfS0VSTkVMX0FDQ09VTlQuCgpJIG1hZGUgdGhpcyBjaGFuZ2UgZm9yIGNv
bXBsZXRlbmVzcy4gSSBjaGFuZ2VkIGFsbCBjYWxscyB0bwpnZXRfZnJlZV9wYWdlL2FsbG9jX3Bh
Z2UgZXRjIHVuZGVyIGRyaXZlci9pb21tdSB0byB1c2UgdGhlCmlvbW11X2FsbG9jXyogdmFyaWFu
dHMsIHRoaXMgYWxzbyBoZWxwcyBmdXR1cmUgZGV2ZWxvcGVycyBpbiB0aGlzIGFyZWEKdG8gdXNl
IHRoZSByaWdodCBhbGxvY2F0aW9uIGZ1bmN0aW9ucy4KVGhlIGFjY291bnRpbmcgaXMgaW1wbGVt
ZW50ZWQgdXNpbmcgY2hlYXAgcGVyLWNwdSBjb3VudGVycywgc28gc2hvdWxkCm5vdCBhZmZlY3Qg
dGhlIHBlcmZvcm1hbmNlLCBJIHRoaW5rIGl0IGlzIE9LIHRvIGtlZXAgdGhlbSBoZXJlLgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
