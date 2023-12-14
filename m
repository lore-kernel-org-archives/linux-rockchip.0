Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A456EC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Dec 2023 19:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WiHwnjsOY07Dd5RTC4BBwxcCfa7xEZiCY5P/zYq80i8=; b=dKqe0gDc7GN4X+
	IjWLhZp0F2d6NAHmA5PUf+x5dT/FzJgerkr9DrstIHXKunV5elAJbYqP08grjtimmn1FYmdUlbLHo
	ZJItj65DsrCUSOS6Bq6Z1iS+W5JOUHzzq3NrH0Pwlk4Y7smv5C4jtG4puLreA4BwC9nUVbQJHQbky
	JVpSXWjLIVjN57i2vozJWS1RzML7Hi6X2QjZ5OkcH/rX/IbJlFmG0U3c5t/X3n82PQbrPK3470Ufc
	qJbyhGYNcJrlcXGIHhMgTDy1ztXs00pXemPV9ywEqHYnBfLB8sBPNEwZXXbrkC1XGyvIj1eUtyBlL
	KKYgEwxqvXjPoSGj5/LA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDrD3-0016LI-2k;
	Thu, 14 Dec 2023 19:17:25 +0000
Received: from mail-qt1-x835.google.com ([2607:f8b0:4864:20::835])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDrD1-0016KU-2V
	for linux-rockchip@lists.infradead.org;
	Thu, 14 Dec 2023 19:17:25 +0000
Received: by mail-qt1-x835.google.com with SMTP id d75a77b69052e-425860bf009so61165621cf.2
        for <linux-rockchip@lists.infradead.org>; Thu, 14 Dec 2023 11:17:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1702581441; x=1703186241; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O2wAVapsX3d4Wu5zcLkO1Y9GXGGh0W89rcgF3jgTa1I=;
        b=YgqxB53Efudamc7h1+YBHJoPfBtgful6DAmrGj68SWC81/rGtrfz93Ct4op2b8nxGk
         LP56DtNwyMUGPYEFHBH/vGA9go3G8xNaWg4VaYnUiH+AJCiBul1/Nd5p2JnHl3uLgGNN
         khyzexv05pivSWp/f2TtUMygBUX3IsZ5AgTUqBAx9WFzcYUriCwXgrI0Uxk0hutFACAP
         B/wK5yNkT0zNfb7tsfogz7oI3qe7nuBBKYog12YVmVnzbgO8tJZB2D9/Urq4h19lWq4p
         pRkT3oTekHXw6TUB7yflSKYVKkmRF/Nohwlno+rK17y9UP+o79sylgKNvVrGKs14ETOj
         CU+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702581441; x=1703186241;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O2wAVapsX3d4Wu5zcLkO1Y9GXGGh0W89rcgF3jgTa1I=;
        b=r4/GX/oVs4gbPavF34zvZK1WAfZBZ2jRHpTDF9WOZuHA/PfK4Z6gAibnhx6t16km2h
         PaDwn+OODRpnrbI2Z+qfmfKiCijWLpiu/uqJzGtQEoKGSfwwa+cvLCDoJ05sF5zyoqJP
         40JW0ok4dCuaTnPIol9pQtifsuBnNEEqOWBq8+QmGUvTCWoG8PXZAo3jAQhyLHmlIlJf
         4sdsWRgQug6P/jcOXjjG7dYxlh+z0wiLsG11OPoSeO9Wnd34p203MTdbDdPypvXdbXzO
         FrUFI5i4dEP0p1ofpWOHj2IxNKHL0JBJ3KoR0Uo/0F5KxwZJcV/J0/ISWDIK7J4j6LAU
         D/Kw==
X-Gm-Message-State: AOJu0Yxnk99BuirpNw4V/uvzxipBGENMIF3hTnt5ZwNobDNixmXbzH6p
	rIQrERwnqA8IzeK7/l0wJ8lvXw5Re32GrtDoeaDL/Q==
X-Google-Smtp-Source: AGHT+IFzRCB9Md6JcXtZ2Es25f4UOuYMeLP9Itx6hDPrn436g7L6e3bJmetcIjga0ApETmdpPvmDW7XHrih7qp2afIE=
X-Received: by 2002:a05:622a:452:b0:423:a4f6:9aa2 with SMTP id
 o18-20020a05622a045200b00423a4f69aa2mr12441941qtx.6.1702581441062; Thu, 14
 Dec 2023 11:17:21 -0800 (PST)
MIME-Version: 1.0
References: <20231130201504.2322355-1-pasha.tatashin@soleen.com>
 <20231130201504.2322355-2-pasha.tatashin@soleen.com> <776e17af-ae25-16a0-f443-66f3972b00c0@google.com>
In-Reply-To: <776e17af-ae25-16a0-f443-66f3972b00c0@google.com>
From: Pasha Tatashin <pasha.tatashin@soleen.com>
Date: Thu, 14 Dec 2023 14:16:44 -0500
Message-ID: <CA+CK2bA8iJ_w8CSx2Ed=d2cVSujrC0-TpO7U9j+Ow-gfk1nyfQ@mail.gmail.com>
Subject: Re: [PATCH v2 01/10] iommu/vt-d: add wrapper functions for page allocations
To: David Rientjes <rientjes@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, alim.akhtar@samsung.com, 
	alyssa@rosenzweig.io, asahi@lists.linux.dev, baolu.lu@linux.intel.com, 
	bhelgaas@google.com, cgroups@vger.kernel.org, corbet@lwn.net, 
	david@redhat.com, dwmw2@infradead.org, hannes@cmpxchg.org, heiko@sntech.de, 
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
	will@kernel.org, yu-cheng.yu@intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_111723_816948_8F08F2C9 
X-CRM114-Status: GOOD (  25.41  )
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

T24gVGh1LCBEZWMgMTQsIDIwMjMgYXQgMTI6NTjigK9QTSBEYXZpZCBSaWVudGplcyA8cmllbnRq
ZXNAZ29vZ2xlLmNvbT4gd3JvdGU6Cj4KPiBPbiBUaHUsIDMwIE5vdiAyMDIzLCBQYXNoYSBUYXRh
c2hpbiB3cm90ZToKPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaW9tbXUvaW9tbXUtcGFnZXMu
aCBiL2RyaXZlcnMvaW9tbXUvaW9tbXUtcGFnZXMuaAo+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQK
PiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uMjMzMmY4MDdkNTE0Cj4gPiAtLS0gL2Rldi9udWxsCj4g
PiArKysgYi9kcml2ZXJzL2lvbW11L2lvbW11LXBhZ2VzLmgKPiA+IEBAIC0wLDAgKzEsMTk5IEBA
Cj4gPiArLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25seSAqLwo+ID4gKy8q
Cj4gPiArICogQ29weXJpZ2h0IChjKSAyMDIzLCBHb29nbGUgTExDLgo+ID4gKyAqIFBhc2hhIFRh
dGFzaGluIDxwYXNoYS50YXRhc2hpbkBzb2xlZW4uY29tPgo+ID4gKyAqLwo+ID4gKwo+ID4gKyNp
Zm5kZWYgX19JT01NVV9QQUdFU19ICj4gPiArI2RlZmluZSBfX0lPTU1VX1BBR0VTX0gKPiA+ICsK
PiA+ICsjaW5jbHVkZSA8bGludXgvdm1zdGF0Lmg+Cj4gPiArI2luY2x1ZGUgPGxpbnV4L2dmcC5o
Pgo+ID4gKyNpbmNsdWRlIDxsaW51eC9tbS5oPgo+ID4gKwo+ID4gKy8qCj4gPiArICogQWxsIHBh
Z2UgYWxsb2NhdGlvbiB0aGF0IGFyZSBwZXJmb3JtZWQgaW4gdGhlIElPTU1VIHN1YnN5c3RlbSBt
dXN0IHVzZSBvbmUgb2YKPiA+ICsgKiB0aGUgZnVuY3Rpb25zIGJlbG93LiAgVGhpcyBpcyBuZWNl
c3NhcnkgZm9yIHRoZSBwcm9wZXIgYWNjb3VudGluZyBhcyBJT01NVQo+ID4gKyAqIHN0YXRlIGNh
biBiZSByYXRoZXIgbGFyZ2UsIGkuZS4gbXVsdGlwbGUgZ2lnYWJ5dGVzIGluIHNpemUuCj4gPiAr
ICovCj4gPiArCj4gPiArLyoqCj4gPiArICogX19pb21tdV9hbGxvY19wYWdlc19ub2RlIC0gYWxs
b2NhdGUgYSB6ZXJvZWQgcGFnZSBvZiBhIGdpdmVuIG9yZGVyIGZyb20KPiA+ICsgKiBzcGVjaWZp
YyBOVU1BIG5vZGUuCj4gPiArICogQG5pZDogbWVtb3J5IE5VTUEgbm9kZSBpZAo+Cj4gTlVNQV9O
T19OT0RFIGlmIG5vIGxvY2FsaXR5IHJlcXVpcmVtZW50cz8KCklmIG5vIGxvY2FsaXR5IGlzIHJl
cXVpcmVkLCB0aGVyZSBpcyBhIGJldHRlciBpbnRlcmZhY2U6Cl9faW9tbXVfYWxsb2NfcGFnZXMo
KS4gVGhhdCBvbmUgd2lsbCBhbHNvIHRha2UgYSBsb29rIGF0IHRoZSBjYWxsaW5nCnByb2Nlc3Mg
cG9saWNpZXMgdG8gZGV0ZXJtaW5lIHRoZSBwcm9wZXIgTlVNQSBub2RlIHdoZW4gbm90aGluZyBp
cwpzcGVjaWZpZWQuIEhvd2V2ZXIsIHdoZW4gcG9saWNpZXMgc2hvdWxkIGJlIGlnbm9yZWQsIGFu
ZCBubyBsb2NhbGl0eQpyZXF1aXJlZCwgTlVNQV9OT19OT0RFIGNhbiBiZSBwYXNzZWQuCgo+Cj4g
PiArICogQGdmcDogYnVkZHkgYWxsb2NhdG9yIGZsYWdzCj4gPiArICogQG9yZGVyOiBwYWdlIG9y
ZGVyCj4gPiArICoKPiA+ICsgKiByZXR1cm5zIHRoZSBoZWFkIHN0cnVjdCBwYWdlIG9mIHRoZSBh
bGxvY2F0ZWQgcGFnZS4KPiA+ICsgKi8KPiA+ICtzdGF0aWMgaW5saW5lIHN0cnVjdCBwYWdlICpf
X2lvbW11X2FsbG9jX3BhZ2VzX25vZGUoaW50IG5pZCwgZ2ZwX3QgZ2ZwLAo+ID4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpbnQgb3JkZXIpCj4gPiAr
ewo+ID4gKyAgICAgc3RydWN0IHBhZ2UgKnBhZ2VzOwo+Cj4gcy9wYWdlcy9wYWdlLyBoZXJlIGFu
ZCBsYXRlciBpbiB0aGlzIGZpbGUuCgpJbiB0aGlzIGZpbGUsIHdoZXJlIHRoZXJlIGEgcGFnZSB3
aXRoIGFuICJvcmRlciIsIEkgcmVmZXJlbmNlIGl0IHdpdGgKInBhZ2VzIiwgd2hlbiBubyBvcmRl
ciAoaS5lLiBvcmRlciA9IDApLCBJIHJlZmVyZW5jZSBpdCB3aXRoICJwYWdlIgoKSS5lLjogX19p
b21tdV9hbGxvY19wYWdlIHZzLiBfX2lvbW11X2FsbG9jX3BhZ2VzCgo+Cj4gPiArCj4gPiArICAg
ICBwYWdlcyA9IGFsbG9jX3BhZ2VzX25vZGUobmlkLCBnZnAgfCBfX0dGUF9aRVJPLCBvcmRlcik7
Cj4gPiArICAgICBpZiAoIXBhZ2VzKQo+Cj4gdW5saWtlbHkoKT8KCldpbGwgYWRkIGl0LgoKPgo+
ID4gKyAgICAgICAgICAgICByZXR1cm4gTlVMTDsKPiA+ICsKPiA+ICsgICAgIHJldHVybiBwYWdl
czsKPiA+ICt9Cj4gPiArCj4gPiArLyoqCj4gPiArICogX19pb21tdV9hbGxvY19wYWdlcyAtIGFs
bG9jYXRlIGEgemVyb2VkIHBhZ2Ugb2YgYSBnaXZlbiBvcmRlci4KPiA+ICsgKiBAZ2ZwOiBidWRk
eSBhbGxvY2F0b3IgZmxhZ3MKPiA+ICsgKiBAb3JkZXI6IHBhZ2Ugb3JkZXIKPiA+ICsgKgo+ID4g
KyAqIHJldHVybnMgdGhlIGhlYWQgc3RydWN0IHBhZ2Ugb2YgdGhlIGFsbG9jYXRlZCBwYWdlLgo+
ID4gKyAqLwo+ID4gK3N0YXRpYyBpbmxpbmUgc3RydWN0IHBhZ2UgKl9faW9tbXVfYWxsb2NfcGFn
ZXMoZ2ZwX3QgZ2ZwLCBpbnQgb3JkZXIpCj4gPiArewo+ID4gKyAgICAgc3RydWN0IHBhZ2UgKnBh
Z2VzOwo+ID4gKwo+ID4gKyAgICAgcGFnZXMgPSBhbGxvY19wYWdlcyhnZnAgfCBfX0dGUF9aRVJP
LCBvcmRlcik7Cj4gPiArICAgICBpZiAoIXBhZ2VzKQo+ID4gKyAgICAgICAgICAgICByZXR1cm4g
TlVMTDsKPiA+ICsKPiA+ICsgICAgIHJldHVybiBwYWdlczsKPiA+ICt9Cj4gPiArCj4gPiArLyoq
Cj4gPiArICogX19pb21tdV9hbGxvY19wYWdlX25vZGUgLSBhbGxvY2F0ZSBhIHplcm9lZCBwYWdl
IGF0IHNwZWNpZmljIE5VTUEgbm9kZS4KPiA+ICsgKiBAbmlkOiBtZW1vcnkgTlVNQSBub2RlIGlk
Cj4gPiArICogQGdmcDogYnVkZHkgYWxsb2NhdG9yIGZsYWdzCj4gPiArICoKPiA+ICsgKiByZXR1
cm5zIHRoZSBzdHJ1Y3QgcGFnZSBvZiB0aGUgYWxsb2NhdGVkIHBhZ2UuCj4gPiArICovCj4gPiAr
c3RhdGljIGlubGluZSBzdHJ1Y3QgcGFnZSAqX19pb21tdV9hbGxvY19wYWdlX25vZGUoaW50IG5p
ZCwgZ2ZwX3QgZ2ZwKQo+ID4gK3sKPiA+ICsgICAgIHJldHVybiBfX2lvbW11X2FsbG9jX3BhZ2Vz
X25vZGUobmlkLCBnZnAsIDApOwo+ID4gK30KPiA+ICsKPiA+ICsvKioKPiA+ICsgKiBfX2lvbW11
X2FsbG9jX3BhZ2UgLSBhbGxvY2F0ZSBhIHplcm9lZCBwYWdlCj4gPiArICogQGdmcDogYnVkZHkg
YWxsb2NhdG9yIGZsYWdzCj4gPiArICoKPiA+ICsgKiByZXR1cm5zIHRoZSBzdHJ1Y3QgcGFnZSBv
ZiB0aGUgYWxsb2NhdGVkIHBhZ2UuCj4gPiArICovCj4gPiArc3RhdGljIGlubGluZSBzdHJ1Y3Qg
cGFnZSAqX19pb21tdV9hbGxvY19wYWdlKGdmcF90IGdmcCkKPiA+ICt7Cj4gPiArICAgICByZXR1
cm4gX19pb21tdV9hbGxvY19wYWdlcyhnZnAsIDApOwo+ID4gK30KPiA+ICsKPiA+ICsvKioKPiA+
ICsgKiBfX2lvbW11X2ZyZWVfcGFnZXMgLSBmcmVlIHBhZ2Ugb2YgYSBnaXZlbiBvcmRlcgo+ID4g
KyAqIEBwYWdlczogaGVhZCBzdHJ1Y3QgcGFnZSBvZiB0aGUgcGFnZQo+Cj4gSSB0aGluayAicGFn
ZXMiIGltcGxpZXMgbW9yZSB0aGFuIG9uZSBwYWdlLCB0aGlzIGlzIGp1c3QgYSAocG90ZW50aWFs
bHkKPiBjb21wb3VuZCkgcGFnZT8KClllcywgbW9yZSB0aGFuIG9uZSBwYWdlLCBiYXNpY2FsbHks
IHdoZW4gb3JkZXIgbWF5IGJlID4gMC4KCj4gPiArLyoqCj4gPiArICogaW9tbXVfZnJlZV9wYWdl
IC0gZnJlZSBwYWdlCj4gPiArICogQHZpcnQ6IHZpcnR1YWwgYWRkcmVzcyBvZiB0aGUgcGFnZSB0
byBiZSBmcmVlZC4KPiA+ICsgKi8KPiA+ICtzdGF0aWMgaW5saW5lIHZvaWQgaW9tbXVfZnJlZV9w
YWdlKHZvaWQgKnZpcnQpCj4gPiArewo+ID4gKyAgICAgaW9tbXVfZnJlZV9wYWdlcyh2aXJ0LCAw
KTsKPiA+ICt9Cj4gPiArCj4gPiArLyoqCj4gPiArICogaW9tbXVfZnJlZV9wYWdlc19saXN0IC0g
ZnJlZSBhIGxpc3Qgb2YgcGFnZXMuCj4gPiArICogQHBhZ2VzOiB0aGUgaGVhZCBvZiB0aGUgbHJ1
IGxpc3QgdG8gYmUgZnJlZWQuCj4KPiBEb2N1bWVudCB0aGUgbG9ja2luZyByZXF1aXJlbWVudHMg
Zm9yIHRoaXM/CgpUaGFuayB5b3UgZm9yIHRoZSByZXZpZXcuIEkgd2lsbCBhZGQgaW5mbyBhYm91
dCBsb2NraW5nIHJlcXVpcmVtZW50cywKaW4gZmFjdCB0aGV5IGFyZSB2ZXJ5IHJlbGF4ZWQuCgpU
aGVzZSBwYWdlcyBhcmUgYWRkZWQgdG8gdGhlIGxpc3QgYnkgdW5tYXBzIG9yIHJlbWFwcyBvcGVy
YXRpb24gaW4KSW50ZWwgSU9NTVUgaW1wbGVtZW50YXRpb24uIFRoZXNlIGNhbGxzIGFzc3VtZSB0
aGF0IHdob2V2ZXIgaXMgZG9pbmcKdGhvc2Ugb3BlcmF0aW9ucyBoYXMgZXhjbHVzaXZlIGFjY2Vz
cyB0byB0aGUgVkEgcmFuZ2UgaW4gdGhlIHBhZ2UKdGFibGUgb2YgdGhhdCBvcGVyYXRpb24uIFRo
ZSBwYWdlcyBpbiB0aGlzIGZyZWVsaXN0IG9ubHkgYmVsb25nIHRvIHRoZQpmb3JtZXIgcGFnZS10
YWJsZXMgZnJvbSB0aGUgSU9WQSByYW5nZSBmb3IgdGhvc2Ugb3BlcmF0aW9ucy4KCj4gPiArICov
Cj4gPiArc3RhdGljIGlubGluZSB2b2lkIGlvbW11X2ZyZWVfcGFnZXNfbGlzdChzdHJ1Y3QgbGlz
dF9oZWFkICpwYWdlcykKPiA+ICt7Cj4gPiArICAgICB3aGlsZSAoIWxpc3RfZW1wdHkocGFnZXMp
KSB7Cj4gPiArICAgICAgICAgICAgIHN0cnVjdCBwYWdlICpwID0gbGlzdF9lbnRyeShwYWdlcy0+
cHJldiwgc3RydWN0IHBhZ2UsIGxydSk7Cj4gPiArCj4gPiArICAgICAgICAgICAgIGxpc3RfZGVs
KCZwLT5scnUpOwo+ID4gKyAgICAgICAgICAgICBwdXRfcGFnZShwKTsKPiA+ICsgICAgIH0KPiA+
ICt9CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
