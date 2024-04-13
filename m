Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78AEFC4345F
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Apr 2024 08:12:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DMpsZ0GrHNW0LJ2FnA224VjeYzD08X716uuQ3B+n6f4=; b=EA2hC3lOb8piLptMIS/pphyNaq
	K4azf75mLUypkG8rpsM6Z3eqeZNfDI9ZrSZ7YaCau9zlkWKFL9T19FqcJLgajf6PnZ5kxzijc8Xxn
	uynidVNA5Bfan+vHXQhlpfSfK6L91RXimZ2MmdRXcxWUsPaPzUx0FexjLtjXsvywpeYEG3fnUJRhu
	eRN4V26JRiDiz+mKz4LEOTZezF6R2A3BFPKeONmS930KK4inQbrmVKWtghhXYQdry3/8wmcTdmJvd
	0ro8rEBqbRIx7L2wCtvv8OQej3o96NhMvICbABBanCZaalaX5t83SnsHk61FsDiLEnbC+vt1qgt6G
	foJBO+xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvYV6-00000002iIx-1EQj;
	Sat, 13 Apr 2024 08:12:40 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvYUz-00000002iHf-3WZM;
	Sat, 13 Apr 2024 08:12:36 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1712995951;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ahlUb9+Un53eTerF9Lifl5XA3JlHB2YHwocz+Ot5irk=;
	b=Bu6UDgW/c68Krg6kKB8aSCIEMHl5gzJ3nYG44WRalu+s/vgsKw+FaOerxX9yYS5rif1TyL
	xREyQzbWxJIlkKALTCDHY9TJ7xwWrNp6cu4tVrZI9fqPdSXTaMIu5HuZ6W4Y5HbtdbRXdA
	q86i6NI3YLzEJ4x74NClyUK3FDXO/skz/n1nBLkndfh7T0UVeryUlavs7mLeGQpOBq3tBE
	91LRvUYqI3oQy2Od++Psrbym/vlHvlIirJqtuhJqNE+CtERrwU7REzF59SMvUbE6qUWFFW
	A9hcam1wyedhnJ+bqM0UM0+35xSi+tSHn6fYFsaDcMMRk+vDyzN35Peg0PrLlw==
Date: Sat, 13 Apr 2024 10:12:31 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-i2c@vger.kernel.org, Andi Shyti <andi.shyti@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 13/18] i2c: rk3x: remove printout on handled timeouts
In-Reply-To: <8358604.T7Z3S40VBb@diego>
References: <20240410112418.6400-20-wsa+renesas@sang-engineering.com>
 <hgdhrf2jiovfxcppdtsq32sfbk4xuq7ewiwq4awwztj4mp3yez@kj6ixihkcxhe>
 <af8ac48f10a1636ab2486aef91e01c3f@manjaro.org> <8358604.T7Z3S40VBb@diego>
Message-ID: <cfb8d27455b213a87af4b20f96225d9e@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240413_011234_180542_9170CF41 
X-CRM114-Status: GOOD (  13.35  )
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

SGVsbG8gSGVpa28sCgpPbiAyMDI0LTA0LTEzIDA5OjU4LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToK
PiBBbSBTYW1zdGFnLCAxMy4gQXByaWwgMjAyNCwgMDg6NDQ6NDEgQ0VTVCBzY2hyaWViIERyYWdh
biBTaW1pYzoKPj4gT24gMjAyNC0wNC0xMyAwODozOCwgV29sZnJhbSBTYW5nIHdyb3RlOgo+PiA+
PiBNYXliZSBpdCB3b3VsZCBiZSBnb29kIHRvIHR1cm4gaXQgaW50byBhIGRlYnVnIG1lc3NhZ2Us
IGluc3RlYWQgb2YKPj4gPj4gc2ltcGx5IHJlbW92aW5nIGl0PyAgTWF5YmUgbm90IGFsbCBjbGll
bnQgZHJpdmVycyBoYW5kbGUgaXQgY29ycmVjdGx5LAo+PiA+PiBpbiB3aGljaCBjYXNlIGhhdmlu
ZyBhbiBlYXN5IHdheSBmb3IgZGVidWdnaW5nIHdvdWxkIGJlIGJlbmVmaWNpYWwuCj4+ID4KPj4g
PiBIbW0sIGJ1dCBpdCBzdGlsbCByZXR1cm5zIC1FVElNRURPVVQgdG8gZGlzdGluZ3Vpc2ggY2Fz
ZXM/Cj4+IAo+PiBTdXJlLCBidXQgSSB0aGluayB0aGF0IGhhdmluZyBzdWNoIGFuIGFkZGl0aW9u
YWwgZGVidWcgZmFjaWxpdHkKPj4gY2FuIG9ubHkgaGVscCBhbmQgc2F2ZSB0aGUgcGVvcGxlIGZy
b20gYWRkaW5nIHRlbXBvcmFyeSBwcmludGsoKXMKPj4gd2hpbGUgZGVidWdnaW5nLgo+IAo+IEFs
c28gd2UncmUgdGFsa2luZyBhYm91dCB0d28gbGluZXMgb2YgY29kZSwgSSB3b3VsZG4ndCBjYWxs
IHRoYXQgYmxvYXQgCj4gOy0pCj4gSSB3YXMgdGhpbmtpbmcgYWJvdXQgZGV2X2RiZyB2cy4gcmVt
b3ZhbCB0b28sIGJ1dCBoYWRuJ3QgYSBjbGVhcgo+IGZhdm9yaXRlLgo+IAo+IFNvIGVzc2VudGlh
bGx5IERyYWdhbiBpcyB0aXBwaW5nIHRoZSBzY2FsZSBhbmQgSSBndWVzcyBkZXZfZGJnIG1pZ2h0
IGJlCj4gdGhlIG5pY2VyIHdheSB0byBnby4KClllcywgdGhlIGNvZGUgZm9yIHByaW50aW5nIHRo
ZSBtZXNzYWdlIGlzIGFscmVhZHkgdGhlcmUgYW5kIGl0J3Mgb25seQphIGNvdXBsZSBvZiBsaW5l
cywgc28gaXQgbWlnaHQgYmUgYSBnb29kIGlkZWEgdG8gcmVjeWNsZSBpdC4gOikKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
