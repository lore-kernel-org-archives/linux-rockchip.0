Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50FD2C5475B
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Mar 2024 08:21:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0GftmiGiQFbWkaskj47tCrDrKL6A1gXdncsUajnOZVo=; b=nSBP2ehmovA6HYghp9vQd7C3JT
	cbjxlaUqVHg46fJYxCjvKJrqjAq8yInSr+wPxYMx9AFlGwY54dxQ3Zy42/lZYl+grgzFm4Ib6gB5L
	RF5WtAN5IIUAtxkK1Cl7d/OeyFBBr2B0qECIB7kIYr9UMnLrXulF7z13ugAgMfOfHhnPIFqtZVzCv
	dvomTAM8FLv2wYmJMaa6s3nQA25GUcNcij/WVsGSaSLCBaIj+Kllt3suCVysaNkUETcl4W/yh8+/h
	R0FpLgaCr5m0f3wqlZ6MZb79FjDDzJZJ0jjYO2TqUKGYEXmM+trJZt3ekcUFvObBG54z5Y2BdNSYQ
	sXmzWHUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfy8j-0000000GsJR-1LjX;
	Fri, 01 Mar 2024 08:21:09 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfy8g-0000000GsIQ-0zzP;
	Fri, 01 Mar 2024 08:21:07 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1709281264;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=W+18udHpLdy95OkiC4n4xDRRezey7Z+tS7O6jkyULnM=;
	b=bC1hZFSR6GR/rYNrKd+NODHBKVtCHrUY0yriO6RgAHLtfMikoIxClwf576UijbczLn6MpV
	5j+NK4EscAmZGoL03JaUQVuYk5WzULPgSQBqwpoIHUfynLJWHr9b8pFUn2AUvZ9V2eZiut
	UMviP+9UbnIxlvkq8OHvFSlftQ3NvoHYr8P6VbQ8onhDdm78RyHa153pbpZ2XYE8ge5iKW
	mdE4sIT2TmOh2CY7kZ32GiVTB/R50vXIkt9Uosb+I4WBxZfPro7ApGAFzzANLC/VpX7MNY
	aZQlH4kaXNPukaVR54Mg6fYIzG/+D6PQIBfnKg3P4r9LWEQsBzG+MB9N4SGRdQ==
Date: Fri, 01 Mar 2024 09:21:04 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Alexey Charkov <alchark@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Daniel Lezcano
 <daniel.lezcano@linaro.org>, Viresh Kumar <viresh.kumar@linaro.org>, Chen-Yu
 Tsai <wens@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/5] arm64: dts: rockchip: enable built-in thermal
 monitoring on RK3588
In-Reply-To: <CABjd4YxhL7m-neLFCQG5Aja2=stFdou7ji8m==UGPSSH-CybVw@mail.gmail.com>
References: <20240229-rk-dts-additions-v3-0-6afe8473a631@gmail.com>
 <20240229-rk-dts-additions-v3-1-6afe8473a631@gmail.com>
 <5eb9193a44fb9f9b1e976412874cecef@manjaro.org>
 <CABjd4YzFuhfS9RhJ6svb9ZD0NqMT5B6GmqigHFLr8YG6FR5k=w@mail.gmail.com>
 <90d0cfd9b7d018e7332213f624f0f658@manjaro.org>
 <CABjd4YxhL7m-neLFCQG5Aja2=stFdou7ji8m==UGPSSH-CybVw@mail.gmail.com>
Message-ID: <edb0ba399467359e16e50c89a1671b7f@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240301_002106_614655_9300C988 
X-CRM114-Status: GOOD (  22.22  )
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

T24gMjAyNC0wMy0wMSAwODo1MSwgQWxleGV5IENoYXJrb3Ygd3JvdGU6Cj4gT24gRnJpLCBNYXIg
MSwgMjAyNCBhdCAxMDoxNOKAr0FNIERyYWdhbiBTaW1pYyA8ZHNpbWljQG1hbmphcm8ub3JnPiAK
PiB3cm90ZToKPj4gT24gMjAyNC0wMy0wMSAwNjoyMCwgQWxleGV5IENoYXJrb3Ygd3JvdGU6Cj4+
ID4gT24gRnJpLCBNYXIgMSwgMjAyNCBhdCAxOjEx4oCvQU0gRHJhZ2FuIFNpbWljIDxkc2ltaWNA
bWFuamFyby5vcmc+IHdyb3RlOgo+PiA+PiBTZWUsIEknbSBub3QgYSBuYXRpdmUgRW5nbGlzaCBz
cGVha2VyLCBidXQgSSd2ZSBzcGVudCBhIGxvdCBvZiB0aW1lCj4+ID4+IGFuZCBlZmZvcnQgaW1w
cm92aW5nIG15IEVuZ2xpc2ggc2tpbGxzLiAgVGh1cywgcGVyaGFwcyB0aGVzZSBjb21tZW50cwo+
PiA+PiBtYXkgb3IgbWF5IG5vdCBzZWVtIGxpa2UgdW5uZWNlc3Nhcnkgbml0cGlja2luZywgZGVw
ZW5kaW5nIG9uIGhvdyBtdWNoCj4+ID4+IHNvbWVvbmUgcGF5cyBhdHRlbnRpb24gdG8gd3JpdGlu
ZyBzdHlsZSBpbiBnZW5lcmFsLCBidXQgSSdsbCByaXNrIHRvCj4+ID4+IGJlIGFubm95aW5nIGFu
ZCBzdGF0ZSB0aGVzZSBjb21tZW50cyBhbnl3YXkuIDopCj4+ID4+Cj4+ID4+IFRoZSBjb21tZW50
IGFib3ZlIGNvdWxkIGJlIHdyaXR0ZW4gaW4gYSBtdWNoIG1vcmUgY29uZGVuc2VkIGZvcm0gbGlr
ZQo+PiA+PiB0aGlzLCB3aGljaCB3b3VsZCBhbHNvIGJlIGEgYml0IG1vcmUgYWNjdXJhdGU6Cj4+
ID4+Cj4+ID4+Cj4+ID4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLyogSVBBIHRo
cmVzaG9sZCwgd2hlbiBJUEEgZ292ZXJub3IgaXMKPj4gPj4gdXNlZCAqLwo+PiA+Pgo+PiA+PiBJ
T1csIHdlJ3JlIHdyaXRpbmcgYWxsIHRoaXMgZm9yIHNvbWVvbmUgdG8gcmVhZCBsYXRlciwgYnV0
IHdlIHNob3VsZAo+PiA+PiAoYW5kIGNhbikgcGVyZmVjdGx5IHJlYXNvbmFibHkgZXhwZWN0IHNv
bWUgYWxyZWFkeSBleGlzdGluZyBiYWNrZ3JvdW5kCj4+ID4+IGtub3dsZWRnZSBmcm9tIHRoZSBy
ZWFkZXJzLiAgSW4gb3RoZXIgd29yZHMsIHdlIHNob3VsZCBiZSBhcyBjb25jaXNlCj4+ID4+IGFz
IHBvc3NpYmxlLgo+PiA+Cj4+ID4gSW4gZmFjdCwgdGhlIHBvd2VyIGFsbG9jYXRpb24gZ292ZXJu
b3IgY29kZSBpdHNlbGYgZG9lc24ndCBjYWxsIHRob3NlCj4+ID4gdHJpcHMgdGhyZXNob2xkIG9y
IHRhcmdldCBhcyB5b3VyIHN1Z2dlc3RlZCB3b3JkaW5nIHdvdWxkIGltcGx5Lgo+PiA+IEluc3Rl
YWQsIGl0IGNhbGxzIHRoZW0gInN3aXRjaCBvbiB0ZW1wZXJhdHVyZSIgYW5kICJtYXhpbXVtIGRl
c2lyZWQKPj4gPiB0ZW1wZXJhdHVyZSIgWzFdLiBNYXliZSB3ZSBjYW4gY2FsbCB0aGVtIHRoYXQg
aW4gdGhlIGNvbW1lbnRzIChhbmQKPj4gPiBhbHNvIGF2b2lkIGNhbGxpbmcgdGhlIGdvdmVybm9y
IElQQSwgYmVjYXVzZSB1cHN0cmVhbSBjb2RlIG9ubHkgY2FsbHMKPj4gPiBpdCBhICJwb3dlciBh
bGxvY2F0b3IiKS4KPj4gCj4+IEhtbSwgYnV0ICJJUEEiIGlzIHN0aWxsIG1lbnRpb25lZCBpbiBl
eGFjdGx5IHRocmVlIHBsYWNlcyBpbiB0aGUgZmlsZXMKPj4gdW5kZXIgZHJpdmVycy90aGVybWFs
LiAgSSB0aGluayB0aGF0IHdhcnJhbnRzIHRoZSB1c2Ugb2YgIklQQSIsIHdoaWNoCj4+IGlzIGFs
c28gd2lkZWx5IHVzZWQgcHJldHR5IG11Y2ggZXZlcnl3aGVyZS4KPj4gCj4+IFBlcmhhcHMgYSB3
aW4td2luIHdvdWxkIGJlIHRvIGhhdmUgb25seSB0aGUgdmVyeSBmaXJzdCBvZiB0aGUgY29tbWVu
dHMKPj4gbGlrZSB0aGlzLCB0byBpbnRyb2R1Y2UgIklQQSIgYXMgYW4gYWNyb255bToKPj4gCj4+
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLyogUG93ZXIgYWxsb2NhdG9yIChJ
UEEpIHRoZXJtYWwKPj4gZ292ZXJub3IgICAgICAgKi8KPj4gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAvKiBzd2l0Y2gtb24gcG9pbnQsIHdoZW4gSVBBIAo+PiBnb3Zlcm5vcgo+
PiBpcyB1c2VkICAgKi8KPiAKPiBZZXMsIGdvb2QgcG9pbnQsIHRoYW5rcyEKCkknbSBnbGFkIHRo
YXQgeW91IGFncmVlLiA6KQoKPj4gTmV4dCwgInRoZSB0YXJnZXQgdGVtcGVyYXR1cmUiIGlzIG1l
bnRpb25lZCBtb3JlIHRoYW4gYSBmZXcgdGltZXMgaW4KPj4gZHJpdmVycy90aGVybWFsL2dvdl9w
b3dlcl9hbGxvY2F0b3IuYywgd2hpY2ggSSBiZWxpZXZlIG1ha2VzIHRoZSB1c2UKPj4gb2YgIklQ
QSB0YXJnZXQiIHBlcmZlY3RseSB2YWxpZC4gIEFjdHVhbGx5LCBsZXQncyB1c2UgIklQQSB0YXJn
ZXQKPj4gdGVtcGVyYXR1cmUiLCBpZiB5b3UgYWdyZWUsIHRvIG1ha2UgaXQgc2VsZiBkZXNjcmlw
dGl2ZS4KPiAKPiBPciBwZXJoYXBzIHNpbXBseSAidGFyZ2V0IHRlbXBlcmF0dXJlIj8gU3RlcHdp
c2UgZ292ZXJub3Igd2lsbCBhbHNvCj4gdXNlIHRoaXMgdHJpcCBhcyBpdHMgdGFyZ2V0LCBzbyBp
dCdzIG5vdCBJUEEgc3BlY2lmaWMsIHVubGlrZSB0aGUKPiBzd2l0Y2gtb24gcG9pbnQuCgpJIGFs
c28gaGFkIHNpbWlsYXIgdGhvdWdodHMgYWJvdXQgdGhlIHNoYXJlZCBuYXR1cmUuICBJIGFncmVl
LCBqdXN0CiIvKiB0YXJnZXQgdGVtcGVyYXR1cmUgKi8iIHdvdWxkIGJlIGZpbmUuCgo+PiBGaW5h
bGx5LCB0aGUgdGhyZXNob2xkLi4uICBCYXNlZCBvbgo+PiBkcml2ZXJzL3RoZXJtYWwvZ292X3Bv
d2VyX2FsbG9jYXRvci5jLAo+PiBJIHRoaW5rICJJUEEgc3dpdGNoLW9uIHBvaW50IiB3b3VsZCBi
ZSBhIGdvb2QgY2hvaWNlLCB3aGljaCBJIGFscmVhZHkKPj4gdXNlZCBhYm92ZSBpbiB0aGUgcHJv
cG9zZWQgb3BlbmluZyBjb21tZW50Lgo+IAo+IEFncmVlZCwgdGhhdCBzb3VuZHMgZ29vZCB0byBt
ZSwgd2lsbCByZWZsZWN0IGluIHRoZSBuZXh0IGl0ZXJhdGlvbi4KPiBUaGFua3MgZm9yIGJyaW5n
aW5nIGl0IHVwIQoKR3JlYXQsIHRoYW5rcyEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
