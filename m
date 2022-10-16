Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AEE7C4332F
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Oct 2022 09:57:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=J+3HN7X6iHoEs7xxcZ6LQ6oGsVs8dTHiVVZMNTQrF+s=; b=D+xsWDZ6XH96VvODC78qpMCluS
	oDgyEDuhtlsGxugshSYrStqVSL5yKePaU27tNK5QPY6ZczVprhagKc5Jf7hyTYJq9cDrBigsUQ0/X
	sSOJ/41hkfUt3Su4EQ809N4bHroFD8+ycnxoaWAEkCsmOOIjZnX5pDVJphKR3WblNDW2KbVefTfqN
	J9HFfGTaPOYo/wPQWonZzoMeLVtzPGOfHFN+iOTmMn1DLBnOzjA0NuiScex1M2nU2J7g7IxjGNjIo
	u+qo6fXAisis/CMZK1/xFZikM/Np7bZ5Cb7+B5DmZDsDC0YGK5+o3pfdJEZ1SkorTnJOUM6aYmfU9
	VkT1KDKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ok0OP-000xuf-BE; Sun, 16 Oct 2022 09:57:13 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ok0OD-000xsD-TD; Sun, 16 Oct 2022 09:57:03 +0000
Message-ID: <4702a242-da55-f0c7-eab6-5329b8e400ae@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1665914219;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Ef18EPzAic4GBpNWG/1BNCHp6UFgqRzkcSL4vP9cKiU=;
	b=sPMcFEiXkc/obhlKGy59vy4Wbh+4jY4i22huho7nkbIFSxKe7SDWVCv+48/EjSowPKJrvS
	k6jS1og4sEKnDMKph3UpMLeShvBqzOR5expc2BlVXC4rxx9hmQqayjAeZX5HyoweTxvZTY
	TxkHziv6hNaWMCmMdcf963sPaI7iUIcOkP3YjPEJtSUNU9yMkPPpIkyP7I4w6kAyrvKoNF
	7zlaRJkgYqECySKfwH+asqrDdqxDA9lfjeig+ssSMG/As0YN9pex7Z06szWpsnGutUBCo5
	xZL7kR+zZwZ1ARok168O9Zd7bPMLAtcets9pMg5VBPVV0xOVrh+JS9AnX+6IBg==
Date: Sun, 16 Oct 2022 11:56:59 +0200
MIME-Version: 1.0
Subject: Re: [PATCH v3 00/13] Add support for the Hardkernel ODROID-M1 board
Content-Language: da-DK
From: Dan Johansen <strit@manjaro.org>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>, Dongjin Kim <tobetter@gmail.com>
References: <20220930051246.391614-1-aurelien@aurel32.net>
 <8e84786d-8ae9-0f51-3438-24fb340199c6@manjaro.org>
 <Y0GA92rYss1Wslgr@aurel32.net> <Y0sAXpecR7AVSOBI@aurel32.net>
 <b50af49c-7ef7-4377-7505-ef6163a12e4e@manjaro.org>
Organization: Manjaro ARM
In-Reply-To: <b50af49c-7ef7-4377-7505-ef6163a12e4e@manjaro.org>
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=strit@manjaro.org smtp.mailfrom=strit@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221016_025702_279473_109B60AA 
X-CRM114-Status: GOOD (  23.98  )
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

CkRlbiAxNi4xMC4yMDIyIGtsLiAxMS4zNSBza3JldiBEYW4gSm9oYW5zZW46Cj4gVHJ5aW5nIHRv
IGFwcGx5IHRoZSBwYXRjaHNldCwgYnV0IHBhdGNoIDMgZG9lcyBub3Qgc2VlbSB0byBhcHBseSBv
biAKPiB0b3Agb2YgcGF0Y2ggMiBmb3IgbWUuCj4KPiBXZSBkbyBwYXRjaCBpbiBvdGhlciByazM1
NjggYm9hcmRzLCB3aGljaCBpcyBtZXNzaW5nIHVwIHRoZSBNYWtlZmlsZSAKPiBwYXRjaGluZywg
c28gSSBuZWVkZWQgdG8gcmVkbyBwYXRjaCAyIHRvIGZpdC4KPgo+IFNvIGl0IG1pZ2h0IGFuIGVy
cm9yIG9uIG15IHBhcnQuCgpZZXMuIFRoaXMgd2FzIGFuIGVycm9yIG9uIG15IHBhcnQuIE5vdCBh
cHBseWluZyB0aGUgb3RoZXIgcmszNTY4IGJvYXJkIApwYXRjaGVzIHdlIGhhdmUsIHRoaXMgZG9l
cyBhcHBseSBjbGVhbmx5LgoKU29ycnkgZm9yIHRoZSBub2lzZS9jb25mdXNpb24gb24gdGhhdC4g
V2lsbCByZXBseSBzaG9ydGx5IHdpdGggYW4gYW5zd2VyIAp0byB0aGUgb3JpZ2luYWwgcXVlc3Rp
b24uCgo+Cj4gRGVuIDE1LjEwLjIwMjIga2wuIDIwLjQ3IHNrcmV2IEF1cmVsaWVuIEphcm5vOgo+
PiBPbiAyMDIyLTEwLTA4IDE1OjUzLCBBdXJlbGllbiBKYXJubyB3cm90ZToKPj4+IE9uIDIwMjIt
MTAtMDggMTQ6MTEsIERhbiBKb2hhbnNlbiB3cm90ZToKPj4+PiBEZW4gMzAuMDkuMjAyMiBrbC4g
MDcuMTIgc2tyZXYgQXVyZWxpZW4gSmFybm86Cj4+Pj4+IE9uIHRoZSBPRFJPSUQgZm9ydW0sIERv
bmdqaW4gS2ltIHNhaWQgaGUgaXMgbm90IHBsYW5uaW5nIHRvIHN1Ym1pdCAKPj4+Pj4gYSBuZXcK
Pj4+Pj4gdmVyc2lvbiBvZiB0aGUgcGF0Y2hzZXQgYWRkaW5nIHN1cHBvcnQgZm9yIHRoZSBIYXJk
a2VybmVsIE9EUk9JRC1NMQo+Pj4+PiBib2FyZC4gSSB0aGVyZWZvcmUgZGVjaWRlZCB0byBhZGRy
ZXNzIHRoZSBpc3N1ZXMgcmVwb3J0ZWQgZHVyaW5nIHRoZQo+Pj4+PiBpbml0aWFsIHJldmlldywg
YW5kIEkgYWxzbyBkaWQgc29tZSBzbWFsbCBmaXhlcyBlaXRoZXIgYmVjYXVzZSBzb21lCj4+Pj4+
IHRoaW5ncyBjaGFuZ2VkIGluIHRoZSBtZWFudGltZSBvbiB0aGUga2VybmVsIHNpZGUgb3IgYmVj
YXVzZSBJIAo+Pj4+PiBub3RpY2VkCj4+Pj4+IHNvbWUgd2FybmluZyBvciBpc3N1ZXMgd2hlbiB1
c2luZyB0aGUgaGFyZHdhcmUuCj4+Pj4+Cj4+Pj4+IEkgY29udGludWVkIHdyaXRpbmcgc29tZSBh
ZGRpdGlvbmFsIHBhdGNoZXMgdG8gY29tcGxldGUgdGhlIE9EUk9JRCBNMQo+Pj4+PiBEVFMgdG8g
YWxtb3N0IGZ1bGx5IHN1cHBvcnQgdGhlIGhhcmR3YXJlLCB0aGUgZHJpdmVycyBiZWluZyBhbHJl
YWR5Cj4+Pj4+IHByZXNlbnQgaW4gdGhlIGtlcm5lbC4KPj4+Pj4KPj4+Pj4gVGhpcyBuZXcgdmVy
c2lvbiBpbmNsdWRlcyBmZWVkYmFjayBmcm9tIHRoZSBsaW51eC1yb2NrY2hpcCBtYWlsaW5nIAo+
Pj4+PiBsaXN0Cj4+Pj4+IGFuZCBmcm9tIHRoZSBPZHJvaWQgZm9ydW0uCj4+Pj4+Cj4+Pj4+IENo
YW5nZXMgc2luY2UgdjI6Cj4+Pj4+ICogUmVuYW1lZCAiUm9ja2NoaXAgUkszNTY4IEhhcmRrZXJu
ZWwgT0RST0lELU0xIiBpbnRvICJIYXJka2VybmVsIAo+Pj4+PiBPZHJvaWQKPj4+Pj4gwqDCoMKg
IE0xIiBhbmQgZml4IHRoZSBzb3J0aW5nLgo+Pj4+PiAqIEZpeCBzb3J0aW5nIG9mIGFyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUKPj4+Pj4gKiBDb2xsZWN0ZWQgQWNrZWQtYnkg
YW5kIFRlc3RlZC1ieQo+Pj4+IEV2ZW4gdGhvdWdoIEkgYWRkZWQgbXkgVGVzdGVkLWJ5IHRvIHRo
aXMgc2VyaWVzLCBpdCBzZWVtcyBJIGRpZG4ndCAKPj4+PiB0ZXN0IGl0Cj4+Pj4gb24gZU1NQy4K
Pj4+Pgo+Pj4+IFRoaXMgZmFpbHMgdG8gYm9vdCBmb3IgbWUgb24gZU1NQywgYnV0IHdvcmtzIG9u
IFNEIGNhcmQgYW5kIE5WTWUuCj4+PiBUaGFua3MgZm9yIHRoZSBmZWVkYmFjay4gSSBkbyBub3Qg
aGF2ZSBhbiBlTU1DLCBzbyB0aGlzIHRoZSBvbmx5IHBhcnQKPj4+IGZyb20gdGhlIHBhdGNoc2V0
IHRoYXQgSSBoYXZlbid0IGJlZW4gYWJsZSB0byB0ZXN0Lgo+Pj4KPj4+IEZpcnN0IG9mIGFsbCwg
d2hpY2ggdmVyc2lvbiBoYXZlIHlvdSB0ZXN0ZWQ/IFRoZSB2MiBpbmNsdWRlcyBmaXhlcyBmb3IK
Pj4+IHRoZSBlTU1DLCB0aGVyZSB3YXMgYSBjb25mbGljdCB3aXRoIHRoZSBOT1IgZmxhc2guIElm
IHRoZSBwcm9ibGVtIGlzCj4+PiBzdGlsbCB0aGVyZSBpbiB0aGUgdjIsIGNvdWxkIHlvdSBwbGVh
c2Ugc2VuZCB0aGUgYm9vdCBsb2cgb3IgdGhlIGVycm9yCj4+PiBtZXNzYWdlPwo+PiBTb3JyeSBJ
IG1lYW50IHYzIGFib3ZlLiBBbnl3YXkgaW4gdGhlIG1lYW50aW1lIEkgaGF2ZSBib3VnaHQgYW4g
ZU1NQywKPj4gYW5kIEkgY29uZmlybSB0aGF0Ogo+PiAtIGl0IGRvZXMgbm8gd29yayB3aXRoIHRo
ZSB2MiBkdWUgdG8gYSBjb25mbGljdCB3aXRoIHRoZSBOT1IgZmxhc2gKPj4gwqDCoCBkcml2ZXIK
Pj4gLSBpdCBkb2VzIHdvcmsgd2l0aCB0aGUgdjMKPj4KPj4gVGhlcmVmb3JlIGNhbiB5b3UgcGxl
YXNlIHJldHJ5IHdpdGggdGhlIHYzPwo+Pgo+PiBUaGFua3MKPj4gQXVyZWxpZW4KPj4KLS0gCktp
bmQgcmVnYXJkcwoqRGFuIEpvaGFuc2VuKgpQcm9qZWN0IGxlYWQgb2YgdGhlICpNYW5qYXJvIEFS
TSogcHJvamVjdApNYW5qYXJvLUFSTSA8aHR0cHM6Ly9tYW5qYXJvLm9yZz4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
