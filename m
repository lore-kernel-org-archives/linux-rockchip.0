Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B582CA0EE4
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Aug 2025 19:23:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oeBI4sO8r8N9ge/sSF3vkKFv8DD0JiMwB4aAKob6aqU=; b=ZQXqDhvYGk7eyP
	+h7kYzvGJSJBimi3jW9Au4tLvGoUEWhDQKX0dbEqibmCeH8w8/NEb4D7Q74s7GILdhp5kw6VyxKCG
	Ivba5uvxA4X6vOiGfxbh6B0TfgDqxcB+We1EsW7dHXzavKKhNxWBdBBIEuLd7dzPwFSpUPcrbXYCr
	Q6U96mPP+xDe5Vkzu7QE4f7whQoLEFUc+bxZiWQNHR/GxoCk7fgfl3wQX+wCjjV+IXjb/UkTC3r9s
	zfL+KKykDRvYQ7ZmGCGxWhqcyNeHlJ1/5E7EX6UlSOeQqqahqsFbevZXwn0IF9nPKjFRG3BTD/L5P
	fRoLo+JZVPjeRvHl3xhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uluaj-0000000Bmvu-04gq;
	Tue, 12 Aug 2025 19:23:25 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulqWN-0000000B8jO-3RkX;
	Tue, 12 Aug 2025 15:02:40 +0000
Received: from ideasonboard.com (unknown [IPv6:2a00:6020:448c:6c00:7c24:e2bc:68da:c990])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id 6B4F64A4;
	Tue, 12 Aug 2025 17:01:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1755010903;
	bh=wR0BxUp4dy33m59/4v222C9B6JZd9Ir0fQjUINH+5+c=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=v4s0yHvZaZ/6VupsHQsCY3EgCCkGo9R/3YHqllY2jygzLaf0K8PIkymJitkGk9jaj
	 Rl12W765kA/4eJ20Rz2rC7kdUYX3/Xa58+xjsfIBEPzMKd2l3hdzPQX321ewN3H26k
	 6FEmlVdW+jb8tvvbaTc3wdJMJhBaUpzu7khXaGkY=
MIME-Version: 1.0
In-Reply-To: <20250812103243.GK30054@pendragon.ideasonboard.com>
References: <175308758352.3134829.9472501038683860006@localhost> <175326599663.2811177.16620980968274114885@localhost> <m3h5z2vw12.fsf@t19.piap.pl> <175344176070.2811177.10693943493658922992@localhost> <m3qzxyug1s.fsf@t19.piap.pl> <m3cy9futcj.fsf@t19.piap.pl> <m34iumujcs.fsf@t19.piap.pl> <m3zfcet41n.fsf@t19.piap.pl> <m3a545t789.fsf@t19.piap.pl> <20250812103243.GK30054@pendragon.ideasonboard.com>
Subject: Re: FYI: i.MX8MP ISP (RKISP1) MI registers corruption: resolved
From: Stefan Klug <stefan.klug@ideasonboard.com>
Cc: Dafna Hirschfeld <dafna@fastmail.com>, Heiko Stuebner <heiko@sntech.de>, Paul Elder <paul.elder@ideasonboard.com>, Jacopo Mondi <jacopo.mondi@ideasonboard.com>, Ondrej Jirman <megi@xff.cz>, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
To: Krzysztof =?utf-8?q?Ha=C5=82asa?= <khalasa@piap.pl>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Date: Tue, 12 Aug 2025 17:02:33 +0200
Message-ID: <175501095338.74722.11604545949710100799@localhost>
User-Agent: alot/0.12.dev8+g2c003385c862.d20250602
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_080239_995242_4759D69A 
X-CRM114-Status: GOOD (  25.25  )
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

SGkgS3J6eXN6dG9mLCBoaSBMYXVyZW50LAoKUXVvdGluZyBMYXVyZW50IFBpbmNoYXJ0ICgyMDI1
LTA4LTEyIDEyOjMyOjQzKQo+IEhpIEtyenlzenRvZiwKPiAKPiBPbiBUdWUsIEF1ZyAxMiwgMjAy
NSBhdCAwNzo1NDo0NkFNICswMjAwLCBLcnp5c3p0b2YgSGHFgmFzYSB3cm90ZToKPiA+IEhpIFN0
ZWZhbiBldCBhbCwKPiA+IAo+ID4gQlRXIEkndmUgYWRkZWQgTHVjYXMgU3RhY2ggYW5kIFNoYXdu
IEd1byB0byAiQ2MiIGxpc3QuCj4gPiAKPiA+IFRoZSBwcm9ibGVtIGlzIHRoZSBDUFUgY29yZSBw
b3dlciBzdXBwbHkgdm9sdGFnZSA6LSkKPiAKPiBBaCwgdGhlIGRyZWFkZnVsIG92ZXJkcml2ZSBt
b2RlLgo+IAo+ID4gLSB3aGlsZSB0aGUgcmVmZXJlbmNlIG1hbnVhbCBzcGVjaWZpZXMgdGhlIG1h
eCBJU1AgYW5kIE1FRElBIGNsb2NrcyBhdAo+ID4gICA1MDAgTUh6LCB0aGUgZGF0YXNoZWV0cyBz
aG93IHRoaXMgcmVxdWlyZXMgdGhlICJvdmVyZHJpdmUiIG1vZGUgPQo+ID4gICBpbmNyZWFzZWQg
Q1BVIHBvd2VyIHN1cHBseSB2b2x0YWdlLiBJbiAibm9ybWFsIiBtb2RlIHRoZSBJU1BzIGFyZQo+
ID4gICBsaW1pdGVkIHRvIDQwMCBNSHogKHRoZXJlIGFyZSBvdGhlciBsaW1pdHMsIHRvbykuCj4g
PiAKPiA+IC0gSSd2ZSB0cmllZCBsb3dlcmluZyB0aGUgY2xvY2sgcmF0ZSBhZnRlciBib290aW5n
IHRoZSBzeXN0ZW1zICh3aXRoCj4gPiAgIGEgQ0NNIHJlZ2lzdGVyIHdyaXRlKSwgYnV0IGl0IGRp
ZG4ndCBmaXggdGhlIHByb2JsZW0uIEkgZ3Vlc3Mgc29tZQo+ID4gICByZXNldCBsb2dpYyBpcyBh
ZmZlY3RlZCBoZXJlLCBhbmQgdGhlIChsb3dlcikgY2xvY2sgcmF0ZSBtdXN0IGJlIHNldAo+ID4g
ICByaWdodCBmcm9tIHRoZSBzdGFydCwgaW4gdGhlIERULgo+IAo+IFRoYXQncyBpbnRlcmVzdGlu
Zy4gSSB3b3VsZG4ndCBoYXZlIGV4cGVjdGVkIHRoYXQuCj4gCj4gPiAtIGFueXdheSwgbG93ZXJp
bmcgdGhlIGZyZXF1ZW5jaWVzIG9mIElTUCBhbmQgTUVESUEgcm9vdCBjbG9ja3MgZml4ZXMKPiA+
ICAgdGhlIElTUDIgTUkgY29ycnVwdGlvbi4gSSdtIGN1cnJlbnRseSBpbnZlc3RpZ2F0aW5nIFBN
SUMgc2V0dGluZ3MKPiA+ICAgKGJvdGggbXkgQ29tcHVsYWIgYW5kIFNvbGlkUnVuIG1vZHVsZXMg
dXNlIFBDQTk0NTBDIFBNSUNzKSwgc28gcGVyaGFwcwo+ID4gICBJJ2xsIGJlIGFibGUgdG8gdXNl
IHRoZSBoaWdoZXIgNTAwIE1IeiBjbG9ja3MuIEl0IGRvZXNuJ3QgbWF0dGVyIG11Y2gsCj4gPiAg
IHRob3VnaC4KPiA+IAo+ID4gLSB0aGUgcXVlc3Rpb24gaXMgaWYgd2Ugc2hvdWxkIGxvd2VyIHRo
ZSBjbG9ja3MgaW4gdGhlIG1haW4gaW14OG1wLmR0c2kKPiA+ICAgRFQgZmlsZSwgb3IgdGhlIG92
ZXJkcml2ZSBtb2RlIHNob3VsZCBzdGF5IHRoZXJlLCBhbmQgdGhlIGNoYW5nZXMKPiA+ICAgc2hv
dWxkIGJlIG1hZGUgdG8gdGhlIGluZGl2aWR1YWwgYm9hcmQgZmlsZXMsIG9yIG1heWJlIHRoZSBV
LUJvb3QKPiA+ICAgY29uZmlncyAoUE1JQyBvdXRwdXQgdm9sdGFnZXMpIHNob3VsZCBiZSBjaGFu
Z2VkIGV0Yy4KPiAKPiBJIHRoaW5rIGl0IHdvdWxkIG1ha2Ugc2Vuc2UgdG8gbG93ZXIgdGhlIGRl
ZmF1bHQgY2xvY2sgZnJlcXVlbmNpZXMsIGFuZAo+IHByb3ZpZGUgYW4gb3ZlcmxheSB0byBlbmFi
bGUgb3ZlcmRyaXZlIG1vZGUuCj4gCj4gSXQncyBhbHNvIGludGVyZXN0aW5nIHRoYXQgdGhlIGlz
c3VlIG9ubHkgYWZmZWN0ZWQgdGhlIHNlY29uZCBJU1AsIGFzCj4gdGhlIGZpcnN0IG9uZSBzaG91
bGQgYWxzbyBiZSBsaW1pdGVkIHRvIDQwMCBNSHogaW4gbm9ybWFsIG1vZGUuCgpJIHN1cHBvcnQg
dGhhdC4gQXMgYSBzaWRlIG5vdGUsIHRoZXJlIGlzIGFscmVhZHkgaW14OG1wLW5vbWluYWwuZHRz
aQp3aGljaCBpcyBvbmx5IHVzZWQgYnkgb25lIGJvYXJkLiBUaGF0IGR0c2kgYWxzbyB1c2VzIHRo
ZQpmc2wsb3BlcmF0aW5nLW1vZGUgcHJvcGVydHkgd2hpY2ggZW5hYmxlcyBhZGRpdGlvbmFsIGNs
b2NrIGNoZWNrcy4gU28gSQphc2sgbXlzZWxmIGlmIHRoZSBkZWZhdWx0IGlteDhtcC5kdHNpIHNo
b3VsZCBzcGVjaWZ5IG92ZXJkcml2ZSBtb2RlLCBvcgppZiB3ZSBzaG91bGQgYWRkIGEgaW14OG1w
LW92ZXJkcml2ZS5kdHNpICh0aGVuIHdlIHNob3VsZCBwb3NzaWJseSByZW5hbWUKdGhlbSB0byBp
bXg4bXAtbW9kZS14eHguZHRzaSBzbyB0aGF0IHRoZXkgc2l0IHNpZGUgYnkgc2lkZSkgdG8gbWFr
ZSBpdAplYXNpZXIgdG8gY3JlYXRlIG92ZXJsYXlzIGZvciBib3RoIGNhc2VzLiAKCkJlc3QgcmVn
YXJkcywKU3RlZmFuCgo+IAo+IC0tIAo+IFJlZ2FyZHMsCj4gCj4gTGF1cmVudCBQaW5jaGFydAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
