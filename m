Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27074CAC58E
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Sep 2025 14:59:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JsIoOo33OZHt+woYzGhJT0gJdgTObegeaZEJckTm0JQ=; b=XmfHxYWZxDvg8g
	T4FOKU4trr4MQoLaoxy570ztAgkZ1y+mH+IMxpZfudQtlGUkrTcYZ/huxsDZAnXEBPjPh1WYhUFwb
	8xe6A8AeZj9zN3cvWC2g9L1EB785UTNvONQK6PKHrk+BQ/3v6zKQKiH7FCT5VW5iS/NWpYxmonSFy
	9V3JVbI7MRNq+3TH8WfrWf4MHV0MFebNKjYVqGluF3n2je60buM/e9ur87a5P8ja+7rJ+WobEb6yM
	j7w3KBEkSH3CewtnqC/i24Ww721mT4Cw/LXhHesRSxZZ4R/eTBk0bj4kOdVMW00DeS4Gb8I82ofn/
	f9xRJ604ZmFVv4qXJhUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwilz-00000003j9H-1xkb;
	Thu, 11 Sep 2025 14:59:43 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwilw-00000003j7V-3HQI
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Sep 2025 14:59:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 1B72A404B5;
	Thu, 11 Sep 2025 14:59:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92A27C4CEF0;
	Thu, 11 Sep 2025 14:59:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757602780;
	bh=dwdaLEAjnH3HKkai+U9OrOZJ12DWW8piJIVwD4P+moM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Du6b4hpMRlqI1aCbon+AQJ+1kBXG0polcPvf4DE/LsKzWpmcSXdseI3XjfkKCa8Rd
	 z1ecYtkdWJImyg23H5zjxAdgId3n2wTRhGLvkva5WZ4vhWE/IieiCA23J/o7GOPAya
	 RwYCWFQhKuibfsYsz3Ia4bEEKFP0071HQx8CGachXhLqNnYcz+WvbREieI/6/pbOaI
	 SPe4qX+U5g658QNOPA6/VODmEcFBHbOVakJlO+dw2CikuFAYl4TKq6cnr+gpUD9yec
	 SgO44/dFz+vSnUKDQ1nPBJ54eWK+s/j6SNGkVYSCio0JnPoJjBVVpS0kFPYuzOXQly
	 kOBcatU2NbGgQ==
Date: Thu, 11 Sep 2025 15:59:34 +0100
From: Lee Jones <lee@kernel.org>
To: linux-rockchip@lists.infradead.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
	broonie@kernel.org, lgirdwood@gmail.com, sre@kernel.org,
	heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org,
	robh@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: (subset) [PATCH v8 0/5] Add Texas Instruments BQ25703A Charger
Message-ID: <20250911145934.GP9224@google.com>
References: <20250904160530.66178-1-macroalpha82@gmail.com>
 <175760259503.1582479.14013409824773713781.b4-ty@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <175760259503.1582479.14013409824773713781.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250911_075940_840027_681CC398 
X-CRM114-Status: GOOD (  12.02  )
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

T24gVGh1LCAxMSBTZXAgMjAyNSwgTGVlIEpvbmVzIHdyb3RlOgoKPiBPbiBUaHUsIDA0IFNlcCAy
MDI1IDExOjA1OjI1IC0wNTAwLCBDaHJpcyBNb3JnYW4gd3JvdGU6Cj4gPiBGcm9tOiBDaHJpcyBN
b3JnYW4gPG1hY3JvbW9yZ2FuQGhvdG1haWwuY29tPgo+ID4gCj4gPiBBZGQgc3VwcG9ydCBmb3Ig
dGhlIFRleGFzIEluc3RydW1lbnRzIEJRMjU3MDNBIGNoYXJnZXIgbWFuYWdlci4gVGhlCj4gPiBk
ZXZpY2UgaW50ZWdyYXRlcyBhIGJvb3N0IGNvbnZlcnRlciB3aXRoIHRoZSBjaGFyZ2VyIG1hbmFn
ZXIuIFRoaXMKPiA+IHNlcmllcyBhZGRzIHRoZSBkZXZpY2UgYXMgYW4gTUZEIHdpdGggc2VwYXJh
dGUgcmVndWxhdG9yIGFuZCBwb3dlcgo+ID4gc3VwcGx5IGRyaXZlcnMuIFRoaXMgYWxsb3dzIHVz
IHRvIG1hbmFnZSBhIGNpcmN1bGFyIGRlcGVuZGVuY3kgd2l0aAo+ID4gYSB0eXBlLWMgcG9ydCBt
YW5hZ2VyIHdoaWNoIGRlcGVuZHMgb24gdGhlIHJlZ3VsYXRvciBmb3IgdXNiLW90Zwo+ID4gYnV0
IHN1cHBsaWVzIHBvd2VyIHRvIHRoZSBCUTI1NzAzQSBjaGFyZ2VyLgo+ID4gCj4gPiBbLi4uXQo+
IAo+IEFwcGxpZWQsIHRoYW5rcyEKPiAKPiBbMS81XSBkdC1iaW5kaW5nczogbWZkOiB0aSxicTI1
NzAzYTogQWRkIFRJIEJRMjU3MDNBIENoYXJnZXIKPiAgICAgICBjb21taXQ6IDc2YmMyMjAzYTQ2
ZWY3MDRhNGNkODAwMzk4NmY2YmQ3NDEzOWEzNjcKPiBbMi81XSBtZmQ6IGJxMjU3eHg6IEFkZCBz
dXBwb3J0IGZvciBCUTI1NzAzQSBjb3JlIGRyaXZlcgo+ICAgICAgIGNvbW1pdDogM2IxYmJmYjVm
Y2UzY2E5ZmZmYzkyYWMxYjA1M2IwY2ZiYjFmMzIyYgo+IFszLzVdIHBvd2VyOiBzdXBwbHk6IGJx
MjU3eHg6IEFkZCBzdXBwb3J0IGZvciBCUTI1N1hYIGNoYXJnZXIKPiAgICAgICBjb21taXQ6IDFj
YzAxN2I3ZjljN2I3Y2Q4NmZkZGE0YWVlMzZiOTJkOTFjYzJhZDIKPiBbNC81XSByZWd1bGF0b3I6
IGJxMjU3eHg6IEFkZCBicTI1N3h4IGJvb3N0IHJlZ3VsYXRvciBkcml2ZXIKPiAgICAgICBjb21t
aXQ6IDk4MWRkMTYyYjYzNTc4YWVlMzRiNWM2ODc5NWUyNDY3MzRiNzZkNzAKClNlbmQgZm9yIGJ1
aWxkIHRlc3RpbmcuICBJZiBzdWNjZXNzZnVsLCBJJ2xsIHBpbmcgb3V0IGEgUFIgc2hvcnRseS4K
Ck5vdGUgdG8gc2VsZjogaWItbWZkLXBvd2VyLXJlZ3VsYXRvci02LjE4CgotLSAKTGVlIEpvbmVz
IFvmnY7nkLzmlq9dCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
