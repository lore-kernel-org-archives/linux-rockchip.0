Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BF70CCA470
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Oct 2025 09:49:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eson8OYWFnQV3GLAobMbVp5f/brIWtz5X/buSlCcrX4=; b=DqblF1EEnK21WP
	1J3OD0hvAQZmSqJ6uegQ9coPzXxr1KXUszwqP0tfbr2EU38wCLD8JusczwyznZNWxtt9zGpuxJkc1
	GjxWLefTZkJozoa6ZrGHbYwCW++2f+NUuk7P5yAiYm2x753snn5FnJlJ/SnKJ1SCHzY1a1q5pWmlX
	VSH9N/XwIqOkv/6HqMxOKaHX3nKE1qKFNPW/W5eLOl88FXHC5Zm+5Ec0z15Gij75vnvZAp8WDVewE
	piktmN6cXPiYMe+Ti3TDHZijLExsLz2Kr5D7V4y3VWvLCdbVy+GN6g1/cpJnDNQChkvFldPJxmbu7
	WNzXpuelZLdFywViMsNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3tSV-00000007BlZ-2FBT;
	Wed, 01 Oct 2025 09:49:15 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3tST-00000007BlQ-3swl
	for linux-rockchip@lists.infradead.org;
	Wed, 01 Oct 2025 09:49:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 271C661C67;
	Wed,  1 Oct 2025 09:49:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7DE26C4CEF4;
	Wed,  1 Oct 2025 09:49:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759312152;
	bh=MgUl2M4I5gy7yfwjFNdxRtYro6QOxzUYdb+CPt8arnM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ewq9gBmBnDgDlDauay/UPPvMY/8xsrxHxg+WBWK/x+csa2eoT964/9xGabXFwpkgd
	 jgHoN/U5JTeacJ/9GV5U44YcNCxL8dOGuUSUOkoGDrjXnTVFtqEsqY9uTpPnT69zda
	 ZEeWVI3eOYBQL8Gjt8bL1Xg2Dbcr58d30g5pY0oPzPzWo3XvGGJe+oWF5n+nONFi9a
	 YqjHy3qTdvRoJqIiJxqiJCY63WFCBZWnNVXBArahqlpBJv7ksNGaluZsTtpUolZfSX
	 uP4iun9MLIpaK9YpvO4KC2F3CIRVVZqjzC2UUzMvBpew5lBVJ3etVNfq0Cew2JxmJu
	 fySNm2JYvXMKQ==
Date: Wed, 1 Oct 2025 10:49:07 +0100
From: Lee Jones <lee@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
	Chris Morgan <macroalpha82@gmail.com>, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, broonie@kernel.org, lgirdwood@gmail.com,
	sre@kernel.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: (subset) [PATCH v8 0/5] Add Texas Instruments BQ25703A Charger
Message-ID: <20251001094907.GN8757@google.com>
References: <20250904160530.66178-1-macroalpha82@gmail.com>
 <175760259503.1582479.14013409824773713781.b4-ty@kernel.org>
 <CAL_JsqJy9XwNrcwgk4Dhf40ajn8WwD47v2YqZ3iYZz+CjEdv5g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqJy9XwNrcwgk4Dhf40ajn8WwD47v2YqZ3iYZz+CjEdv5g@mail.gmail.com>
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

T24gTW9uLCAyOSBTZXAgMjAyNSwgUm9iIEhlcnJpbmcgd3JvdGU6Cgo+IE9uIFRodSwgU2VwIDEx
LCAyMDI1IGF0IDk6NTbigK9BTSBMZWUgSm9uZXMgPGxlZUBrZXJuZWwub3JnPiB3cm90ZToKPiA+
Cj4gPiBPbiBUaHUsIDA0IFNlcCAyMDI1IDExOjA1OjI1IC0wNTAwLCBDaHJpcyBNb3JnYW4gd3Jv
dGU6Cj4gPiA+IEZyb206IENocmlzIE1vcmdhbiA8bWFjcm9tb3JnYW5AaG90bWFpbC5jb20+Cj4g
PiA+Cj4gPiA+IEFkZCBzdXBwb3J0IGZvciB0aGUgVGV4YXMgSW5zdHJ1bWVudHMgQlEyNTcwM0Eg
Y2hhcmdlciBtYW5hZ2VyLiBUaGUKPiA+ID4gZGV2aWNlIGludGVncmF0ZXMgYSBib29zdCBjb252
ZXJ0ZXIgd2l0aCB0aGUgY2hhcmdlciBtYW5hZ2VyLiBUaGlzCj4gPiA+IHNlcmllcyBhZGRzIHRo
ZSBkZXZpY2UgYXMgYW4gTUZEIHdpdGggc2VwYXJhdGUgcmVndWxhdG9yIGFuZCBwb3dlcgo+ID4g
PiBzdXBwbHkgZHJpdmVycy4gVGhpcyBhbGxvd3MgdXMgdG8gbWFuYWdlIGEgY2lyY3VsYXIgZGVw
ZW5kZW5jeSB3aXRoCj4gPiA+IGEgdHlwZS1jIHBvcnQgbWFuYWdlciB3aGljaCBkZXBlbmRzIG9u
IHRoZSByZWd1bGF0b3IgZm9yIHVzYi1vdGcKPiA+ID4gYnV0IHN1cHBsaWVzIHBvd2VyIHRvIHRo
ZSBCUTI1NzAzQSBjaGFyZ2VyLgo+ID4gPgo+ID4gPiBbLi4uXQo+ID4KPiA+IEFwcGxpZWQsIHRo
YW5rcyEKPiA+Cj4gPiBbMS81XSBkdC1iaW5kaW5nczogbWZkOiB0aSxicTI1NzAzYTogQWRkIFRJ
IEJRMjU3MDNBIENoYXJnZXIKPiA+ICAgICAgIGNvbW1pdDogNzZiYzIyMDNhNDZlZjcwNGE0Y2Q4
MDAzOTg2ZjZiZDc0MTM5YTM2Nwo+IAo+IEl0IHNlZW1zIHRoaXMgaXMgc3RpbGwgbm90IGluIGxp
bnV4LW5leHQ/CgpJdCdzIGxvY2F0ZWQgaW4gYW4gaW1tdXRhYmxlIGJyYW5jaC4KClByb2JhYmx5
IHRvbyBsYXRlIHRvIHNoYXJlIG5vdywgYnV0IGl0J2xsIGJlIGluIG15IFBSIHRvIExpbnVzLgoK
LS0gCkxlZSBKb25lcyBb5p2O55C85pavXQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
