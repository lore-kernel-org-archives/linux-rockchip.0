Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A28CDCCD184
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Oct 2025 12:47:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NQVNgIOl37mgT+y9HHqYIZt1hC+dioqMiDbZeXAh0ds=; b=2GHy8H/Ruu+U8c
	v3Pu5ZA7GXVSOZo7jjeD+8IBv08OWg+1bKCopbALrGryrkSNcImeyWDFqUs7tEQuv2sAWrinUN1Pb
	4sLnHD/f/t9MO6/dCyc9YeO9mRpPKv/7g9pZXQEL6bDtZ20caCQskQrUrpLSpw2IuWsiTmVS2gnqf
	/DzyJLce3I7GxKbZh369zWeZb4q0PSa/jGNWzxk47bljlHXYPLVirNOP/HvX9fD9BX6tJpGK4REz5
	Yms+tPDBEeJ8xOXuiowsFQeJNuDEctOG2EmeJfgsnrh+612+O8JSiv+XAJLTysqI2OGBCjo31Oglv
	8WC7foxxyAEALFZl4Z5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6q3U-000000068kB-3vSp;
	Thu, 09 Oct 2025 12:47:36 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6q3T-000000068jf-0Ypn
	for linux-rockchip@lists.infradead.org;
	Thu, 09 Oct 2025 12:47:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id A90B6401F5;
	Thu,  9 Oct 2025 12:47:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37F0CC4CEE7;
	Thu,  9 Oct 2025 12:47:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760014054;
	bh=zvGRayVs38LUDv89UOLvEh9Jzl8OZV1NLB1WntmzPks=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SThG6o1uhMovzEU+6i569x2lBcSday6XW0GeNuM6ICvVT84NJkrdDRfSoGg+P3nT1
	 BnaLNNEYrsfOsqF82aTWrqSoy4CPqe33yYkJHRpmrV1jcdPqKoVfvvrfYhawtV7H3e
	 l06FJsba6uFHfFbiW0vYpc/jw+EIc8L3lrMmqU6y3LQ6KtlTS8fW3w3O31VtOd4qkK
	 NN+zXcazFCJG2iUna2Xm4VC5bS11z7bahoPpcLL9fR5njeuJeegGPJtHm8mg5tqesF
	 RAd1e03Z9lTy08Iy7QlVxy6QXqsv+CqUNltxi0CinpwbBi0+HvkSssQpbdgdXpCcc8
	 mR/UB9MzKr7uw==
Date: Thu, 9 Oct 2025 13:47:29 +0100
From: Lee Jones <lee@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
	Chris Morgan <macroalpha82@gmail.com>, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, broonie@kernel.org, lgirdwood@gmail.com,
	sre@kernel.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: (subset) [PATCH v8 0/5] Add Texas Instruments BQ25703A Charger
Message-ID: <20251009124729.GD2796410@google.com>
References: <20250904160530.66178-1-macroalpha82@gmail.com>
 <175760259503.1582479.14013409824773713781.b4-ty@kernel.org>
 <CAL_JsqJy9XwNrcwgk4Dhf40ajn8WwD47v2YqZ3iYZz+CjEdv5g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqJy9XwNrcwgk4Dhf40ajn8WwD47v2YqZ3iYZz+CjEdv5g@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251009_054735_193438_6EA99ABF 
X-CRM114-Status: GOOD (  15.76  )
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

T24gTW9uLCAyOSBTZXAgMjAyNSwgUm9iIEhlcnJpbmcgd3JvdGU6Cgo+IE9uIFRodSwgU2VwIDEx
LCAyMDI1IGF0IDk6NTbigK9BTSBMZWUgSm9uZXMgPGxlZUBrZXJuZWwub3JnPiB3cm90ZToKPiA+
Cj4gPiBPbiBUaHUsIDA0IFNlcCAyMDI1IDExOjA1OjI1IC0wNTAwLCBDaHJpcyBNb3JnYW4gd3Jv
dGU6Cj4gPiA+IEZyb206IENocmlzIE1vcmdhbiA8bWFjcm9tb3JnYW5AaG90bWFpbC5jb20+Cj4g
PiA+Cj4gPiA+IEFkZCBzdXBwb3J0IGZvciB0aGUgVGV4YXMgSW5zdHJ1bWVudHMgQlEyNTcwM0Eg
Y2hhcmdlciBtYW5hZ2VyLiBUaGUKPiA+ID4gZGV2aWNlIGludGVncmF0ZXMgYSBib29zdCBjb252
ZXJ0ZXIgd2l0aCB0aGUgY2hhcmdlciBtYW5hZ2VyLiBUaGlzCj4gPiA+IHNlcmllcyBhZGRzIHRo
ZSBkZXZpY2UgYXMgYW4gTUZEIHdpdGggc2VwYXJhdGUgcmVndWxhdG9yIGFuZCBwb3dlcgo+ID4g
PiBzdXBwbHkgZHJpdmVycy4gVGhpcyBhbGxvd3MgdXMgdG8gbWFuYWdlIGEgY2lyY3VsYXIgZGVw
ZW5kZW5jeSB3aXRoCj4gPiA+IGEgdHlwZS1jIHBvcnQgbWFuYWdlciB3aGljaCBkZXBlbmRzIG9u
IHRoZSByZWd1bGF0b3IgZm9yIHVzYi1vdGcKPiA+ID4gYnV0IHN1cHBsaWVzIHBvd2VyIHRvIHRo
ZSBCUTI1NzAzQSBjaGFyZ2VyLgo+ID4gPgo+ID4gPiBbLi4uXQo+ID4KPiA+IEFwcGxpZWQsIHRo
YW5rcyEKPiA+Cj4gPiBbMS81XSBkdC1iaW5kaW5nczogbWZkOiB0aSxicTI1NzAzYTogQWRkIFRJ
IEJRMjU3MDNBIENoYXJnZXIKPiA+ICAgICAgIGNvbW1pdDogNzZiYzIyMDNhNDZlZjcwNGE0Y2Q4
MDAzOTg2ZjZiZDc0MTM5YTM2Nwo+IAo+IEl0IHNlZW1zIHRoaXMgaXMgc3RpbGwgbm90IGluIGxp
bnV4LW5leHQ/Cj4gCj4gPiBbMi81XSBtZmQ6IGJxMjU3eHg6IEFkZCBzdXBwb3J0IGZvciBCUTI1
NzAzQSBjb3JlIGRyaXZlcgo+ID4gICAgICAgY29tbWl0OiAzYjFiYmZiNWZjZTNjYTlmZmZjOTJh
YzFiMDUzYjBjZmJiMWYzMjJiCj4gPiBbMy81XSBwb3dlcjogc3VwcGx5OiBicTI1N3h4OiBBZGQg
c3VwcG9ydCBmb3IgQlEyNTdYWCBjaGFyZ2VyCj4gPiAgICAgICBjb21taXQ6IDFjYzAxN2I3Zjlj
N2I3Y2Q4NmZkZGE0YWVlMzZiOTJkOTFjYzJhZDIKPiA+IFs0LzVdIHJlZ3VsYXRvcjogYnEyNTd4
eDogQWRkIGJxMjU3eHggYm9vc3QgcmVndWxhdG9yIGRyaXZlcgo+ID4gICAgICAgY29tbWl0OiA5
ODFkZDE2MmI2MzU3OGFlZTM0YjVjNjg3OTVlMjQ2NzM0Yjc2ZDcwCgpBbGwgb2YgdGhlc2UgYXJl
IG5vdyBpbiBtYWlubGluZS4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
