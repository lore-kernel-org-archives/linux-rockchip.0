Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9D91C41535
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Dec 2023 08:22:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YS846m2DMjgdVQ8l+GRLvIWJcpf0FpByrJ0qnoKcQAY=; b=M9d5y7LqCdgHIw
	lm97VbD1fNuf2Ly0cybqeCZMFYeqUlLkp7aqhcaELlPVUIjIjPPI0d+acJbsLI+584cGZU5kY5+dE
	FxByp2RRsPSE5t4scGWUgeI637mG5wnDYKYWm1sjuKcyUdu8za1ObVeDfgGpmGDS8pw9GUjxHqMB4
	TLUOAGqFT8wdmWhVw//PCDxVTiG9YOy1Y4mjB/BDm17cz5tf7PXfIHk+gzGliL3DLd21WUldHam+P
	ixFb2V7JikID93DXTGzkD/Huu3Osv5nU0s49gKx0/zut64eAcgABNGMT0Lg8S8B53P94B4engVsRd
	8MxzTvcZXzrcOhizNsWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGant-005I4O-1d;
	Fri, 22 Dec 2023 08:22:45 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGanp-005I3K-2Z
	for linux-rockchip@lists.infradead.org;
	Fri, 22 Dec 2023 08:22:43 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-5545139bed4so458128a12.2
        for <linux-rockchip@lists.infradead.org>; Fri, 22 Dec 2023 00:22:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=friendlyarm-com.20230601.gappssmtp.com; s=20230601; t=1703233357; x=1703838157; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=twf9Eg2g2/T8YYnh5acOeNxaC2P6fcLLy0RujKG7s3I=;
        b=SLr9RDBP7eK70S5OZRfgnDeeTs4OnWxv2fXDm78O3Ew4gWX1Ws+VwraaUkuqojP2Fq
         Lp5D2yhQFV/We5+Pk1tCWzO2SeMUdwVDi8kQ6OtnP0HRAYCYWl5K/n9ArkdwiNc2xC4T
         lFd/3gLc175vBD62Ly3nMVam/MTA8HuhqMRxnXhEHk4wjR2P34SDZNl/5JU0/7udE/Ic
         XE27H3YmHanyxCUSgB9RVC/ttNtGfGhl8RZpyoSmvgu7t3qMpdyvcrM5I9qj4pAObPts
         q+OIi5pVv9wWfKcfoI/JvNMMQdluHpqf59PB9o3j5Kpcgp5E6yFn6w+IGNmMEkihZ0Ae
         IiLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703233357; x=1703838157;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=twf9Eg2g2/T8YYnh5acOeNxaC2P6fcLLy0RujKG7s3I=;
        b=K2vc2NoEWmkENg7xypZQB66HEJEZletvF3fdMA0Us7s/EZpdK5NBtd90rpupfECKxy
         0eHVb4Korm3gNnBmo073OU71NL+lW6CG6k6VqvLX8n9bXg39f+uB6VPspityf3L+wFsW
         M4w2VQZXh66Viy2RAk2a5wmr4RTAVQ5X+SjxZ33nHcnmCBqIIDmzHdbYseK1KaSVA4s+
         nzlXi8joBpw0h5k7GDPo33++ZpRkJQFg+UK5eYB0bP5Qz3gEHwCJ9IrM8QVXbTe0e20P
         9j55Ax9vj4ktCqZOw8+6yQZMkBuMiy38yfj/hjsiblgnkoWMvg5MZ4IqlXifDgcaOZmu
         s37Q==
X-Gm-Message-State: AOJu0YzAes8zmEpV4/NZmxx8juwHwneYu8xyLcONo2p6qj4wzacqKjz1
	INHXKn7qKNW1i5cZSK7f5bb8w/YXCEXoZFP6v0w4ceolxZt2ow==
X-Google-Smtp-Source: AGHT+IEKpY4KOAlolRlfTsU0UuQbxYqvbS0e/cdhNavcmLrXstz3zQBqMtd61wFZ5c/7mxpSm18U6wQ3/9+eO/1l9bQ=
X-Received: by 2002:a50:d7d7:0:b0:553:739e:bfac with SMTP id
 m23-20020a50d7d7000000b00553739ebfacmr452460edj.8.1703233357269; Fri, 22 Dec
 2023 00:22:37 -0800 (PST)
MIME-Version: 1.0
References: <20231207082200.16388-1-jensenhuang@friendlyarm.com>
 <ebf6cf8ec3b5befd673d295061fa2738@manjaro.org> <CAMpZ1qHUnTDQ78gdrQF9Sx_-XfLM-B+H-0bL1-+twKsno+JOvg@mail.gmail.com>
 <5e11553952c02ad20591992be4284bbd@manjaro.org> <95cc7716-ba01-e239-e7c0-eba0b7da7955@collabora.com>
 <CAMpZ1qENxWsDnvke4jMvK9tYpta3dThHUHxjDWO-u2JV+8dZdQ@mail.gmail.com> <94bf6180-8abf-777d-2dce-498efafb57c1@collabora.com>
In-Reply-To: <94bf6180-8abf-777d-2dce-498efafb57c1@collabora.com>
From: Jensen Huang <jensenhuang@friendlyarm.com>
Date: Fri, 22 Dec 2023 16:22:26 +0800
Message-ID: <CAMpZ1qH1c1WuBmj6DQZjgxS-WyiWq8cbi499tLwwD5yRDhCnWA@mail.gmail.com>
Subject: Re: [PATCH v2] i2c: rk3x: fix potential spinlock recursion on poll
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Cc: Dragan Simic <dsimic@manjaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Andi Shyti <andi.shyti@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-i2c@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Chris Morgan <macroalpha82@gmail.com>, 
	Benjamin Bara <bbara93@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_002242_175488_513BAD64 
X-CRM114-Status: GOOD (  36.99  )
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

T24gV2VkLCBEZWMgMjAsIDIwMjMgYXQgMToyM+KAr0FNIFdvbGZyYW0gU2FuZyA8d3NhQGtlcm5l
bC5vcmc+IHdyb3RlOgo+Cj4gT24gVGh1LCBEZWMgMDcsIDIwMjMgYXQgMDQ6MjE6NTlQTSArMDgw
MCwgSmVuc2VuIEh1YW5nIHdyb3RlOgo+ID4gUG9zc2libGUgZGVhZGxvY2sgc2NlbmFyaW8gKG9u
IHJlYm9vdCk6Cj4gPiByazN4X2kyY194ZmVyX2NvbW1vbihwb2xsaW5nKQo+ID4gICAgIC0+IHJr
M3hfaTJjX3dhaXRfeGZlcl9wb2xsKCkKPiA+ICAgICAgICAgLT4gcmszeF9pMmNfaXJxKDAsIGky
Yyk7Cj4gPiAgICAgICAgICAgICAtLT4gc3Bpbl9sb2NrKCZpMmMtPmxvY2spOwo+ID4gICAgICAg
ICAgICAgLi4uCj4gPiAgICAgICAgIDxyazN4IGkyYyBpbnRlcnJ1cHQ+Cj4gPiAgICAgICAgIC0+
IHJrM3hfaTJjX2lycSgwLCBpMmMpOwo+ID4gICAgICAgICAgICAgLS0+IHNwaW5fbG9jaygmaTJj
LT5sb2NrKTsgKGRlYWRsb2NrIGhlcmUpCj4gPgo+ID4gU3RvcmUgdGhlIElSUSBudW1iZXIgYW5k
IGRpc2FibGUvZW5hYmxlIGl0IGFyb3VuZCB0aGUgcG9sbGluZyB0cmFuc2Zlci4KPiA+IFRoaXMg
cGF0Y2ggaGFzIGJlZW4gdGVzdGVkIG9uIE5hbm9QQy1UNC4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5
OiBKZW5zZW4gSHVhbmcgPGplbnNlbmh1YW5nQGZyaWVuZGx5YXJtLmNvbT4KPiA+IFJldmlld2Vk
LWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgo+ID4gUmV2aWV3ZWQtYnk6IEFu
ZGkgU2h5dGkgPGFuZGkuc2h5dGlAa2VybmVsLm9yZz4KPgo+IEFwcGxpZWQgdG8gZm9yLWN1cnJl
bnQsIHRoYW5rcyEKPgo+IEJ1dCBJJ2QgbGlrZSB0byBzZWUgdGhlIGZvbGxvdy11cCBwYXRjaGVz
IHNvbWV3aGVuIHdoaWNoIGhhdmUgYmVlbgo+IGRpc2N1c3NlZCBpbiB0aGlzIHRocmVhZC4KCkkn
dmUgbWFkZSBzb21lIGF0dGVtcHRzLCBzdWNoIGFzIHJlbW92aW5nIGlycXNhdmUvcmVzdG9yZSwg
YnV0IGl0CmRpZG4ndCBtZWV0IG15IGV4cGVjdGF0aW9ucyBhbmQKcmVxdWlyZXMgZnVydGhlciB0
ZXN0aW5nLiBUaGVyZWZvcmUsIEkgbWF5IG5vdCBiZSBhYmxlIHRvIHN1Ym1pdCBzdWNoCmEgcGF0
Y2ggaW4gdGhlIHNob3J0IHRlcm0uIEhvd2V2ZXIsCmlmIHNvbWVvbmUgZWxzZSBzdWJtaXRzIGEg
bmV3IHBhdGNoLCBJJ2QgYmUgaGFwcHkgdG8gdGVzdCBpdCBvbiByazMzMjgvcmszMzk5LgoKCk9u
IEZyaSwgRGVjIDgsIDIwMjMgYXQgODoxN+KAr1BNIERtaXRyeSBPc2lwZW5rbwo8ZG1pdHJ5Lm9z
aXBlbmtvQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+Cj4gT24gMTIvOC8yMyAxMTo1MywgSmVuc2Vu
IEh1YW5nIHdyb3RlOgo+ID4gT24gRnJpLCBEZWMgOCwgMjAyMyBhdCAxMjowMOKAr0FNIERtaXRy
eSBPc2lwZW5rbwo+ID4gPGRtaXRyeS5vc2lwZW5rb0Bjb2xsYWJvcmEuY29tPiB3cm90ZToKPiA+
Pgo+ID4+IE9uIDEyLzcvMjMgMTc6MTAsIERyYWdhbiBTaW1pYyB3cm90ZToKPiA+Pj4gT24gMjAy
My0xMi0wNyAxMDoyNSwgSmVuc2VuIEh1YW5nIHdyb3RlOgo+ID4+Pj4gT24gVGh1LCBEZWMgNywg
MjAyMyBhdCA0OjM34oCvUE0gRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFyby5vcmc+IHdyb3Rl
Ogo+ID4+Pj4+Cj4gPj4+Pj4gT24gMjAyMy0xMi0wNyAwOToyMSwgSmVuc2VuIEh1YW5nIHdyb3Rl
Ogo+ID4+Pj4+PiBQb3NzaWJsZSBkZWFkbG9jayBzY2VuYXJpbyAob24gcmVib290KToKPiA+Pj4+
Pj4gcmszeF9pMmNfeGZlcl9jb21tb24ocG9sbGluZykKPiA+Pj4+Pj4gICAgIC0+IHJrM3hfaTJj
X3dhaXRfeGZlcl9wb2xsKCkKPiA+Pj4+Pj4gICAgICAgICAtPiByazN4X2kyY19pcnEoMCwgaTJj
KTsKPiA+Pj4+Pj4gICAgICAgICAgICAgLS0+IHNwaW5fbG9jaygmaTJjLT5sb2NrKTsKPiA+Pj4+
Pj4gICAgICAgICAgICAgLi4uCj4gPj4+Pj4+ICAgICAgICAgPHJrM3ggaTJjIGludGVycnVwdD4K
PiA+Pj4+Pj4gICAgICAgICAtPiByazN4X2kyY19pcnEoMCwgaTJjKTsKPiA+Pj4+Pj4gICAgICAg
ICAgICAgLS0+IHNwaW5fbG9jaygmaTJjLT5sb2NrKTsgKGRlYWRsb2NrIGhlcmUpCj4gPj4+Pj4+
Cj4gPj4+Pj4+IFN0b3JlIHRoZSBJUlEgbnVtYmVyIGFuZCBkaXNhYmxlL2VuYWJsZSBpdCBhcm91
bmQgdGhlIHBvbGxpbmcKPiA+Pj4+PiB0cmFuc2Zlci4KPiA+Pj4+Pj4gVGhpcyBwYXRjaCBoYXMg
YmVlbiB0ZXN0ZWQgb24gTmFub1BDLVQ0Lgo+ID4+Pj4+Cj4gPj4+Pj4gSW4gY2FzZSB5b3UgaGF2
ZW4ndCBhbHJlYWR5IHNlZW4gdGhlIHJlbGF0ZWQgZGlzY3Vzc2lvbiBsaW5rZWQgYmVsb3csCj4g
Pj4+Pj4gcGxlYXNlIGhhdmUgYSBsb29rLiAgSSBhbHNvIGFkZGVkIG1vcmUgcGVvcGxlIHRvIHRo
ZSBsaXN0IG9mIHJlY2lwaWVudHMsCj4gPj4+Pj4gaW4gYW4gYXR0ZW1wdCB0byBtYWtlIGV2ZXJ5
b25lIGF3YXJlIG9mIHRoZSBkaWZmZXJlbnQgYXBwcm9hY2hlcyB0bwo+ID4+Pj4+IHNvbHZpbmcg
dGhpcyBpc3N1ZS4KPiA+Pj4+Pgo+ID4+Pj4+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC82
NTUxNzdmNC4wNTBhMDIyMC5kODVjOS4zYmEwQG14Lmdvb2dsZS5jb20vVC8jbTZmYzljMjE0NDUy
ZmVjNjY4MTg0M2U3ZjQ1NTk3OGMzNWM2ZjZjOGIKPiA+Pj4+Cj4gPj4+PiBUaGFuayB5b3UgZm9y
IHByb3ZpZGluZyB0aGUgaW5mb3JtYXRpb24uIEkgaGFkbid0IHNlZW4gdGhpcyBsaW5rIGJlZm9y
ZS4KPiA+Pj4+IEFmdGVyIGNhcmVmdWxseSBsb29raW5nIGludG8gdGhlIHJlbGF0ZWQgZGlzY3Vz
c2lvbiwgaXQgYXBwZWFycyB0aGF0Cj4gPj4+PiBEbWl0cnkgT3NpcGVua28gaXMgYWxyZWFkeSB3
b3JraW5nIG9uIGEgc3VpdGFibGUgcGF0Y2guIFRvIGF2b2lkCj4gPj4+PiBkdXBsaWNhdGlvbgo+
ID4+Pj4gb3IgY29uZmxpY3RzLCBteSBwYXRjaCBjYW4gYmUgZGlzY2FyZGVkLgo+ID4+Pgo+ID4+
PiBUaGFuayB5b3UgZm9yIHJlc3BvbmRpbmcgc28gcXVpY2tseS4gIFBlcmhhcHMgaXQgd291bGQg
YmUgYmVzdCB0byBoZWFyCj4gPj4+IGZyb20gRG1pdHJ5IGFzIHdlbGwsIGJlZm9yZSBkaXNjYXJk
aW5nIGFueXRoaW5nLiAgSXQncyBiZWVuIGEgd2hpbGUKPiA+Pj4gc2luY2UgRG1pdHJ5IHdyb3Rl
IGFib3V0IHdvcmtpbmcgb24gdGhlIHBhdGNoLCBzbyBoZSBtaWdodCBoYXZlCj4gPj4+IGFiYW5k
b25lZCBpdC4KPiA+Pgo+ID4+IFRoaXMgcGF0Y2ggaXMgb2theS4gSW4gZ2VuZXJhbCwgd2lsbCBi
ZSBiZXR0ZXIgdG8gaGF2ZSBJUlEgZGlzYWJsZWQgYnkKPiA+PiBkZWZhdWx0IGxpa2UgSSBkaWQg
aW4gbXkgdmFyaWFudCwgaXQgc2hvdWxkIGFsbG93IHRvIHJlbW92ZSB0aGUgc3BpbmxvY2sKPiA+
PiBlbnRpcmVseS4gT2YgY291cnNlIHRoaXMgYWxzbyBjYW4gYmUgZG9uZSBsYXRlciBvbiBpbiBh
IGZvbGxvdyB1cAo+ID4+IHBhdGNoZXMuIEplbnNlbiwgZmVlbCBmcmVlIHRvIHVzZSBteSB2YXJp
YW50IG9mIHRoZSBwYXRjaCwgYWRkIG15Cj4gPj4gcy1vLWIrY28tZGV2ZWxvcGVkIHRhZ3MgdG8g
dGhlIGNvbW1pdCBtc2cgaWYgeW91J2xsIGRvLiBPdGhlcndpc2UgSSdsbAo+ID4+IGJlIGFibGUg
dG8gc2VuZCBteSBwYXRjaCBuZXh0IHdlZWsuCj4gPgo+ID4gVGhhbmsgeW91IGZvciB0aGUgc3Vn
Z2VzdGlvbi4gSSd2ZSB1cGRhdGVkIHRoZSBwYXRjaCB0byB5b3VyIHZhcmlhbnQsIGFuZAo+ID4g
YXMgY29uZmlybWVkIGJ5IG90aGVycywgcmVib290cyBhcmUgZnVuY3Rpb25pbmcgY29ycmVjdGx5
LiBJIG1lYXN1cmVkIHRoZQo+ID4gb3ZlcmhlYWQgb2YgZW5hYmxlX2lycS9kaXNhYmxlX2lycSgp
IGJ5IGNhbGN1bGF0aW5nIGt0aW1lIGluIHRoZQo+ID4gdXBkYXRlZCB2ZXJzaW9uLAo+ID4gYW5k
IG9uIHJrMzM5OSwgdGhlIG1pbmltdW0gZGVsdGEgSSBvYnNlcnZlZCB3YXMgMjkxLzg3NSBucy4g
VGhpcyBleHRyYQo+ID4gY29zdCBtYXkgaW1wYWN0IG1vc3QgaW50ZXJydXB0LWJhc2VkIHRyYW5z
ZmVycy4gVGhlcmVmb3JlLCBJIHBlcnNvbmFsbHkgbGVhbgo+ID4gdG93YXJkcyB0aGUgY3VycmVu
dCB2MiBwYXRjaCBhbmQgaGFuZGxlIHRoZSBzcGlubG9jayBhbmQgaXJxc2F2ZS9yZXN0b3JlIGlu
Cj4gPiBhIGZvbGxvdyB1cCBwYXRjaC4gSSdkIGxpa2UgdG8gaGVhciBldmVyeW9uZSdzIHRob3Vn
aHRzIG9uIHRoaXMuCj4KPiBQbGVhc2UgZG9uJ3QgdXNlIGt0aW1lIGZvciBwZXJmIG1lYXN1cmVt
ZW50cywga3RpbWUgaXRzZWxmIGlzIGEgc2xvdyBBUEkKPiBhbmQgaXQgc2hvdWxkIGJlIDIwMHVz
IHRoYXQga3RpbWUgdGFrZXMgaXRzZWxmLiBBbHNvLCB0aGUgMC4ydXMgaXMKPiBwcmFjdGljYWxs
eSBub3RoaW5nLCBlc3BlY2lhbGx5IGNvbXBhcmVkIHRvIEkyQyB0cmFuc2ZlcnMgbWVhc3VyZWQg
aW4gbXMuCj4KPiBJJ20gZmluZSB3aXRoIGtlZXBpbmcgeW91ciB2MiB2YXJpYW50IGZvciB0aGUg
YnVnIGZpeCBpZiB5b3UgcHJlZmVyCj4gdGhhdC4gVGhhbmtzIGZvciBhZGRyZXNzaW5nIHRoZSBp
c3N1ZSA6KQoKVGhhbmsgeW91IGZvciBjbGFyaWZ5aW5nIHRoZSBzaXR1YXRpb24gd2l0aCBrdGlt
ZS4gSG9uZXN0bHksIEkgYWxzbwpiZWxpZXZlIHRoYXQgdGhlIG92ZXJoZWFkCm9mIGRpc2FibGVf
aXJxL2VuYWJsZV9pcnEgc2hvdWxkIGJlIG1pbmltYWwuIENvbnNpZGVyaW5nIHRoYXQgc3lzdGVt
CmZyZXF1ZW5jeSBhZGp1c3RtZW50cwppbnZvbHZlIEkyQyB0cmFuc2ZlcnMsIEkgY29uZHVjdGVk
IHRoaXMgJ3NvbWV3aGF0IGltcHJlY2lzZScgbWVhc3VyZW1lbnRzLgoKCi0tCkJlc3QgcmVnYXJk
cywKSmVuc2VuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
