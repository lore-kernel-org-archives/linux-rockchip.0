Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C76E0C7EE22
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 May 2023 20:02:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b00num4qGDq0a7l9dlzawfwFyGILM7j5yA7VkartqfE=; b=yr1wgftIF1m3Yh
	9hZd30PJkPvc3pUzPGQ7V/R+pCPoZrTSL5JB2KGp7ZZNdvWXMXMkTsvnEzOGKNGj27J7jMFFlhdZv
	OuSZoXGrgSeXoah1nWoYdGWXEUq3JGZzB3EkD8FCrWZNukJtlILJ4GHM2ZYJwuBZ4rQ5n/5Lww8Aa
	lrRJDLrXqt0yZbY+QLgRf0fldRqQJW8OnQya/3JudfAcXj4DCZAWRP6cJea2s/F/B6FPU6Hh5s0E7
	3n9d/6rQErflSW52d/b4HO70GY2zw9R2EeyQjHQOaIN5L/Z0SKzgEsyVht65Opd8+kUFs3M1oztRL
	WaJhh4NAEWHAe/2MPjBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptwCb-002Vw0-2q;
	Tue, 02 May 2023 20:02:21 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptwCW-002Vtv-24;
	Tue, 02 May 2023 20:02:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4B1416286A;
	Tue,  2 May 2023 20:02:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A606CC433D2;
	Tue,  2 May 2023 20:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683057733;
	bh=z65CXUdNhixlNpdcU4cX9MnAhBOpBsEMQ9BKqmjTFr0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=HyuoeVi2h5vX+j5IW8pycatuUewSXr3NeuUPOSs/I37n7qS/vc4fMybMESDh9jPBI
	 4FJ83i+yxidNuezkHy3yrXC173LFNnftU6kPLMCB9tuPxERwsDu4NYPns+wr4YSE21
	 gpcWsrKk3Jl22MO0gvxUlmuou+tbdesX2a5K575kTKdKSgJEmPGOpJapGlktKI8I65
	 gG6CVdb7AZZe5XVqQznvR1MRxW2h9ly9o0/hbOH4UOjKURJ52+ifQjgPVzANSziT4T
	 seOSJHMW3E30u/+HFBr4rrpBrtok0Fc1sAGtUrlAz85EF3NBm/dk3oC+kikEm+JU0y
	 DHrd3NwwfYNng==
Message-ID: <2783a3ba-8fcb-7e5f-3147-91d02e573ba4@kernel.org>
Date: Tue, 2 May 2023 22:02:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [RFC PATCH 0/1] Categorize ARM dts directory
To: Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>, Olof Johansson
 <olof@lixom.net>, Christian Marangi <ansuelsmth@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-actions@lists.infradead.org,
 linux-sunxi@lists.linux.dev, Linux-OMAP <linux-omap@vger.kernel.org>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@axis.com,
 linux-aspeed@lists.ozlabs.org, linux-rpi-kernel@lists.infradead.org,
 chrome-platform@lists.linux.dev,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 linux-samsung-soc@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 kernel@dh-electronics.com, linux-mediatek@lists.infradead.org,
 openbmc@lists.ozlabs.org, linux-tegra@vger.kernel.org,
 "linux-oxnas@groups.io" <linux-oxnas@groups.io>,
 linux-arm-msm@vger.kernel.org, linux-unisoc@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-realtek-soc@lists.infradead.org,
 Shawn Guo <shawnguo@kernel.org>
References: <20220328000915.15041-1-ansuelsmth@gmail.com>
 <85eb14ec-f465-7447-ad77-a3dabc666f47@kernel.org>
 <YkKRYnN84D9VZhGj@Ansuel-xps.localdomain>
 <CAL_Jsq+RQQ-ADMxLPUFwk6S6kGmb6oNDy4k52fnU0EtbUvqmSA@mail.gmail.com>
 <CAMuHMdWNTE48MFy6fqxAsfMWz9b6E7dVNXtXtESP95sxk2PGwA@mail.gmail.com>
 <CAL_JsqJthKTm8bhRF2B=ae1tvtPeYYXx_Tm76qQtSwLtH5C6VA@mail.gmail.com>
 <720a2829-b6b5-411c-ac69-9a53e881f48d@app.fastmail.com>
 <CAL_JsqKCtmkwzKa01gyG65fH8ye6R3KhR41PJbJhOJ4X9j=znA@mail.gmail.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <CAL_JsqKCtmkwzKa01gyG65fH8ye6R3KhR41PJbJhOJ4X9j=znA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_130216_774708_F0F09BD4 
X-CRM114-Status: GOOD (  27.48  )
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

T24gMDIvMDUvMjAyMyAyMTo0MCwgUm9iIEhlcnJpbmcgd3JvdGU6Cj4gT24gVHVlLCBNYXkgMiwg
MjAyMyBhdCAzOjE14oCvQU0gQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4gd3JvdGU6Cj4+
Cj4+IE9uIFR1ZSwgQXByIDI1LCAyMDIzLCBhdCAxNzo1NywgUm9iIEhlcnJpbmcgd3JvdGU6Cj4+
PiBPbiBUdWUsIEFwciAyNSwgMjAyMyBhdCAyOjI44oCvQU0gR2VlcnQgVXl0dGVyaG9ldmVuIDxn
ZWVydEBsaW51eC1tNjhrLm9yZz4gd3JvdGU6Cj4+Pgo+Pj4+IERvZXMgeW91ciBzY3JpcHQgYWxz
byBjYXRlciBmb3IgLmR0cyBmaWxlcyBub3QgbWF0Y2hpbmcgYW55IHBhdHRlcm4sCj4+Pj4gYnV0
IGluY2x1ZGluZyBhIC5kdHNpIGZpbGUgdGhhdCBkb2VzIG1hdGNoIGEgcGF0dGVybj8KPj4+Cj4+
PiBJIGFzc3VtZSBJIGJ1aWx0IGV2ZXJ5dGhpbmcgYWZ0ZXIgbW92aW5nLCBidXQgbWF5YmUgbm90
Li4uCj4+Pgo+Pj4gVGhhdCdzIGFsbCBqdXN0ICJkZXRhaWxzIi4gRmlyc3QsIHdlIG5lZWQgYWdy
ZWVtZW50IG9uIGEpIG1vdmluZwo+Pj4gdGhpbmdzIHRvIHN1YmRpcnMgYW5kIGIpIGRvaW5nIGl0
IDEtYnktMSBvciBhbGwgYXQgb25jZS4gU28gZmFyIHdlJ3ZlCj4+PiBiZWVuIHN0dWNrIG9uIGEp
IGZvciBiZWluZyAndG9vIG11Y2ggY2h1cm4nLgo+Pgo+PiBTb3JyeSBmb3IgbWlzc2luZyBtb3N0
IG9mIHRoZSBkaXNjdXNzaW9uIGxhc3Qgd2Vlay4gVGhlIHNjcmlwdCBzb3VuZHMKPj4gZmluZSB0
byBtZSwgdGhlIG9ubHkgcmVhc29uIEkgZGlkbid0IHdhbnQgdG8gZG8gdGhpcyBpbiB0aGUgcGFz
dCBpcyB0aGF0Cj4+IHdlIGhhZCB0aGUgcGxhbiB0byBtb3ZlIHBsYXRmb3JtcyBvdXQgb2YgdGhl
IGtlcm5lbCB0cmVlIHRvIGFuIGV4dGVybmFsCj4+IHJlcG9zaXRvcnkgYW5kIEkgd2FudGVkIHRv
IGRvIHRoaXMgcGxhdGZvcm0gYXQgYSB0aW1lIGFuZCBhbHNvIG9ubHkgbW92ZQo+PiBlYWNoIG9u
ZSBvbmNlLiBJIGRvbid0IHRoaW5rIHRoYXQgaXMgZ29pbmcgdG8gaGFwcGVuIGFueXRpbWUgc29v
biBub3csCj4+IHNvIGxldCdzIGp1c3QgZG8geW91ciBzY3JpcHQuCj4+Cj4+IENhbiB5b3Ugc2Vu
ZCBtZSB0aGUgc2NyaXB0IGFuZC9vciBhIHB1bGwgcmVxdWVzdCBvZiB0aGUgcmVzdWx0aW5nCj4+
IHRyZWUgYmFzZWQgb24gbXkgc29jL2R0IGJyYW5jaD8gRXZlcnl0aGluZyBpcyBtZXJnZWQgdXBz
dHJlYW0sCj4+IGFuZCBJIHRoaW5rIGdpdC1tZXJnZSB3b3VsZCBoYW5kbGUgdGhlIHJlbWFpbmlu
ZyBtZXJnZXMgd2l0aCBhbnkKPj4gb3RoZXIgY2hhbmdlcyBpbiBtYWlubGluZS4KPiAKPiBJJ3Zl
IGR1c3RlZCBvZmYgbXkgc2NyaXB0IGFuZCBtYWRlIGEgYnJhbmNoWzFdIHdpdGggdGhlIHJlc3Vs
dC4KPiBUaGVyZSdzIGp1c3QgYSBjb3VwbGUgb2YgZml4ZXMgbmVlZGVkIGFmdGVyIHRoZSBzY3Jp
cHQgaXMgcnVuIChzZWUgdGhlCj4gdG9wIGNvbW1pdCkuIFRoZSBjcm9zcyBhcmNoIGluY2x1ZGVz
IGFyZSBhbGwgZml4ZWQgdXAgYnkgdGhlIHNjcmlwdC4KPiBkdGJzX2luc3RhbGwgbWFpbnRhaW5z
IGEgZmxhdCBpbnN0YWxsLiBJIGNvbXBhcmVkIHRoZSBudW1iZXIgb2YgLmR0YnMKPiBiZWZvcmUg
YW5kIGFmdGVyIHRvIGNoZWNrIHRoZSBzY3JpcHQuCj4gCj4gSSB0aGluayB0aGUgb25seSBpc3N1
ZSByZW1haW5pbmcgaXMgZmluYWxpemluZyB0aGUgbWFwcGluZyBvZgo+IHBsYXRmb3JtcyB0byBz
dWJkaXJzLiBXaGF0IEkgaGF2ZSBjdXJyZW50bHkgaXMgYSBtaXh0dXJlIG9mIFNvQwo+IGZhbWls
aWVzIGFuZCB2ZW5kb3JzLiBUaGUgbW9zdCBub3RhYmxlIGFyZSBhbGwgdGhlIEZyZWVzY2FsZS9O
WFAKPiBwbGF0Zm9ybXMsIHB4YSwgc29jZnBnYSwgYW5kIHN0bTMyLiBJdCdzIG5vdCBjb25zaXN0
ZW50IHdpdGggYXJtNjQKPiBlaXRoZXIuIE9uY2UgdGhhdCdzIGZpbmFsaXplZCwgSSBzdGlsbCBu
ZWVkIHRvIGdvIHVwZGF0ZSBNQUlOVEFJTkVSUy4KPiAKPiBIZXJlJ3MgdGhlIGN1cnJlbnQgbWFw
cGluZzoKPiAKPiB2ZW5kb3JfbWFwID0gewo+ICAgICAnYWxwaGFzY2FsZScgOiAnYWxwaGFzY2Fs
ZScsCj4gICAgICdhbHBpbmUnIDogJ2FscGluZScsCj4gICAgICdhcnRwZWMnIDogJ2F4aXMnLAo+
ICAgICAnYXhtJyA6ICdsc2knLAo+ICAgICAnY3g5JyA6ICdjbnh0JywKPiAgICAgJ2VjeCcgOiAn
Y2FseGVkYScsCj4gICAgICdoaWdoYmFuaycgOiAnY2FseGVkYScsCj4gICAgICdlcDcnIDogJ2Np
cnJ1cycsCj4gICAgICdteHMnOiAnbXhzJywKPiAgICAgJ2lteDIzJzogJ214cycsCj4gICAgICdp
bXgyOCc6ICdteHMnLAo+ICAgICAnc3VuJyA6ICdhbGx3aW5uZXInLAo+ICAgICAnaW14JzogJ2lt
eCcsCj4gICAgICdlNicgOiAnaW14JywKPiAgICAgJ2U3JyA6ICdpbXgnLAo+ICAgICAnbWJhNicg
OiAnaW14JywKPiAgICAgJ2xzJzogJ2ZzbCcsCj4gICAgICd2Zic6ICdmc2wnLAoKSWYgSSByZW1l
bWJlciBjb3JyZWN0bHksIFZ5YnJpZCBhcmUgYSBiaXQgY2xvc2VyIHRvIGlNWCB0aGFuIHRvIExT
CihMYXllcnNjYXBlKSwgYnV0IGl0IHNob3VsZCBiZSBTaGF3bidzIGNhbGwgKCtDYykuCgo+ICAg
ICAncWNvbSc6ICdxY29tJywKPiAgICAgJ2FtMycgOiAndGknLAo+ICAgICAnYW00JyA6ICd0aScs
Cj4gICAgICdhbTUnIDogJ3RpJywKPiAgICAgJ2RyYScgOiAndGknLAo+ICAgICAna2V5c3RvbmUn
IDogJ3RpJywKPiAgICAgJ29tYXAnIDogJ3RpJywKPiAgICAgJ2NvbXB1bGFiJyA6ICd0aScsCj4g
ICAgICdsb2dpY3BkJyA6ICd0aScsCj4gICAgICdlbHBpZGEnIDogJ3RpJywKPiAgICAgJ21vdG9y
b2xhJyA6ICd0aScsCj4gICAgICd0d2wnIDogJ3RpJywKPiAgICAgJ2RhJyA6ICd0aScsCj4gICAg
ICdkbScgOiAndGknLAo+ICAgICAnbnNwaXJlJyA6ICduc3BpcmUnLAo+ICAgICAnYXJtYWRhJyA6
ICdtYXJ2ZWxsJywKPiAgICAgJ2RvdmUnIDogJ21hcnZlbGwnLAo+ICAgICAna2lya3dvb2QnIDog
J21hcnZlbGwnLAo+ICAgICAnb3Jpb24nIDogJ21hcnZlbGwnLAo+ICAgICAnbXZlYnUnIDogJ21h
cnZlbGwnLAo+ICAgICAnbW1wJyA6ICdtYXJ2ZWxsJywKPiAgICAgJ2JlcmxpbicgOiAnYmVybGlu
JywKPiAgICAgJ3B4YTInIDogJ3B4YScsCj4gICAgICdweGEzJyA6ICdweGEnLAo+ICAgICAncHhh
JyA6ICdtYXJ2ZWxsJywKPiAgICAgJ2FybS0nIDogJ2FybScsCj4gICAgICdpbnRlZycgOiAnYXJt
JywKPiAgICAgJ21wcycgOiAnYXJtJywKPiAgICAgJ3ZlJyA6ICdhcm0nLAo+ICAgICAnYXNwZWVk
JyA6ICdhc3BlZWQnLAo+ICAgICAnYXN0MicgOiAnYXNwZWVkJywKPiAgICAgJ2ZhY2Vib29rJyA6
ICdhc3BlZWQnLAo+ICAgICAnaWJtJyA6ICdhc3BlZWQnLAo+ICAgICAnb3BlbmJtYycgOiAnYXNw
ZWVkJywKPiAgICAgJ2VuNycgOiAnYWlyb2hhJywKPiAgICAgJ2F0OTEnIDogJ21pY3JvY2hpcCcs
Cj4gICAgICdzYW1hJyA6ICdtaWNyb2NoaXAnLAo+ICAgICAnc2FtOScgOiAnbWljcm9jaGlwJywK
PiAgICAgJ3VzYl8nIDogJ21pY3JvY2hpcCcsCj4gICAgICd0bnlfJyA6ICdtaWNyb2NoaXAnLAo+
ICAgICAnbXBhMTYwMCcgOiAnbWljcm9jaGlwJywKPiAgICAgJ2FuaW1lb19pcCcgOiAnbWljcm9j
aGlwJywKPiAgICAgJ2Frcy1jZHUnIDogJ21pY3JvY2hpcCcsCj4gICAgICdldGhlcm51dDUnIDog
J21pY3JvY2hpcCcsCj4gICAgICdldmstcHJvMycgOiAnbWljcm9jaGlwJywKPiAgICAgJ3BtOWc0
NScgOiAnbWljcm9jaGlwJywKPiAgICAgJ2dlODYnIDogJ21pY3JvY2hpcCcsCj4gICAgICdiY20n
IDogJ2JyY20nLAo+ICAgICAnZXh5bm9zJyA6ICdzYW1zdW5nJywKPiAgICAgJ3MzYycgOiAnc2Ft
c3VuZycsCj4gICAgICdzNXAnIDogJ3NhbXN1bmcnLAoKRm9yIHNhbXN1bmcgbG9va3MgZ29vZC4K
CkFja2VkLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFy
by5vcmc+Cgo+ICAgICAnZ2VtaW5pJyA6ICdnZW1pbmknLAo+ICAgICAnaGkzJyA6ICdoaXNpbGlj
b24nLAo+ICAgICAnaGlwJyA6ICdoaXNpbGljb24nLAo+ICAgICAnaGlzaScgOiAnaGlzaWxpY29u
JywKPiAgICAgJ3NkNScgOiAnaGlzaWxpY29uJywKPiAgICAgJ2hwZScgOiAnaHBlJywKPiAgICAg
J2ludGVsJzogJ2ludGVsJywKPiAgICAgJ210JyA6ICdtZWRpYXRlaycsCj4gICAgICdtZXNvbicg
OiAnbWVzb24nLAo+ICAgICAnbW94YScgOiAnbW94YScsCj4gICAgICdtc3RhcicgOiAnbXN0YXIn
LAo+ICAgICAnbnV2bycgOiAnbnV2b3RvbicsCj4gICAgICdscGMnIDogJ2xwYycsCj4gICAgICds
YW45NicgOiAnbWljcm9jaGlwJywKPiAgICAgJ293bCcgOiAnYWN0aW9ucycsCj4gICAgICdveDgn
IDogJ294c2VtaScsCj4gICAgICdyZGEnIDogJ3JkYScsCj4gICAgICdydGQnIDogJ3JlYWx0ZWsn
LAo+ICAgICAncjcnIDogJ3JlbmVzYXMnLAo+ICAgICAncjgnIDogJ3JlbmVzYXMnLAo+ICAgICAn
cjknIDogJ3JlbmVzYXMnLAo+ICAgICAnZW1ldjInIDogJ3JlbmVzYXMnLAo+ICAgICAnc2g3M2En
IDogJ3JlbmVzYXMnLAo+ICAgICAnZ3ItJyA6ICdyZW5lc2FzJywKPiAgICAgJ2l3ZycgOiAncmVu
ZXNhcycsCj4gICAgICdyaycgOiAncm9ja2NoaXAnLAo+ICAgICAncnYxMScgOiAncm9ja2NoaXAn
LAo+ICAgICAncm9ja2NoaXAnIDogJ3JvY2tjaGlwJywKPiAgICAgJ3NvY2ZwZ2EnIDogJ3NvY2Zw
Z2EnLAo+ICAgICAnc3RtJyA6ICdzdG0zMicsCj4gICAgICdzdGknIDogJ3N0aScsCj4gICAgICdz
dC1waW4nIDogJ3N0aScsCj4gICAgICdzdGUnIDogJ3N0LWVyaWNzc29uJywKPiAgICAgJ3NwZWFy
JyA6ICdzcGVhcicsCj4gICAgICdheHAnIDogJ2FsbHdpbm5lcicsCj4gICAgICd0ZWdyYScgOiAn
bnZpZGlhJywKPiAgICAgJ21pbGJlYXV0JyA6ICdzb2Npb25leHQnLAo+ICAgICAndW5pcGgnIDog
J3NvY2lvbmV4dCcsCj4gICAgICd2dDg1MDAnIDogJ3Z0ODUwMCcsCj4gICAgICd3bTgnIDogJ3Z0
ODUwMCcsCj4gICAgICd4ZW4nIDogJ3hlbicsCj4gICAgICd6eCcgOiAnenRlJywKPiAgICAgJ3p5
bnEnIDogJ3hpbGlueCcsCgpUaGUgcmVzdCBsb29rcyBnb29kIHRvIG1lLCBidXQgSSBkb24ndCBr
bm93IGhhbGYgb2YgdGhlc2UgOikKCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
