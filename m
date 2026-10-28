Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5291C606A31A
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Oct 2026 13:08:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ioVI6ZT0;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=O6d5eool
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Pvq2t+Tzuy5wrsVRaWXMKAEjA26cQ7qr1eYvfHxGxm4=; b=ioVI6ZT0ZtJs+oo6Dk6SfrFJNA
	6TUgNdrzG4+MrTMmm17bGcYxBzFNnusBalAZOhzXlOTd0b+l1PhL+gEvavbayQh5yDNoANbYXDUqs
	2L+XhCMb8y3Lt1JbOeco2ixEboahEaonJ1ttnj4MOXvAQu2YhioIn1X8Lew9h9PXGpa/7A7i5UIME
	9k4EcuBbqMbPLHougi27cM+QyOvEBB/bk3YfDIhLY5qNBbQPw01pjkC9xW/LnoDcVWn1WR7XItu3c
	6AwKWN7D65vIm0WrTMXlQfVmCuQdIGuzE2PffOHftt/I2rNzPk92O/YZ4Vlsgc8h5tukXHfXxGjzu
	yqWUTkCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM3OK-000000071M8-3d6J;
	Wed, 28 Oct 2026 13:08:32 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM3OI-000000071KC-2bYb
	for linux-rockchip@lists.infradead.org;
	Wed, 28 Oct 2026 13:08:30 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 08D94601F0;
	Wed, 28 Oct 2026 13:08:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C52A1F01825;
	Wed, 28 Oct 2026 13:08:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793192909;
	bh=PiQz6PgPos/707nSB4nxYG8jdpkp2zuCWcTnuP8mOnI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=O6d5eoollfMPr8CDsmx+k9ZZDqtHZcsy5Lh4ruPwzuQ/B0YKQtHtqAtxfgFCinCad
	 +C8YAuNpysfBYpvCwaLBZyKPUoy2l8Fv2io5cRsMrYuxGQ9jffzSTreasdrva5qj52
	 5c+d8qSlyDQ/mVu/ghBwHZuqQhRNZGOgJLbylIfFmTmoFhNzolQWuI/HABmvN7yvdy
	 ejPM9nn4Q0maps9VqvlBw2i/6Pdb2ZqRssSm1IC9BzAmtV0sRUv+9c7n6el2/9YV5V
	 7Ov6T8U1m2t0PYL3FOIQZ2ONhNYTML0BQC9ct7iZNBlIji80dFypY70p1uWyoxrpp1
	 Yi+q1aGQZgkuQ==
Date: Wed, 28 Oct 2026 14:08:25 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, 
	linux-pm@vger.kernel.org, Chris Morgan <macroalpha82@gmail.com>, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, maccraft123mc@gmail.com, 
	zhangqing@rock-chips.com, zyw@rock-chips.com, sre@kernel.org, conor+dt@kernel.org, 
	krzk+dt@kernel.org, robh@kernel.org, lee@kernel.org, 
	Zetarancio <zetarancio@users.noreply.github.com>
Subject: Re: [PATCH 4/5] dt-bindings: power: supply: rk817-charger: Add
 rockchip,gate-function-disable
Message-ID: <20261028-handsome-monumental-honeybee-fa1a91@quoll>
References: <20261026174834.1652309-1-macroalpha82@gmail.com>
 <20261026174834.1652309-5-macroalpha82@gmail.com>
 <15875856.JCcGWNJJiE@diego>
 <PH0PR19MB997338FA74EFF7CD338356EB88A5602@PH0PR19MB997338.namprd19.prod.outlook.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <PH0PR19MB997338FA74EFF7CD338356EB88A5602@PH0PR19MB997338.namprd19.prod.outlook.com>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gVHVlLCBPY3QgMjcsIDIwMjYgYXQgMTA6NTM6MTBBTSAtMDUwMCwgQ2hyaXMgTW9yZ2FuIHdy
b3RlOgo+IE9uIE1vbiwgT2N0IDI2LCAyMDI2IGF0IDA4OjIzOjQwUE0gKzAxMDAsIEhlaWtvIFN0
w7xibmVyIHdyb3RlOgo+ID4gSGkgQ2hyaXMsCj4gPiAKPiA+IEFtIE1vbnRhZywgMjYuIE9rdG9i
ZXIgMjAyNiwgMTg6NDg6MzMgTWl0dGVsZXVyb3DDpGlzY2hlIE5vcm1hbHplaXQgc2NocmllYiBD
aHJpcyBNb3JnYW46Cj4gPiA+IEZyb206IENocmlzIE1vcmdhbiA8bWFjcm9tb3JnYW5AaG90bWFp
bC5jb20+Cj4gPiA+IAo+ID4gPiBBZGQgYSBib29sZWFuIGF0dHJpYnV0ZSBmb3IgdGhlIHJrODE3
LWNoYXJnZXIgdG8gY29udHJvbCB3aGV0aGVyIG9yIG5vdAo+ID4gPiB0aGUgc3lzdGVtIHBvd2Vy
IGlzIHNodXRkb3duIGluIGJhdHRlcnkgb2ZmIG1vZGUuIFRoZSBCU1Aga2VybmVsIHNldHMKPiA+
ID4gdGhpcyB2YWx1ZSB1bmxlc3MgYSBkZXZpY2UtdHJlZSBhdHRyaWJ1dGUgaXMgcHJlc2VudCwg
YW5kIHRoaXMgYXR0cmlidXRlCj4gPiA+IGlzIHRvIHJlcGxpY2F0ZSB0aGF0IGJlaGF2aW9yLgo+
ID4gCj4gPiBEZXZpY2V0cmVlIGlzIHN1cHBvc2VkIHRvIGRlc2NyaWJlIHRoZSBoYXJkd2FyZSwg
c28geW91ciBkZXNjcmlwdGlvbiBuZWVkcwo+ID4gdG8gZGVzY3JpYmUgdGhlIHBlci1ib2FyZCBw
cm9wZXJ0eSB0aGlzIHJlcHJlc2VudHMuCj4gPiAKPiA+IEp1c3QgYmVjYXVzZSBpdCdzIGluIGEg
dmVuZG9yLUJTUCBpcyBnZW5lcmFsbHkgbm90IGVub3VnaCBqdXN0aWZpY2F0aW9uIDotKSAuCj4g
PiAKPiA+IFRoaXMgaXMgZXNwZWNpYWxseSB0cnVlIGFzIHlvdSB3cm90ZSBpbiB0aGUgY292ZXIt
bGV0dGVyIHRoYXQgbm8ga25vd24KPiA+IGJvYXJkIGFjdHVhbGx5IG5lZWRzIHRoaXMgcmlnaHQg
bm93Lgo+ID4gCj4gPiAKPiA+IEhlaWtvCj4gCj4gVGhlIGRhdGFzaGVldCBkZXNjcmliZXMgdGhp
cyBhcyAiV2hldGhlciB0aGUgc3lzdGVtIHZvbHRhZ2UgY2FuIGJlCj4gc2h1dGRvd24gaW4gQmF0
X29mZiBtb2RlIiBhbmQgdGhlIHJlZ2lzdGVyIGl0c2VsZiBpcyBkZXNjcmliZWQgYXMKPiBTWVNf
Q0FOX1NELiBNYXliZSBjYWxsIGl0ICJyb2NrY2hpcCxjYW4tc2h1dGRvd24tYmF0LW9mZiI/IE9y
IGdpdmVuIHRoZQo+IGZhY3QgdGhhdCBJJ20gbm90IGF3YXJlIG9mIGFueSBib2FyZHMgdGhhdCB3
b3VsZCBuZWVkIGl0IHRvZGF5LCBzaG91bGQKCldoeSB3b3VsZCB5b3UgbGlrZSB0byBhZGQgZGVh
ZCBjb2RlPwoKQW55d2F5LCBkZXNjcmliZSB3aGF0IHByb2JsZW0gaXMgd2l0aCB0aGUgaGFyZHdh
cmUgdGhhdCBzdWNoIHByb3BlcnR5IGlzCm5lZWRlZC4KCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9m
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
