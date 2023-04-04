Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42E72C6FD1D
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Apr 2023 15:40:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HBvPtULLoXMrfZgKwQUvn2Gi7wMNtAz4ZykQF+Rpw+8=; b=CKz1YM8pmmf2oa
	RkcDcoKARVLkdNrlKJXtAb1dHENoIbR/fO9Miq5zEmc8sEg06wQZjJ7ZHWNaKZg3OI6Cz3FxNzgg7
	o8W6rnpwBRG3D42A8C0ukwV+RMIhMDJ7H+tZUi5Am2iMCK6AXt+iYNtwhugxKX7riJduB0jutN1pq
	SbtVo7SNoT/gV1MYya7DS/qSwI6+QxVapK4YxGjGG3hP1ZJhQJjO67Jq0lWYNe+0QMzOl3b7k6ppP
	uFg7TxyFCAflMWcQkRS3/5v0geC2qb13GFVlaZLLJulIE+Mpk8Veh76vZgyJP5kAK7Oh0vX6N3xP5
	EwdUJojawOSRU9A7kN4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjilp-0022Qs-0j;
	Tue, 04 Apr 2023 15:40:29 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjilk-0022PV-2X;
	Tue, 04 Apr 2023 15:40:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1680622817; bh=gUC07j0BF6Ats3pO8KtZR2khuJGxBN6yLNKDq0ZvG30=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=INqbPpsh/s/pyXwwSr3hAKvrhnRGaA9cMvlZ93RrKGcfJFPGWN20zK6g1VSjZpqex
	 4FXM4fWK4Amlp3oeQBN9XLKYT+xwH4j7d7+TvRFW8l2TCfytSWp6vpnm3J8ypwmRIX
	 kwF8qWypcZFyJJkX9LdNAihL+BOQnlcQoZDNZaBI=
Date: Tue, 4 Apr 2023 17:40:17 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Javier Martinez Canillas <javierm@redhat.com>
Cc: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
	linux-kernel@vger.kernel.org, Peter Robinson <pbrobinson@gmail.com>,
	Caleb Connolly <kc@postmarketos.org>,
	Jarrah Gosbell <kernel@undef.tools>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Martijn Braam <martijn@brixit.nl>, Rob Herring <robh+dt@kernel.org>,
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Change serial baud rate for
 Pinephone Pro to 1.5 MB
Message-ID: <20230404154017.7n6rcgqyv3edfahd@core>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>,
	Javier Martinez Canillas <javierm@redhat.com>,
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
	linux-kernel@vger.kernel.org, Peter Robinson <pbrobinson@gmail.com>,
	Caleb Connolly <kc@postmarketos.org>,
	Jarrah Gosbell <kernel@undef.tools>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Martijn Braam <martijn@brixit.nl>, Rob Herring <robh+dt@kernel.org>,
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20230403175937.2842085-1-javierm@redhat.com>
 <3738011.44csPzL39Z@diego>
 <20230404123646.5iiznbhnyoama5pp@core>
 <87r0szd9q2.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87r0szd9q2.fsf@minerva.mail-host-address-is-not-set>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_084025_285207_AB5466BF 
X-CRM114-Status: GOOD (  33.88  )
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

T24gVHVlLCBBcHIgMDQsIDIwMjMgYXQgMDQ6MDQ6NTNQTSArMDIwMCwgSmF2aWVyIE1hcnRpbmV6
IENhbmlsbGFzIHdyb3RlOgo+IE9uZMWZZWogSmlybWFuIDxtZWdpQHhmZi5jej4gd3JpdGVzOgo+
IAo+ID4gT24gVHVlLCBBcHIgMDQsIDIwMjMgYXQgMDk6NTE6MTFBTSArMDIwMCwgSGVpa28gU3TD
vGJuZXIgd3JvdGU6Cj4gPj4gSGksCj4gPj4gCj4gPj4gQW0gTW9udGFnLCAzLiBBcHJpbCAyMDIz
LCAxOTo1OTozNyBDRVNUIHNjaHJpZWIgSmF2aWVyIE1hcnRpbmV6IENhbmlsbGFzOgo+ID4+ID4g
VGhpcyBiYXVkIHJhdGUgaXMgc2V0IGZvciB0aGUgZGV2aWNlIGJ5IG1haW5saW5lIHUtYm9vdCBh
bmQgaXMgYWxzbyB3aGF0Cj4gPj4gPiBpcyBzZXQgaW4gdGhlIFBpbmVib29rIFBybyBEZXZpY2Ug
VHJlZSwgd2hpY2ggaXMgYSBkZXZpY2Ugc2ltaWxhciB0byB0aGUKPiA+PiA+IFBpbmVQaG9uZSBQ
cm8gYnV0IHdpdGggYSBkaWZmZXJlbnQgZm9ybSBmYWN0b3IuCj4gPj4gPiAKPiA+PiA+IE90aGVy
d2lzZSwgdGhlIGJhdWQgcmF0ZSBvZiB0aGUgZmlybXdhcmUgYW5kIExpbnV4IGRvbid0IG1hdGNo
IGJ5IGRlZmF1bHQKPiA+PiA+IGFuZCBhICdjb25zb2xlPXR0eVMyLDE1MDAwMDBuOCcga2VybmVs
IGNvbW1hbmQgbGluZSBwYXJhbWV0ZXIgaXMgcmVxdWlyZWQKPiA+PiA+IHRvIGhhdmUgcHJvcGVy
IG91dHB1dCBmb3IgYm90aC4KPiA+PiAKPiA+PiBUaGUgaW50ZXJlc3RpbmcgcXVlc3Rpb24gaXMg
YWx3YXlzIGlmIHRoaXMgd2lsbCBicmVhayBzb21lb25lIGVsc2UncyBzZXR1cC4KPiA+PiBJJ3Zl
IG5ldmVyIHJlYWxseSB1bmRlcnN0b29kIHRoZSBzdHJhbmdlIHNldHRpbmcgb2YgMS41TUJwcywg
YnV0IG9uIHRoZQo+ID4+IG90aGVyIGhhbmQgaXQgX2lzXyBhIHJlYWxpdHkgb24gbW9zdCBib2Fy
ZHMuCj4gPgo+ID4gTm9ybWFsIHVzZXJzIG9mIHRoZSBwaG9uZSBwcm9iYWJseSBydW4gd2l0aCBV
QVJUIGNvbnNvbGUgZGlzYWJsZWQsIGJlY2F1c2UKPiA+IFVBUlQgaXMgbXV4ZWQgd2l0aCBhdWRp
byBqYWNrIG91dHB1dCBhbmQgdG8gZW5hYmxlIGl0IHRoZXkgaGF2ZSB0byBhZGQKPiA+IGNvbnNv
bGU9dHR5UzIgdG8gdGhlIGtlcm5lbCBjb21tYW5kIGxpbmUgYW5kIGZsaXAgYSBwaHlzaWNhbCBz
d2l0Y2ggaW5zaWRlCj4gPiB0aGUgcGhvbmUuCj4gPgo+ID4gRm9ydHVuYXRlbHksIG5vdCBzZXBj
aWZ5aW5nIHN0ZG91dC1wYXRoIGJhdWQgcmF0ZSBpbiB0aGUgb3B0aW9ucyBwYXJ0Cj4gPiBvZiB0
aGUgc3RyaW5nLCB3aWxsIG1ha2UgdGhlIHNlcmlhbCBkcml2ZXIgcHJvYmUgZm9yIHRoZSBiYXVk
IHJhdGUgZnJvbQo+ID4gdGhlIHByZXZpb3VzIGJvb3Qgc3RhZ2UgYW5kIG1ha2UgdGhlIHVzZXIg
aGFwcHkgYnkga2VlcGluZyB3aGF0ZXZlciB3YXMKPiA+IGFscmVhZHkgc2V0IGluIHRoZSBib290
bG9hZGVyLgo+ID4KPiAKPiBBcyBtZW50aW9uZWQgaW4gdGhlIGZpcnN0IGVtYWlsIG9mIHRoaXMg
dGhyZWFkLCBJIHRyaWVkIHRoYXQgYnV0IGl0IGRpZG4ndAo+IHdvcmsgZm9yIG1lLiBFaXRoZXIg
dXNpbmcgc3Rkb3V0LXBhdGggPSAic2VyaWFsMiI7IG9yIHN0ZG91dC1wYXRoID0gJnVhcnQyOwo+
IGdpdmVzIG1lIG5vIHNlcmlhbCBvdXRwdXQgd2l0aCBjb25zb2xlPXR0eVMyLCBJIG5lZWRlZCB0
byBzcGVjaWZ5IHRoZSBiYXVkCj4gcmF0ZSBleHBsaWNpdGx5IChpLmU6IGNvbnNvbGU9dHR5UzIs
MTUwMDAwMG44KS4KPiAKPiA+ICAgaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvbGF0
ZXN0L3NvdXJjZS9kcml2ZXJzL3R0eS9zZXJpYWwvODI1MC84MjUwX3BvcnQuYyNMMzQ5Ngo+ID4K
PiAKPiBJcyB0aGF0IGhlbHBlciByZWFsbHkgdXNlZCBieSB0aGUgc2VyaWFsIGRyaXZlciBpbiB0
aGUgUGluZVBob25lIFBybz8KPiAoZHJpdmVycy90dHkvc2VyaWFsLzgyNTAvODI1MF9kdy5jKSwg
SSB3YXMgbWVhbmluZyB0byBkaWcgd2h5IGp1c3QgdHR5UzIKPiB3YXMgbm90IHdvcmtpbmcgYnV0
IGRlY2lkZWQgdGhhdCBjb3VsZCBiZSBhIGZvbGxvdy11cCBwYXRjaC4KCkl0J3MgY2FsbGVkIGJ5
IHVuaXY4MjUwX2NvbnNvbGVfc2V0dXAgaW4gODI1MF9jb3JlLmMgQnV0IGxvb2tpbmcgYXQgaXQg
YWdhaW4sCnRoaXMgbWF5IG9ubHkgYmUgdXNlZCB0byBtYXRjaCBjb25zb2xlPXVhcnQuCgogIGh0
dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L2xhdGVzdC9zb3VyY2UvZHJpdmVycy90dHkv
c2VyaWFsLzgyNTAvODI1MF9jb3JlLmMjTDYzOAoKQnVtbWVyLgoKPiBTaW5jZSBjaGFnaW5nIHRv
IDEuNSBNQnBzIHNlZW1lZCB0byBoYXZlIG1lcml0cyBvbiBpdHMgb3duLCBkZWNpZGVkIHRvCj4g
cG9zdCB0aGlzIHBhdGNoIGFueXdheXMgaW4gdGhlIG1lYW50aW1lLgo+IAo+ID4gU28gd2UgY2Fu
IG1ha2UgdGhlIGtlcm5lbCBqdXN0IGtlZXAgdGhlIGJhdWRyYXRlIHNldHVwIGZyb20gdGhlIHBy
ZXZpb3VzCj4gPiBib290IHN0YWdlIGJ5Ogo+ID4KPiA+IAlzdGRvdXQtcGF0aCA9ICJzZXJpYWwy
IjsKPiA+Cj4gCj4gRGlkIGl0IHdvcmsgZm9yIHlvdT8gTWF5YmUgSSdtIGRvaW5nIHNvbWV0aGlu
ZyBzaWxseSBidXQgYXMgbWVudGlvbmVkIGl0Cj4gZGlkbid0IHdvcmsgZm9yIG1lIHdpdGggdXBz
dHJlYW0gdS1ib290LgoKSSB3YXMganVzdCBleWViYWxsaW5nIHRoZSBjb2RlLiBJIGRpZG4ndCB0
ZXN0IGl0LgoKa2luZCByZWdhcmRzLAoJby4KCj4gPiByZWdhcmRzLAo+ID4gCW8uCj4gPgo+IAo+
IC0tIAo+IEJlc3QgcmVnYXJkcywKPiAKPiBKYXZpZXIgTWFydGluZXogQ2FuaWxsYXMKPiBDb3Jl
IFBsYXRmb3Jtcwo+IFJlZCBIYXQKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
