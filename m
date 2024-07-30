Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B978EC3DA49
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jul 2024 12:08:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0hnkqo+FFCRDzmixGHxuH+iDl6y0A4MeruQkeZ2/wCk=; b=xFyiZl4D0Rq/+B
	FttPwy8+1lRlqqx0VqPl7pHFhO+B1wjGtBYNiJjpLc9onHONNk4+Nd1CImkRoOvSCnk/ctdrJx+Ey
	5U0RZsu3EcOy2Kwpl/tbMfISlmHnLY1QXxn9HEU9/Jtj6bW6o+S4kDr8RGuDxl6jEiPytjGVoIeTy
	qOX+u9G+YkZkADb2o2m9QUzQIL4DEuWIOGM86Psx/HD1EqvOXKdmergnbJslOaNKGE1LcviD9x5FW
	jMAA0d96KpXOgVMTJHijNceslULJueFjiOvfztxDvMlqm0aTeXKICpnGB8VccObo0Qz2tobi9kZOB
	/3UH+PEJQbWOWE09X8uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYles-0000000F31W-3JBs;
	Tue, 30 Jul 2024 12:08:50 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYleP-0000000F2tH-1nvR;
	Tue, 30 Jul 2024 12:08:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5722D61E9F;
	Tue, 30 Jul 2024 12:08:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B7A71C4AF10;
	Tue, 30 Jul 2024 12:08:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722341299;
	bh=pPjpBfbivKL6cAv5q8a1r5/0D4K3ehqMUNcKDTlaZW8=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=FhoKyhBwlE5KAF61bGSntzRr7kl53sTSu/xykZvfmLRgajXu3ecq9K2BPuXOpNMQG
	 RJR+GKm6G/0Ox9UEp+ToWbP3PmBzRruOg5A8z7oOo1I+idyScmPoCtuklB+xGtTsJo
	 xcCwVB7hM4omI4xl8AE2vvNiOgFqldoSwXtMZ1pG8GCfk0+ZRv7tooqUnHM/OGZEWZ
	 hrk8ioBYhzHaOyBeyrr0FZcu8sKDWaBlixHe7BkhoN7/rmS2EnYFdO7duEtCaQMNci
	 wsrst8amyTth0X5Twgby5vRpU1Mv1spZK0V7rVrx3qACqnGoSuC24lZ1LCV0F6Qx/r
	 IXHMhZsZCTIUw==
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2f035ae1083so59562101fa.3;
        Tue, 30 Jul 2024 05:08:19 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXbNrh6zejJKoQmL7sIW7X1w5Nkb5N+L6D7dr2etTUyrUJwfnQ5EQMn2eqPKxwFK3BeeBw/grItSn3FabZkanZ42KF6RFMqmqMPC4r0gcZqz1g+/k5ZL/S/hl+0cWL9cPLZxisCyCAzy18ZMEAOZxvWCqmY8zlrobs=
X-Gm-Message-State: AOJu0YxpZ7Om9B1J+lvxFf+1znRooPVbreje3mhwsxvD5iFfpjMZMmOo
	vpjHVxR7Vg5l/NWFbruZQJkJNFPSOeGyunlPrIUDvzE7u2hzZKVb6XXqzcrzF/uqh3SJfg45Vnx
	9IzlfAX3HVgVQHU+ZHDHPM3OnL10=
X-Google-Smtp-Source: AGHT+IEew2ptwjzerzes/DjMQPGgSwoLU7EI7pt/rY+1Yqs+CFA3dSUw8u2GOoxP5Z1uV8X2YApMbOoHS69Zl0l9/D8=
X-Received: by 2002:a2e:91d4:0:b0:2ef:1f68:eae1 with SMTP id
 38308e7fff4ca-2f12ee077famr71560271fa.17.1722341298040; Tue, 30 Jul 2024
 05:08:18 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1720969799.git.daniel@makrotopia.org> <ZqgjTQMgWZO2FjaC@makrotopia.org>
 <6690040.iosknibmi9@bagend> <17577153.5WZRyvrzyv@diego>
In-Reply-To: <17577153.5WZRyvrzyv@diego>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 30 Jul 2024 20:08:04 +0800
X-Gmail-Original-Message-ID: <CAGb2v65xZEeZWmKFCRqyO7H=r7_jA4FTJxwKSVj7-qVXPS_fKw@mail.gmail.com>
Message-ID: <CAGb2v65xZEeZWmKFCRqyO7H=r7_jA4FTJxwKSVj7-qVXPS_fKw@mail.gmail.com>
Subject: Re: [PATCH v7 0/3] hwrng: add hwrng support for Rockchip RK3568
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Dragan Simic <dsimic@manjaro.org>, Daniel Golle <daniel@makrotopia.org>, 
	Diederik de Haas <didi.debian@cknow.org>, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	Herbert Xu <herbert@gondor.apana.org.au>, Martin Kaiser <martin@kaiser.cx>, 
	Sascha Hauer <s.hauer@pengutronix.de>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Ard Biesheuvel <ardb@kernel.org>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@debian.org>, 
	devicetree@vger.kernel.org, linux-crypto@vger.kernel.org, 
	Philipp Zabel <p.zabel@pengutronix.de>, Olivia Mackall <olivia@selenic.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Aurelien Jarno <aurelien@aurel32.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_050821_620069_D672228A 
X-CRM114-Status: GOOD (  30.59  )
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
Reply-To: wens@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVHVlLCBKdWwgMzAsIDIwMjQgYXQgNjozN+KAr1BNIEhlaWtvIFN0w7xibmVyIDxoZWlrb0Bz
bnRlY2guZGU+IHdyb3RlOgo+Cj4gQW0gRGllbnN0YWcsIDMwLiBKdWxpIDIwMjQsIDExOjAzOjA2
IENFU1Qgc2NocmllYiBEaWVkZXJpayBkZSBIYWFzOgo+ID4gT24gVHVlc2RheSwgMzAgSnVseSAy
MDI0IDAxOjE4OjM3IENFU1QgRGFuaWVsIEdvbGxlIHdyb3RlOgo+ID4gPiBPbiBXZWQsIEp1bCAy
NCwgMjAyNCBhdCAwODowNzo1MUFNICswMjAwLCBEcmFnYW4gU2ltaWMgd3JvdGU6Cj4gPiA+ID4g
VGhhbmtzIGEgbG90IGZvciB0aGUgdGVzdGluZy4gIFRob3VnaCwgc3VjaCB3aWxkbHkgZGlmZmVy
ZW50IHRlc3QgcmVzdWx0cwo+ID4gPiA+IGNhbiwgcmVncmV0dGFibHksIGxlYWQgdG8gb25seSBv
bmUgY29uY2x1c2lvbjogIHRoZSBIV1JORyBmb3VuZCBpbiBSSzM1NjYKPiA+ID4gPiBpcyB1bnVz
YWJsZS4gOi8KPiA+Cj4gPiBGVFI6IEkgYWdyZWUgd2l0aCBEcmFnYW4sIHVuZm9ydHVuYXRlbHku
Cj4gPgo+ID4gPiBUaGUgcmVzdWx0cyBvbiBSSzM1NjggbG9vayBtdWNoIGJldHRlciBhbmQgdGhl
IHNlcmllcyByaWdodCBub3cgYWxzbwo+ID4gPiBvbmx5IGVuYWJsZWQgdGhlIFJORyBvbiBSSzM1
Njggc3lzdGVtcy4gSG93ZXZlciwgd2UgaGF2ZSBvbmx5IHNlZW4gZmV3Cj4gPiA+IGJvYXJkcyB3
aXRoIFJLMzU2OCB1cCB0byBub3csIGFuZCBJIG9ubHkgZ290IGEgY291cGxlIG9mIE5hbm9QaSBS
NUMKPiA+ID4gaGVyZSB0byB0ZXN0LCBhbGwgd2l0aCBnb29kIGh3cm5nIHJlc3VsdHMuCj4gPiA+
Cj4gPiA+IERvIHlvdSB0aGluayBpdCB3b3VsZCBiZSBhZ3JlZWFibGUgdG8gb25seSBlbmFibGUg
dGhlIEhXUk5HIGZvciBSSzM1NjgKPiA+ID4gYXMgc3VnZ2VzdGVkIGluIHRoaXMgc2VyaWVzPyBP
ciBhcmUgd2UgZXhwZWN0aW5nIHF1YWxpdHkgdG8gYWxzbyB2YXJ5Cj4gPiA+IGFzIG11Y2ggYXMg
aXQgKHNhZGx5KSBkb2VzIGZvciBSSzM1NjY/Cj4gPgo+ID4gVW5sZXNzIHdlIGdldCAqZXZpZGVu
Y2UqIHRvIHRoZSBjb250cmFyeSwgd2Ugc2hvdWxkIGFzc3VtZSB0aGF0IHRoZSBIV1JORyBvbgo+
ID4gUkszNTY4IGlzIGZpbmUgYXMgdGhlIGN1cnJlbnRseSBhdmFpbGFibGUgdGVzdCByZXN1bHRz
IGFyZSBmaW5lLgo+ID4gU28gSSB0aGluayBlbmFibGluZyBpdCBvbmx5IGZvciBSSzM1NjggaXMg
dGhlIHJpZ2h0IHRoaW5nIHRvIGRvLgo+ID4KPiA+IFNvIGEgJ3JldmVydCcgdG8gdjcgdmFyaWFu
dCBzZWVtcyBhcHByb3ByaWF0ZSwgYnV0IHdpdGggdGhlIGZvbGxvd2luZyBjaGFuZ2VzOgo+ID4g
LSBBZGQgYHN0YXR1cyA9ICJkaXNhYmxlZCI7YCBwcm9wZXJ0eSB0byB0aGUgZGVmaW5pdGlvbiBp
biByazM1NnguZHRzaQo+ID4gLSBBZGQgYSBuZXcgY29tbWl0IHdoZXJlIHlvdSBlbmFibGUgaXQg
b25seSBmb3IgcmszNTY4IGFuZCBkb2N1bWVudCBpbiB0aGUKPiA+IGNvbW1pdCBtZXNzYWdlIHdo
eSBpdCdzIG5vdCBlbmFibGVkIG9uIHJrMzU2NiB3aXRoIGEgcG9zc2libGUgbGluayB0byB0aGUg
djcKPiA+IHRocmVhZCBmb3IgY2xhcmlmaWNhdGlvbiBvbiB3aHkgdGhhdCBpcwo+Cj4gSSB3YXMg
Z29pbmcgdG8gcHJvdGVzdCBhYm91dCB0aGUgImRpc2FibGUiIHVudGlsIHJlYWRpbmcgdGhlIDJu
ZCBwYXJ0IDotRCAuCj4KPiBBbmQgeWVhaCB0aGF0IG1ha2VzIGEgbG90IG9mIHNlbnNlLCAiYWRk
IiBpdCB0byByazM1NnguZHRzaSwgYXMgdGhlIElQIGlzCj4gcGFydCBvZiBib3RoIHZhcmlhbnRz
LCBidXQgb25seSBlbmFibGUgaXQgaW4gcmszNTY4LmR0c2kgYmVjYXVzZSBvZiB0aGUKPiBzZWVt
aW5nbHkgZmF1bHR5IGltcGxlbWVudGF0aW9uIG9uIHRoZSByazM1NjYuCgpCZXR0ZXIgeWV0LCBt
YXJrIGl0IGFzICJicm9rZW4iIGluIHJrMzU2Ni5kdHNpIHRvIHJlZmxlY3QgdGhlIHRlc3RzIHRo
YXQKd2UndmUgYWxsIGRvbmUuCgpDaGVuWXUKCj4gPiBZb3UgY291bGQgcHJvYmFibHkgYWxzbyBp
bnRlZ3JhdGUgdGhhdCBpbnRvIDEgY29tbWl0LCBidXQgbWFrZSBzdXJlIHRoYXQgdGhlCj4gPiBj
b21taXQgc3VtbWFyeSBhbmQgZGVzY3JpcHRpb24gbWF0Y2ggdGhlIGltcGxlbWVudGF0aW9uLgo+
ID4gSU1PIHRoYXQgd2Fzbid0ICd0ZWNobmljYWxseScgdGhlIGNhc2UgaW4gdjggYXMgdGhlIHJu
ZyBub2RlIHdhcyBhZGRlZCB0bwo+ID4gcmszNTZ4LCBidXQgaXQgd2FzIG9ubHkgZW5hYmxlZCBv
biByazM1NjguCj4gPgo+ID4gTXkgMC4wMgo+Cj4KPgo+CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
