Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1A06C77B75
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 May 2023 14:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sn6XUMRJHRgG6TFgFwkvhWj2XhqDt+sRvlWk8xHUzNA=; b=ncZHAOecwG++iO
	HDg04eUvt1/SzqB5pm9ylN2fSw+OI7iQlARCrLwqnxelhaTCNczKMQ/NSfP3+5nnfD5S7yfurUZP+
	U9hQrqsWJU/b6yrq7NOYgMu2wP/GBpZk3gU3mauU5H6Cvi2APlIhjuZ92IRcDQjMNFTxq3qxkywsf
	UBLzaCZV8bVbD12JSw1cZk90RWpkZiG0944CT9KAMMbF2jhs5AnqqwIVf18wlGIRhQ6z+EadlEnzI
	vq6zXW3cWCUnd9j/BBL0gJF51iU5wYH9403efgN9Xua9tCCLjQht/QVnlqnd9SF1C4XoPikvd4pWo
	8tFECkpTCtfZLFr3+nQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1TPX-00AYR6-0E;
	Tue, 23 May 2023 14:54:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1TPT-00AYOr-0i
	for linux-rockchip@lists.infradead.org;
	Tue, 23 May 2023 14:54:48 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mtr@pengutronix.de>)
	id 1q1TPE-0008TL-9A; Tue, 23 May 2023 16:54:32 +0200
Received: from mtr by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mtr@pengutronix.de>)
	id 1q1TPC-0000ix-7X; Tue, 23 May 2023 16:54:30 +0200
Date: Tue, 23 May 2023 16:54:30 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: Linux regressions mailing list <regressions@lists.linux.dev>
Cc: Diederik de Haas <didi.debian@cknow.org>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	p.zabel@pengutronix.de, mchehab@kernel.org,
	m.szyprowski@samsung.com, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel@collabora.com, hverkuil-cisco@xs4all.nl,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: Re: [PATCH v2] media: verisilicon: Fix crash when probing encoder
Message-ID: <20230523145430.GB9943@pengutronix.de>
Mail-Followup-To: Michael Tretter <m.tretter@pengutronix.de>,
	Linux regressions mailing list <regressions@lists.linux.dev>,
	Diederik de Haas <didi.debian@cknow.org>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	p.zabel@pengutronix.de, mchehab@kernel.org,
	m.szyprowski@samsung.com, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel@collabora.com, hverkuil-cisco@xs4all.nl,
	Pengutronix Kernel Team <kernel@pengutronix.de>
References: <20230413104756.356695-1-benjamin.gaignard@collabora.com>
 <4995215.LvFx2qVVIh@bagend>
 <7c1bf9c4-f14b-30cd-2610-871f5f512d06@collabora.com>
 <12724349.O9o76ZdvQC@bagend>
 <5d871928-dcd5-3f27-e975-d1639525dad0@leemhuis.info>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5d871928-dcd5-3f27-e975-d1639525dad0@leemhuis.info>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mtr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_075447_256117_F1576E7C 
X-CRM114-Status: GOOD (  27.07  )
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

T24gVHVlLCAyMyBNYXkgMjAyMyAxMjo1MDo0MiArMDIwMCwgTGludXggcmVncmVzc2lvbiB0cmFj
a2luZyAoVGhvcnN0ZW4gTGVlbWh1aXMpIHdyb3RlOgo+IENDaW5nIHRoZSBSZWdyZXNzaW9uIGxp
c3QgYW5kIGEgYnVuY2ggb2Ygb3RoZXIgcGVvcGxlIHRoYXQgd2VyZSBDQ2VkIGluCj4gdGhyZWFk
cyB0aGF0IGxvb2sgcmVsYXRlZDoKClRoYW5rcyEKCj4gCj4gT24gMjMuMDUuMjMgMDA6MzgsIERp
ZWRlcmlrIGRlIEhhYXMgd3JvdGU6Cj4gPiBPbiBNb25kYXksIDIyIE1heSAyMDIzIDE4OjE3OjM5
IENFU1QgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4gPj4gTGUgMjAvMDUvMjAyMyDDoCAwMDoz
NCwgRGllZGVyaWsgZGUgSGFhcyBhIMOpY3JpdCA6Cj4gPj4+IE9uIFRodXJzZGF5LCAxMyBBcHJp
bCAyMDIzIDIxOjUyOjUwIENFU1QgTmljb2xhcyBEdWZyZXNuZSB3cm90ZToKPiA+IFsuLi5dCj4g
Pj4+IFdoZW4gSSBib290ZWQgaW50byBteSA2LjQtcmMxIChidXQgYWxzbyByYzIpIGtlcm5lbCBv
biBteQo+ID4+PiBQaW5lNjQgUXVhcnR6NjQgTW9kZWwgQSwgSSBub3RpY2VkIGEgY3Jhc2ggd2hp
Y2ggc2VlbXMgdGhlIHNhbWUgYXMKPiA+Pj4gYWJvdmUsIGJ1dCBJIGRpZG4ndCBoYXZlIHN1Y2gg
YSBjcmFzaCB3aXRoIG15IDYuMyBrZXJuZWwuCj4gPj4+IFNlYXJjaGluZyBmb3IgJ2hhbnRybycg
bGVkIG1lIHRvIHRoaXMgY29tbWl0IGFzIHRoZSBtb3N0IGxpa2VseSBjdWxwcml0Cj4gPj4+IGJ1
dCB3aGVuIEkgYnVpbGQgYSBuZXcgNi40LXJjWCBrZXJuZWwgd2l0aCB0aGlzIGNvbW1pdCByZXZl
cnRlZCwKPiA+Pj4gSSBzdGlsbCBoYWQgdGhpcyBjcmFzaC4KPiA+Pj4gRG8geW91IGhhdmUgc3Vn
Z2VzdGlvbnMgd2hpY2ggY29tbWl0IHdvdWxkIHRoZW4gYmUgdGhlIGxpa2VseSBjdWxwcml0Pwo+
ID4+Cj4gPj4gVGhpcyBwYXRjaCBmaXggdGhlIGNyYXNoIGF0IGJvb3QgdGltZSwgcmV2ZXJ0IGl0
IGRvZXNuJ3Qgc2VlbSB0byBiZSB0aGUKPiA+PiBzb2x1dGlvbi4gTWF5YmUgdGhpcyBwcm9wb3Nh
bCBmcm9tIE1hcmVrIGNhbiBoZWxwIHlvdSA/Cj4gPj4KPiA+PiBodHRwczovL3BhdGNod29yay5r
ZXJuZWwub3JnL3Byb2plY3QvbGludXgtbWVkaWEvcGF0Y2gvMjAyMzA0MjExMDQ3NTkuMjIzNjQ2
My0xLW0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbS8KPiA+IAo+ID4gVGhhdCBoZWxwZWQgOikgQWZ0
ZXIgYXBwbHlpbmcgdGhhdCBwYXRjaCBJIG5vIGxvbmdlciBoYXZlIHRoZSBjcmFzaC4KPiA+IFRo
YW5rcyEKPiAKPiBUaGF0IHJlZ3Jlc3Npb24gZml4IGlzIG5vdyBhIG1vbnRoIG9sZCwgYnV0IG5v
dCB5ZXQgbWVyZ2VkIGFmYWljcyAtLQo+IGd1ZXNzIGR1ZSB0byBOaWNvbGFzIGNvbW1lbnQgdGhh
dCB3YXNuJ3QgYWRkcmVzc2VkIHlldCBhbmQgbGlrZWx5Cj4gcmVxdWlyZXMgYSB1cGRhdGVkIHBh
dGNoLgoKSSBhZ3JlZSB3aXRoIE5pY29sYXMgY29tbWVudCBvbiB0aGF0IHBhdGNoIGFuZCBpdCBu
ZWVkcyB0byBiZSB1cGRhdGVkLgoKPiAKPiBNaWNoYWVsIGFmYWljcyBhIHdlZWsgYWdvIHBvc3Rl
ZCBhIHBhdGNoIHRoYXQgdG8gbXkgKnZlcnkgbGltaXRlZAo+IHVuZGVyc3RhbmRpbmcgb2YgdGhp
bmdzKiAoSSBob3BlIEkgZG9uJ3QgY29uZnVzZSBtYXR0ZXJzIGhlcmUhKSBzZWVtcyB0bwo+IGFk
ZHJlc3MgdGhlIHNhbWUgcHJvYmxlbSwgYnV0IHNsaWdodGx5IGRpZmZlcmVudGx5Ogo+IGh0dHBz
Oi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDIzMDUxNjA5MTIwOS4zMDk4MjYyLTEtbS50cmV0dGVy
QHBlbmd1dHJvbml4LmRlLwoKQ29ycmVjdCwgbXkgcGF0Y2ggYWRkcmVzc2VzIHRoZSBzYW1lIHBy
b2JsZW0uCgo+IAo+IE5vIHJlcGx5IHlldC4KPiAKPiBUaGF0J3MgYWxsIGEgYml0IHVuZm9ydHVu
YXRlLCBhcyBpdCdzIG5vdCBob3cgcmVncmVzc2lvbiBmaXhlcyBzaG91bGQgYmUKPiBkZWFsdCB3
aXRoIC0tIGFuZCBjYXVzZWQgbXVsdGlwbGUgcGVvcGxlIGhlYWRhY2hlcyB0aGF0IGNvdWxkIGhh
dmUgYmVlbgo+IGF2b2lkZWQuIDotLwo+IAo+IEJ1dCB3ZWxsLCB0aGluZ3MgaGFwcGVuLiBCdXQg
aXQgbGVhZHMgdG8gdGhlIHF1ZXN0aW9uOgo+IAo+IEhvdyBjYW4gd2UgZmluYWxseSBhZGRyZXNz
IHRoZSBpc3N1ZSBxdWlja2x5IG5vdyB0byBlbnN1cmUgaXMgZG9lc24ndAo+IGNhdXNlIGhlYWRh
Y2hlcyBmb3IgZXZlbiBtb3JlIHBlb3BsZT8KPiAKPiBNYXJlaywgTWljaGFlbCwgY291bGQgeW91
IHdvcmsgb24gYSBwYXRjaCB0b2dldGhlciB0aGF0IHdlIHRoZW4gZ2V0Cj4gc29tZXdoYXQgZmFz
dC10cmFja2VkIHRvIExpbnVzIHRvIGF2b2lkIGhpbSBnZXR0aW5nIGV2ZW4gbW9yZSB1bmhhcHB5
Cj4gYWJvdXQgdGhlIHN0YXRlIG9mIHRoaW5nc1sxXT8KCk1hcmVrLCBpZiB5b3UgaGF2ZSBhbiB1
cGRhdGVkIHBhdGNoLCBJIHdpbGwgaGFwcGlseSB0ZXN0IGFuZCByZXZpZXcgaXQuCk90aGVyd2lz
ZSwgcGxlYXNlIHRha2UgYSBsb29rIGF0IG15IHBhdGNoLgoKTWljaGFlbAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
