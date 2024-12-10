Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 453E7E7717F
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Dec 2024 07:06:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u//dQW1WGTRVSYuZ02ngdriWOTeW3vz3YXUx+SLU3Tw=; b=EcCajaVndtKbxP2TgcbsW8iSC7
	82DSbxvr+xSgIX8nG9PCf/oc2IOdufuuCe50bu+Qygfsp4xNFUAW2QI4JgEPdn6t/3aAkgqSbnb6o
	bPg+N7rpZrA8SDwybdfVskQ4uIB8NwSmpwbsGYmIkTQrMma8WJ4MXuTJu2NY0vOdGpHCAWdvcSenj
	+jYyPsg0D/2+up81I3uv+3fBu+06aewvZ8caVP5M0HXViEqTTvu/Ohv5EU2vsOsuT4CxXFD9kDzrZ
	rkKgGeIWC9E46N/wOpebP/JBvhq4JPivgkXGHWabm/qTXYTZ3Tmh+KYKwnTiqWyYgIxM5e0WvXatV
	6ASZqwOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKuKT-0000000AVVV-3G6r;
	Tue, 10 Dec 2024 07:06:45 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKuKR-0000000AVU5-1099
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Dec 2024 07:06:44 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1733814401;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=YOGVrRwUxYBtjrnaFEq4fe751QG4XVw2WupUMsMaI2s=;
	b=FzKEU1gDU+ZNnUfkVo5abiar+Z53XhQzDkOqWMXqbxg9DBsoIB447f+yTqGrGtEjxn4Qkf
	hv9LiydJCd3mXaZ7EU6QcZwmCzjVz5uNqiG55lf6JNUBcaYohIWhU0TiK+RHRyI598BA/c
	YaO8N9rmV5NTwk64NuwFoP8eMjErbqrdlPf/0wtNJ5BrmUjXddwzQaS/5rsCmDPd6s66T2
	4wh/LjlQQ0KVisFwrefZ2xN7ItHw3piUBFJg+M9UJ0wSQ4hqLaAuMKzm2+2U431jYZxV6r
	5X20gXNd35z48fh0fb1p/TIkFOcBtTLbHOegBfqt0prXUURGmw48pUGk3qXv2Q==
Date: Tue, 10 Dec 2024 08:06:40 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Alexey Charkov <alchark@gmail.com>
Cc: FUKAUMI Naoki <naoki@radxa.com>, heiko@sntech.de, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, sebastian.reichel@collabora.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 03/12] arm64: dts: rockchip: fix property for pwm-fan
 for Radxa ROCK 5C
In-Reply-To: <CABjd4YyV1Pf5RZcwbvd0Ms8UA2kFzq2PuTzq=VVYC+EZtfNrog@mail.gmail.com>
References: <20241209125131.4101-1-naoki@radxa.com>
 <20241209125131.4101-4-naoki@radxa.com>
 <ae031ff8c8c5d9e5c266c73026d4dfab@manjaro.org>
 <CEFF3F7FDF50046C+6bccd571-3475-46b9-a7b9-e2e8cb94ed91@radxa.com>
 <CABjd4YyV1Pf5RZcwbvd0Ms8UA2kFzq2PuTzq=VVYC+EZtfNrog@mail.gmail.com>
Message-ID: <77af12634c45c5ae14c6da82aa616f5a@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_230643_440009_DAF78C37 
X-CRM114-Status: GOOD (  16.87  )
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

SGVsbG8gQWxleGV5LAoKT24gMjAyNC0xMi0xMCAwMTo0MCwgQWxleGV5IENoYXJrb3Ygd3JvdGU6
Cj4gT24gVHVlLCBEZWMgMTAsIDIwMjQgYXQgMzozMOKAr0FNIEZVS0FVTUkgTmFva2kgPG5hb2tp
QHJhZHhhLmNvbT4gd3JvdGU6Cj4+IFRoYW5rcyBmb3IgeW91ciByZXZpZXchCj4+IAo+PiBPbiAx
Mi8xMC8yNCAwMTozMiwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+PiA+IEhlbGxvIEZ1a2F1bWksCj4+
ID4KPj4gPiBPbiAyMDI0LTEyLTA5IDEzOjUxLCBGVUtBVU1JIE5hb2tpIHdyb3RlOgo+PiA+PiBm
aXggcHdtIHBlcmlvZCB0byBtYXRjaCB3aXRoIHZlbmRvciBrZXJuZWxbMV0uCj4+ID4KPj4gPiBJ
bnN0ZWFkIG9mIHNpbXBseSByZWZlcnJpbmcgdG8gdGhlIGRvd25zdHJlYW0gdmVuZG9yIGtlcm5l
bCwgaW4gdGhpcwo+PiA+IHNwZWNpZmljIGNhc2UgdGhlIHJlYXNvbnMgZm9yIGFkanVzdGluZyB0
aGUgZmFuIFBXTSBwYXJhbWV0ZXJzIHNob3VsZAo+PiA+IGJlIGV4cGxhaW5lZCBieSByZWZlcnJp
bmcgdG8gdGhlIGFjdHVhbCBmYW4gc2V0dXAgeW91J3JlIHVzaW5nLCB0aGUKPj4gPiBvYnNlcnZl
ZCBmYW4gUlBNIGJlaGF2aW9yLCBldGMuCj4+IAo+PiBvcmlnaW5hbCBjb21taXQgbWVzc2FnZSBp
czoKPj4gCj4+IHwgYXJtNjQ6IGR0czogcm9ja2NoaXA6IG1vZGlmeSBmYW4gcHdtIHBlcmlvZCB0
byA2MHVzCj4+IHwgUmVkdWNlIHB3bSBmcmVxdWVuY3kgdG8gMTYuNiBLSHogZm9yIGEgbGFyZ2Vy
IGFkanVzdGFibGUgcmFuZ2Ugb2YKPj4gQU8zNDE2IG1vc2ZldC4KPj4gCj4+IEkgaGF2ZSBubyBr
bm93bGVkZ2UgYWJvdXQgdGhpcyBraW5kIG9mIHRoaW5ncy4gSXMgcXVvdGluZyB0aGlzIG1lc3Nh
Z2UKPj4gZW5vdWdoPwo+IAo+IEkgdGhpbmsgaXQgd291bGQgYmUgYmV0dGVyIHRvIGV4cGFuZCBh
IGJpdCB0byBtYWtlIHN1cmUgdGhlIGNvbW1pdAo+IG1lc3NhZ2UgZXhwbGFpbnMgdGhlIHdob2xl
IHJhdGlvbmFsZSB3aXRob3V0IHRvbyBtdWNoIGV4dHJhIGRpZ2dpbmcuCj4gU29tZXRoaW5nIGxp
a2UgdGhpczoKPiAKPiBhcm02NDogZHRzOiByb2NrY2hpcDogVXNlIGEgbG9uZ2VyIFBXTSBwZXJp
b2QgZm9yIHRoZSBmYW4gb24gUmFkeGEgUk9DSyAKPiA1Qwo+IAo+IFRoZSBmYW4gb24gUmFkeGEg
Uk9DSyA1QyBpcyBkcml2ZW4gdmlhIGFuIEFPMzQxNiBNT1NGRVQsIHdoaWNoIGhhcyBhCj4gdG90
YWwgc3dpdGNoLW9uIHRpbWUgb2YgMCw2dXMgYW5kIGEgdG90YWwgc3dpdGNoLW9mZiB0aW1lIG9m
IDZ1cyBbMV0sCj4gbWVhbmluZyB0aGF0IHRoZSBjdXJyZW50IFBXTSBwZXJpb2Qgb2YganVzdCAx
MHVzIGlzIHRvbyBzaG9ydCBmb3IKPiBmaW5lLWdyYWluZWQgZmFuIHNwZWVkIGNvbnRyb2wuIElu
Y3JlYXNlIHRoZSBQV00gcGVyaW9kIHRvIDYwdXMsIHNvCj4gdGhhdCB0aGUgc3dpdGNoLW9uIGFu
ZCBzd2l0Y2gtb2ZmIHRpbWUgb2YgdGhlIE1PU0ZFVCBmYWxsIHdpdGhpbiBhCj4gbW9yZSByZWFz
b25hYmxlIH4xMCUgb2YgdGhlIGZ1bGwgcGVyaW9kLCB0aHVzIG1ha2luZyBsb3dlciBQV00gZHV0
eQo+IGN5Y2xlcyBtZWFuaW5nZnVsLgo+IAo+IFsxXSBodHRwczovL3d3dy5hb3NtZC5jb20vcGRm
cy9kYXRhc2hlZXQvQU8zNDE2LnBkZgoKV2VsbCB3cml0dGVuLCB0aGFua3MuICBUaGF0J3MgcHJl
dHR5IG11Y2ggdGhlIHNhbWUgaG93IEkgd2FudGVkCnRvIGV4cGxhaW4gaXQsIGJ1dCB5b3Ugd2Vy
ZSBmYXN0ZXIuIDopCgpBZGRpdGlvbmFsbHksIGl0J3MgcXVpdGUgc3RyYW5nZSB0aGF0IHRoZSBB
TzM0MTYgRkVUIGlzIHVzZWQgaW4KdGhhdCBwbGFjZS4gIEl0cyBsYXJnZSBjb250aW51b3VzIGN1
cnJlbnQtY2FycnlpbmcgY2FwYWJpbGl0eQoob3ZlciA1IEEgYXQgNzAgb0MhKSBpcyBhbiBhYnNv
bHV0ZSBvdmVya2lsbCBmb3IgZHJpdmluZyBhIHNtYWxsCmZhbiwgYW5kIGl0cyBpbnRlZ3JhdGVk
IEVTRCBwcm90ZWN0aW9uIGVuZHMgdXAgYmFzaWNhbGx5IHVzZWxlc3MKaW4gdGhpcyBjYXNlLiAg
UmFkeGEgY291bGQndmUgZWFzaWx5IHJlZGlyZWN0ZWQgYSBmZXcgcGVubmllcyBpbnRvCnNvbWV0
aGluZyBlbHNlIGJ5IHVzaW5nIGEgbXVjaCBsZXNzIGJlZWZ5IEZFVC4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
