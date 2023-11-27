Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCC23C0755A
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Nov 2023 13:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=P4jJQlzQgeEz75XGoC6ca4+mrFjmOCPO8JsOp6FOhrs=; b=q+NrDmI4ECvi0NujFrA9jxwnOQ
	ddIJgrnlwAAJgM75kdCgWp2fJWlraxJyCGNYS8Qr55yvQrR3z3K0ATyZo0UNAEQd5RsTtR1DmKj5D
	WjoGisB02y7nk7ZSZGyDNI/44d4H4reizZV/PiBTJUouPEYhlIlEI+53TVdL8ZRWyNa5qRT8vwNcF
	0AMbFbUjCgAroKP0VCxJdxJXCwHrHLhYLX0ti3EbSBwIzXiHjMgk5+XGOd75bdBybUZwIjmtMGSuV
	KF15oCUX/C7I8CVPC0iGVEGaC064rphjDVhb6bZ0tG7iT5ywYEl213r9vk8YpTgOpLD+OKt+W53ww
	WeWPZJ8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7bKd-002WEg-2V;
	Mon, 27 Nov 2023 13:07:23 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7bKa-002WDP-00;
	Mon, 27 Nov 2023 13:07:21 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1701090435;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=iwccmV9IuUrefjySV0ms2KJs1klOXwHHiQUN90bepXQ=;
	b=Vx11ddL8btfRCNxoTkXjUZ4BmuZvlK5n9WHhiWtufVIa+zeie72DC9YF0T5wxvwgUVAUb7
	cwdJ5SowI5S5eCK4BhWEDYDhSAO4bj2P4em+Rf5F1a4hFFuAoE8BJBWAnC6zzE+DrfaWHg
	abHHAMFAkLU/mGO9lI5R8ZhSw0Z6lHfWfs3hM5UyEuNfJIXiVDoEm9urCTTj0DWJR12tVw
	SFwgm2QJ4gxKvVc1pQBIOCkBY7z3/NQ+Y1WZMFaYOraOP7G5I47Zj0enymSJV/xi92m9mq
	a6sz9WWcHzD0qHVxaTymqHAvZt5no6jQSbMUKsFsTZNjsdvUQMTrEa87GID0Xw==
Date: Mon, 27 Nov 2023 14:07:14 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Tim Lunn
 <tim@feathertop.org>, Jagan Teki <jagan@edgeble.ai>, Rob Herring
 <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>
Subject: Re: [PATCH v2 4/9] ARM: dts: rockchip: rv1126: Add i2c2 nodes
In-Reply-To: <5119280.687JKscXgg@diego>
References: <20231122122232.952696-1-tim@feathertop.org>
 <4234862.3Lj2Plt8kZ@diego> <8fec049c0b72727086c707dfd9de6dda@manjaro.org>
 <5119280.687JKscXgg@diego>
Message-ID: <6efa5eb17d795da024357a12dfb11ac1@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_050720_491825_106C50FF 
X-CRM114-Status: GOOD (  18.25  )
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

T24gMjAyMy0xMS0yNyAxMjoxMCwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gTW9udGFnLCAy
Ny4gTm92ZW1iZXIgMjAyMywgMTE6NTU6MjEgQ0VUIHNjaHJpZWIgRHJhZ2FuIFNpbWljOgo+PiBP
biAyMDIzLTExLTI3IDExOjUwLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPj4gPiBBbSBNb250YWcs
IDI3LiBOb3ZlbWJlciAyMDIzLCAxMTo0MzowNSBDRVQgc2NocmllYiBEcmFnYW4gU2ltaWM6Cj4+
ID4+IE9uIDIwMjMtMTEtMjcgMTE6MjksIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+PiA+PiA+IEFt
IE1vbnRhZywgMjcuIE5vdmVtYmVyIDIwMjMsIDEwOjU4OjQzIENFVCBzY2hyaWViIFRpbSBMdW5u
Ogo+PiA+PiA+PiBPbiAxMS8yNy8yMyAyMDo0NSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4+ID4+
ID4+PiBJdCdzIGRpZmZlcmVudCBmb3IgbW1jLCB3aGVyZSB0aGlzIG5hbWluZyBzY2hlbWUgaXNu
J3Qgbm9ybWFsbHkgdXNlZCwKPj4gPj4gPj4+IHNvIHdlIChtb3N0bHk/KSBtaWdyYXRlZCB0byB0
aGVtIGJlaW5nIGluIHRoZSBib2FyZC1zcGVjaWZpYyBhbGlhcwo+PiA+PiA+Pj4gc2VjdGlvbi4K
Pj4gPj4gPj4KPj4gPj4gPj4gV2hhdCBhYm91dCB0aGUgZXRoZXJuZXQgYWxpYXMsIHRoZSBNQUMg
aXMgcGFydCBvZiB0aGUgU29DLCBzaG91bGQgdGhpcwo+PiA+PiA+PiBzdGF5IGFzIGl0IGlzIGlu
IHBhdGNoIDYgZnJvbSB0aGlzIHNlcmllcywgb3IgbW92ZSB0byBib2FyZCBkdHNpPwo+PiA+PiA+
Cj4+ID4+ID4gSSB0aGluayBqdWRnaW5nIGZyb20gZXZlcnl0aGluZyBhYm92ZSAoYW5kIHRoZSBv
dGhlciBtb2Rlcm4gYm9hcmRzCj4+ID4+ID4gbGlrZSBhbGwgcmszNTg4IG9uZXMpIHRoZSBldGhl
cm5ldDAgYWxpYXMgc2hvdWxkIG1vdmUgdG8gdGhlIGJvYXJkCj4+ID4+ID4gZHRzKGkpLgo+PiA+
PiA+Cj4+ID4+ID4gVGhlIGdtYWMgZ2VuZXJhbGx5IGRvZXMgbm90IGhhdmUgdGhpcyBudW1iZXJp
bmcgc2NoZW1lIGxpa2UgaTJjIG9yCj4+ID4+ID4gdWFydHMuCj4+ID4+Cj4+ID4+IFBsZWFzZSBu
b3RlIHRoZXJlJ3MgYWxyZWFkeSBhbiBFdGhlcm5ldCBhbGlhcyBkZWZpbmVkIGluIHJrMzM5OS5k
dHNpLAo+PiA+PiBldmVuIGRlc3BpdGUgbm90IGFsbCBSSzMzOTktYmFzZWQgZGV2aWNlcyB1c2lu
ZyB0aGUgR01BQywgZm9yIGV4YW1wbGUKPj4gPj4gdGhlIFBpbmVib29rIFByby4gIFBlcmhhcHMg
dGhhdCdzIHNvbWV0aGluZyB0byBiZSBmaXhlZCBhcyB3ZWxsLgo+PiA+Cj4+ID4gcG9zc2libHkg
Oi0pCj4+ID4KPj4gPiBJIGd1ZXNzIGZvciBzdGFydGVycyB3ZSBzaG91bGRuJ3QgaW50cm9kdWNl
IG5ldyBpbnN0YW5jZXMgZm9yIGl0Lgo+PiAKPj4gVG90YWxseSBhZ3JlZWQuCj4+IAo+PiA+IEFs
bCB0aGUgbmV3ZXIgU29DcyBhbHJlYWR5IGhhdmUgdGhlaXIgZXRoZXJuZXQgYWxpYXMgaW4gdGhl
IGJvYXJkIGR0cwo+PiA+IChyazM1NngsIHJrMzU2OCkgd2hpY2ggY2FtZSBhZnRlciB3ZSBhbHNv
IG1vdmVkIHRoZSBtbWMgYWxpYXNlcy4KPj4gCj4+IFRoZSBiYXNlIHJrMzM5OS5kdHNpIGZpbGUg
YW5kIHRoZSBSSzMzOTktYmFzZWQgYm9hcmQvZGV2aWNlIGR0cyhpKSAKPj4gZmlsZXMKPj4gYXJl
IGZpbmUgd2hlbiBpdCBjb21lcyB0byB0aGUgbW1jIGFsaWFzZXMuICBJIGNhbiBtb3ZlIGZvcndh
cmQgYW5kIAo+PiBjbGVhbgo+PiB1cCB0aGUgRXRoZXJuZXQgYWxpYXMgYXMgd2VsbCwgaWYgeW91
IGFncmVlPwo+IAo+IFllcCwgd2UgbW92ZWQgbW1jIGFsaWFzZXMgYSB3aGlsZSBhZ28uCj4gCj4g
U28gbW92aW5nIHRoZSBldGhlcm5ldCBzb3VuZHMgbGlrZSB0aGUgcmlnaHQgd2F5IGZvcndhcmQu
IFNvIGlmIHlvdSAKPiBoYXZlCj4gdGhlIHRpbWUgZm9yIGl0LCB0aGVuIEknZCBiZSBxdWl0ZSBo
YXBweSB0byB0YWtlIHBhdGNoZXMgZm9yIHRoYXQgCj4gY2hhbmdlLgoKR3JlYXQsIHRoYW5rcy4g
IEknbGwgcHJlcGFyZSB0aGUgcGF0Y2hlcyBpbiB0aGUgbmV4dCBjb3VwbGUgb2YgZGF5cywgYW5k
IApzZW5kIHRoZW0gb3Zlci4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
