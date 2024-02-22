Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D72B0C48BEB
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Feb 2024 00:22:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=th6n5LnRVZ0bqhrlSTzxPO4PS/aQqa74wf399GMhWvs=; b=gCN6/sVmORVPWB
	csa06il5rL7NZyBgXhNNhYmypyhDAueQP4l7m7hO3vjGw96tH1my1wOtmx/NNQ56jlESrqY6GFjve
	M09niXgoNHtuI373yOC6MU6jdpMcVbg54wgXCZeHN4C9BkUddPpOzPdC0U8qRlZ4bAWSz24kcGYxE
	hA+lLLU6Hnmt/a0RrVtl9C3SHYYMnDdgc54CCv4n0bVc660xWfoG4ch3f89pMLMqhgXp4TiLl8hr6
	SnJMDDTF+ne+T8zNubquVpyNxw6Bdax9s3lIOHucNrWKGPZS41vmgxM1VdJqdZYutwxcIvp6RuVLo
	3tGmj7cFMT4T0rHcD9dA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcwqf-0000000318h-37AH;
	Thu, 22 Feb 2024 00:22:01 +0000
Received: from mail-qk1-x734.google.com ([2607:f8b0:4864:20::734])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcwqb-0000000317C-1TXW
	for linux-rockchip@lists.infradead.org;
	Thu, 22 Feb 2024 00:21:59 +0000
Received: by mail-qk1-x734.google.com with SMTP id af79cd13be357-7879e69af35so2323785a.1
        for <linux-rockchip@lists.infradead.org>; Wed, 21 Feb 2024 16:21:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1708561314; x=1709166114; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9rn4mWdOER6tRcIB1iLpkedD4oyQHhFAy8BqoLay5HA=;
        b=E2W6LNUo2Ca79i9cEgNtsLvpCgpT3SpbNJzbyuCeBikRw5dNY6vuykl3Ilezs68vLX
         GAAIKeLd/HGXLoMVWTtAAqE+4rUV8QQd6hB6U+H8VO974wUZiFLn4otlr1GIbNC19Dwp
         nRHHvNmJav/LsolqdiPW0BkgHLD39MSHRhouhbes5KUAzonvsIwP+xP42UIDsyvj/4IB
         c34cuYz9DY5hWL7FrGUozudKgpwmOikwSIrKbRj5de5PBiSVEh4V+GFwyERkwofm2yhf
         tZa9xEYM3RCHmWbpgihEYvJYO2nQBvRSiSSFyuBZ8qyWjl/NxTAWaxO+3T6sIU2WJgY6
         O4IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708561314; x=1709166114;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9rn4mWdOER6tRcIB1iLpkedD4oyQHhFAy8BqoLay5HA=;
        b=lRrJ3v6i44hFZIfCPB/mVTxKDzDqDjuYvDS58ZmXQasIIlpAUSZE9Yh4+Er3nZ+2XC
         PgRY0cBpaCiNqfJCRQQ1e4Q54OSPwue3vKVu3oaesmlZgbfrUt7IzIvzD1Aa03n675mv
         TyHIXvbbrMySkqQHz6Q6yCPrPBaDHrMfjeYiu5X/800lDqwcSTHGkAX7Foy5LhQSFFY0
         xfaMG8QyB9lb/IpC4tfE9LZN6ejLVJcNnubA/G5+p+eU6snDoVTQo2vSvTWCO2wKLTp9
         GZCDM8Cr04nl/LPvSugiwwDJCzJ+B2+R7t78+qL5e0nNfm7aCBxcCS+h+lRSSVUrroCQ
         P2MQ==
X-Forwarded-Encrypted: i=1; AJvYcCW+XPmS1JTL/J8eGG3qxe5MlDo14tPsg9D4Il6C5ESvniPcO08+kfvRo0izC3my+o/hRgPxrEob7Yiixk0PRJsh6Y134n6BPwMUiKsbR5i2xLyB
X-Gm-Message-State: AOJu0YyKzNrDkjY2TYA3liVBlXiNyzUMG0bFDuweJ73PqRvtxZfi6Yrd
	PpY+oclVT2GjANscF4rtsjpkjSpzHdyJDESyLjP3/ODhhrdcyT1ZEqE9d5vvR8g=
X-Google-Smtp-Source: AGHT+IGSJoZu17XCLPx2AJSIv4qmgm+x+WexJaUrwx1qRLzsVh+X4k/87Gsnxjx0m8GySXbzSbUfyw==
X-Received: by 2002:ad4:5ce3:0:b0:68f:8d7c:73cd with SMTP id iv3-20020ad45ce3000000b0068f8d7c73cdmr10367841qvb.8.1708561314072;
        Wed, 21 Feb 2024 16:21:54 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-68-80-239.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.68.80.239])
        by smtp.gmail.com with ESMTPSA id lb25-20020a056214319900b0068f9bb1a247sm1871280qvb.19.2024.02.21.16.21.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Feb 2024 16:21:53 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.95)
	(envelope-from <jgg@ziepe.ca>)
	id 1rcwqW-00DQWC-Tn;
	Wed, 21 Feb 2024 20:21:52 -0400
Date: Wed, 21 Feb 2024 20:21:52 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Pasha Tatashin <pasha.tatashin@soleen.com>
Cc: Will Deacon <will@kernel.org>, akpm@linux-foundation.org,
	alim.akhtar@samsung.com, alyssa@rosenzweig.io,
	asahi@lists.linux.dev, baolu.lu@linux.intel.com,
	bhelgaas@google.com, cgroups@vger.kernel.org, corbet@lwn.net,
	david@redhat.com, dwmw2@infradead.org, hannes@cmpxchg.org,
	heiko@sntech.de, iommu@lists.linux.dev, jernej.skrabec@gmail.com,
	jonathanh@nvidia.com, joro@8bytes.org,
	krzysztof.kozlowski@linaro.org, linux-doc@vger.kernel.org,
	linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-mm@kvack.org, linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev,
	linux-tegra@vger.kernel.org, lizefan.x@bytedance.com,
	marcan@marcan.st, mhiramat@kernel.org, m.szyprowski@samsung.com,
	paulmck@kernel.org, rdunlap@infradead.org, robin.murphy@arm.com,
	samuel@sholland.org, suravee.suthikulpanit@amd.com,
	sven@svenpeter.dev, thierry.reding@gmail.com, tj@kernel.org,
	tomas.mudrunka@gmail.com, vdumpa@nvidia.com, wens@csie.org,
	yu-cheng.yu@intel.com, rientjes@google.com
Subject: Re: [PATCH v3 10/10] iommu: account IOMMU allocated memory
Message-ID: <20240222002152.GG13491@ziepe.ca>
References: <20231226200205.562565-1-pasha.tatashin@soleen.com>
 <20231226200205.562565-11-pasha.tatashin@soleen.com>
 <20240213131210.GA28926@willie-the-truck>
 <CA+CK2bB4Z+z8tocO79AdsAy+gmN_4aVHgFUsm_gYLUJ2zV1A6A@mail.gmail.com>
 <20240216175752.GB2374@willie-the-truck>
 <CA+CK2bDURTkZFo9uE9Bgfrz-NwgXqo4SAzLOW6Jb35M+eqUEaA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+CK2bDURTkZFo9uE9Bgfrz-NwgXqo4SAzLOW6Jb35M+eqUEaA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240221_162157_540095_09DB5CF2 
X-CRM114-Status: GOOD (  28.15  )
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

T24gRnJpLCBGZWIgMTYsIDIwMjQgYXQgMDI6NDg6MDBQTSAtMDUwMCwgUGFzaGEgVGF0YXNoaW4g
d3JvdGU6Cj4gT24gRnJpLCBGZWIgMTYsIDIwMjQgYXQgMTI6NTjigK9QTSBXaWxsIERlYWNvbiA8
d2lsbEBrZXJuZWwub3JnPiB3cm90ZToKPiA+Cj4gPiBPbiBUdWUsIEZlYiAxMywgMjAyNCBhdCAx
MDo0NDo1M0FNIC0wNTAwLCBQYXNoYSBUYXRhc2hpbiB3cm90ZToKPiA+ID4gPiA+ICBTZWNQYWdl
VGFibGVzCj4gPiA+ID4gPiAtICAgICAgICAgICAgICBNZW1vcnkgY29uc3VtZWQgYnkgc2Vjb25k
YXJ5IHBhZ2UgdGFibGVzLCB0aGlzIGN1cnJlbnRseQo+ID4gPiA+ID4gLSAgICAgICAgICAgICAg
Y3VycmVudGx5IGluY2x1ZGVzIEtWTSBtbXUgYWxsb2NhdGlvbnMgb24geDg2IGFuZCBhcm02NC4K
PiA+ID4gPiA+ICsgICAgICAgICAgICAgIE1lbW9yeSBjb25zdW1lZCBieSBzZWNvbmRhcnkgcGFn
ZSB0YWJsZXMsIHRoaXMgY3VycmVudGx5IGluY2x1ZGVzCj4gPiA+ID4gPiArICAgICAgICAgICAg
ICBLVk0gbW11IGFuZCBJT01NVSBhbGxvY2F0aW9ucyBvbiB4ODYgYW5kIGFybTY0Lgo+ID4gPgo+
ID4gPiBIaSBXaWxsLAo+ID4gPgo+ID4gPiA+IFdoaWxlIEkgY2FuIHNlZSB0aGUgdmFsdWUgaW4g
dGhpcyBmb3IgSU9NTVUgbWFwcGluZ3MgbWFuYWdlZCBieSBWRklPLAo+ID4gPiA+IGRvZXNuJ3Qg
dGhpcyBlbmQgdXAgY29uZmxhdGluZyB0aGF0IHdpdGggdGhlIG5vcm1hbCBjYXNlIG9mIERNQSBk
b21haW5zPwo+ID4gPiA+IEZvciBzeXN0ZW1zIHRoYXQgZS5nLiByZWx5IG9uIGFuIElPTU1VIGZv
ciBmdW5jdGlvbmFsIGhvc3QgRE1BLCBpdCBzZWVtcwo+ID4gPiA+IHdyb25nIHRvIHN1YmplY3Qg
dGhhdCB0byBhY2NvdW50aW5nIGNvbnN0cmFpbnRzLgo+ID4gPgo+ID4gPiBUaGUgYWNjb3VudGlu
ZyBjb25zdHJhaW50cyBhcmUgb25seSBhcHBsaWNhYmxlIHdoZW4gR0ZQX0tFUk5FTF9BQ0NPVU5U
Cj4gPiA+IGlzIHBhc3NlZCB0byB0aGUgaW9tbXUgbWFwcGluZyBmdW5jdGlvbnMuIFdlIGRvIHRo
YXQgZnJvbSB0aGUgdmZpbywKPiA+ID4gaW9tbXVmZCwgYW5kIHZob3N0LiBXaXRob3V0IHRoaXMg
ZmxhZywgdGhlIG1lbW9yeSB1c2VhZ2UgaXMgcmVwb3J0ZWQKPiA+ID4gaW4gL3Byb2MvbWVtaW5m
byBhcyBwYXJ0IG9mICBTZWNQYWdlVGFibGVzIGZpZWxkLCBidXQgbm90IGNvbnN0cmFpbmVkCj4g
PiA+IGluIGNncm91cC4KPiA+Cj4gPiBUaGFua3MsIFBhc2hhLCB0aGF0IGV4cGxhbmF0aW9uIG1h
a2VzIHNlbnNlLiBJIHN0aWxsIGZpbmQgaXQgYml6YXJyZSB0bwo+ID4gaW5jbHVkZSBJT01NVSBh
bGxvY2F0aW9ucyBmcm9tIHRoZSBETUEgQVBJIGluIFNlY1BhZ2VUYWJsZXMgdGhvdWdoLCBhbmQK
PiA+IEkgd29ycnkgdGhhdCBpdCB3aWxsIGNvbmZ1c2UgcGVvcGxlIHdobyBhcmUgdXNpbmcgdGhh
dCBtZXRyaWMgYXMgYSB3YXkKPiA+IHRvIGdldCBhIGZlZWxpbmcgZm9yIGhvdyBtdWNoIG1lbW9y
eSBpcyBiZWluZyB1c2VkIGJ5IEtWTSdzIHNlY29uZGFyeQo+ID4gcGFnZS10YWJsZXMuIEFzIGFu
IGV4dHJlbWUgZXhhbXBsZSwgaGF2aW5nIGEgbm9uLXplcm8gU2VjUGFnZVRhYmxlcyBjb3VudAo+
ID4gd2l0aG91dCBLVk0gZXZlbiBjb21waWxlZCBpbiBpcyBwcmV0dHkgYml6YXJyZS4KPiAKPiBJ
IGFncmVlOyBJIGFsc28gcHJlZmVyIGEgbmV3IGZpZWxkIGluIC9wcm9jL21lbWluZm8gbmFtZWQK
PiAnSU9NTVVQYWdlVGFibGVzJy4gVGhpcyBpcyB3aGF0IEkgcHJvcG9zZWQgYXQgTFBDLCBidXQg
SSB3YXMgYXNrZWQgdG8KPiByZXVzZSB0aGUgZXhpc3RpbmcgJ1NlY1BhZ2VUYWJsZXMnIGZpZWxk
IGluc3RlYWQuIFRoZSByYXRpb25hbGUgd2FzCj4gdGhhdCAnc2Vjb25kYXJ5JyBpbXBsaWVzIG5v
dCBvbmx5IEtWTSBwYWdlIHRhYmxlcywgYnV0IGFueSBvdGhlcgo+IG5vbi1yZWd1bGFyIHBhZ2Ug
dGFibGVzLgoKUmlnaHQsIFNlYW5DIG1lbnRpb25lZCB0aGF0IHRoZSBwdXJwb3NlIG9mIFNlY1Bh
Z2VUYWJsZXMgd2FzIHRvCmNhcHR1cmUgYWxsIG5vbi1tbSBwYWdlIHRhYmxlIHJhZGl4IGFsbG9j
YXRpb25zLgoKPiBJIHdvdWxkIGFwcHJlY2lhdGUgdGhlIG9waW5pb24gb2YgSU9NTVUgbWFpbnRh
aW5lcnMgb24gdGhpczogaXMgaXQKPiBwcmVmZXJhYmxlIHRvIGJ1bmRsZSB0aGUgaW5mb3JtYXRp
b24gd2l0aCAnU2VjUGFnZVRhYmxlcycgb3IgbWFpbnRhaW4KPiBhIHNlcGFyYXRlIGZpZWxkPwoK
SSB0aGluayB5b3Ugc2hvdWxkIGtlZXAgdGhlbSB0b2dldGhlci4gSSBkb24ndCB0aGluayB3ZSBz
aG91bGQgYmUKaW50cm9kdWNpbmcgbmV3IGNvdW50ZXJzLCBpbiBnZW5lcmFsLgoKRGV0YWlsZWQg
bWVtb3J5IHByb2ZpbGUgc2hvdWxkIGNvbWUgZnJvbSBzb21lIGtpbmQgb2YgbW9yZSBkeW5hbWlj
IGFuZAp1bml2ZXJzYWwgc2NoZW1lLiBIb3BlZnVsbHkgdGhhdCBvdGhlciBnaWFudCB0aHJlYWQg
YWJvdXQgcHJvZmlsaW5nCndpbGwgcmVhY2ggc29tZSBjb25jbHVzaW9uLgoKSmFzb24KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
