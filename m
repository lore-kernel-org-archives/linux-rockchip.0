Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 823F8C7EE22
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Apr 2023 22:11:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mmJZVwa2h81CD9HmVgnxClAk8/FhXTUIOcI3jb9Fj1Y=; b=mGdY0ohnFvIMfU
	xFKxjPbPyWomAXfYKaER+1TcglKx2W6NbVQshPxz9zYtvrDFStv2UQUlZjTOOIc6sYQyxfUYQaXV3
	pRlgJtCUfYBTdHArE8Pc6/BmEdcaW68GNUcGmViGmCAaG5uY0VUK3kNgZKzF3wWu4X66czXcjM2JC
	B1dkAFpsLbpdHIqz72X8DxVUtHyLnClZMwSh3KCGwyL5xeXe7J2vp2ZExiXigTe7X1V3Dht8yiu11
	1FFt0BbskpLax2HkGoCIahwqToxkR0MQdJjz+epoBFlDkAFV2s76FrXb+sGy9AgKoQUywfw7h++yD
	DIdM79jIk1X2XM/lVK3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pr4OS-00HFgI-05;
	Mon, 24 Apr 2023 22:10:44 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pr4OL-00HFex-1S;
	Mon, 24 Apr 2023 22:10:39 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 3502B6297D;
	Mon, 24 Apr 2023 22:10:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9740EC433D2;
	Mon, 24 Apr 2023 22:10:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682374235;
	bh=FnGcqvrEdLbzUlljWiXhCsHy+qSn4AIL5KgH7iNawGA=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=vD/FFfAqifz1nnj6u1cKoYA6GH2xWLs1V+ea4SuOBpAHQh0NGFjWQSVbhpBcJcyWf
	 5aOCD+ypac0Bq6YZR1YiJlplzcuSYM9Rj/cS7VNwTmIarJqdDGwq0siT8Z1Rx3pyFd
	 uIF6CG+ld0p/DXJ2MDysgwFGm33oDzMbh8FK4uTfw2dpxgA6gSYi2UnPj9+YrUqTUc
	 RO+7Hri8oZZphp3UiJzPteyEuQ/oIqhua7BNO+3B52D/6VB2MsknlXdeKRKeWTnwr9
	 uVKS0ASFJVltj9jRqGi5XDys6F6NjS3eMd3J8yY7nKHNNoZ64TPWpTB1RlyDqpRbtD
	 Lm7Fysb+fVYSQ==
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-b8f5276baa3so3727636276.3;
        Mon, 24 Apr 2023 15:10:35 -0700 (PDT)
X-Gm-Message-State: AAQBX9dSWTOY7ZerrU0Jak4IbqfeFQY8PGyw1J3l0n6PLNFUwSCUrv6j
	+xU1zTYp9L0U4oQCDhykUOYxo5+uP/i97tFwDQ==
X-Google-Smtp-Source: AKy350Z8fwjeT6uilQZV5elUBNHPlU26+hD27eSWPRlQhPwmqTcN2nXurF+nyFvBNi+9INgYk5eGXnlLE8/dW8JHY5k=
X-Received: by 2002:a0d:e2c9:0:b0:54f:752e:9b63 with SMTP id
 l192-20020a0de2c9000000b0054f752e9b63mr9341801ywe.15.1682374234531; Mon, 24
 Apr 2023 15:10:34 -0700 (PDT)
MIME-Version: 1.0
References: <20220328000915.15041-1-ansuelsmth@gmail.com> <85eb14ec-f465-7447-ad77-a3dabc666f47@kernel.org>
 <YkKRYnN84D9VZhGj@Ansuel-xps.localdomain>
In-Reply-To: <YkKRYnN84D9VZhGj@Ansuel-xps.localdomain>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 24 Apr 2023 17:10:23 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+RQQ-ADMxLPUFwk6S6kGmb6oNDy4k52fnU0EtbUvqmSA@mail.gmail.com>
Message-ID: <CAL_Jsq+RQQ-ADMxLPUFwk6S6kGmb6oNDy4k52fnU0EtbUvqmSA@mail.gmail.com>
Subject: Re: [RFC PATCH 0/1] Categorize ARM dts directory
To: Ansuel Smith <ansuelsmth@gmail.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-actions@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-omap@vger.kernel.org, 
	linux-amlogic@lists.infradead.org, linux-arm-kernel@axis.com, 
	linux-aspeed@lists.ozlabs.org, linux-rpi-kernel@lists.infradead.org, 
	chrome-platform@lists.linux.dev, linux-renesas-soc@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	kernel@dh-electronics.com, linux-mediatek@lists.infradead.org, 
	openbmc@lists.ozlabs.org, linux-tegra@vger.kernel.org, linux-oxnas@groups.io, 
	linux-arm-msm@vger.kernel.org, linux-unisoc@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-realtek-soc@lists.infradead.org, 
	Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230424_151037_597908_4BA9815E 
X-CRM114-Status: GOOD (  53.67  )
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

T24gVHVlLCBNYXIgMjksIDIwMjIgYXQgODoyN+KAr0FNIEFuc3VlbCBTbWl0aCA8YW5zdWVsc210
aEBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gT24gVHVlLCBNYXIgMjksIDIwMjIgYXQgMDM6MjA6MThQ
TSArMDIwMCwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiA+IE9uIDI4LzAzLzIwMjIgMDI6
MDksIEFuc3VlbCBTbWl0aCB3cm90ZToKPiA+ID4gSGksCj4gPiA+IGFzIHRoZSB0aXRsZSBzYXks
IHRoZSBpbnRlbnRpb24gb2YgdGhpcyAiInNlcmllcyIiIGlzIHRvIGZpbmFsbHkgY2F0ZWdvcml6
ZQo+ID4gPiB0aGUgQVJNIGR0cyBkaXJlY3RvcnkgaW4gc3ViZGlyZWN0b3J5IGZvciBlYWNoIG9l
bS4KPiA+ID4KPiA+ID4gVGhlIG1haW4gcmVhc29uIGZvciB0aGlzIGlzIHRoYXQgaXQgYmVjYW1l
IHVucHJhY3RpY2FsIHRvIGhhbmRsZSAyNjAwCj4gPiA+IGR0cyBmaWxlcyBhbmQgdHJ5IHRvIGV2
ZW4gdW5kZXJzdGFuZC9lZGl0L2NoZWNrIHRoZSBzaXR1YXRpb24gZm9yIGEKPiA+ID4gc3BlY2lm
aWMgdGFyZ2V0Lgo+ID4gPgo+ID4gPiBJbiBhcm02NCB3ZSBhbHJlYWR5IGhhdmUgdGhpcyBraW5k
IG9mIHNlcGFyYXRpb24gYW5kIEkgaG9uZXN0bHkgdGhpbmsKPiA+ID4gdGhhdCB0aGlzIHdhcyBu
ZXZlciBwcm9wb3NlZCBmb3IgQVJNIGR1ZSB0byB0aGUgZmFjdCB0aGF0IHRoZXJlIGFyZQo+ID4g
PiAyNjAwKyBmaWxlcyB0byBzb3J0IGFuZCB0aGUgZmFjdCB0aGF0IGl0IHdpbGwgYmUgYSBtZXNz
IHRvIG1lcmdlIHRoaXMKPiA+ID4gZW50aXJlbHkgYnV0IElNSE8gd2l0aCBhIGxpdHRsZSBiaXQg
b2YgZWZmb3J0IHdlIGNhbiBmaW5hbGx5IHNvbHZlIHRoaXMKPiA+ID4gcHJvYmxlbSBhbmQgaGF2
ZSBhIHdlbGwgb3JnYW5pemVkIGRpcmVjdG9yeSBqdXN0IGxpa2UgYXJtNjQuCj4gPiA+Cj4gPiA+
IFNvbWUgcHJlcmVxdWlzaXRlIG9uIGhvdyB0aGlzIHdvcmsgd2FzIGRvbmU6Cj4gPiA+IC0gVGhp
cyBjb21lcyBlbnRpcmVseSBmcm9tIGEgcHl0aG9uIHNjcmlwdCBjcmVhdGVkIGJ5IG1lIGZvciB0
aGUgdGFzay4KPiA+ID4gICBsaW5rZWQgaGVyZSBbMV0KPiA+ID4gLSBJIGhhZCB0byBtYW51YWxs
eSBjYXRlZ29yaXplIGFsbCB0aGUgZGlmZmVyZW50IGFyY2ggaW4gdGhlIG1ha2VmaWxlCj4gPiA+
ICAgYmFzZWQgb24gdGhlIG9lbS4gSSBzZWFyY2hlZCBldmVyeSBhcmNoIG9uIHRoZSBpbnRlcm5l
dCB0cnlpbmcgdG8KPiA+ID4gICB1bmRlcnN0YW5kIHRoZSBjb3JyZWN0IG9lbS4gSSBob3BlIHRo
ZXkgYXJlIGNvcnJlY3QgYnV0IEkgd291bGQgbG92ZQo+ID4gPiAgIHNvbWUgY29tbWVudHMgYWJv
dXQgdGhlbS4KPiA+ID4gLSBUaGlzIGN1cnJlbnQgIiJzZXJpZXMiIiBpcyBhbGwgc3F1YXNoZWQg
aW4gb25lIGJpZyBjb21taXQgdG8gYmV0dGVyCj4gPiA+ICAgcmVjZWl2ZSBjb21tZW50cyBmb3Ig
dGhpcy4gVGhlIGZpbmFsIHZlcnNpb24gaWRlYWxseSB3b3VsZCBoYXZlIGFsbAo+ID4gPiAgIGNo
YW5nZXMgaW4gc2VwYXJhdGUgY29tbWl0cy4gVGhlIHNjcmlwdCBjYW4gYWxyZWFkeSBkbyB0aGlz
LCBpdCdzIGp1c3QKPiA+ID4gICBjb21tZW50ZWQuCj4gPiA+Cj4gPiA+IEhlcmUgaXMgYSBsaXN0
IG9mIHNvbWUgZGlzY292ZXJpZXMgd2hpbGUgZG9pbmcgYWxsIHRoZSBzb3J0aW5nLgo+ID4gPiBU
aGVzZSBhcmUgdG90YWxseSBhZGRpdGlvbmFsIHJlYXNvbiB3aHkgd2UgbmVlZCB0aGlzLgo+ID4g
Pgo+ID4gPiBXaGlsZSBjcmVhdGluZyB0aGUgc2NyaXB0IEkgZGlzY292ZXJlZCBzb21lIGZ1bm55
IHRoaW5nczoKPiA+ID4gLSBXZSBoYXZlIG9ycGhhbiBkdHMhIFRoZXJlIGFyZSBkdHMgdGhhdCBh
cmUgbmV2ZXIgY29tcGlsZWQgYW5kIGFyZQo+ID4gPiAgIHRoZXJlIGp1c3QgZm9yIHJlZmVyZW5j
ZS4gV2Ugd291bGQgbmV2ZXIgaGF2ZSBub3RpY2VkIHRoaXMgd2l0aG91dCB0aGlzCj4gPiA+ICAg
Y2hhbmdlIGFuZCBwcm9iYWJseSBub2JvZHkgbm90aWNlZCBpdC4gVGhleSBhcmUgY3VycmVudGx5
IGFsbCBsaXN0ZWQKPiA+ID4gICBpbiB0aGUgcHl0aG9uIHNjcmlwdC4KPiA+ID4gLSBXZSBoYXZl
IGR0c2kgc2hhcmVkIGFjcm9zcyBkaWZmZXJlbnQgb2VtLiBNeSBjdXJyZW50IHNvbHV0aW9uIGZv
ciB0aGVtCj4gPiA+ICAgaXM6IE5PVCBTT1JUIFRIRU0gYW5kIGxlYXZlIHRoZW0gaW4gdGhlIGdl
bmVyaWMgZGlyZWN0b3J5IGFuZCBjcmVhdGUgYQo+ID4gPiAgIGxpbmsgaW4gZWFjaCBvZW0gZHRz
IHRoYXQgcG9pbnRzIHRvIHRoZXNlIGR0c2kuIFRoaXMgaXMgdG8gdHJ5IGluCj4gPiA+ICAgZXZl
cnkgd2F5IHBvc3NpYmxlIHRvIHNraXAgYW55IGFkZGl0aW9uYWwgY2hhbmdlcyB0byB0aGUgZHRz
Lgo+ID4gPiAgIEN1cnJlbnQgZHRzaSB0aGF0IHN1ZmZlcnMgZnJvbSB0aGlzIGFyZSBvbmx5IDMu
IChsaXN0ZWQgaW4gdGhlIHNjcmlwdCkKPiA+ID4gLSBhcm02NCBkdHMgYW5kIGR0c2kgcmVmZXJl
bmNlIEFSTSBkdHMuIE9idmlvdXNseSB0aGlzIGNoYW5nZSB3b3VsZCBjYXVzZQo+ID4gPiAgIGJy
b2tlbiBpbmNsdWRlIGZvciB0aGVzZSBzcGVjaWFsIGR0c2kuIFRoZSBzY3JpcHQgY3JlYXRlcyBh
IGRlcGVuZGVuY3kKPiA+ID4gICB0YWJsZSBvZiB0aGUgZW50aXJlIGFybTY0IGRpcmVjdG9yeSBh
bmQgZml4IGV2ZXJ5IGJyb2tlbiBkZXBlbmRlbmN5Cj4gPiA+ICAgKGhvcGluZyB0aGV5IGFsbCB1
c2UgYSBzYW5lIGluY2x1ZGUgbG9naWMuLi4gcmVnZXggaXMgdXNlZCB0byBwYXJzZQo+ID4gPiAg
IGFsbCB0aGUgZGlmZmVyZW50IGRlcGVuZGVuY3kpCj4gPiA+Cj4gPiA+IFNvIGluIHNob3J0IHRo
ZSBzY3JpcHQgZG9lcyB0aGUgZm9sbG93aW5nIHN0ZXBzOgo+ID4gPiAxLiBFbnVtZXJhdGUgYWxs
IHRoZSBhY3Rpb24gdG8gZG8uLi4gKGR0cyB0byBtb3ZlLCBzY2FuIGRlcGVuZGVuY3kgZm9yCj4g
PiA+ICAgIHRoZSBkdHMuLi4pCj4gPiA+IDIuIEdlbmVyYXRlIHRoZSBhcm02NCBkZXBlbmRlbmN5
Cj4gPiA+IDMuIENyZWF0ZXMgdGhlIE1ha2VmaWxlCj4gPiA+IDQuIEdlbmVyYXRlIHRoZSBNYWtl
ZmlsZXMgZm9yIHRoZSBjdXJyZW50IG9lbQo+ID4gPiA1LiBNb3ZlIGFsbCB0aGUgcmVsYXRlZCBk
dHMgYW5kIGR0c2kgZm9yIHRoZSBjdXJyZW50IG9lbQo+ID4gPiA2LiBDaGVjayBicm9rZW4gZGVw
ZW5kZW5jeSBhbmQgZml4IHRoZW0gYnkgZWRpdGluZyB0aGUgZHRzIGFuZCB3cml0aW5nCj4gPiA+
ICAgIHRoZSBjb3JyZWN0IGluY2x1ZGUgKG9yIGZpeCBhbnkgc3ltYm9saWMgbGluaykKPiA+ID4K
PiA+ID4gVGhpcyBpcyBhbiBvdXRwdXQgdGhhdCBkZXNjcmliZXMgYWxsIHRoZSB0aGluZ3MgZG9u
ZSBieSB0aGUgc2NyaXB0IFsyXQo+ID4gPgo+ID4gPiBJIHJlYWxseSBob3BlIEkgZGlkbid0IGNv
bW1pdCBhbnkgbG9naWMgbWlzdGFrZSBpbiB0aGUgc2NyaXB0IGJ1dCBtb3N0Cj4gPiA+IG9mIHRo
ZSB3b3JrIHNob3VsZCBiZSBkb25lLgo+ID4gPgo+ID4KPiA+ICtDYyBBcm5kIGFuZCBPbG9mLAo+
ID4KPiA+IEFuc3VlbCwKPiA+IFRoYW5rcyBmb3IgeW91IHBhdGNoLiBQbGVhc2UgY2MgdGhlIFNv
QyBtYWludGFpbmVycyBpbiBzdWNoIHN1Ym1pc3Npb25zLgo+ID4gSXQgc2VlbXMgdGhhdCB5b3Ug
Z290IHNvbWUgcXVpdGUgbmljZSBkaXNjdXNzaW9uLCBidXQgc3RpbGwgdGhlIGNvcmUKPiA+IGZv
bGtzIGFyZSBub3QgQ2NlZCwgc28gbm8gb25lIHdvdWxkIGJlIGFibGUgdG8gdGFrZSB5b3VyIHBh
dGNoLi4uCj4gPgo+Cj4gSSBoYWQgc29tZSBwcm9ibGVtIHdpdGggZ21haWwgYW5kIHNlbmRpbmcg
bWFpbCB0b28gbXVjaCB1c2Vycy4gSSBwdXQgUm9iCj4gYW5kIFlvdSBhbmQgYWxsIHRoZSB2YXJp
b3VzIGxpc3QgdG8gdHJ5IHRvIHdvcmthcm91bmQgdGhlICJnbWFpbCBzcGFtCj4gcHJvdGVjdGlv
biIKPgo+ID4gSSBhbSBwcmV0dHkgc3VyZSB3ZSB3ZXJlIGRpc2N1c3Npbmcgc3VjaCBzcGxpdCBp
ZGVhIGluIHRoZSBwYXN0IGFuZCBpdAo+ID4gZGlkIG5vdCBnZXQgdHJhY3Rpb24sIGJ1dCBJIGNh
bm5vdCByZWNhbGwgdGhlIGV4YWN0IGRpc2N1c3Npb24uCj4gPgo+Cj4gSSB0aGluayB0aGUgbWFp
biBpc3N1ZSBoZXJlIGlzIGhvdyB0byBoYW5kbGUgYm90IGFuZCBob3cgcHJvYmxlbWF0aWMgaXMK
PiB0byBtZXJnZSB0aGlzLiBBcyB3cml0dGVuIGluIHRoZSBjb3ZlciBsZXR0ZXIgdGhlIGZpbmFs
IHZlcnNpb24gb2YgdGhpcwo+IHNob3VsZCBiZSBhIGJpZyBzZXJpZXMgb2YgNTArIHBhdGNoIHdp
dGggZXZlcnkgY29tbWl0IHNwZWNpZmljIHRvIGVhY2gKPiBvZW0uIEluIHRoZW9yeSB3ZSBzaG91
bGQgYmUgYWJsZSB0byBtZXJnZSB0aGUgZGlmZmVyZW50IG9lbSBzZXBhcmF0ZWx5Cj4gYW5kIHRy
eSB0byBhdCBsZWFzdCBzdGFydCB0aGUgY2F0ZWdvcml6YXRpb24uCj4gQW5vdGhlciBpZGVhIEkg
Z290IHRvIGF0IGxlYXN0IGhhdmUgYSAibWlncmF0aW9uIHBhdGgiIGlzIHRvIGNvbnZlcnQKPiBl
dmVyeSBkdHMgaW4gdGhlIGR0cy8gZGlyZWN0b3J5IHRvIGEgc3ltYm9saWMgbGluayB0aGF0IHRh
cmdldCB0aGUgZHRzCj4gaW4gdGhlIGNvcnJlY3Qgb2VtLiBCdXQgSSBhc3N1bWUgdGhhdCB3b3Vs
ZCBmaXggb25seSBwYXJ0IG9mIHRoZSBwcm9ibGVtCj4gYW5kIGdpdCBhbSB3aWxsIHN0aWxsIGJl
IHByb2JsZW1hdGljLgoKSSBoYXZlIGEgc2NyaXB0WzFdIHRoYXQgZG9lcyB0aGUgY29udmVyc2lv
biB3cml0dGVuIHRoZSBsYXN0IHRpbWUgdGhpcwpjYW1lIHVwLiBKdXN0IGhhdmUgdG8gYWdyZWUg
b24gZGlyZWN0b3J5IG5hbWVzLiBJIHRoaW5rIHRoZSBlYXNpZXN0CndvdWxkIGJlIGZvciBBcm5k
L09sb2YgdG8gcnVuIGl0IGF0IHRoZSBlbmQgb2YgYSBtZXJnZSB3aW5kb3cgYmVmb3JlCnJjMS4K
CkknbSB2ZXJ5IG11Y2ggaW4gZmF2b3Igb2YgdGhpcyBoYXBwZW5pbmcgZXNwZWNpYWxseSBiZWZv
cmUgKmFueSoKb3ZlcmxheXMgYXJlIGFkZGVkIHRvIGFkZCB0byB0aGUgbWVzcyAoaXQncyBwcm9i
YWJseSBhbHJlYWR5CmhhcHBlbmVkKS4KClJvYgoKWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3Jn
L2FsbC8yMDE4MTIwNDE4MzY0OS5HQTU3MTZAYm9ndXMvCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
