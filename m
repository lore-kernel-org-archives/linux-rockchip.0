Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60FECC369A4
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Apr 2025 14:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6naSTU4iKGZit9i3AzEz+uZXi59K6R/0ntHZRdrtaEY=; b=j2ysBpwocIrFZR
	HQyJd0fwHc6tSKWzruwo4qvSsfDLKY1JEJgr99Qpf4bRfAZDaNM6vPiGnF6gvzbsOY+N6aalAoFOc
	NkznacwZzHcyDi7O5gjNnPf1rB5LvyTd8i7bxn85I0NFPCcYjqBNAfTl9Md2rKRBpMpaW2xo9qNo8
	BSyvotSa4pKsWDaqhtK+uCVQlR5eUFrt+nA3qC69eUgFIEsVJV09QwAT59zBz/R0nNNOf9BL7SXMx
	9ycJfqUoLORvu3yqoNGzGPZqxzgn962njPeUEK090wN7+gLgnRwKmudrX+IVK79tINThQ93GBXOtF
	JGoFpL82wZv3L6RpPqLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u29cp-00000004K51-1y7A;
	Tue, 08 Apr 2025 14:08:27 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u29WB-00000004IoI-1A9L;
	Tue, 08 Apr 2025 14:01:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id D338244331;
	Tue,  8 Apr 2025 14:01:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F6B0C4CEE5;
	Tue,  8 Apr 2025 14:01:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744120894;
	bh=AJTrUxLCpXkjwGm6dEFFx0uFraK+mSJsogVi5jpWzW4=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=SdQDNuMJUZiUKqMg7G2AxEx6L+8ROcLJ5YjYK8jQvdj5gH4XXKyNbnJODutqrJnL6
	 nQ4YUZF4QwmTk9zf7B1D2TKImQlcS6Vn0hicpxawkbkZCHBiXz3fQJm+kJSLFrMosk
	 jcmUUjRoIbf937/GwutW51y6T/ka5LGoWp88RL+ITgtG7AtGAyWu0V+27or5TlZXkm
	 DhD6ryUJPDr0Umq+gkHlYIxLxsiKNrS4dMKTyWa8mJrc9bK5B3pzzHM4h8jKD+VK1C
	 JJzsBaqpMzRdN0IvjUAfWC9CGUCG3LTVVE396nBaDmQLmkoTUDUp+cbg++uny93Zd3
	 FEpXcrIRL1S/g==
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5e6c18e2c7dso11070700a12.3;
        Tue, 08 Apr 2025 07:01:34 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUFFcXE8+qP2/bMZsOisPnPXS4cwyCmZg0+dM3FAsO2AJpEhm+kN4nhaKNz7Hr/U8Grv2MTERgUpLrn87pAJWLF@lists.infradead.org, AJvYcCUZu44YA71/osCVrAsTUZiAChrOgWtqq11XoRKFiQlXdLgFn9BM54xr6oc45OYClNt9TPqSQID3xtdGDfrevFA=@lists.infradead.org
X-Gm-Message-State: AOJu0YzbAj9J0JaLFhiERZOjkN2F05rHP8tgyjcDFQcWP9eQSOJzqot9
	Hrmu3WArAMYiuW23LGmEnOP+27AsWERBeRrHl8r/eRV/+lLqw5LEg+6fbECGqfykogYVnC44eN3
	/tGpkxRuwY7J9KcBtbiE3GNy4wQ==
X-Google-Smtp-Source: AGHT+IGP9sd4kwLQh9cskvbaOURGKlmbwlRvhOGqjeU+701fsh0fIkFAcBdv9E8PkoqmV6SOnJfOslOAlnpG7pMPeOA=
X-Received: by 2002:a05:6402:5108:b0:5ee:497:d713 with SMTP id
 4fb4d7f45d1cf-5f0db8b37ccmr10221419a12.33.1744120892804; Tue, 08 Apr 2025
 07:01:32 -0700 (PDT)
MIME-Version: 1.0
References: <5552256.Sb9uPGUboI@phil> <8512245.T7Z3S40VBb@diego>
 <CAL_JsqJVi5tf8bh6AnZwNwiBe+EG2CHQRGQGLK6SdMzQiiSbWA@mail.gmail.com> <2000188.PYKUYFuaPT@diego>
In-Reply-To: <2000188.PYKUYFuaPT@diego>
From: Rob Herring <robh@kernel.org>
Date: Tue, 8 Apr 2025 09:01:21 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+EwYZYYePusUZbOh+n6-MVt2AFGEiPg8AzHR73K-9-BQ@mail.gmail.com>
X-Gm-Features: ATxdqUH8Tr9HDZeB4zegoj3RV-fkJZt-T-YIfzDJpk3-wYrrf7UR40vozxN9hLk
Message-ID: <CAL_Jsq+EwYZYYePusUZbOh+n6-MVt2AFGEiPg8AzHR73K-9-BQ@mail.gmail.com>
Subject: Re: [GIT PULL] Rockchip dts64 changes for 6.15 #3
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: arm@kernel.org, soc@kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250408_070135_354302_C9DA3A6D 
X-CRM114-Status: GOOD (  25.94  )
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

T24gTW9uLCBBcHIgNywgMjAyNSBhdCAxMTo0OeKAr0FNIEhlaWtvIFN0w7xibmVyIDxoZWlrb0Bz
bnRlY2guZGU+IHdyb3RlOgo+Cj4gQW0gTW9udGFnLCA3LiBBcHJpbCAyMDI1LCAxODo0Mzo1NCBN
aXR0ZWxldXJvcMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIFJvYiBIZXJyaW5nOgo+ID4gT24g
TW9uLCBBcHIgNywgMjAyNSBhdCAxMTo0MOKAr0FNIEhlaWtvIFN0w7xibmVyIDxoZWlrb0BzbnRl
Y2guZGU+IHdyb3RlOgo+ID4gPgo+ID4gPiBIaSBSb2IsCj4gPiA+Cj4gPiA+IEFtIE1vbnRhZywg
Ny4gQXByaWwgMjAyNSwgMTc6NTY6MzcgTWl0dGVsZXVyb3DDpGlzY2hlIFNvbW1lcnplaXQgc2No
cmllYiBSb2IgSGVycmluZzoKPiA+ID4gPiBPbiBXZWQsIE1hciAxOSwgMjAyNSBhdCA2OjU24oCv
UE0gSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4gd3JvdGU6Cj4gPiA+ID4gPgo+ID4g
PiA+ID4gSGkgc29jIG1haW50YWluZXJzLAo+ID4gPiA+ID4KPiA+ID4gPiA+IEkgbWFkZSBhbiBl
cnJvciBhbmQgYWNjaWRlbnRpYWxseSBhcHBsaWVkIGEgcGF0Y2ggdGhhdCB3YXMgbWVhbnQgZm9y
Cj4gPiA+ID4gPiB0aGUgbWZkIHRyZWUuIFRoYW5rZnVsbHkgU3RlcGhlbiBub3RpY2VkIHRoYXQg
d2hlbiB0aGUgZHVwbGljYXRlCj4gPiA+ID4gPiBjb21taXQgYXBwZWFyZWQgaW4gbGludXgtbmV4
dC4KPiA+ID4gPgo+ID4gPiA+IEJvdGggY29tbWl0cyBhcmUgaW4gdjYuMTUtcmMxIG5vdyBhbmQg
dGhlIHJldmVydCBpcyBub3QsIHNvIHRoaXMKPiA+ID4gPiBzaG91bGQgbm90IGdldCBhcHBsaWVk
L3B1bGxlZC4gT3IgeW91IHdpbGwgbmVlZCB0byByZXZlcnQgdGhlIHJldmVydC4KPiA+ID4KPiA+
ID4geWVzLCB0aGF0IHdhcyB0aGUgaW50ZW50aW9uLgo+ID4gPgo+ID4gPiBCYWNrIHdoZW4gSSBz
dWJtaXR0ZWQgdGhpcyBQUiwgSSB0YWxrZWQgd2l0aCBBcm5kIG9uIElSQyB0aGUgbmV4dCBkYXku
Cj4gPiA+Cj4gPiA+IEFzIGJvdGggY29tbWl0cyBhcmUgaWRlbnRpY2FsIHNhbnMgc29tZSBTaWdu
ZWQtb2ZmLWJ5IGxpbmVzLCBoZSBzdWdnZXN0ZWQKPiA+ID4gbm90IHRyeWluZyB0byBwdXQgYSBy
ZXZlcnQgaW4sIGJ1dCBpbnN0ZWFkIGxldCBnaXQgc29sdmUgaXQgaXRzZWxmLCBiZWNhdXNlCj4g
PiA+Cj4gPiA+IGFybmQgb24gSVJDOgo+ID4gPiA+IFsuLi5dLCBidXQgSSB3b3JyeSB0aGF0IHRo
aXMgd291bGQgbWFrZSB0aGluZ3Mgd29yc2UgaWYgJ2dpdCBtZXJnZScKPiA+ID4gPiBlbmRzIHVw
IGRvaW5nIHRoZSByZXZlcnQgb24gdG9wIG9mIHRoZSBvcmlnaW5hbCBjb21taXQgb25jZSBpdCBn
ZXRzIHRvCj4gPiA+ID4gdG9ydmFsZHMuIE5vdCBzdXJlIGlmIHRoYXQncyBzdGlsbCBhIHByb2Js
ZW0gaW4gZ2l0IHRoZXNlIGRheXMsIGJ1dAo+ID4gPiA+IEkndmUgc2VlbiBpdCBoYXBwZW4gaW4g
dGhlIHBhc3QuCj4gPiA+ID4gaWYgdHdvIGlkZW50aWNhbCBwYXRjaGVzIGFyZSBpbiBkaWZmZXJl
bnQgYnJhbmNoZXMsIGp1c3QgbGVhdmluZyB0aGVtCj4gPiA+ID4gdGhlcmUgaXMgdXN1YWxseSBl
YXNpZXIKPiA+ID4KPiA+ID4gU28gdGhpcyBQUiB3YXMgYWxyZWFkeSBtYXJrZWQgYXMgInN1cGVy
c2VlZGVkIiBpbiBwYXRjaHdvcmsgYmFjawo+ID4gPiBvbiBtYXJjaCAyMHRoLgo+ID4gPgo+ID4g
Pgo+ID4gPiBOZXZlcnRoZWxlc3MsIHRoYW5rcyBmb3IgbWFraW5nIHN1cmUgbm8gZnVua3kgcmV2
ZXJ0IGhhcHBlbnMgbm93Lgo+ID4KPiA+IFRoZSBjb21taXQgaXMgc3RpbGwgaW4gbGludXgtbmV4
dCB0aG91Z2guIFRoYXQncyBob3cgSSBoYXBwZW5lZCB1cG9uIHRoaXMuCj4KPiBBaCByaWdodC4g
SSd2ZSByZWNyZWF0ZWQgbXkgbmV4dCBicmFuY2ggZWFybGllciB0b2RheSwgYWZ0ZXIgdGhlIC1y
YzEKPiByZWxlYXNlLCBzbyB0aGlzIHNob3VsZCBiZSBnb25lIHdpdGggdGhlIG5leHQgbGludXgt
bmV4dC4KClN0aWxsIHRoZXJlIHRvZGF5IGFuZCBub3cgd2UgaGF2ZToKClsndHNkLHB4MzAtY29i
cmEtbHRrMDUwaDMxNDZ3JywgJ3JvY2tjaGlwLHB4MzAtY29icmEnLCAncm9ja2NoaXAscHgzMCdd
ClsndHNkLHB4MzAtY29icmEtbHRrMDUwaDMxNDZ3LWEyJywgJ3JvY2tjaGlwLHB4MzAtY29icmEn
LCAncm9ja2NoaXAscHgzMCddClsndHNkLHB4MzAtY29icmEtbHRrNTAwaGQxODI5JywgJ3RzZCxw
eDMwLWNvYnJhJywgJ3JvY2tjaGlwLHB4MzAnXQoKV2hpY2ggYXBwZWFyIG9uIG5vIGxpc3QuCgpS
b2IKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
