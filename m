Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FFEECA1007
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Sep 2025 00:59:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uyne6VAZV9L2cCVXY5r8hiCs4huHY0xapVxDFrt3QB0=; b=Dk8ECCT0hZV7oo
	GBdGq7LOmZFgglCFo+8MTynvigm2JR/KxoObRGW1fEXMfPXTjWarEB4FLyjb3Y7J8I4Ur+/wxUyO/
	PJMKst63e6FKIPEgdRgLQztXC5kxvLwA7oOBy9upA2/xhhzFIIJfHD0Y7MM9bSZ6xWELMesG10fdY
	qjwyBubrtVph+NUE2mACWX2shKJNz6F/eKdvodsUhozyZ5SucJMXCrdZqzO1URsacydqS5AaGJFPT
	ifBP96H9NhnkZ/OCxJijIUVYBvYiftVoA9452sTOhYev4Ti/Mt12lt/5fO19aopI2cMEy9bSNji5F
	TWEzxjtD/j1L4ctwa1YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utbq8-00000002xPn-04NW;
	Wed, 03 Sep 2025 00:59:08 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utbnM-00000002wiz-258s;
	Wed, 03 Sep 2025 00:56:19 +0000
Received: from neptunite.rasen.tech (unknown [IPv6:2404:7a81:160:2100:30ba:ee2f:ad96:6665])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id 111D3162B;
	Wed,  3 Sep 2025 02:55:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1756860902;
	bh=vMUBpOspAwuRbk3s8zYi5ml7mvtL6cW/MHTRA4NY7ro=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=M09UjxbaNl4O7Aq5tpPeCiAvMeaYwv5r0yOTL0GZdgx+4CItYw64sXEQszZXQYdYP
	 0GJ1Y1XRYj0p3daiEop57gWfDtU6YT1+OVvMuYMJLP4WyXuxJx5jJUhSz3QSvrOFlC
	 XQxrbiuL8S0iIyk2o/nCeDhN+ir2y/Mf2w+OunwY=
MIME-Version: 1.0
In-Reply-To: <m31popxjqk.fsf@t19.piap.pl>
References: <175308758352.3134829.9472501038683860006@localhost> <m3qzxyug1s.fsf@t19.piap.pl> <m3cy9futcj.fsf@t19.piap.pl> <m34iumujcs.fsf@t19.piap.pl> <m3zfcet41n.fsf@t19.piap.pl> <m3a545t789.fsf@t19.piap.pl> <20250812103243.GK30054@pendragon.ideasonboard.com> <175501095338.74722.11604545949710100799@localhost> <CAHCN7xKq_o_u7PhPMcZ2W9nzrFP8+CnhaYJOyxnjpKfbMTBCEw@mail.gmail.com> <m31popxjqk.fsf@t19.piap.pl>
Subject: Re: FYI: i.MX8MP ISP (RKISP1) MI registers corruption: resolved
From: Paul Elder <paul.elder@ideasonboard.com>
Cc: Stefan Klug <stefan.klug@ideasonboard.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Dafna Hirschfeld <dafna@fastmail.com>, Heiko Stuebner <heiko@sntech.de>, Jacopo Mondi <jacopo.mondi@ideasonboard.com>, Ondrej Jirman <megi@xff.cz>, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
To: Adam Ford <aford173@gmail.com>, Krzysztof =?utf-8?q?Ha=C5=82asa?= <khalasa@piap.pl>
Date: Wed, 03 Sep 2025 09:56:04 +0900
Message-ID: <175686096405.1542294.2802960782852730947@neptunite.rasen.tech>
User-Agent: alot/0.0.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_175616_676650_C4255AB3 
X-CRM114-Status: GOOD (  13.52  )
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

SGkgS3J6eXN6dG9mLAoKUXVvdGluZyBLcnp5c3p0b2YgSGHFgmFzYSAoMjAyNS0wOS0wMiAxODo1
NDoyNykKPiBIaSwKPiAKPiBzdW1tYXJ5Ogo+IAo+IEkndmUgZG9uZSBhIGZldyBhZGRpdGlvbmFs
IHRlc3RzIGFuZCBpdCBzZWVtcyB0aGUgTUVESUFfQVhJIGNsb2NrIGlzIHRoZQo+IHByb2JsZW0u
IFJlZHVjaW5nIGl0IHRvIDQwMCBNSHogd2hpbGUgc3RpbGwgcnVubmluZyBNRURJQV9JU1AgYXQg
NTAwIE1Iego+IHByb2R1Y2VzIG5vIGVycm9ycy4KPiBNRURJQV9JU1AgYXQgNDAwIE1IeiBhbmQg
TUVESUFfQVhJIGF0IDUwMCBNSHogcHJvZHVjZXMgZXJyb3JzLCB0aG91Z2gKPiAocmVnaXN0ZXIg
YWRkcmVzcyBlcnJvcnMgd2hpbGUgcmVhZGluZyBhbmQgd3JpdGluZyBmcm9tL3RvIElTUCBNSQo+
IChtZW1vcnkgaW50ZXJmYWNlKSByZWdpc3RlcnMsIG9ubHkgb24gdGhlIHNlY29uZGFyeSBJU1Ag
KGlzcDEpLCBhbmQKPiBnZW5lcmFsbHkgb25seSB3aGlsZSBzdHJlYW1pbmcgZGF0YSBmcm9tIHRo
ZSBJU1ApLgo+IAo+IFdoYXQgaXMgZHJpdmVuIGJ5IE1FRElBX0FYSSBjbG9jayByb290PyBNRURJ
QU1JWDogSVNJLCBMQ0RJRiwgSVNQLCBEV0UuCj4gCj4gQWNjb3JkaW5nIHRvIGJvdGggZGF0YXNo
ZWV0cyAoaW5kdXN0cmlhbCBhbmQgY29tbWVyY2lhbCksIE1FRElBX0FYSQo+IGlzIGxpbWl0ZWQg
dG8gNDAwIE1IeiBpbiBub3JtYWwgbW9kZSBhbmQgNTAwIE1IeiBpbiBvdmVyZHJpdmUgbW9kZS4K
PiBBbGwgbXkgaGFyZHdhcmUgaXMgc2V0dXAgZm9yIG92ZXJkcml2ZSBtb2RlLCB0aG91Z2ggKHR3
byBtYW51ZmFjdHVyZXJzLAo+IGJvdGggdXNpbmcgdGhlIHNhbWUgUE1JQyBzZXR1cCkuCgpUaGFu
a3MgZm9yIHRoZSBpbnZlc3RpZ2F0aW9uIQoKPiAKPiBTaW5jZSBubyBoYXJkd2FyZSBpbiB0aGUg
b2ZmaWNpYWwgTGludXgga2VybmVsIHRyZWUgKERUKSB1c2VzIHRoZSBzZWNvbmQKPiBJU1AuLi4g
U2hvdWxkIHdlIGp1c3QgYWRkIGEgd2FybmluZyB0byB0aGUgaW14OG1wLmR0c2kgYW5kIGJlIGRv
bmUgd2l0aAo+IGl0PwoKYWZhaXUgd2UgY2FuJ3QgeWV0IHVzZSB0aGUgSVNJIGFuZCBJU1Agc2lt
dWx0YW5lb3VzbHksIHNvIHRoZSBJU0kgaXMKZW5hYmxlZCBieSBkZWZhdWx0IGFuZCB5b3UgbmVl
ZCBvdmVybGF5cyB0byBlbmFibGUgdGhlIElTUCwgc28KdGVjaG5pY2FsbHkgbm90aGluZyB1cHN0
cmVhbSB1c2VzIGVpdGhlciBJU1AuIFRvIG15IGtub3dsZWRnZSwgdGhlcmUgaXMKaGFyZHdhcmUg
d2hlcmUgeW91IGNhbiB1c2UgYm90aCB0aG91Z2gsIHN1Y2ggYXMgdGhlIERlYml4IFNPTSBBCihp
bXg4bXAtZGViaXgtc29tLWEtYm1iLTA4LmR0cykgWzBdLgoKClBhdWwKClswXSBodHRwczovL2Rl
Yml4LmlvL2hhcmR3YXJlL2RlYml4LXNvbS1hLWlvLWJvYXJkLmh0bWwKCj4gT3V0IG9mIHRyZWUg
aGFyZHdhcmUgdXNpbmcgaXNwMSAoY3NpMSkgb2J2aW91c2x5IGV4aXN0cy4KPiAtLSAKPiBLcnp5
c3p0b2YgIkNocmlzIiBIYcWCYXNhCj4gCj4gU2llxIcgQmFkYXdjemEgxYF1a2FzaWV3aWN6Cj4g
UHJ6ZW15c8WCb3d5IEluc3R5dHV0IEF1dG9tYXR5a2kgaSBQb21pYXLDs3cgUElBUAo+IEFsLiBK
ZXJvem9saW1za2llIDIwMiwgMDItNDg2IFdhcnN6YXdhCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
