Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 418F7C6FD18
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Apr 2023 14:26:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9BQLM7jORYRqyz8rXDbhdbOlSXqWBTgFVwOEQKiUIFI=; b=Ypff2w52lXma5K
	5eHSFji3dSOWGT/8FBruVAiL8QVUyMz6KsUY3byo0+CQdpXt0Zb8+mMIZYseWFbu+JbCYKIMJJlDJ
	sM91hdOkgi+KZG/BStVbwVtONE7G7+eI1HwmvbcLHL+eh+ueWhvtziCqT3thz9XuR9uvHMsqcGIXU
	9289P0vVdXj3xWPKUclZJXJ0c/z4o8HV4AyrW4GBVaxgaqtR9EwW8kPZ3g0KGwWi2O/thmx3aaRrn
	EB28eD11QrSnMQgSMw8F5ydsRBXDDmYKsvwDE7zoV+Ozajmgr473wfozUdf/gi2zEdLbyafd6T74O
	n3Sp69OYvb2wJ5NKvhHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pomI3-002QpW-2S;
	Tue, 18 Apr 2023 14:26:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pomHz-002QnX-21;
	Tue, 18 Apr 2023 14:26:36 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pomHo-0003qq-MP; Tue, 18 Apr 2023 16:26:24 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Peter Geis <pgwipeout@gmail.com>,
 Javier Martinez Canillas <javierm@redhat.com>
Cc: linux-kernel@vger.kernel.org, Peter Robinson <pbrobinson@gmail.com>,
 Caleb Connolly <kc@postmarketos.org>, Jarrah Gosbell <kernel@undef.tools>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Martijn Braam <martijn@brixit.nl>, Ondrej Jirman <megi@xff.cz>,
 Rob Herring <robh+dt@kernel.org>, Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject:  Re: [PATCH] arm64: dts: rockchip: Change serial baud rate for Pinephone Pro
 to 1.5 MB
Date: Tue, 18 Apr 2023 16:26:23 +0200
Message-ID: <3797122.KgjxqYA5nG@diego>
In-Reply-To: <87h6tdie46.fsf@minerva.mail-host-address-is-not-set>
References:  <20230403175937.2842085-1-javierm@redhat.com> <3999080.iIbC2pHGDl@diego>
 <87h6tdie46.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_072635_662828_3A1F866A 
X-CRM114-Status: GOOD (  34.10  )
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

SGksCgpBbSBEaWVuc3RhZywgMTguIEFwcmlsIDIwMjMsIDE0OjExOjUzIENFU1Qgc2NocmllYiBK
YXZpZXIgTWFydGluZXogQ2FuaWxsYXM6Cj4gSGVpa28gU3TDvGJuZXIgPGhlaWtvQHNudGVjaC5k
ZT4gd3JpdGVzOgo+IAo+IEhlbGxvIEhlaWtvLAo+IAo+ID4gSGkgUGV0ZXIsCj4gPgo+ID4gQW0g
RGllbnN0YWcsIDQuIEFwcmlsIDIwMjMsIDE0OjUyOjAyIENFU1Qgc2NocmllYiBQZXRlciBHZWlz
Ogo+ID4+IE9uIFR1ZSwgQXByIDQsIDIwMjMgYXQgMzo1NeKAr0FNIEhlaWtvIFN0w7xibmVyIDxo
ZWlrb0BzbnRlY2guZGU+IHdyb3RlOgo+ID4+ID4KPiA+PiA+IEhpLAo+ID4+ID4KPiA+PiA+IEFt
IE1vbnRhZywgMy4gQXByaWwgMjAyMywgMTk6NTk6MzcgQ0VTVCBzY2hyaWViIEphdmllciBNYXJ0
aW5leiBDYW5pbGxhczoKPiA+PiA+ID4gVGhpcyBiYXVkIHJhdGUgaXMgc2V0IGZvciB0aGUgZGV2
aWNlIGJ5IG1haW5saW5lIHUtYm9vdCBhbmQgaXMgYWxzbyB3aGF0Cj4gPj4gPiA+IGlzIHNldCBp
biB0aGUgUGluZWJvb2sgUHJvIERldmljZSBUcmVlLCB3aGljaCBpcyBhIGRldmljZSBzaW1pbGFy
IHRvIHRoZQo+ID4+ID4gPiBQaW5lUGhvbmUgUHJvIGJ1dCB3aXRoIGEgZGlmZmVyZW50IGZvcm0g
ZmFjdG9yLgo+ID4+ID4gPgo+ID4+ID4gPiBPdGhlcndpc2UsIHRoZSBiYXVkIHJhdGUgb2YgdGhl
IGZpcm13YXJlIGFuZCBMaW51eCBkb24ndCBtYXRjaCBieSBkZWZhdWx0Cj4gPj4gPiA+IGFuZCBh
ICdjb25zb2xlPXR0eVMyLDE1MDAwMDBuOCcga2VybmVsIGNvbW1hbmQgbGluZSBwYXJhbWV0ZXIg
aXMgcmVxdWlyZWQKPiA+PiA+ID4gdG8gaGF2ZSBwcm9wZXIgb3V0cHV0IGZvciBib3RoLgo+ID4+
ID4KPiA+PiA+IFRoZSBpbnRlcmVzdGluZyBxdWVzdGlvbiBpcyBhbHdheXMgaWYgdGhpcyB3aWxs
IGJyZWFrIHNvbWVvbmUgZWxzZSdzIHNldHVwLgo+ID4+ID4gSSd2ZSBuZXZlciByZWFsbHkgdW5k
ZXJzdG9vZCB0aGUgc3RyYW5nZSBzZXR0aW5nIG9mIDEuNU1CcHMsIGJ1dCBvbiB0aGUKPiA+PiA+
IG90aGVyIGhhbmQgaXQgX2lzXyBhIHJlYWxpdHkgb24gbW9zdCBib2FyZHMuCj4gPgo+ID4+IFRo
ZSAxLjVNIGJhdWQgaXMgZGVmYXVsdCBiZWNhdXNlIHRoZSBjbG9jayBzdHJ1Y3R1cmUgb24gcm9j
a2NoaXAKPiA+PiBkZXZpY2VzIGRvZXMgbm90IGFsbG93IGEgY2xlYW4gMTE1MjAwIGJhdWQuIEJ5
IGF0dGVtcHRpbmcgdG8gZm9yY2UKPiA+PiAxMTUyMDAsIGl0IHdpbGwgYWx3YXlzIGJlIHNsaWdo
dGx5IG9mZiAoZWl0aGVyIGxvdyBvciBoaWdoIGRlcGVuZGluZwo+ID4+IG9uIGhvdyB0aGUgZHJp
dmVyIGRlY2lkZWQgdG8gcm91bmQpLiBJZiB0aGlzIGFjdHVhbGx5IGNhdXNlcyBhbnkKPiA+PiBw
cm9ibGVtcyBpcyB0aGUgc3ViamVjdCBvZiBtdWNoIGRlYmF0ZS4KPiA+Cj4gPiB0aGFua3Mgc28g
bXVjaCBmb3IgdGhpcyBwaWVjZSBvZiBjbG9jay1kZXRhaWwuIEFzIEkgd3JvdGUsIEkgbmV2ZXIg
cmVhbGx5Cj4gPiB1bmRlcnN0b29kIHRoZSB3aHkgX2JlZm9yZV8gYnV0IGFsc28gbmV2ZXIgY2Fy
ZWQgdGhhdCBtdWNoIHRvIGRpdmUKPiA+IGludG8gaXQgYW5kIGZpbmQgb3V0Lgo+ID4KPiA+IFNv
IHlvdXIgZXhwbGFuYXRpb24gY2xvc2VzIG9uZSBrbm93bGVkZ2UgZ2FwIGluIG15IGhlYWQuCj4g
Pgo+ID4gVGhhbmtzIGEgbG90IDotKQo+IAo+IERpZCB5b3UgbWFrZSBhIGRlY2lzaW9uIGFib3V0
IHRoaXM/IEkgZ3Vlc3MgdGhlIGNsb2NrIGV4cGxhbmF0aW9uIGlzIHlldAo+IGFub3RoZXIgYXJn
dW1lbnQgaW4gZmF2b3VyIG9mIHN3aXRjaGluZyB0aGUgUFBQIHRvIGEgMS41IE1icHMgYmF1ZCBy
YXRlID8KClNvcnJ5LCBidXQgbm8gZGVjaXNpb24gbWFkZSBoZXJlLiBFaXRoZXIgd2F5IGl0J3Mg
YnJlYWtpbmcgZm9yIHNvbWVvbmUsCndoaWNoIG1ha2VzIHRoaXMgcXVpdGUgaGFyZC4KClRoZSBy
YXRlIGFjY3VyYWN5IGlzIHRoZSBvbmUgc2lkZSwgdGhlIHR3by1ib290IGlzc3VlIGlzIHRoZSBv
dGhlciBzaWRlLgpBbmQgbWFpbmxpbmUgdS1ib290IChhbmQgbGV2aW5ib290IC0gd2hhdGV2ZXIg
dGhhdCBpcykgcHJvdmlkZXMgYSAzcmQgc2lkZS4KClBlb3BsZSBzdGFydGluZyB3aXRoIHRoZSBw
aG9uZSBwcm9iYWJseSB3b24ndCByZXBsYWNlIHRoZSBib290bG9hZGVyCmluIGEgZmlyc3Qgc3Rl
cCBidXQgaW5zdGVhZCBtaWdodCBwbGF5IHdpdGggYSBzeXN0ZW0gaW1hZ2Ugb3IgbmV3ZXIga2Vy
bmVsLgpTbyBpZiB0aGUgdWFydCB3aWxsIGJyZWFrIGZvciBldmVyeW9uZSB1c2luZyB0aGUgZGVm
YXVsdCBib290bG9hZGVyIGZyb20KdGhlIGZhY3RvcnkgdGhhdCBpcyBzb21ld2hhdCBiYWQuCgpJ
IGRvbid0IGhhdmUgYSBQaW5lcGhvbmUgUHJvIG15c2VsZiwgc28gSSByZWFsbHkgaG9wZWQgZm9y
IHNvbWUgQWNrcwpvciBzaW1pbGFyIHRvIGFwcGVhciBpbiB0aGUgbWVhbnRpbWUuCgpEbyB3ZSBo
YXZlIHNvbWVvbmUgd2l0aCBhbiBhY3R1YWwgUGluZTY0IGFmZmlsaWF0aW9uIGluIHRoaXMgbG9v
cD8KCgpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
