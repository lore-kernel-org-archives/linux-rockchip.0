Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04CE9C5478C
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Feb 2024 19:26:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vSFz+c6a4jPsw54qCOapeD/EQZb13VtuLXIrLlRS1LY=; b=AtLcIJDWS9jXYL
	Yin9zg4yfbZvsuk0xvCwck27cyHvW7OWLPBIiiQD3muMnkS6senKRlAI0USvQ2mQfakQ3y5jo22zu
	9Jf7FuYXyX3bCA0p1Lrg/NrKVzYP4aFaycMTzMGPQxoZ9HuP7JUBYQjLcC7UUxEZR+IccFPCqhT8X
	wVMUejjQ4b7jT1g1aGR1nZpYMbFwU0Ws8Ertd0RbQncfO5JMEPrzNQ5e0mz4yB8j0/3yBIZfggViL
	ZqmEtB6GIBnVgVroi3/DmEJJf+n0woZ9d6dYCptXKfKWGfiDHsfPNDd/j78RJ1oKZ145F/rIreYSP
	XcOWWGJ/iPLvtPhbaMew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdxek-0000000DV3I-3i6F;
	Sat, 24 Feb 2024 19:25:54 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdxeh-0000000DV2c-14QJ;
	Sat, 24 Feb 2024 19:25:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8DBC660A6F;
	Sat, 24 Feb 2024 19:25:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D8756C433F1;
	Sat, 24 Feb 2024 19:25:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708802750;
	bh=/VIjT2iavaAdUja5QLc5Xf6ymkBMCy+/xJXiyGfwSlk=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=Oa4CL+23TdJX/2YlespJJTd3Aqmz4AFZZAMGkxXRSRs48CgJ62B5spjqfIGqrM4r4
	 TqDjn/8+dLOCKd85hfNy6aSN812QylVsTMosNOnP1p9ZqdH8bJ+qwpk8B3MaA6QpKx
	 9QImKMewbf3o9TRn7vBhgRubanM6neNH8gnbJPzBPAFzh3CjJ4dMzQFZpQjHDRX4LM
	 2Imi7A/khEa0Fo7IAWMjB96mpyb6EoRNdivT3cjhrhD8cJGqCVPPVqbQEoEb4Ge0gG
	 4sMdYJpS70Gm4UMHcAtKbOmTk2RKdnG1P7yXrNIIgWTnvNScL1B0GA+WqhdHntWfeI
	 dvMHeH63XCCvw==
Date: Sat, 24 Feb 2024 19:25:35 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Quentin Schulz <foss+kernel@0leil.net>, Lars-Peter Clausen
 <lars@metafoo.de>, Heiko Stuebner <heiko@sntech.de>, AngeloGioacchino Del
 Regno <angelogioacchino.delregno@collabora.com>, Shreeya Patel
 <shreeya.patel@collabora.com>, Simon Xue <xxm@rock-chips.com>, Philipp
 Zabel <p.zabel@pengutronix.de>, Jonathan Cameron
 <Jonathan.Cameron@huawei.com>, linux-iio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Quentin Schulz
 <quentin.schulz@theobroma-systems.com>
Subject: Re: [PATCH 0/3] iio: adc: rockchip_saradc: fix bitmasking and
 remove custom logic for getting reset
Message-ID: <20240224192535.237933de@jic23-huawei>
In-Reply-To: <CAHp75VfmsDeTP97srRJU09gA988xw68+ZHsXvXT3W_wv1HEauA@mail.gmail.com>
References: <20240223-saradcv2-chan-mask-v1-0-84b06a0f623a@theobroma-systems.com>
	<CAHp75VfmsDeTP97srRJU09gA988xw68+ZHsXvXT3W_wv1HEauA@mail.gmail.com>
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.41; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240224_112551_413416_7B9F728B 
X-CRM114-Status: GOOD (  25.69  )
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

T24gRnJpLCAyMyBGZWIgMjAyNCAxNTowMTozMCArMDIwMApBbmR5IFNoZXZjaGVua28gPGFuZHku
c2hldmNoZW5rb0BnbWFpbC5jb20+IHdyb3RlOgoKPiBPbiBGcmksIEZlYiAyMywgMjAyNCBhdCAy
OjQ24oCvUE0gUXVlbnRpbiBTY2h1bHogPGZvc3Mra2VybmVsQDBsZWlsLm5ldD4gd3JvdGU6Cj4g
Pgo+ID4gVGhlIG1hc2sgZm9yIHRoZSBjaGFubmVsIHNlbGVjdGlvbiBpcyBpbmNvcnJlY3QgYXMg
aXQncyBzcGVjaWZpZWQgdG8gYmUKPiA+IDE2YiB3aWRlIGJ5IGlzIGFjdHVhbGx5IG9ubHkgNC4K
PiA+Cj4gPiBBbHNvLCB0aGUgMTYgbG93ZXIgYml0cyBpbiB0aGUgU0FSQURDX0NPTlZfQ09OIHJl
Z2lzdGVyIGFyZSB3cml0ZQo+ID4gcHJvdGVjdGVkLiBXaGF0ZXZlciB0aGVpciB2YWx1ZSBpcyBj
YW4gb25seSBiZSB3cml0dGVuIHRvIHRoZSBoYXJkd2FyZQo+ID4gYmxvY2sgaWYgdGhlaXIgYXNz
b2NpYXRlZCBiaXQgaW4gdGhlIGhpZ2hlciAxNiBiaXRzIGlzIHNldC4gQ29uc2lkZXJpbmcKPiA+
IHRoYXQgdGhlIGNoYW5uZWwgYml0bWFzayBpcyA0YiB3aWRlIGJ1dCB0aGF0IHdlIGNhbiB3cml0
ZSBlLmcuIDAgaW4KPiA+IHRoZXJlLCB3ZSBzaG91bGRuJ3QgdXNlIHRoZSB2YWx1ZSBzaGlmdGVk
IGJ5IDE2IGFzIGEgbWFzayBidXQgcmF0aGVyIHRoZQo+ID4gYml0bWFzayBmb3IgdGhhdCB2YWx1
ZSBzaGlmdGVkIGJ5IDE2LiBUaGlzIGlzIGN1cnJlbnRseSBOT1QgYW4gaXNzdWUKPiA+IGJlY2F1
c2UgdGhlIG9ubHkgU29DIHdpdGggU0FSQURDdjIgSVAgaXMgdGhlIFJLMzU4OCB3aGljaCBoYXMg
YSByZXNldAo+ID4gZGVmaW5lZCBpbiB0aGUgU29DIERUU0kuIFdoZW4gdGhhdCBpcyB0aGUgY2Fz
ZSwgdGhlIHJlc2V0IGlzIGFzc2VydGVkCj4gPiBiZWZvcmUgZXZlcnkgY2hhbm5lbCBjb252ZXJz
aW9uIGlzIHN0YXJ0ZWQuIFRoaXMgbWVhbnMgdGhlIHJlZ2lzdGVycyBhcmUKPiA+IHJlc2V0IHNv
IGVmZmVjdGl2ZWx5LCB3ZSBkbyBub3QgbmVlZCB0byB3cml0ZSB6ZXJvcyBzbyB0aGUgd3Jvbmcg
bWFzawo+ID4gc3RpbGwgd29ya3MgYmVjYXVzZSB3aGVyZSB3ZSBzaG91bGQgYmUgd3JpdGluZyB6
ZXJvZXMsIHRoZXJlIGFyZSBhbHJlYWR5Cj4gPiB6ZXJvZXMuIEhvd2V2ZXIsIGxldCdzIGZpeCB0
aGlzIGluIGNhc2UgdGhlcmUgY29tZXMgYSBkYXkgdGhlcmUncyBhbiBTb0MKPiA+IHdoaWNoIGRv
ZXNuJ3QgcmVxdWlyZSB0byByZXNldCB0aGUgY29udHJvbGxlciBiZWZvcmUgZXZlcnkgY2hhbm5l
bAo+ID4gY29udmVyc2lvbiBpcyBzdGFydGVkLgo+ID4KPiA+IExhc3RseSwgbGV0J3MgdXNlIHRo
ZSBhcHByb3ByaWF0ZSBmdW5jdGlvbiBmcm9tIHRoZSByZXNldCBzdWJzeXN0ZW0KPiA+IGZvciBn
ZXR0aW5nIGFuIG9wdGlvbmFsIGV4Y2x1c2l2ZSByZXNldCBpbnN0ZWFkIG9mIHJvbGxpbmcgb3V0
IG91ciBvd24KPiA+IGxvZ2ljLgo+ID4KPiA+IFRob3NlIHRocmVlIHBhdGNoZXMgc2hvdWxkIG5v
dCBiZSBjaGFuZ2luZyBhbnkgYmVoYXZpb3IuICAKPiAKPiBOaWNlIHNlcmllcywgSSBoYXZlIHRo
ZSBjb21tZW50cyBpbiBwYXRjaCAzLCBidXQgbm8gbmVlZCB0byByZXNlbmQKPiB1bnRpbCBKb25h
dGhhbiBhc2tzIGZvci4gSGUgbWlnaHQgYWRkcmVzcyB0aGF0IHdoaWxzdCBhcHBseWluZy4KPiAK
PiBSZXZpZXdlZC1ieTogQW5keSBTaGV2Y2hlbmtvIDxhbmR5LnNoZXZjaGVua29AZ21haWwuY29t
Pgo+IAoKSSd2ZSB0YWtlIHRoZSBzZXJpZXMgdGhyb3VnaCB0aGUgdG9ncmVnIGJyYW5jaCBhcyB3
ZSBhcmUgc28gbmVhciB0aGUKbWVyZ2Ugd2luZG93cy4gIE5vdGUgKGRlc3BpdGUgTGludXMgbm90
IGxpa2luZyBpdCA6KSkgSSB1c2UgbGlua3MKaW4gbXkgZ2l0IHRhZ3Mgc28gYW55b25lIHJlYWxs
eSBzZWFyY2hpbmcgZm9yIFF1ZW50aW4gY2FuIGZpbmQKdGhlIGRpc2N1c3Npb24uCgpJJ20gdXN1
YWxseSBhIGJpdCBsYXp5IG9uIGNsZWFuaW5nIG91dCB3aGF0IEkgd291bGQgY29uc2lkZXIgdW5u
ZWNlc3NhcnkKQ0MgdGFncyBidXQgZ2l2ZW4gQW5keSBjb21tZW50IG9uIHRoZXNlIEkndmUgZHJv
cHBlZCB0aGUgZXh0cmEKb25lLgoKUGF0Y2hlcyAxIGFuZCAyIG1hcmtlZCBmb3Igc3RhYmxlLgoK
Sm9uYXRoYW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
