Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29F9DC3DA7F
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Aug 2024 19:14:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gwU10LhWeKk649m88Ww3mgeLgsmJU1JsOLPNpE3xqd4=; b=ZLcavUFADpXz1ODDduE0PuaF7p
	viLSYxofgkF9DvFzg6U9KJ+yulxZ48AwUFH+3Gj7Gow5qIwRg8gXaDY4JnvveeVoSHKdC8pujEYEO
	3T7MCb+LnsKBmDOU5tGZJyv1l4dM0G7/456NWchUkn8OHMPTFhhWNNqDY+q24+t1McEV/WHcePhDP
	a4N0xI/lSo8rFe+CyOc8rfYMwXGLcEEwhzbC6XwLBd5G0tdbEOzzvKtj6ijH+ORz52tVmoZTF3C6G
	IgcenMx8ETc0QnvIQw+UkrMdmdDP1Iucd+BIyOv4sg3MGFQYLh4ay73cfo2LF40wpgRN9d0TcbtMr
	UqCy2tpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb3A8-0000000GyQY-1oYI;
	Mon, 05 Aug 2024 19:14:32 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb39a-0000000GyIB-40tp;
	Mon, 05 Aug 2024 19:14:00 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1722885236;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dtk5dG3EnMjfhWRTuibDKCkK/kKGRGj1UhF5G7S1ARA=;
	b=VwYd2R8Q579hnEEWI6Tq589C2vlwN4VYNLiC0PcWaImyY2FszadxQtKzN0maGSHTV3JfaN
	gIjIDVGsZY5QDpPMqRU6uHhduha4T8g03a5cZJJDIlOoZIqYyb7O2XYzdSSZ4lOE/eV9R0
	OUnFd3cfGCh/tATD+QHfo1sY2q5H396b7mrGdzNDcfdahJzIXx+q51tTY6B4v4rt4X2Hcq
	8hVasH96My11mkUjXPIOIuMForyQZJw38IK2Ohp9yvUDmSUtm35sU2hsFzwwYtxMMZxoeF
	mCnYUPJA5mpSO3u+UzcDbQupl/raVQbTwClA+29Y5q1U6s0NvkqgIztx35C/JQ==
Date: Mon, 05 Aug 2024 21:13:53 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Yao Zi <ziyao@disroot.org>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Krzysztof Kozlowski
 <krzk@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, Chris
 Morgan <macromorgan@hotmail.com>, Jonas Karlman <jonas@kwiboo.se>, Tim Lunn
 <tim@feathertop.org>, Andy Yan <andyshrk@163.com>, Muhammed Efe Cetin
 <efectn@protonmail.com>, Jagan Teki <jagan@edgeble.ai>, Ondrej Jirman
 <megi@xff.cz>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: Add base DT for rk3528 SoC
In-Reply-To: <ZrD8N7_tYAiKCg-C@ziyaolaptop.my.domain>
References: <20240803125510.4699-2-ziyao@disroot.org>
 <ZrCwrWjRgvE0RS98@ziyaolaptop.my.domain>
 <82e7e3a78f784b3ad63094c8a0ab1932@manjaro.org> <7941737.iedYuu7f5S@diego>
 <ZrD8N7_tYAiKCg-C@ziyaolaptop.my.domain>
Message-ID: <303a27ab5681e13467f01de9bfe94b45@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_121359_597399_906D129D 
X-CRM114-Status: GOOD (  24.98  )
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

SGVsbG8gWWFvLAoKT24gMjAyNC0wOC0wNSAxODoyMiwgWWFvIFppIHdyb3RlOgo+IE9uIE1vbiwg
QXVnIDA1LCAyMDI0IGF0IDAxOjQ3OjQ1UE0gKzAyMDAsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+
PiBBbSBNb250YWcsIDUuIEF1Z3VzdCAyMDI0LCAxMzozNzoxMSBDRVNUIHNjaHJpZWIgRHJhZ2Fu
IFNpbWljOgo+PiA+IE9uIDIwMjQtMDgtMDUgMTI6NTksIFlhbyBaaSB3cm90ZToKPj4gPiA+IE9u
IFN1biwgQXVnIDA0LCAyMDI0IGF0IDA0OjA1OjI0UE0gKzAyMDAsIEtyenlzenRvZiBLb3psb3dz
a2kgd3JvdGU6Cj4+ID4gPj4gT24gMDQvMDgvMjAyNCAxNToyMCwgWWFvIFppIHdyb3RlOgo+PiA+
ID4+ID4+Cj4+ID4gPj4gPj4+ICsJCWNvbXBhdGlibGUgPSAiZml4ZWQtY2xvY2siOwo+PiA+ID4+
ID4+PiArCQkjY2xvY2stY2VsbHMgPSA8MD47Cj4+ID4gPj4gPj4+ICsJCWNsb2NrLWZyZXF1ZW5j
eSA9IDwyNDAwMDAwMD47Cj4+ID4gPj4gPj4+ICsJCWNsb2NrLW91dHB1dC1uYW1lcyA9ICJ4aW4y
NG0iOwo+PiA+ID4+ID4+PiArCX07Cj4+ID4gPj4gPj4+ICsKPj4gPiA+PiA+Pj4gKwlnaWM6IGlu
dGVycnVwdC1jb250cm9sbGVyQGZlZDAxMDAwIHsKPj4gPiA+PiA+Pgo+PiA+ID4+ID4+IFdoeSB0
aGlzIGFsbCBpcyBvdXRzaWRlIG9mIFNvQz8KPj4gPiA+PiA+Cj4+ID4gPj4gPiBKdXN0IGFzIEhl
aWtvIHNheXMsIGRldmljZSB0cmVlIGZvciBhbGwgb3RoZXIgUm9ja2NoaXAgU29DcyBkb24ndCBo
YXZlCj4+ID4gPj4gPiBhICJzb2MiIG5vZGUuIEkgZGlkbid0IGtub3cgd2h5IGJlZm9yZSBidXQg
anVzdCBmb2xsb3cgdGhlIHN0eWxlLgo+PiA+ID4+ID4KPj4gPiA+PiA+IElmIHlvdSBwcmVmZXIg
YWRkIGEgc29jIG5vZGUsIEkgYW0gd2lsbGluZyB0by4KPj4gPiA+Pgo+PiA+ID4+IFN1cnByaXNp
bmcgYXMgdXN1YWxseSB3ZSBleHBlY3QgTU1JTyBub2RlcyBiZWluZyBwYXJ0IG9mIFNvQyB0byBi
ZQo+PiA+ID4+IHVuZGVyCj4+ID4gPj4gc29jQCwgYnV0IGlmIHRoYXQncyBSb2NrY2hpcCBwcmVm
ZXJlbmNlIHRoZW4gZmluZS4KPj4gPiA+Pgo+PiA+ID4KPj4gPiA+IE9rYXksIHRoZW4gSSB3b3Vs
ZCBsZWF2ZSBpdCBhcyBpcy4KPj4gPiA+Cj4+ID4gPiBGb3IgdGhlIGZpeGVkLWNsb2NrIG5vZGUs
IEkgdGhpbmsgInhpbjI0bTogY2xvY2stMjRtIHsgfSIgaXMgb2theSBhbmQKPj4gPiA+IGZvbGxv
d3MgdGhlIG5ldyBydWxlPwo+PiA+Cj4+ID4gSSBmaW5kICJ4aW4yNG06IGNsb2NrLXhpbjI0bSB7
IH0iIGJldHRlciwgYmVjYXVzZSBrZWVwaW5nIHRoZSAieGluMjRtIgo+PiA+IHBhcnQgaW4gL3N5
cyBsaXN0aW5nKHMpLCBmb3IgZXhhbXBsZSwgY2FuIG9ubHkgYmUgaGVscGZ1bC4KPj4gCj4+IEkg
d291bGQgc2Vjb25kIHRoYXQgOi0pIC4gTGlrZSBvbiBhIG51bWJlciBvZiBib2FyZHMgd2UgaGF2
ZSBmb3IgCj4+IGV4YW1wbGUKPj4gMTI1TUh6IGdtYWMgY2xvY2sgZ2VuZXJhdG9ycyAuLi4gd2l0
aCAyIGdtYWNzLCB0aGVyZSBhcmUgMiBvZiB0aGVtLgo+PiAKPj4gSSdtIG5vdCBzdXJlIHRoZSBw
cmVmZXJyZWQgbmFtZSBhY2NvdW50cyBmb3IgdGhhdD8KPj4gCj4+IFNpbWlsYXJseSB3ZSBhbHNv
IGtlZXAgdGhlIG5hbWluZyBpbiB0aGUgcmVndWxhdG9yIG5vZGUsCj4+IGl0J3MgcmVndWxhdG9y
LXZjYzN2My1zb21lbmFtZSB7fSBpbnN0ZWFkIG9mIGp1c3QgcmVndWxhdG9yLTN2MyB7fS4KPiAK
PiAiY2xvY2steGluMjRtIiB3b3VsZG4ndCBiZSBtb3JlIGRlc2NyaXB0aXZlIHRoYW4gImNsb2Nr
LTI0bSIgYW5kIHRoZXJlCj4gYXJlIHVzdWFsbHkgb25seSBhIGZldyBmaXhlZCBjbG9ja3MgaW4g
ZHQsIHRodXMgZmluZGluZyBjb3JyZXNwb25kaW5nCj4gZGVmaW5pdGlvbiBpc24ndCBhIHByb2Js
ZW0gSSB0aGluay4KCldlbGwsIHVzaW5nICJjbG9jay14aW4yNG0iIGNvbWVzIHdpdGggYW5vdGhl
ciBiZW5lZml0LCB3aGljaCBpcyB1c2luZwp0aGUgc2FtZSAieGluMjRtIiBhcyBpbiB0aGUgYWN0
dWFsIGNsb2NrIG5hbWUuICBUaGF0IHdheSwgdGhlIHNhbWUgY2xvY2sKbmFtZSBnZXRzIHVzZWQg
aW4gdmFyaW91cyAvc3lzIGxpc3RpbmdzIGFuZCBpbiB0aGUgZGVidWcgY2xvY2sgc3VtbWFyeQpp
biAvc3lzLiAgSGF2aW5nIHRoYXQga2luZCBvZiBjb25zaXN0ZW5jeSBjYW4gb25seSBiZSBiZW5l
ZmljaWFsLgoKPiBGb3IgdGhlIGdtYWMgY2FzZSwgS3J6eXN6dG9mLCBkbyB5b3UgdGhpbmsgc29t
ZXRoaW5nIGxpa2UKPiAiY2xvY2stMTI1bS1nbWFjMSIgaXMgYWNjZXB0YWJsZSwganVzdCBsaWtl
IHdoYXQgaGFzIGJlZW4gZG9uZSBmb3IKPiByZWd1bGF0b3JzPwoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
