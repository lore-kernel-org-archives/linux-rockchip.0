Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02618C48BEF
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Feb 2024 19:48:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yEcbf2yeM7lQZzFEqeNGVLddNgkgaZzewFK1C9U0RE8=; b=fivQeYq6SAf5VM
	hHgAfz5a5zKgB2nNhN33QF13nhzqxoL1bK/ZVuS8tPLWMEIe6xJ8X+XSjEHJy3tQ/+qWI9CxZAype
	e0G7y0GqaDhndxt4hPs9RhlJPfzu0jNBqseb24U9A70lOsbcTHdy9d+2r3AcFLnH3O6z908dgSaRo
	J56SEZCLFZL7fsJBBklutJCunVHzpb2F+BIGvcmN6E4iZWV4GvRr05OiTPVJUwQOQ/j1eZiEV95yD
	+p70AAYytGZ5nuMn30D8f4rnVwV2nY5wRIUJvQpY9dpKGEUtdHTBvPAkAcMk7sXG1Mnxw004xktcq
	lgP+xGvtYdx43mZ547YA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rb4CS-00000003XPA-47Uk;
	Fri, 16 Feb 2024 19:48:44 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rb4CN-00000003XKZ-3C8w
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Feb 2024 19:48:43 +0000
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2d107900457so34082741fa.1
        for <linux-rockchip@lists.infradead.org>; Fri, 16 Feb 2024 11:48:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen-com.20230601.gappssmtp.com; s=20230601; t=1708112917; x=1708717717; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XMO1uzBf5Ipo+B8nJFhezHnHhPZI6cIYH4qqZglP7mw=;
        b=rEmsfsHVgeQgyzLwCrNkxKdGW3cxE9g3vgM9L0y+y23i/LKVL0MA25o9vwpWPUBSAG
         T6KaYgi3r6HoYhekiN7j54FE36EoYsIPa/kOvKpcGXSDBUEHZgQU9kD6Z9twGW/bdIRd
         NnkBXAwtsMsysc6JRbMe3H/WR8XLfU3steiTXTwlL6HDcTrwbMLFXyQp4Ci+WJAmI5Os
         0SmF09pbRB7oAZ7OZMvv9f7m88N9B6LFyYQjtxTPsAfakaG85y4q24OIUM2DuAcxkhHq
         5wMgGh8556x1gY090JkG9H78UOYg8txuFV8nXWaQVO0caQNO8dOb27nc7eXi67GcpU2l
         jqYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708112917; x=1708717717;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XMO1uzBf5Ipo+B8nJFhezHnHhPZI6cIYH4qqZglP7mw=;
        b=fLLGZUM8pfsGo6+xJiVjJkDzwtIMAsvEkWUc97bvWYJSgWcGbilNVuPAQwv7wFyp4i
         gkEP/CJJ/Ek7N9GhyK2GK+ZOaqfsUjO6oC4TB89LaKKOGCLEbVe6s19159u93r7opzh6
         ywKdulZWuwrLFmeo7nn3cSCXhSt1IEpz4vS2KdPflx8A17gYw+JAIxM47al4Q2bUicFb
         94Wi/XT5BhX8Q4gtYiJ8RqAxZiUDrWNpw/fqBXqo9DclTuOVzD9fGWKGIhID8bEt/J0p
         V7kn39sjI0+zxz2tCJPwD/9SfMsb6zqG4t508a5s0B3jhcDqeSOOJ0ozstgfzTuUMZ64
         u89Q==
X-Forwarded-Encrypted: i=1; AJvYcCW0j1Syv0I8nG6EZQMGSKYnK7uqk6xmWSBsuML49tH72PJfKheiPaR6W6CkNqFZR0wVv7p9MflsrEIP2V3XD0F8QrfM7C08+vivyViORB8pTQpk
X-Gm-Message-State: AOJu0YyH51kbcBrr/L+FXZKeA4JheBmciQe6cqcWqzMTPF7nNWkdkKzg
	j1CkIrx6Jw86CroODg44ejT1URbtjyRTk84iDJnTFEWpwrbWO5whQaNT26os4pDn5SL/5FlPEqZ
	tTF6j+E9UELBDT/VBWoez/MDCNBDvugCVquaAHQ==
X-Google-Smtp-Source: AGHT+IEiJLDM3GyyGWObGaRCyMN7MxvgX2HQgceLg5ERcIU76EjTibg8tg0F0e6PZPfErw11n01+i2wIipIreSPlOTo=
X-Received: by 2002:ac2:5bd1:0:b0:511:a021:220a with SMTP id
 u17-20020ac25bd1000000b00511a021220amr4183994lfn.21.1708112917508; Fri, 16
 Feb 2024 11:48:37 -0800 (PST)
MIME-Version: 1.0
References: <20231226200205.562565-1-pasha.tatashin@soleen.com>
 <20231226200205.562565-11-pasha.tatashin@soleen.com> <20240213131210.GA28926@willie-the-truck>
 <CA+CK2bB4Z+z8tocO79AdsAy+gmN_4aVHgFUsm_gYLUJ2zV1A6A@mail.gmail.com> <20240216175752.GB2374@willie-the-truck>
In-Reply-To: <20240216175752.GB2374@willie-the-truck>
From: Pasha Tatashin <pasha.tatashin@soleen.com>
Date: Fri, 16 Feb 2024 14:48:00 -0500
Message-ID: <CA+CK2bDURTkZFo9uE9Bgfrz-NwgXqo4SAzLOW6Jb35M+eqUEaA@mail.gmail.com>
Subject: Re: [PATCH v3 10/10] iommu: account IOMMU allocated memory
To: Will Deacon <will@kernel.org>
Cc: akpm@linux-foundation.org, alim.akhtar@samsung.com, alyssa@rosenzweig.io, 
	asahi@lists.linux.dev, baolu.lu@linux.intel.com, bhelgaas@google.com, 
	cgroups@vger.kernel.org, corbet@lwn.net, david@redhat.com, 
	dwmw2@infradead.org, hannes@cmpxchg.org, heiko@sntech.de, 
	iommu@lists.linux.dev, jernej.skrabec@gmail.com, jonathanh@nvidia.com, 
	joro@8bytes.org, krzysztof.kozlowski@linaro.org, linux-doc@vger.kernel.org, 
	linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-mm@kvack.org, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev, 
	linux-tegra@vger.kernel.org, lizefan.x@bytedance.com, marcan@marcan.st, 
	mhiramat@kernel.org, m.szyprowski@samsung.com, paulmck@kernel.org, 
	rdunlap@infradead.org, robin.murphy@arm.com, samuel@sholland.org, 
	suravee.suthikulpanit@amd.com, sven@svenpeter.dev, thierry.reding@gmail.com, 
	tj@kernel.org, tomas.mudrunka@gmail.com, vdumpa@nvidia.com, wens@csie.org, 
	yu-cheng.yu@intel.com, rientjes@google.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_114840_073859_62A036A2 
X-CRM114-Status: GOOD (  22.44  )
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

T24gRnJpLCBGZWIgMTYsIDIwMjQgYXQgMTI6NTjigK9QTSBXaWxsIERlYWNvbiA8d2lsbEBrZXJu
ZWwub3JnPiB3cm90ZToKPgo+IE9uIFR1ZSwgRmViIDEzLCAyMDI0IGF0IDEwOjQ0OjUzQU0gLTA1
MDAsIFBhc2hhIFRhdGFzaGluIHdyb3RlOgo+ID4gPiA+ICBTZWNQYWdlVGFibGVzCj4gPiA+ID4g
LSAgICAgICAgICAgICAgTWVtb3J5IGNvbnN1bWVkIGJ5IHNlY29uZGFyeSBwYWdlIHRhYmxlcywg
dGhpcyBjdXJyZW50bHkKPiA+ID4gPiAtICAgICAgICAgICAgICBjdXJyZW50bHkgaW5jbHVkZXMg
S1ZNIG1tdSBhbGxvY2F0aW9ucyBvbiB4ODYgYW5kIGFybTY0Lgo+ID4gPiA+ICsgICAgICAgICAg
ICAgIE1lbW9yeSBjb25zdW1lZCBieSBzZWNvbmRhcnkgcGFnZSB0YWJsZXMsIHRoaXMgY3VycmVu
dGx5IGluY2x1ZGVzCj4gPiA+ID4gKyAgICAgICAgICAgICAgS1ZNIG1tdSBhbmQgSU9NTVUgYWxs
b2NhdGlvbnMgb24geDg2IGFuZCBhcm02NC4KPiA+Cj4gPiBIaSBXaWxsLAo+ID4KPiA+ID4gV2hp
bGUgSSBjYW4gc2VlIHRoZSB2YWx1ZSBpbiB0aGlzIGZvciBJT01NVSBtYXBwaW5ncyBtYW5hZ2Vk
IGJ5IFZGSU8sCj4gPiA+IGRvZXNuJ3QgdGhpcyBlbmQgdXAgY29uZmxhdGluZyB0aGF0IHdpdGgg
dGhlIG5vcm1hbCBjYXNlIG9mIERNQSBkb21haW5zPwo+ID4gPiBGb3Igc3lzdGVtcyB0aGF0IGUu
Zy4gcmVseSBvbiBhbiBJT01NVSBmb3IgZnVuY3Rpb25hbCBob3N0IERNQSwgaXQgc2VlbXMKPiA+
ID4gd3JvbmcgdG8gc3ViamVjdCB0aGF0IHRvIGFjY291bnRpbmcgY29uc3RyYWludHMuCj4gPgo+
ID4gVGhlIGFjY291bnRpbmcgY29uc3RyYWludHMgYXJlIG9ubHkgYXBwbGljYWJsZSB3aGVuIEdG
UF9LRVJORUxfQUNDT1VOVAo+ID4gaXMgcGFzc2VkIHRvIHRoZSBpb21tdSBtYXBwaW5nIGZ1bmN0
aW9ucy4gV2UgZG8gdGhhdCBmcm9tIHRoZSB2ZmlvLAo+ID4gaW9tbXVmZCwgYW5kIHZob3N0LiBX
aXRob3V0IHRoaXMgZmxhZywgdGhlIG1lbW9yeSB1c2VhZ2UgaXMgcmVwb3J0ZWQKPiA+IGluIC9w
cm9jL21lbWluZm8gYXMgcGFydCBvZiAgU2VjUGFnZVRhYmxlcyBmaWVsZCwgYnV0IG5vdCBjb25z
dHJhaW5lZAo+ID4gaW4gY2dyb3VwLgo+Cj4gVGhhbmtzLCBQYXNoYSwgdGhhdCBleHBsYW5hdGlv
biBtYWtlcyBzZW5zZS4gSSBzdGlsbCBmaW5kIGl0IGJpemFycmUgdG8KPiBpbmNsdWRlIElPTU1V
IGFsbG9jYXRpb25zIGZyb20gdGhlIERNQSBBUEkgaW4gU2VjUGFnZVRhYmxlcyB0aG91Z2gsIGFu
ZAo+IEkgd29ycnkgdGhhdCBpdCB3aWxsIGNvbmZ1c2UgcGVvcGxlIHdobyBhcmUgdXNpbmcgdGhh
dCBtZXRyaWMgYXMgYSB3YXkKPiB0byBnZXQgYSBmZWVsaW5nIGZvciBob3cgbXVjaCBtZW1vcnkg
aXMgYmVpbmcgdXNlZCBieSBLVk0ncyBzZWNvbmRhcnkKPiBwYWdlLXRhYmxlcy4gQXMgYW4gZXh0
cmVtZSBleGFtcGxlLCBoYXZpbmcgYSBub24temVybyBTZWNQYWdlVGFibGVzIGNvdW50Cj4gd2l0
aG91dCBLVk0gZXZlbiBjb21waWxlZCBpbiBpcyBwcmV0dHkgYml6YXJyZS4KCkkgYWdyZWU7IEkg
YWxzbyBwcmVmZXIgYSBuZXcgZmllbGQgaW4gL3Byb2MvbWVtaW5mbyBuYW1lZAonSU9NTVVQYWdl
VGFibGVzJy4gVGhpcyBpcyB3aGF0IEkgcHJvcG9zZWQgYXQgTFBDLCBidXQgSSB3YXMgYXNrZWQg
dG8KcmV1c2UgdGhlIGV4aXN0aW5nICdTZWNQYWdlVGFibGVzJyBmaWVsZCBpbnN0ZWFkLiBUaGUg
cmF0aW9uYWxlIHdhcwp0aGF0ICdzZWNvbmRhcnknIGltcGxpZXMgbm90IG9ubHkgS1ZNIHBhZ2Ug
dGFibGVzLCBidXQgYW55IG90aGVyCm5vbi1yZWd1bGFyIHBhZ2UgdGFibGVzLgoKSSB3b3VsZCBh
cHByZWNpYXRlIHRoZSBvcGluaW9uIG9mIElPTU1VIG1haW50YWluZXJzIG9uIHRoaXM6IGlzIGl0
CnByZWZlcmFibGUgdG8gYnVuZGxlIHRoZSBpbmZvcm1hdGlvbiB3aXRoICdTZWNQYWdlVGFibGVz
JyBvciBtYWludGFpbgphIHNlcGFyYXRlIGZpZWxkPwoKUGFzaGEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
