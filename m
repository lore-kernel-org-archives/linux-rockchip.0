Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6FA2C76195
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Mar 2023 15:58:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kJy6zufrZxMGr8LL9vi2TBtuCwsEH1+rm7haKQ0veSY=; b=uHfpuIisgmY9bR
	j2sGQpLAmtUYCDt75rEKs3Z1nskq4Oybu3rmSohZnTmpVNqMporm/Ohk9RqeuO1AhmyJJbovh3hTb
	VJpHtuLjzjU93/Bfh9iJmFjM+v+qVI1Prhwa6mCElArhRxHOebxPwcFUNYGMCANIih731/qhe2mTs
	IXxJavr1D2S6RQKMo/Jmzv3El9ecAlme2TDs1IxtioGEbDsCfWtx6BfV8rzD7fBfxoQLI07M/ASY4
	gku4l6ktOuxcpyYcm/3gO6gVjKXyZDBMUZYpFJv7KBHbLiNpJ0v3im5E58f2GX3uibvrsoVipHhkJ
	cP/sPxqFGF5+PnqPWVCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgpEO-00BdOJ-1T;
	Mon, 27 Mar 2023 15:58:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgpEK-00BdMs-21;
	Mon, 27 Mar 2023 15:57:58 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pgpE4-000614-21; Mon, 27 Mar 2023 17:57:40 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: =?utf-8?B?T25kxZllag==?= Jirman <megi@xff.cz>,
 Javier Martinez Canillas <javierm@redhat.com>
Cc: linux-kernel@vger.kernel.org, Robert Mader <robert.mader@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Peter Robinson <pbrobinson@gmail.com>,
 Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
 Martijn Braam <martijn@brixit.nl>,
 Kamil =?utf-8?B?VHJ6Y2nFhHNraQ==?= <ayufan@ayufan.eu>,
 Caleb Connolly <kc@postmarketos.org>, Jarrah Gosbell <kernel@undef.tools>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject:  Re: [PATCH v2] arm64: dts: rk3399-pinephone-pro: Add internal display support
Date: Mon, 27 Mar 2023 17:57:39 +0200
Message-ID: <1924921.PYKUYFuaPT@diego>
In-Reply-To: <87wn32rynm.fsf@minerva.mail-host-address-is-not-set>
References:  <20230327074136.1459212-1-javierm@redhat.com>
 <20230327130147.wgxl2qayhzsi2xak@core>
 <87wn32rynm.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_085756_664512_4885F6D5 
X-CRM114-Status: GOOD (  17.42  )
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

QW0gTW9udGFnLCAyNy4gTcOkcnogMjAyMywgMTc6Mzk6NTcgQ0VTVCBzY2hyaWViIEphdmllciBN
YXJ0aW5leiBDYW5pbGxhczoKPiBPbmTFmWVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+IHdyaXRlczoK
PiAKPiBIZWxsIE9uZMWZZWosCj4gCj4gPiBIaSBKYXZpZXIsCj4gPgo+ID4gSSd2ZSB0cmllZCB0
aGUgcGF0Y2ggb24gdG9wIG9mIGxpbnVzL21hc3RlciBhbmQgaXQgd29ya3MgYXMgZXhwZWN0ZWQu
IE15Cj4gPiBEUk0gdGVzdCBhcHAgc2hvd3MgMTYuNjY5bXMgYmV0d2VlbiBmcmFtZXMuIFRoZSBk
aXNwbGF5IG91dHB1dCBpcyBvayBvbgo+ID4gZGV2ZWxvcGVyIGJhdGNoIHBpbmVwaG9uZSBwcm8s
IGFuZCBpcyBjb3JydXB0ZWQgb24gcHJvZHVjdGlvbiB2ZXJzaW9uLgo+ID4gRGlzcGxheSBhbHNv
IGRvZXNuJ3QgY29tZSBiYWNrIGFmdGVyIGJsYW5raW5nLiBBbGwgYXMgZXhwZWN0ZWQuCj4gPgo+
ID4gVGVzdGVkLWJ5OiBPbmRyZWogSmlybWFuIDxtZWdpQHhmZi5jej4KPiA+Cj4gCj4gVGhhbmtz
IGZvciB0ZXN0aW5nLgo+IAo+ID4gQSBmZXcgbW9yZSBjb21tZW50cyBiZWxvdy4KPiA+Cj4gCj4g
SSdtIE9LIHdpdGggdGhlc2UgY29tbWVudHMgYnV0IEkgZGlkIGEgZ2l0IGRpZmYgd2l0aCB5b3Vy
IG9yYW5nZS1waS02LjMKPiBicmFuY2gganVzdCBiZWZvcmUgcG9zdGluZyBhbmQgdGhpcyB3YXMg
dGhlIGxhdGVzdCB0aGF0J3MgaW4geW91ciB0cmVlLgo+IAo+IFNvIGZlZWwgZnJlZSB0byBlaXRo
ZXIgcG9zdCBhIHYzIGFkZHJlc3NpbmcgdGhlIHRoaW5ncyB5b3UgYXJlIHBvaW50aW5nCj4gb3V0
IG9yIGxldHMgbGFuZCB0aGlzIGFuZCB3ZSBjYW4gcG9zdCBhbnkgZnVydGhlciBjbGVhbnVwcyBv
biB0b3AgSU1PLgoKSSB3b3VsZCByZWFsbHkgbGlrZSB0byBfbm90XyBhcHBseSBlc3NlbnRpYWxs
eSBicm9rZW4gY29kZSwgc28gcmVhbGx5CndvdWxkIHByZWZlciB0aGUgdjMtYXBwcm9hY2guCgpU
aGFua3MKSGVpa28KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
