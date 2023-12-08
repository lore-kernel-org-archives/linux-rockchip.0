Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 494F4C10DC1
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Dec 2023 12:17:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kr7+zm3fSHnN1iwrOvgl7Ck8ZWcY0x4Hgk6GBmw2QbU=; b=GQkNxlAAVkHp8c
	pkEWDrWvwVzm5mzOPkLMqoTDaarf/0Hd8q35HQZDzZK2kr5lBZrCnMcVSMyz8q2Hp469rIo5WpPQK
	5X5UYrjU0Ez6GtUAIOg1koeNJwAzNhu/EdG/VGUgT4RgNanQHacF5BJZsYuVyR5lLQLBVW8+4MDot
	LiSB3jqMBJaaVVzYAs/zwoylduJ+JKPSRTkRF1q3lKj4wacDcWENDoI/3HevnEFd82x0hoYc9pD2r
	Z+ClXPVHm1JMh/4vduKG+0GZhsYTrKq7AwAIZnp7W/66qR3NkF9mB7xF4VeFcY2Rt2xqBue5BU8lT
	rzbZsxd3PW1V8mmwPOVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBZna-00FaAV-0s;
	Fri, 08 Dec 2023 12:17:42 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBZnW-00Fa8L-23;
	Fri, 08 Dec 2023 12:17:40 +0000
Received: from [10.3.2.161] (zone.collabora.co.uk [167.235.23.81])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 7AD4F66073AA;
	Fri,  8 Dec 2023 12:17:30 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1702037851;
	bh=jBMziga07aVp3bL6kAN2tx7XMOjaakjxVjC5JZZa2zs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=QMXTiAbpKT36vzwizHSRDGx7XNQyAPt6w/AA54Xy/B00HQ5lEyJbi3oH5WbFENwAj
	 mp6E7V8KUVcD0k2oHA/jQHloJevjOuQsr/6h1+Ma45vVsQuaPnFXxgMFRpPDu9ZM4L
	 uv161qtyHHpYhG8xchf9YJv3Ea0nB4hulWGCxvgEVc4vriK+nq+5PBz3dXQK2k5Alp
	 T+cwyt1jmFv8D7LMUs2IQDB9B8L6WCziGQBlInTyFOHzNCIQyKv2JVOcP53SLYaCGT
	 JLERN18XqzjGChfGr26wqhIa9FvUmpXDr6AqV8OD7F7Y0FCzyA5yFjIxgSZZ/BxwCM
	 6c+S71rVWf+3g==
Message-ID: <94bf6180-8abf-777d-2dce-498efafb57c1@collabora.com>
Date: Fri, 8 Dec 2023 15:17:25 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v2] i2c: rk3x: fix potential spinlock recursion on poll
Content-Language: en-US
To: Jensen Huang <jensenhuang@friendlyarm.com>
Cc: Dragan Simic <dsimic@manjaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Andi Shyti <andi.shyti@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-i2c@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chris Morgan <macroalpha82@gmail.com>,
 Benjamin Bara <bbara93@gmail.com>
References: <20231207082200.16388-1-jensenhuang@friendlyarm.com>
 <ebf6cf8ec3b5befd673d295061fa2738@manjaro.org>
 <CAMpZ1qHUnTDQ78gdrQF9Sx_-XfLM-B+H-0bL1-+twKsno+JOvg@mail.gmail.com>
 <5e11553952c02ad20591992be4284bbd@manjaro.org>
 <95cc7716-ba01-e239-e7c0-eba0b7da7955@collabora.com>
 <CAMpZ1qENxWsDnvke4jMvK9tYpta3dThHUHxjDWO-u2JV+8dZdQ@mail.gmail.com>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <CAMpZ1qENxWsDnvke4jMvK9tYpta3dThHUHxjDWO-u2JV+8dZdQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231208_041738_851846_55416D5D 
X-CRM114-Status: GOOD (  22.47  )
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

T24gMTIvOC8yMyAxMTo1MywgSmVuc2VuIEh1YW5nIHdyb3RlOgo+IE9uIEZyaSwgRGVjIDgsIDIw
MjMgYXQgMTI6MDDigK9BTSBEbWl0cnkgT3NpcGVua28KPiA8ZG1pdHJ5Lm9zaXBlbmtvQGNvbGxh
Ym9yYS5jb20+IHdyb3RlOgo+Pgo+PiBPbiAxMi83LzIzIDE3OjEwLCBEcmFnYW4gU2ltaWMgd3Jv
dGU6Cj4+PiBPbiAyMDIzLTEyLTA3IDEwOjI1LCBKZW5zZW4gSHVhbmcgd3JvdGU6Cj4+Pj4gT24g
VGh1LCBEZWMgNywgMjAyMyBhdCA0OjM34oCvUE0gRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFy
by5vcmc+IHdyb3RlOgo+Pj4+Pgo+Pj4+PiBPbiAyMDIzLTEyLTA3IDA5OjIxLCBKZW5zZW4gSHVh
bmcgd3JvdGU6Cj4+Pj4+PiBQb3NzaWJsZSBkZWFkbG9jayBzY2VuYXJpbyAob24gcmVib290KToK
Pj4+Pj4+IHJrM3hfaTJjX3hmZXJfY29tbW9uKHBvbGxpbmcpCj4+Pj4+PiAgICAgLT4gcmszeF9p
MmNfd2FpdF94ZmVyX3BvbGwoKQo+Pj4+Pj4gICAgICAgICAtPiByazN4X2kyY19pcnEoMCwgaTJj
KTsKPj4+Pj4+ICAgICAgICAgICAgIC0tPiBzcGluX2xvY2soJmkyYy0+bG9jayk7Cj4+Pj4+PiAg
ICAgICAgICAgICAuLi4KPj4+Pj4+ICAgICAgICAgPHJrM3ggaTJjIGludGVycnVwdD4KPj4+Pj4+
ICAgICAgICAgLT4gcmszeF9pMmNfaXJxKDAsIGkyYyk7Cj4+Pj4+PiAgICAgICAgICAgICAtLT4g
c3Bpbl9sb2NrKCZpMmMtPmxvY2spOyAoZGVhZGxvY2sgaGVyZSkKPj4+Pj4+Cj4+Pj4+PiBTdG9y
ZSB0aGUgSVJRIG51bWJlciBhbmQgZGlzYWJsZS9lbmFibGUgaXQgYXJvdW5kIHRoZSBwb2xsaW5n
Cj4+Pj4+IHRyYW5zZmVyLgo+Pj4+Pj4gVGhpcyBwYXRjaCBoYXMgYmVlbiB0ZXN0ZWQgb24gTmFu
b1BDLVQ0Lgo+Pj4+Pgo+Pj4+PiBJbiBjYXNlIHlvdSBoYXZlbid0IGFscmVhZHkgc2VlbiB0aGUg
cmVsYXRlZCBkaXNjdXNzaW9uIGxpbmtlZCBiZWxvdywKPj4+Pj4gcGxlYXNlIGhhdmUgYSBsb29r
LiAgSSBhbHNvIGFkZGVkIG1vcmUgcGVvcGxlIHRvIHRoZSBsaXN0IG9mIHJlY2lwaWVudHMsCj4+
Pj4+IGluIGFuIGF0dGVtcHQgdG8gbWFrZSBldmVyeW9uZSBhd2FyZSBvZiB0aGUgZGlmZmVyZW50
IGFwcHJvYWNoZXMgdG8KPj4+Pj4gc29sdmluZyB0aGlzIGlzc3VlLgo+Pj4+Pgo+Pj4+PiBodHRw
czovL2xvcmUua2VybmVsLm9yZy9hbGwvNjU1MTc3ZjQuMDUwYTAyMjAuZDg1YzkuM2JhMEBteC5n
b29nbGUuY29tL1QvI202ZmM5YzIxNDQ1MmZlYzY2ODE4NDNlN2Y0NTU5NzhjMzVjNmY2YzhiCj4+
Pj4KPj4+PiBUaGFuayB5b3UgZm9yIHByb3ZpZGluZyB0aGUgaW5mb3JtYXRpb24uIEkgaGFkbid0
IHNlZW4gdGhpcyBsaW5rIGJlZm9yZS4KPj4+PiBBZnRlciBjYXJlZnVsbHkgbG9va2luZyBpbnRv
IHRoZSByZWxhdGVkIGRpc2N1c3Npb24sIGl0IGFwcGVhcnMgdGhhdAo+Pj4+IERtaXRyeSBPc2lw
ZW5rbyBpcyBhbHJlYWR5IHdvcmtpbmcgb24gYSBzdWl0YWJsZSBwYXRjaC4gVG8gYXZvaWQKPj4+
PiBkdXBsaWNhdGlvbgo+Pj4+IG9yIGNvbmZsaWN0cywgbXkgcGF0Y2ggY2FuIGJlIGRpc2NhcmRl
ZC4KPj4+Cj4+PiBUaGFuayB5b3UgZm9yIHJlc3BvbmRpbmcgc28gcXVpY2tseS4gIFBlcmhhcHMg
aXQgd291bGQgYmUgYmVzdCB0byBoZWFyCj4+PiBmcm9tIERtaXRyeSBhcyB3ZWxsLCBiZWZvcmUg
ZGlzY2FyZGluZyBhbnl0aGluZy4gIEl0J3MgYmVlbiBhIHdoaWxlCj4+PiBzaW5jZSBEbWl0cnkg
d3JvdGUgYWJvdXQgd29ya2luZyBvbiB0aGUgcGF0Y2gsIHNvIGhlIG1pZ2h0IGhhdmUKPj4+IGFi
YW5kb25lZCBpdC4KPj4KPj4gVGhpcyBwYXRjaCBpcyBva2F5LiBJbiBnZW5lcmFsLCB3aWxsIGJl
IGJldHRlciB0byBoYXZlIElSUSBkaXNhYmxlZCBieQo+PiBkZWZhdWx0IGxpa2UgSSBkaWQgaW4g
bXkgdmFyaWFudCwgaXQgc2hvdWxkIGFsbG93IHRvIHJlbW92ZSB0aGUgc3BpbmxvY2sKPj4gZW50
aXJlbHkuIE9mIGNvdXJzZSB0aGlzIGFsc28gY2FuIGJlIGRvbmUgbGF0ZXIgb24gaW4gYSBmb2xs
b3cgdXAKPj4gcGF0Y2hlcy4gSmVuc2VuLCBmZWVsIGZyZWUgdG8gdXNlIG15IHZhcmlhbnQgb2Yg
dGhlIHBhdGNoLCBhZGQgbXkKPj4gcy1vLWIrY28tZGV2ZWxvcGVkIHRhZ3MgdG8gdGhlIGNvbW1p
dCBtc2cgaWYgeW91J2xsIGRvLiBPdGhlcndpc2UgSSdsbAo+PiBiZSBhYmxlIHRvIHNlbmQgbXkg
cGF0Y2ggbmV4dCB3ZWVrLgo+IAo+IFRoYW5rIHlvdSBmb3IgdGhlIHN1Z2dlc3Rpb24uIEkndmUg
dXBkYXRlZCB0aGUgcGF0Y2ggdG8geW91ciB2YXJpYW50LCBhbmQKPiBhcyBjb25maXJtZWQgYnkg
b3RoZXJzLCByZWJvb3RzIGFyZSBmdW5jdGlvbmluZyBjb3JyZWN0bHkuIEkgbWVhc3VyZWQgdGhl
Cj4gb3ZlcmhlYWQgb2YgZW5hYmxlX2lycS9kaXNhYmxlX2lycSgpIGJ5IGNhbGN1bGF0aW5nIGt0
aW1lIGluIHRoZQo+IHVwZGF0ZWQgdmVyc2lvbiwKPiBhbmQgb24gcmszMzk5LCB0aGUgbWluaW11
bSBkZWx0YSBJIG9ic2VydmVkIHdhcyAyOTEvODc1IG5zLiBUaGlzIGV4dHJhCj4gY29zdCBtYXkg
aW1wYWN0IG1vc3QgaW50ZXJydXB0LWJhc2VkIHRyYW5zZmVycy4gVGhlcmVmb3JlLCBJIHBlcnNv
bmFsbHkgbGVhbgo+IHRvd2FyZHMgdGhlIGN1cnJlbnQgdjIgcGF0Y2ggYW5kIGhhbmRsZSB0aGUg
c3BpbmxvY2sgYW5kIGlycXNhdmUvcmVzdG9yZSBpbgo+IGEgZm9sbG93IHVwIHBhdGNoLiBJJ2Qg
bGlrZSB0byBoZWFyIGV2ZXJ5b25lJ3MgdGhvdWdodHMgb24gdGhpcy4KClBsZWFzZSBkb24ndCB1
c2Uga3RpbWUgZm9yIHBlcmYgbWVhc3VyZW1lbnRzLCBrdGltZSBpdHNlbGYgaXMgYSBzbG93IEFQ
SQphbmQgaXQgc2hvdWxkIGJlIDIwMHVzIHRoYXQga3RpbWUgdGFrZXMgaXRzZWxmLiBBbHNvLCB0
aGUgMC4ydXMgaXMKcHJhY3RpY2FsbHkgbm90aGluZywgZXNwZWNpYWxseSBjb21wYXJlZCB0byBJ
MkMgdHJhbnNmZXJzIG1lYXN1cmVkIGluIG1zLgoKSSdtIGZpbmUgd2l0aCBrZWVwaW5nIHlvdXIg
djIgdmFyaWFudCBmb3IgdGhlIGJ1ZyBmaXggaWYgeW91IHByZWZlcgp0aGF0LiBUaGFua3MgZm9y
IGFkZHJlc3NpbmcgdGhlIGlzc3VlIDopCgotLSAKQmVzdCByZWdhcmRzLApEbWl0cnkKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
