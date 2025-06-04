Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C954EC5B543
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Jun 2025 13:24:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mSrVMKQoAayh9M280XShb02R0wmYCXGacQLTHx3MlTs=; b=kCddmfdBrzgipC
	GlmALSmdBWY3KXmFP+VCBvZBJkZolRG6RFVTXWMMWNslQBZg5fbEFHc6kGuN0bbHVd/zBPVh8cMnb
	+/3y1qANMZcdwaIqoBjwv9cs3OQ7SxQTsDNOVTOQ+SDlMV6AWCGSG6z2/Ya4GUvs88bABXeQxyYms
	V75PI6x9GxhJoCdiJkXX9OL2/AvNDK7Y8CDm/Zh0WRQdftJIX7ubcOoOsC3TwX7czEbT4/Y6N1/qg
	mJkyYWom4I6++VGWydyaSycwVXZHTqZABXC/w1PzdVetg1I+xNp1fnzrNzYsGA4aZlntkvJDOwKkb
	8DKqf+huY2WHeJJVs6/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMo6e-0000000DRJn-0bF0;
	Wed, 04 Jun 2025 13:24:36 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMo6c-0000000DRIh-1kXM;
	Wed, 04 Jun 2025 13:24:35 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1749043468; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=kh2iUeK+/ZYvPaLk72mpcP5zsfS7Ua6a0zQkfuPR0A8pLHFxw5SebyZVlhNSojGKB6mARcZGBI4FSAjlXaUquHJtOK4j+mWE0XCvntWTcQZ+9Ou393Zy51U70n4BKZVPRaj7xeUyJlidIhlLYyZeuXIk61Xep5NLtYfJCGQQ+74=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1749043468; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=wCNTPJfskIhANg0RiKYHsBz7kOPSHztZlUotAgnVEF0=; 
	b=mNAlllKP7hd6uFXPYjbLfO0KOaSUQoKMkvprCj3dlSDo+EvdRXd7Q4e+n4FxAQWZglZZQgJ9zO2N1prnuR7tnTA9J1YupRZmfVE3AQE9xNrb1F7Gd7fWTm9MFH/ZT/57jN1BJ7/jClg2bZFWjgDPoLeB+Y/At9gCIdGGN4sHO4U=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1749043468;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=wCNTPJfskIhANg0RiKYHsBz7kOPSHztZlUotAgnVEF0=;
	b=UFuUk7U0iVkVcYwV/BWOTKu/Mn7HG3BvcbST3LvUU6rPkqSe1mJ96LESVOJ85ore
	G69LWWzPm1Ne4TX1P1PQ/qN3qn0y0Sv/VngAVb7tQmkKnn1EES8ldDwEDh9Kbrckav+
	O05rTCJcYTQhscMv1DcWSeDHAPfCiwC+WyD9Nhz4=
Received: by mx.zohomail.com with SMTPS id 1749043466448171.76502669274078;
	Wed, 4 Jun 2025 06:24:26 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: Alexey Charkov <alchark@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] arm64: dts: rockchip: enable USB A ports on ArmSoM Sige5
Date: Wed, 04 Jun 2025 15:24:22 +0200
Message-ID: <4317526.1IzOArtZ34@workhorse>
In-Reply-To: <CABjd4YwtbMTT1W1rEdZzZ=KC3_EXXYKQBsTMiH5mPXPhgvQ=Lw@mail.gmail.com>
References: <20250603-sige5-updates-v1-0-717e8ce4ab77@gmail.com>
 <5590100.Sb9uPGUboI@workhorse>
 <CABjd4YwtbMTT1W1rEdZzZ=KC3_EXXYKQBsTMiH5mPXPhgvQ=Lw@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250604_062434_516374_FC771B5A 
X-CRM114-Status: GOOD (  24.61  )
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

T24gV2VkbmVzZGF5LCA0IEp1bmUgMjAyNSAwODo1Mjo1MSBDZW50cmFsIEV1cm9wZWFuIFN1bW1l
ciBUaW1lIEFsZXhleSBDaGFya292IHdyb3RlOgo+IE9uIFR1ZSwgSnVuIDMsIDIwMjUgYXQgOTo1
MeKAr1BNIE5pY29sYXMgRnJhdHRhcm9saQo+IDxuaWNvbGFzLmZyYXR0YXJvbGlAY29sbGFib3Jh
LmNvbT4gd3JvdGU6Cj4gPgo+ID4gT24gVHVlc2RheSwgMyBKdW5lIDIwMjUgMTk6MDE6MTQgQ2Vu
dHJhbCBFdXJvcGVhbiBTdW1tZXIgVGltZSBBbGV4ZXkgQ2hhcmtvdiB3cm90ZToKPiA+ID4gRW5h
YmxlIHRoZSB0d28gVVNCIHR5cGUgQSBwb3J0cyAoVVNCMiBhbmQgVVNCMykgcHJlc2VudCBvbiB0
aGUgQXJtU29NCj4gPiA+IFNpZ2U1IGJvYXJkLgo+ID4gPgo+ID4gPiBCb3RoIHBvcnRzIHVzZSBq
dXN0IG9uZSB4SENJIGNvbnRyb2xsZXIsIHdpdGggdGhlIFVTQiAyLjAgc2lnbmFscyBmZWQKPiA+
ID4gb2ZmIHRoZSBzYW1lIFVTQiBPVEcgUEhZIHRocm91Z2ggYW4gb25ib2FyZCBodWIuIFZCVVMg
b2YgYm90aCBwb3J0cyBpcwo+ID4gPiBjb250cm9sbGVkIGJ5IHRoZSBzYW1lIEdQSU8gcmVndWxh
dG9yIChWQ0NfVVNCSE9TVCBpbiB0aGUgc2NoZW1hdGljcywKPiA+ID4gdG9nZ2xlZCBieSBHUElP
NCBSS19QQTYpLgo+ID4gPgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBBbGV4ZXkgQ2hhcmtvdiA8YWxj
aGFya0BnbWFpbC5jb20+Cj4gPiA+IC0tLQo+ID4gPiAgLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzU3Ni1hcm1zb20tc2lnZTUuZHRzICAgICAgfCAzOCArKysrKysrKysrKysrKysrKysrKysrCj4g
PiA+ICAxIGZpbGUgY2hhbmdlZCwgMzggaW5zZXJ0aW9ucygrKQo+ID4gPgo+ID4KPiA+IFRoaXMg
aXMgYWxyZWFkeSBkb25lIGhlcmU6Cj4gPgo+ID4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGlu
dXgtcm9ja2NoaXAvMjAyNTA1MDctcmszNTc2LXNpZ2U1LXVzYi12My00LTg5YmY1YTYxNGNjZkBj
b2xsYWJvcmEuY29tLwo+IAo+IE9oIGNvb2whIFNvcnJ5IEkgbWlzc2VkIHRoYXQgb25lLiBZb3Vy
IHNlcmllcyBpcyBtdWNoIG1vcmUKPiBjb21wcmVoZW5zaXZlLCBzbyB0aGlzIHBhdGNoIG9mIG1p
bmUgY2FuIGJlIGRyb3BwZWQuIFRoYW5rcyBmb3IgeW91cgo+IHdvcmshCj4gCj4gV291bGQgeW91
IG1pbmQgY2hpbWluZyBpbiBvbiB0aGUgb3RoZXIgcGF0Y2hlcyBoZXJlLCBnaXZlbiB5b3VyCj4g
a25vd2xlZGdlIG9mIHRoZSBoYXJkd2FyZT8KCkkgZ2F2ZSB0aGUgb3RoZXJzIGEgYnJpZWYgbG9v
ayB5ZXN0ZXJkYXksIEknbGwgZ2l2ZSBhIG1vcmUgaW4tZGVwdGggbG9vawphbmQgdGVzdCB0b2Rh
eSBhbmQgc2VuZCB5b3UgbXkgVGVzdGVkLWJ5IGFuZCBSZXZpZXdlZC1ieS4KCj4gCj4gQnkgdGhl
IHdheSwgeW91IGd1eXMgZG9uJ3Qgc2VlbSB0byBjYXJyeSB0aG9zZSBwYXRjaGVzIG9mIHlvdXJz
IGluIHRoZQo+IENvbGxhYm9yYSB0cmVlIFsxXT8gTm9yIHRoZSBUU0FEQyB1cGRhdGVzIGFzIGZh
ciBhcyBJIGNhbiB0ZWxsLgo+IAo+IFsxXSBodHRwczovL2dpdGxhYi5jb2xsYWJvcmEuY29tL2hh
cmR3YXJlLWVuYWJsZW1lbnQvcm9ja2NoaXAtMzU4OC9saW51eC8tL2Jsb2Ivcm9ja2NoaXAtcmVs
ZWFzZS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni1hcm1zb20tc2lnZTUuZHRz
P3JlZl90eXBlPWhlYWRzCj4gCgpZZWFoLCBJIGp1c3Qgc2VudCB0aGVtIHVwc3RyZWFtIGRpcmVj
dGx5LCBzaW5jZSBhdCB0aGlzIHN0YWdlIGl0IHdhc24ndCBhClNvQyBhbmQgYm9hcmQgaW4gd2lk
ZSBlbm91Z2ggY2lyY3VsYXRpb24geWV0IHdoZXJlIGEgcmVhZHktdG8tdXNlIHB1YmxpYwp0cmVl
IHdpdGggYWxsIHRoZSBpbi1mbGlnaHQgcGF0Y2hlcyBtYWRlIHNlbnNlIGZvciB0aGUgYWRkZWQg
Y2hvcmUgb2YKcmViYXNpbmcgdGhpbmdzIHdoZW4gbmV3IHZlcnNpb24gb2YgcGF0Y2ggc2VyaWVz
IGdldCBzdWJtaXR0ZWQgaW1oby4KVGhvdWdoIHNpbmNlIHNvbWUgb2YgdGhlbSBoYXZlIGJlZW4g
bGFuZ3Vpc2hpbmcgd2l0aCBubyB1cHN0cmVhbSByZXNwb25zZQpmb3IgcXVpdGUgYSB3aGlsZSAo
KmNvdWdoKiBUU0FEQyAqY291Z2gqKSBhbmQgc29tZSBtb3JlIFJLMzU3NiBoYXJkd2FyZSwKbm90
YWJseSB0aGUgUkFEWEEgUk9DSyA0RCwgcmVsZWFzZWQgaW4gdGhlIG1lYW50aW1lLCBpdCBtYXkg
bWFrZSBzZW5zZSB0bwpoYXZlIHRoZW0gaW5jbHVkZWQgaW4gZWl0aGVyIG91ciByb2NrY2hpcC1y
ZWxlYXNlIG9yIHJvY2tjaGlwLWRldmVsIHRyZWUuCgpJZiB5b3Ugd2FudCB0byBrZWVwIHVwIHRv
IGRhdGUgb24gd2hhdCdzIGluIGZsaWdodCwgb3VyIFJLMzU3NiBtYWlubGluZQpzdGF0dXMgbWF0
cml4IGF0IGh0dHBzOi8vY29sLmxhL3JrMzU3NnN0YXR1cyBpcyB1c3VhbGx5IGtlcHQgZmFpcmx5
IHVwIHRvCmRhdGUuCgpIb3BlZnVsbHkgb25jZSB2Ni4xNi1yYzEgZHJvcHMsIHVwc3RyZWFtIG1h
aW50YWluZXJzL3Jldmlld2VycyBhcmUgaW4gYQpiZXR0ZXIgcG9zaXRpb24gdG8gdGFrZSBhIGxv
b2sgYXQgc29tZSBvZiB0aG9zZSBwYXRjaCBzZXJpZXMgYWdhaW4sIEknbGwKcmVzdWJtaXQgdGhl
bSB3aGVuIHRoZSB0aW1lIGNvbWVzLiBOb3RoaW5nIGxpZ2h0cyBhIGZpcmUgbGlrZSBhIFJFU0VO
RApwcmVmaXggaW4gYSBzZXJpZXMuCgo+IEJlc3QgcmVnYXJkcywKPiBBbGV4ZXkKPiAKCktpbmQg
cmVnYXJkcywKTmljb2xhcyBGcmF0dGFyb2xpCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
