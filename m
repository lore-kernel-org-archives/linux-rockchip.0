Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57831C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Dec 2023 08:05:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ba7nT6AUIr8EvoqWBjB8sUkP6ZNLBt0d8a4ve3eF7zo=; b=aRdCsiPydSPmmKRYbzgh9mcfUe
	85WPhelUqIRXopd2b1cn1hR/4cU1Assyv7y44bGjT1eA7eUI6f+vFd4FCJd1uzb0O715TIguh4uFa
	jIa7qRDXztESCjMB4ZJLBKUwnFqQA08BV+zrznd4Fnj3vlG6lidI5oIgVtBLuBI7+XGU2zNmPiMqD
	xxqtipG5iQs7mlGCMuQ5NkaxK2hZJACEG+UIWPv9BO3danfpPU0wN0rGGKOBsSSxJj6hcon8BZ6tC
	6wOZdAanZ7Wg2ppcRWof3FK+WKXEJI+cvribh/nL4kyhGmi1qU6FZSkbxnGgVnphno2llAMIq8yiv
	rQt7D0rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCxlG-00Azuz-2E;
	Tue, 12 Dec 2023 08:05:02 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rCxlC-00Azts-06;
	Tue, 12 Dec 2023 08:04:59 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1702368296;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=G71DUn2WG9PuaVBEWzrxCCXiQ0UtyB4Ikn9B9GyIs9Y=;
	b=Ot8zWVvcAlE9IgfZ75JRx5yteGsu6DlKKOeCuswTBcRKO1YPEgp2uoZYNPlmYQVLyIExPD
	LpV8oDrpcztVs4u86ol5FWMFDUJ4FlZXUybL04AvpJN7/7kjMrZXdVTV5irMLYprH1w81/
	v/gzsbigHzh0+xskkL7XsPxxvwa13z4DCENODF5Afgpf2RV5B9nTNIDdvrLc83ZuGH4AOc
	Od4ZrOrdsvDOmJ1gRbGJsscEQ3lh9XPYAK5Yz/r3jWQtGaCr9EZ10PGm2/hD3k2CPVU5VX
	0lkURozr0KnCNUyBsLm/EOfhY3pvF7iYX8i5Awf6eIPYp2enI/bLUa07ISippQ==
Date: Tue, 12 Dec 2023 09:04:55 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Tim Lunn
 <tim@feathertop.org>, Jagan Teki <jagan@edgeble.ai>, Rob Herring
 <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>
Subject: Re: [PATCH v2 4/9] ARM: dts: rockchip: rv1126: Add i2c2 nodes
In-Reply-To: <6efa5eb17d795da024357a12dfb11ac1@manjaro.org>
References: <20231122122232.952696-1-tim@feathertop.org>
 <4234862.3Lj2Plt8kZ@diego> <8fec049c0b72727086c707dfd9de6dda@manjaro.org>
 <5119280.687JKscXgg@diego> <6efa5eb17d795da024357a12dfb11ac1@manjaro.org>
Message-ID: <316304f17b7e2641658d0efc867c0603@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231212_000458_226759_1AADF085 
X-CRM114-Status: GOOD (  12.86  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjAyMy0xMS0yNyAxNDowNywgRHJhZ2FuIFNpbWljIHdyb3RlOgo+IE9uIDIwMjMtMTEtMjcg
MTI6MTAsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+PiBBbSBNb250YWcsIDI3LiBOb3ZlbWJlciAy
MDIzLCAxMTo1NToyMSBDRVQgc2NocmllYiBEcmFnYW4gU2ltaWM6Cj4+PiBPbiAyMDIzLTExLTI3
IDExOjUwLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPj4+PiBBbSBNb250YWcsIDI3LiBOb3ZlbWJl
ciAyMDIzLCAxMTo0MzowNSBDRVQgc2NocmllYiBEcmFnYW4gU2ltaWM6Cj4+Pj4+IFBsZWFzZSBu
b3RlIHRoZXJlJ3MgYWxyZWFkeSBhbiBFdGhlcm5ldCBhbGlhcyBkZWZpbmVkIGluIAo+Pj4+PiBy
azMzOTkuZHRzaSwKPj4+Pj4gZXZlbiBkZXNwaXRlIG5vdCBhbGwgUkszMzk5LWJhc2VkIGRldmlj
ZXMgdXNpbmcgdGhlIEdNQUMsIGZvciAKPj4+Pj4gZXhhbXBsZQo+Pj4+PiB0aGUgUGluZWJvb2sg
UHJvLiAgUGVyaGFwcyB0aGF0J3Mgc29tZXRoaW5nIHRvIGJlIGZpeGVkIGFzIHdlbGwuCj4+Pj4g
Cj4+Pj4gcG9zc2libHkgOi0pCj4+Pj4gCj4+Pj4gSSBndWVzcyBmb3Igc3RhcnRlcnMgd2Ugc2hv
dWxkbid0IGludHJvZHVjZSBuZXcgaW5zdGFuY2VzIGZvciBpdC4KPj4+IAo+Pj4gVG90YWxseSBh
Z3JlZWQuCj4+PiAKPj4+ID4gQWxsIHRoZSBuZXdlciBTb0NzIGFscmVhZHkgaGF2ZSB0aGVpciBl
dGhlcm5ldCBhbGlhcyBpbiB0aGUgYm9hcmQgZHRzCj4+PiA+IChyazM1NngsIHJrMzU2OCkgd2hp
Y2ggY2FtZSBhZnRlciB3ZSBhbHNvIG1vdmVkIHRoZSBtbWMgYWxpYXNlcy4KPj4+IAo+Pj4gVGhl
IGJhc2UgcmszMzk5LmR0c2kgZmlsZSBhbmQgdGhlIFJLMzM5OS1iYXNlZCBib2FyZC9kZXZpY2Ug
ZHRzKGkpIAo+Pj4gZmlsZXMKPj4+IGFyZSBmaW5lIHdoZW4gaXQgY29tZXMgdG8gdGhlIG1tYyBh
bGlhc2VzLiAgSSBjYW4gbW92ZSBmb3J3YXJkIGFuZCAKPj4+IGNsZWFuCj4+PiB1cCB0aGUgRXRo
ZXJuZXQgYWxpYXMgYXMgd2VsbCwgaWYgeW91IGFncmVlPwo+PiAKPj4gWWVwLCB3ZSBtb3ZlZCBt
bWMgYWxpYXNlcyBhIHdoaWxlIGFnby4KPj4gCj4+IFNvIG1vdmluZyB0aGUgZXRoZXJuZXQgc291
bmRzIGxpa2UgdGhlIHJpZ2h0IHdheSBmb3J3YXJkLiBTbyBpZiB5b3UgCj4+IGhhdmUKPj4gdGhl
IHRpbWUgZm9yIGl0LCB0aGVuIEknZCBiZSBxdWl0ZSBoYXBweSB0byB0YWtlIHBhdGNoZXMgZm9y
IHRoYXQgCj4+IGNoYW5nZS4KPiAKPiBHcmVhdCwgdGhhbmtzLiAgSSdsbCBwcmVwYXJlIHRoZSBw
YXRjaGVzIGluIHRoZSBuZXh0IGNvdXBsZSBvZiBkYXlzLAo+IGFuZCBzZW5kIHRoZW0gb3Zlci4K
CkkgYXBvbG9naXplIGZvciB0aGUgZGVsYXksIEkgZmluYWxseSBnb3QgYXJvdW5kIHRvIGltcGxl
bWVudGluZyBhbmQgCnZlcmlmeWluZyB0aGVzZSBwYXRjaGVzIGZvciB0aGUgUkszMzk5LCBSSzMz
NjgsIFJLMzMyOCBhbmQgUFgzMCBTb0MgCmR0cyhpKSBmaWxlcy4gWzFdICBUaGUgd2F5IEkgdmVy
aWZpZWQgdGhlbSB3YXMgdG8gY29tcGFyZSB0aGUgY29tcGlsZWQgCmR0YiBmaWxlcyBiZWZvcmUg
YW5kIGFmdGVyIGFwcGx5aW5nIHRoZSBwYXRjaGVzLgoKQWxzbywgSSB3ZW50IGFoZWFkIGFuZCBp
bXBsZW1lbnRlZCB0aGUgcGF0Y2hlcyB0aGF0IGFkZCBldGhlcm5ldCBhbGlhc2VzIAp0byB0aGUg
UkszNTZ4IGFuZCBSSzM1ODggZHRzIGJvYXJkIGZpbGVzLiBbMl0gIFdpdGggdGhlc2UgcGF0Y2hl
cyBpbiAKcGxhY2UsIHRvZ2V0aGVyIHdpdGggdGhlIG90aGVyIHBhdGNoZXMgdGhhdCBoYXZlIGFs
cmVhZHkgYmVlbiBhY2NlcHRlZCwgCndlIHNob3VsZCBoYXZlIGEgcmF0aGVyIGNsZWFuIHNpdHVh
dGlvbiB3aGVuIGl0IGNvbWVzIHRvIHRoZSBSb2NrY2hpcCAKYXJtNjQgRFQgYWxpYXNlcy4KClsx
XSAKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcm9ja2NoaXAvY292ZXIuMTcwMjM2Njk1
OC5naXQuZHNpbWljQG1hbmphcm8ub3JnL1QvI3UKWzJdIApodHRwczovL2xvcmUua2VybmVsLm9y
Zy9saW51eC1yb2NrY2hpcC9jb3Zlci4xNzAyMzY4MDIzLmdpdC5kc2ltaWNAbWFuamFyby5vcmcv
VC8jdQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
