Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F3EEC4167B
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Nov 2023 00:31:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5HNKWlVcP3gawKvNGGneKkqwD26MDyQkEkpWT5h8K/g=; b=QrDWViBmlmHyEv
	SoYPBmo5Oszv6L7GYXOzAeepUaomhxElnE4l1HewgYfBcD6u203WHVnYhYZIui5Qt8RQ4XN0tkFux
	CsBR6rvVbVXPvGl1YzaTghIjX7+jrzryV6OI3Bao/IIbWoqncL67Vod1fZN+SvHvogpCmM8NAJTc4
	+hp7ngw5vubN9Ac9swUFV+XKu+vtYJvRZmZQFEZw3cw4dbtKBQI2RnzskdV2BQzMYAiZQrJ3Z8w37
	x0yuvVydOtrcP5fSpzt38WZ3J+p4NwexR/EL0aSHm52XW20vLjSDK3jREWpKlqSm2xymfF0GhDxl9
	4SZCp7wYtVd0wEwrUuYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r88Tv-006gMj-0a;
	Wed, 29 Nov 2023 00:31:11 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r88Tr-006gKj-2F
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Nov 2023 00:31:09 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-54b0073d50fso6159053a12.2
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Nov 2023 16:31:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1701217863; x=1701822663; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yDVw23sOg2UrJKrxIvmA3Ztov9BQ3aaP2pKc9NVQp+Q=;
        b=dhVJmi4//sMma+9U1lyOQhs30GJW2pW187mYN0dZRXY5dMymzzUEnVPdo4dre1O3Uv
         PRS8FAhUKjEWJxYGkcr4o32RFBQcYOuTg3MAhJ1+S5+qXYdVdBq/zKY0xa/aFWY+4HVR
         UG8RG+/M7lXoeYAnYbYUW+v9zRTt4aFzWXN+YwCWuu2zrZeTTjSfcC79FU/xEj5+usXV
         wd2fa5aL511/3XXJyNaKCSRkIXNIu11PMSC6GN+v0/yaJpmH8KNpRhUWnI/2cJW5b8pQ
         WfZ9R+nPLhMCRhB1dVul6n2IFyZDUQbkdkfnEJwlgREG0diY9BoSMCcdGg9jFF33DG7F
         abwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701217863; x=1701822663;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yDVw23sOg2UrJKrxIvmA3Ztov9BQ3aaP2pKc9NVQp+Q=;
        b=JAapCtv3aRcPu5fWbyUjjPS4JGiB8tz3XHlQPBQnw4D2ubnONcaTLHSr5s45SfN1Ie
         sql1a9hh5WnKD+2IHJNd2VMw2Ba9i9ZmjwWz8goTRL7NwikL17l2JjaWA6IaUb/hHENN
         +54ydTNUNfwFNR6jJUpi9o8Q0vaqTb3nJ7ZHzwNep11nXrPVOIJb2veZsavodciZ7ig9
         l5mu3QpAr9ZlfKnHGO4A8pVD80zpw2r5GSQ2Ih2nUioV6iecbmAMWBsezZNMR0jfgzmY
         JbrAY+LNtuqjOclNeRVctzGBuLsodVo1uMQE7WZ6lgYpGVV39g4U3eAWvYP1KZn04DPK
         X09A==
X-Gm-Message-State: AOJu0YwhAsiEH8VOu/lyF/kFCYEn/ypUTdq1Dj6wxgNevtWAP+PBsC5m
	Le+Mzo/xw5y97zO7PZClnjeUCn3HEedDA3gHG80c8A==
X-Google-Smtp-Source: AGHT+IHC8UEOvU50jtsS7Vr0gcms1iLEnVOENRdNMxAoPBJBLye7+u3ipcvLY8pzJUFqT19PG/Ngi5chQxCjwtOqCvY=
X-Received: by 2002:a17:906:48d5:b0:a11:7ba8:6891 with SMTP id
 d21-20020a17090648d500b00a117ba86891mr5048211ejt.67.1701217863358; Tue, 28
 Nov 2023 16:31:03 -0800 (PST)
MIME-Version: 1.0
References: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
 <CAJD7tkb1FqTqwONrp2nphBDkEamQtPCOFm0208H3tp0Gq2OLMQ@mail.gmail.com>
 <CA+CK2bB3nHfu1Z6_6fqN3YTAzKXMiJ12MOWpbs8JY7rQo4Fq0g@mail.gmail.com>
 <CAJD7tkZZNhf4KGV+7N+z8NFpJrvyeNudXU-WdVeE8Rm9pobfgQ@mail.gmail.com>
 <20231128235214.GD1312390@ziepe.ca> <CAJD7tkbbq6bHtPn7yE3wSS693OSthh1eBDvF-_MWZfDMXDYPKw@mail.gmail.com>
 <20231129002826.GG1312390@ziepe.ca>
In-Reply-To: <20231129002826.GG1312390@ziepe.ca>
From: Yosry Ahmed <yosryahmed@google.com>
Date: Tue, 28 Nov 2023 16:30:27 -0800
Message-ID: <CAJD7tkbxhK7XFcf7h+XE2poNuOsFBQFrxZyeFr=9DoEG_acssA@mail.gmail.com>
Subject: Re: [PATCH 00/16] IOMMU memory observability
To: Jason Gunthorpe <jgg@ziepe.ca>
Cc: Pasha Tatashin <pasha.tatashin@soleen.com>, akpm@linux-foundation.org, 
	alex.williamson@redhat.com, alim.akhtar@samsung.com, alyssa@rosenzweig.io, 
	asahi@lists.linux.dev, baolu.lu@linux.intel.com, bhelgaas@google.com, 
	cgroups@vger.kernel.org, corbet@lwn.net, david@redhat.com, 
	dwmw2@infradead.org, hannes@cmpxchg.org, heiko@sntech.de, 
	iommu@lists.linux.dev, jasowang@redhat.com, jernej.skrabec@gmail.com, 
	jonathanh@nvidia.com, joro@8bytes.org, kevin.tian@intel.com, 
	krzysztof.kozlowski@linaro.org, kvm@vger.kernel.org, 
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
X-CRM114-CacheID: sfid-20231128_163107_734101_47630473 
X-CRM114-Status: GOOD (  17.76  )
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

T24gVHVlLCBOb3YgMjgsIDIwMjMgYXQgNDoyOOKAr1BNIEphc29uIEd1bnRob3JwZSA8amdnQHpp
ZXBlLmNhPiB3cm90ZToKPgo+IE9uIFR1ZSwgTm92IDI4LCAyMDIzIGF0IDA0OjI1OjAzUE0gLTA4
MDAsIFlvc3J5IEFobWVkIHdyb3RlOgo+Cj4gPiA+ID4gUmlnaHQsIGJ1dCBhcyBJIG1lbnRpb24g
YWJvdmUsIGlmIHVzZXJzcGFjZSBzdGFydHMgZGVwZW5kaW5nIG9uIHRoaXMKPiA+ID4gPiBlcXVh
dGlvbiwgd2Ugd29uJ3QgYmUgYWJsZSB0byBhZGQgYW55IG1vcmUgY2xhc3NlcyBvZiAic2Vjb25k
YXJ5IiBwYWdlCj4gPiA+ID4gdGFibGVzIHRvIFNlY1BhZ2VUYWJsZXMuIEknZCBsaWtlIHRvIGF2
b2lkIHRoYXQgaWYgcG9zc2libGUuIFdlIGNhbiBkbwo+ID4gPiA+IHRoZSBzdWJ0cmFjdGlvbiBp
biB0aGUga2VybmVsLgo+ID4gPgo+ID4gPiBXaGF0IFNlYW4gaGFkIHN1Z2dlc3RlZCB3YXMgdGhh
dCBTZWNQYWdlVGFibGVzIHdhcyBhbHdheXMgaW50ZW5kZWQgdG8KPiA+ID4gYWNjb3VudCBhbGwg
dGhlIG5vbi1wcmltYXJ5IG1tdSBtZW1vcnkgdXNlZCBieSBwYWdlIHRhYmxlcy4gSWYgdGhpcyBp
cwo+ID4gPiB0aGUgY2FzZSB3ZSBzaG91bGRuJ3QgYmUgdHJ5aW5nIHRvIGJyZWFrIGl0IGFwYXJ0
IGludG8gZmluZXIKPiA+ID4gY291bnRlcnMuIFRoZXNlIGFyZSBiaWcgcGljdHVyZSBjb3VudGVy
cywgbm90IGRldGFpbGVkIGFsbG9jYXRpb24gYnkKPiA+ID4gb3duZXIgY291bnRlcnMuCj4gPgo+
ID4gUmlnaHQsIEkgYWdyZWUgd2l0aCB0aGF0LCBidXQgaWYgU2VjUGFnZVRhYmxlcyBpbmNsdWRl
cyBwYWdlIHRhYmxlcwo+ID4gZnJvbSBtdWx0aXBsZSBzb3VyY2VzLCBhbmQgaXQgaXMgb2JzZXJ2
ZWQgdG8gYmUgc3VzcGljaW91c2x5IGhpZ2gsIHRoZQo+ID4gbG9naWNhbCBuZXh0IHN0ZXAgaXMg
dG8gdHJ5IHRvIGZpbmQgdGhlIGN1bHByaXQsIHJpZ2h0Pwo+Cj4gWW91IGNhbiBtYWtlIHRoYXQg
Y2FzZSBhbHJlYWR5LCBpZiBpdCBpcyBoaWdoIHdvdWxkbid0IHlvdSB3YW50IHRvCj4gZmluZCB0
aGUgZXhhY3QgVk1NIHByb2Nlc3MgdGhhdCB3YXMgbWFraW5nIGl0IGhpZ2g/Cj4KPiBJdCBpcyBh
IHNpZ24gb2YgZmlyZSwgbm90IGEgZGV0YWlsZWQgZGVidWcgdG9vbC4KCkZhaXIgZW5vdWdoLiBX
ZSBjYW4gYWx3YXlzIGFkZCBzZXBhcmF0ZSBjb3VudGVycyBsYXRlciBpZiBuZWVkZWQsCnBvdGVu
dGlhbGx5IHVuZGVyIEtWTSBzdGF0cyB0byBnZXQgbW9yZSBmaW5lLWdyYWluZWQgZGV0YWlscyBh
cyB5b3UKbWVudGlvbmVkLgoKSSBhbSBvbmx5IHdvcnJpZWQgYWJvdXQgdXNlcnMgc3VidHJhY3Rp
bmcgdGhlIGlvbW11LW9ubHkgY291bnRlciB0bwpnZXQgYSBLVk0gY291bnRlci4gV2Ugc2hvdWxk
IGF0IGxlYXN0IGRvY3VtZW50IHRoYXQgIFNlY1BhZ2VUYWJsZXMgbWF5CmJlIGV4cGFuZGVkIHRv
IGluY2x1ZGUgb3RoZXIgc291cmNlcyBsYXRlciB0byBhdm9pZCB0aGF0LgoKPgo+IEphc29uCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
