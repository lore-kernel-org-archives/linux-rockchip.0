Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 273E0E7718B
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Dec 2024 14:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YszqcM+IcwZQ0iCzfLnMHDlTG9RaoN0m8FhEml5GAm4=; b=EHS/6r19Mf5R3HyaTeoZcOP0nx
	EuG5UA0y+cEsCYGyqBrFw0ibPMsqIN1H6UfBncBYLVSwDY/vibeRg2Jhf02QmV3ojsDaWWzrPiWkJ
	h3NlJNqlvBuaXE8of2FDMgg3UPdD/ROyO6ZZyGrWznlhWk4slYWOKi52gZoJe5DFlpmaG68TA0zvK
	iFnh7TOBHTK6E+ZBcZJj2m7Eea8uHCn7s4ur3qKe04Tk+qhGR1e58PSHlYmr+jVuKB4rWgX2rE30E
	4BlYJ8ET+OYANrj6q8hVNx6oNvfvtt1MMEo2Vw09iBagIwbeQi4QN1Vjz2cdQYnvexagwYYsFNdbq
	FZHuj27g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tRBHq-00000000NdM-3jGK;
	Fri, 27 Dec 2024 14:25:58 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tRBGf-00000000NRD-1GPU;
	Fri, 27 Dec 2024 14:24:46 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1735309483;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=X7apG0q46MEHqecnkYUy7rU574wIsENCI9mgJgDKee4=;
	b=ut0dNskTmiAvABEg8ub9FJjvur5A6EJOgFc6d//pXcwPebwLD+1USNgtK23DCrvT/lnjTH
	gmSGo0AB7sp1boZaXOOQC5L/7BhFXTgXyr5Dtx5fJb9XnjRozJJ4O7yTb0Q4/azp2+sz7K
	yPMki01qDID5Vm/5OYIENjPj+kH+h3EUCii/lB1oGWqZqihNiQjwfBg9b8WNTvAF0MQq/l
	uCKPn1RGcCy0WGShWPUA2u7NN7LWw4bcpH5ktNUD9ZFezy+NnBl46W9s2Si/zAN+ZWENbf
	ADxXfZAxn9bq/h9pNrUr9hDzWrPgAd7SRzz8r/HtgAeBJjDJZ8GlE99xV9Wy2w==
Date: Fri, 27 Dec 2024 15:24:42 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Jagan Teki <jagan@edgeble.ai>
Cc: Kever Yang <kever.yang@rock-chips.com>, Heiko Stuebner
 <heiko@sntech.de>, linux-rockchip@lists.infradead.org, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/4] arm64: dts: rockchip: Add Rockchip RK3588M
In-Reply-To: <CA+VMnFwjbXbjb5nP6FBASOr0Tz+nSNTx0OoQu31xtLHkoWgE_g@mail.gmail.com>
References: <20241227133420.169714-1-jagan@edgeble.ai>
 <8f40821508fde291aab01674618c0a2c@manjaro.org>
 <e03da44cd6ae417feeb3de3fbfbff7f9@manjaro.org>
 <CA+VMnFwjbXbjb5nP6FBASOr0Tz+nSNTx0OoQu31xtLHkoWgE_g@mail.gmail.com>
Message-ID: <340be9d5b8f187ba3eb8bee67fa04905@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241227_062445_628131_F32B836E 
X-CRM114-Status: GOOD (  27.43  )
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

T24gMjAyNC0xMi0yNyAxNToxMywgSmFnYW4gVGVraSB3cm90ZToKPiBPbiBGcmksIDI3IERlYyAy
MDI0IGF0IDE5OjM3LCBEcmFnYW4gU2ltaWMgPGRzaW1pY0BtYW5qYXJvLm9yZz4gd3JvdGU6Cj4+
IE9uIDIwMjQtMTItMjcgMTQ6NDgsIERyYWdhbiBTaW1pYyB3cm90ZToKPj4gPiBQbGVhc2Ugc2Vl
IGEgY29tbWVudCBiZWxvdy4KPj4gPgo+PiA+IE9uIDIwMjQtMTItMjcgMTQ6MzQsIEphZ2FuIFRl
a2kgd3JvdGU6Cj4+ID4+IFJvY2tjaGlwIFJLMzU4OE0gaXMgdGhlIGF1dG9tb3RpdmUtZ3JhZGUg
dmVyc2lvbiBvZiBSSzM1ODggU29DIGFuZAo+PiA+PiBpcyBvcGVyYXRlZCB3aXRoIC00MCDCsEMg
dG8gKzg1IMKwQyB0ZW1wYXJhdHVyZS4KPj4gPj4KPj4gPj4gQWRkIHJrMzU4OG0gc3BlY2lmaWMg
ZHRzaSBmb3IgYWRkaW5nIHJrMzU4OG0gc3BlY2lmaWMgb3BlcmF0aW5nIHBvaW50cwo+PiA+PiBh
bmQgb3RoZXIgY2hhbmdlcyB0byBiZSBhZGQgaW4gZnV0dXJlLgo+PiA+Pgo+PiA+PiBTaWduZWQt
b2ZmLWJ5OiBKYWdhbiBUZWtpIDxqYWdhbkBlZGdlYmxlLmFpPgo+PiA+PiAtLS0KPj4gPj4gIGFy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4bS5kdHNpIHwgNyArKysrKysrCj4+ID4+
ICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspCj4+ID4+ICBjcmVhdGUgbW9kZSAxMDA2
NDQgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhtLmR0c2kKPj4gPj4KPj4gPj4g
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4bS5kdHNpCj4+
ID4+IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhtLmR0c2kKPj4gPj4gbmV3
IGZpbGUgbW9kZSAxMDA2NDQKPj4gPj4gaW5kZXggMDAwMDAwMDAwMDAwLi4wYmJlZWUzOTlhNjMK
Pj4gPj4gLS0tIC9kZXYvbnVsbAo+PiA+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU4OG0uZHRzaQo+PiA+PiBAQCAtMCwwICsxLDcgQEAKPj4gPj4gKy8vIFNQRFgtTGlj
ZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCsgT1IgTUlUKQo+PiA+PiArLyoKPj4gPj4gKyAqIENv
cHlyaWdodCAoYykgMjAyMiBSb2NrY2hpcCBFbGVjdHJvbmljcyBDby4sIEx0ZC4KPj4gPj4gKyAq
Cj4+ID4+ICsgKi8KPj4gPj4gKwo+PiA+PiArI2luY2x1ZGUgInJrMzU4OC1leHRyYS5kdHNpIgo+
PiA+Cj4+ID4gSSBkb24ndCB0aGluayB3ZSBuZWVkIG9yIHdhbnQgYSBzZXBhcmF0ZSByazM1ODht
LmR0c2kgZmlsZSBmb3IgdGhpcwo+PiA+IHB1cnBvc2UsIHVubGVzcyB0aGUgUkszNTg4TSB2YXJp
YW50IGFjdHVhbGx5IGRpZmZlcnMgZnJvbSB0aGUgcmVndWxhcgo+PiA+IFJLMzU4OCB2YXJpYW50
IGZyb20gdGhlIHNvZnR3YXJlIHN0YW5kcG9pbnQuICBUaGUgbGF0dGVyIGlzIGFscmVhZHkKPj4g
PiBkZXNjcmliZWQgaW4gcmszNTg4LmR0c2ksIHNvIGl0IHNob3VsZCBqdXN0IGJlIGluY2x1ZGVk
IGluIHRoZSBuZXcKPj4gPiBib2FyZCBkdHMoaSkgZmlsZS4KPj4gCj4+IEFjdHVhbGx5LCBhZnRl
ciBoYXZpbmcgYSBsb29rIGF0IHRoZSBkb3duc3RyZWFtIGNvZGUsIGl0IHNlZW1zIHRoYXQKPj4g
dGhlIFJLMzU4OEogYW5kIFJLMzU4OE0gdmFyaWFudHMgc2hhcmUgdGhlIHNhbWUgT1BQcywgc28g
YWN0dWFsbHkKPj4gcmszNTg4ai5kdHNpIHNob3VsZCBiZSB1c2VkIGZvciB0aGUgUkszNTg4TSB2
YXJpYW50LiAgQ291bGQgeW91LAo+PiBwbGVhc2UsIGNvbmZpcm0gdGhpcz8KPj4gCj4+IEFsYXMs
IGl0IHNlZW1zIHdlJ3ZlIGdvdCBzb21lIHNlcmlvdXMgaXNzdWVzIGluIHRoZSBPUFBzIGN1cnJl
bnRseQo+PiBkZWZpbmVkIGluIHJrMzU4OGouZHRzaSwgd2hpY2ggSSdsbCBkb3VibGUgY2hlY2sg
dG8gbWFrZSBzdXJlIEknbSBub3QKPj4gZ29pbmcgY3JhenksIDopIGFuZCBzdWJtaXQgYSBwYXRj
aCB0aGF0IGZpeGVzIHRob3NlIE9QUHMuCj4+IAo+PiBJZiB5b3UgY291bGQgY29uZmlybSB0aGUg
UkszNTg4TSA9PSBSSzM1ODhKIGFzc3VtcHRpb24gYWJvdmUsIEkgY2FuCj4+IGFkZCBzb21lIGFk
ZGl0aW9uYWwgY2xhcmlmaWNhdGlvbiB0byB0aGUgcmszNTg4ai5kdHNpIGZpbGUgaW4gdGhlCj4+
IGFib3ZlLW1lbnRpb25lZCBmaXhlcy4KPiAKPiBBcy1mYXItYXMtaS1rbm93IGJvdGggT1BQcyB3
ZXJlIGRpZmZlcmVudCBkdWUgdG8gY29tcHV0YXRpb24gZ3JhZGVzIEoKPiBmb3IgSW5kdXN0cmlh
bCBhbmQgTSBmb3IgQXV0b21vdGl2ZS4gV2hhdCBJIHNhdyBmcm9tIGRvd25zdHJlYW0KPiBsaW51
eC02LjEtc3Rhbi1ya3IxIHdhcyBhIHNpbXBsZSBkdHNpIGZvciBNIHZhcmlhbnQgYW5kIG1pZ2h0
IGhhdmUKPiBjaGFuZ2VzIHRvIGFkZCBPUFBzIHdoaWNoIEkgY2Fubm90IGJlIHN1cmUgYXQgdGhp
cyBwb2ludCBvZiB0aW1lLiBJCj4ga2VlcCB0aGF0IGR0c2kgYXMgc2VwYXJhdGUgZXZlbiB0aG91
Z2ggaXQgaXMgbm90aGluZyBhcyBpIHdhcwo+IGV4cGVjdGluZyBzb21lIGZ1dHVyZSBjaGFuZ2Vz
IG9uIE9QUHMgb3Igc28uCgpBZnRlciBjaGVja2luZyB0aGUgZG93bnN0cmVhbSBjb2RlIGFnYWlu
LCBbKl0gaXQgc2VlbXMgdG8gbWUgdGhhdAp0aGUgUkszNTg4SiBhbmQgUkszNTg4TSB2YXJpYW50
cyBzaGFyZSB0aGUgc2FtZSBPUFBzLiAgRnVydGhlcm1vcmUsCmlmIHRoZSBPUFBzIGZvciB0aGUg
UkszNTg4TSB2YXJpYW50IGNhbm5vdCBiZSBkZWZpbmVkIGFjY3VyYXRlbHkKYXQgdGhlIG1vbWVu
dCwgSSdkIHN1Z2dlc3QgdGhhdCB0aGUgcGxhY2Vob2xkZXIgLmR0c2kgaXMgYXZvaWRlZAphbmQg
dGhhdCBhIGNvbXBsZXRlIHBlci12YXJpYW50IC5kdHNpIGlzIGFkZGVkIGxhdGVyLCB3aGVuIHRo
ZSBPUFBzCmFyZSBhY3R1YWxseSBkZXRlcm1pbmVkIGFuZCBkZWZpbmVkLgoKUmVnYXJkaW5nIHRo
ZSBhc3N1bWVkIGlzc3VlcyB3aXRoIHRoZSBjdXJyZW50IE9QUHMgaW4gcmszNTg4ai5kdHNpLApp
dCdzIGFsbCBhYm91dCB0aGUgSVBBIGNvbXBsYWluaW5nIGFib3V0IHRoZSBzYW1lLXZvbHRhZ2Us
IGxvd2VyLQpmcmVxdWVuY3kgT1BQcyBiZWluZyBpbmVmZmljaWVudCwgd2hpY2ggSSBhbHJlYWR5
IGFyZ3VlZCBhZ2FpbnN0LgpJIHJlbWFpbiBjb21taXR0ZWQgdG8gcHJvdmluZyB0aGF0IHRvIGJl
IGluYWNjdXJhdGUsIGJ1dCB1bnRpbCB0aGF0Cm1hdGVyaWFsaXplcywgdGhlIGN1cnJlbnQgT1BQ
cyBhcmUgdGhlcmUgdG8gc3RheS4KClsqXSAKaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQu
Y29tL3JvY2tjaGlwLWxpbnV4L2tlcm5lbC82MDRjZWM0MDA0YWJlNWE5NmM3MzRmMmZhYjdiNzQ4
MDlkMmQ3NDJmL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy5kdHNpCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
