Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A59A4CA9EBE
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Oct 2026 13:24:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bt+/tUNDYFgxqv5A8LPqRl7MrWmMwfobihNZiA2CdhM=; b=pO6ezo50ohZtTY
	rEfmpOGT9rIS/sqhY8P0fmFb9PV3Q5AW/vqwuDyWCv2JfWD8WdtfqL0e1D1YDTM+soBgszloDsL/g
	HdRz29tZknDidVdL79Hf49eXBr8y5LkWS4ArI50PQLqa1bC8jS5KlE7vv3qcNlF5sGtKDdD2oHFn/
	JuI+VlRToXzCcCDWVPcJMaY7ywzR7uIxEIm1npVFuBOOsuXGRClEmeUFKnpDCu63Rs2ngra55ZfzX
	j+p9oOw2XYOYYspICt+LRBlV8ki4OYWAQHKFmzZtEjsdN+uPqovOtVl/oo8FEFrx7ThNWbepTxljD
	fY5g0qtLskkUHBWBRQXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFX3g-000000086aH-0rxh;
	Sat, 10 Oct 2026 13:24:16 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFX3c-000000086ZN-2gKs
	for linux-rockchip@lists.infradead.org;
	Sat, 10 Oct 2026 13:24:13 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1791638651; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=B5Jjy8MbRyGtHDgV3g3vBxLsyqS5aErY/GYlbv7A/V+9fV8yetA5DbnUGJud7URDfQdKOZN0O3jRqqJGthTue4OdXWLTji3Ub1/pkVXzVGsg8WHIjmsNLYMrVsnphf2A8gvo+fi4dqFgx0epU+J81npXHpvNOkD8LyPl+XdIrok=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1791638651; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=gb7AaUWUIXpySxS8771qcQwcMa6ieF3yokmH3F3IHoU=; 
	b=XJKzbmGzuhsBqbvCVsv3iCcX6MyG3LU+17pTgfkSkDUEjj4pOsQnwC/pgP0PviPyDlN2M1QChiqAfRI4YpEAkHWuxoNMWcfxwV1LazwKPocP/n35VJypWLm3WCCOVxhH/f1qtSgwH2GD2gPHX9w5xOo2wqCk1XGfn/zCJufjr1I=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=michael.riesch@collabora.com;
	dmarc=pass header.from=<michael.riesch@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1791638651;
	s=zohomail; d=collabora.com; i=michael.riesch@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=gb7AaUWUIXpySxS8771qcQwcMa6ieF3yokmH3F3IHoU=;
	b=Pmcw7ECpli/Zl/4Y1oIj0behrEOwIaeGSfLQgdYTXKQUyBx9sDtxpukOGZDWOB4p
	T8LyyRmMVRZ6UDoHbbyCe01cOkOeQuKBPWQeEL4RDZR6qavbac7p+caeQLfEpBiDlA9
	1sFFiBydXiAmhW3y3XcjftrddPrKnZ/r4tJOaB7k=
Received: by smtp.zohomail.com with SMTPS id 1791638650576673.9286419400119;
	Sat, 10 Oct 2026 06:24:10 -0700 (PDT)
Message-ID: <8af98508-ab30-4735-8aae-8c10d3bd1161@collabora.com>
Date: Sat, 10 Oct 2026 15:24:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: RK3588 combo MIPI D-PHY (phy-rockchip-samsung-dcphy) + real
 sensor - any known-working case?
To: =?UTF-8?B?5qWK5pm65oiQ?= <jason98166@gmail.com>
Cc: Evan O' Keeffe <evanokeeffe@gmail.com>, linux-rockchip@lists.infradead.org
References: <CAJ8W1Lxmz8W2tS+HmwS6_CbDWUR9ATccUtR8+XK4hSGxjOx6gg@mail.gmail.com>
 <d0ad70a4-f797-4757-b650-55b521889a95@collabora.com>
 <CAPwA33+xXOuTi9tZKN2mwD9NxeWX8EvZBpDSDzo4=prNfKQLwA@mail.gmail.com>
Content-Language: en-US
From: Michael Riesch <michael.riesch@collabora.com>
In-Reply-To: <CAPwA33+xXOuTi9tZKN2mwD9NxeWX8EvZBpDSDzo4=prNfKQLwA@mail.gmail.com>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261010_062412_743477_0471A680 
X-CRM114-Status: GOOD (  13.09  )
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

SGkgSmFzb24sCgpPbiAxMC8xMC8yNiAxNDozMSwg5qWK5pm65oiQIHdyb3RlOgo+IEhpIE1pY2hh
ZWwsCj4gCj4+IEBKYXNvbjogSXMgdGhlcmUgYW4gdXBjb21pbmcgdjUgb2YgeW91ciBwYXRjaGVz
IEJUVz8KPiAKPiBUaGUgZGlzY3Vzc2lvbiBvbiBteSB2NCBwYXRjaCBzZXJpZXMgaXMgY3VycmVu
dGx5IHBlbmRpbmcgYW5kIHdhaXRpbmcKPiBmb3IgbXkgZGV2aWNlIHRyZWUgIHBhdGNoLiBJ4oCZ
dmUgYWxyZWFkeSBzZW50IG91dCBhbiBSRkMgcGF0Y2ggWzBdIGZvcgo+IGl0LCBidXQgaGF2ZW4n
dCByZWNlaXZlZCBhbnkgZmVlZGJhY2sgeWV0LgoKR29vZCB0byBoZWFyIGZyb20geW91IGFnYWlu
ISBHaXZlbiB0aGF0IEtyenlzenRvZiBoYXMgbm90IHJlcGxpZWQgeWV0LCBJCnRoaW5rIHRoYXQg
aGUgZXhwZWN0cyB0aGUgdGVzdCBwYXRjaCB0byBiZSBpbmNvcnBvcmF0ZWQgcHJvcGVybHkgaW4g
YQp2NS4gRldJVyB0aGUgcGF0Y2ggbG9va2VkIHJlYXNvbmFibGUgdG8gbWUuCgpCVFcgSSB0cmll
ZCB0byBhcHBseSB5b3VyIHBhdGNoZXMgb250byB2Ny4zIGFuZCBpdCBzZWVtcyB0aGV5IGRvbid0
CmFwcGx5IGNsZWFubHkuCgpDYW4geW91CiAtIHJlYmFzZSB5b3VyIGNoYW5nZXMgb250byB0aGUg
bGF0ZXN0IExpbnV4IHZlcnNpb24KIC0gdXNlCgogICAgI2RlZmluZSBQSFlfRElSRUNUSU9OX1JY
CTAKICAgICNkZWZpbmUgUEhZX0RJUkVDVElPTl9UWAkxCgogICBmb3IgdGhlIGRpc3RpbmN0aW9u
IGJldHdlZW4gdGhlIENTSSBhbmQgdGhlIERTSSBwYXJ0IChsZXQncyB0cnkgdGhhdCkKIC0gYWRk
IHRoZSBkZXZpY2UgdHJlZSBwYXRjaCB0byB0aGUgc2VyaWVzCgphbmQgc2VuZCB2NSBvdXQsIHBs
ZWFzZT8KClRoYW5rcyBhIGxvdCBhbmQgYmVzdCByZWdhcmRzLApNaWNoYWVsCgo+IAo+IEhpIEV2
YW4sCj4gCj4gTXkgdjQgc2VyaWVzIHdpdGggdGhlIGRldmljZSB0cmVlIHBhdGNoIFswXSB3YXMg
YWxzbyB0ZXN0ZWQgb24gUkszNTg4Uwo+ICsgSU1YMjE5LiBIb3BlIHRoaXMgaGVscHMhCj4gCj4g
QmVzdCByZWdhcmRzLAo+IEphc29uCj4gCj4gWzBdCj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
bGludXgtcm9ja2NoaXAvMjAyNjA5MDQwNzU1MzQuNTc0MDM3LTEtamFzb245ODE2NkBnbWFpbC5j
b20vCj4gCj4gCj4+IEBKYXNvbjogSXMgdGhlcmUgYW4gdXBjb21pbmcgdjUgb2YgeW91ciBwYXRj
aGVzIEJUVz8KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
