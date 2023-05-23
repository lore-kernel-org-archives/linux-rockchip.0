Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00FB7C7EE23
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 May 2023 10:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:
	Cc:To:Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+TWU8WWYZgbqwig6NRkby1Dx7wvniF6+zXlJc5cuGiw=; b=Qwhe5t9mss352i
	iOgQrAufxyAvynwt067+xbCXAbaagcX6UwxC8q59yj1TJtnQtU3nIslcmaEOt3RLTU1/KFDTmP8Te
	tV/fNNvJLUYyPvTanx0xMXfuxbUbJUFraoZ6sm+YIQa2s04VAxkNE0agQ+iDgN5bifWAlw+gZ1yY4
	LCY4um5fFpdMqu2xuDcjToCPkpYn353y0hXyGDbQj0aqhSyrpiUQCRZwyACnshICSjfrxkheImWIe
	783q0xXboMbtuvrlFYDjNayUzWpoIFxbqpgeyqFt2hnulU3OistYXX943Cz2ZWPbvPJY3PhHlR1SB
	BHjxVz4z2WlBC1nos+Tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1PbR-009yym-2Q;
	Tue, 23 May 2023 10:50:53 +0000
Received: from wp530.webpack.hosteurope.de ([80.237.130.52])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1PbP-009yxj-0I
	for linux-rockchip@lists.infradead.org;
	Tue, 23 May 2023 10:50:52 +0000
Received: from [2a02:8108:8980:2478:8cde:aa2c:f324:937e]; authenticated
	by wp530.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
	id 1q1PbI-0006Kn-VK; Tue, 23 May 2023 12:50:45 +0200
Message-ID: <5d871928-dcd5-3f27-e975-d1639525dad0@leemhuis.info>
Date: Tue, 23 May 2023 12:50:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v2] media: verisilicon: Fix crash when probing encoder
Content-Language: en-US, de-DE
To: Diederik de Haas <didi.debian@cknow.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Tretter <m.tretter@pengutronix.de>
Cc: p.zabel@pengutronix.de, mchehab@kernel.org, m.szyprowski@samsung.com,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Linux kernel regressions list <regressions@lists.linux.dev>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, hverkuil-cisco@xs4all.nl,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Philipp Zabel <p.zabel@pengutronix.de>
References: <20230413104756.356695-1-benjamin.gaignard@collabora.com>
 <4995215.LvFx2qVVIh@bagend>
 <7c1bf9c4-f14b-30cd-2610-871f5f512d06@collabora.com>
 <12724349.O9o76ZdvQC@bagend>
From: "Linux regression tracking (Thorsten Leemhuis)"
 <regressions@leemhuis.info>
In-Reply-To: <12724349.O9o76ZdvQC@bagend>
X-bounce-key: webpack.hosteurope.de;regressions@leemhuis.info;1684839051;406e068f;
X-HE-SMSGID: 1q1PbI-0006Kn-VK
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_035051_270029_5C2D9E3D 
X-CRM114-Status: GOOD (  12.72  )
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
Reply-To: Linux regressions mailing list <regressions@lists.linux.dev>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Q0NpbmcgdGhlIFJlZ3Jlc3Npb24gbGlzdCBhbmQgYSBidW5jaCBvZiBvdGhlciBwZW9wbGUgdGhh
dCB3ZXJlIENDZWQgaW4KdGhyZWFkcyB0aGF0IGxvb2sgcmVsYXRlZDoKCk9uIDIzLjA1LjIzIDAw
OjM4LCBEaWVkZXJpayBkZSBIYWFzIHdyb3RlOgo+IE9uIE1vbmRheSwgMjIgTWF5IDIwMjMgMTg6
MTc6MzkgQ0VTVCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90ZToKPj4gTGUgMjAvMDUvMjAyMyDDoCAw
MDozNCwgRGllZGVyaWsgZGUgSGFhcyBhIMOpY3JpdCA6Cj4+PiBPbiBUaHVyc2RheSwgMTMgQXBy
aWwgMjAyMyAyMTo1Mjo1MCBDRVNUIE5pY29sYXMgRHVmcmVzbmUgd3JvdGU6Cj4gWy4uLl0KPj4+
IFdoZW4gSSBib290ZWQgaW50byBteSA2LjQtcmMxIChidXQgYWxzbyByYzIpIGtlcm5lbCBvbiBt
eQo+Pj4gUGluZTY0IFF1YXJ0ejY0IE1vZGVsIEEsIEkgbm90aWNlZCBhIGNyYXNoIHdoaWNoIHNl
ZW1zIHRoZSBzYW1lIGFzCj4+PiBhYm92ZSwgYnV0IEkgZGlkbid0IGhhdmUgc3VjaCBhIGNyYXNo
IHdpdGggbXkgNi4zIGtlcm5lbC4KPj4+IFNlYXJjaGluZyBmb3IgJ2hhbnRybycgbGVkIG1lIHRv
IHRoaXMgY29tbWl0IGFzIHRoZSBtb3N0IGxpa2VseSBjdWxwcml0Cj4+PiBidXQgd2hlbiBJIGJ1
aWxkIGEgbmV3IDYuNC1yY1gga2VybmVsIHdpdGggdGhpcyBjb21taXQgcmV2ZXJ0ZWQsCj4+PiBJ
IHN0aWxsIGhhZCB0aGlzIGNyYXNoLgo+Pj4gRG8geW91IGhhdmUgc3VnZ2VzdGlvbnMgd2hpY2gg
Y29tbWl0IHdvdWxkIHRoZW4gYmUgdGhlIGxpa2VseSBjdWxwcml0Pwo+Pgo+PiBUaGlzIHBhdGNo
IGZpeCB0aGUgY3Jhc2ggYXQgYm9vdCB0aW1lLCByZXZlcnQgaXQgZG9lc24ndCBzZWVtIHRvIGJl
IHRoZQo+PiBzb2x1dGlvbi4gTWF5YmUgdGhpcyBwcm9wb3NhbCBmcm9tIE1hcmVrIGNhbiBoZWxw
IHlvdSA/Cj4+Cj4+IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC1t
ZWRpYS9wYXRjaC8yMDIzMDQyMTEwNDc1OS4yMjM2NDYzLTEtbS5zenlwcm93c2tpQHNhbXN1bmcu
Y29tLwo+IAo+IFRoYXQgaGVscGVkIDopIEFmdGVyIGFwcGx5aW5nIHRoYXQgcGF0Y2ggSSBubyBs
b25nZXIgaGF2ZSB0aGUgY3Jhc2guCj4gVGhhbmtzIQoKVGhhdCByZWdyZXNzaW9uIGZpeCBpcyBu
b3cgYSBtb250aCBvbGQsIGJ1dCBub3QgeWV0IG1lcmdlZCBhZmFpY3MgLS0KZ3Vlc3MgZHVlIHRv
IE5pY29sYXMgY29tbWVudCB0aGF0IHdhc24ndCBhZGRyZXNzZWQgeWV0IGFuZCBsaWtlbHkKcmVx
dWlyZXMgYSB1cGRhdGVkIHBhdGNoLgoKTWljaGFlbCBhZmFpY3MgYSB3ZWVrIGFnbyBwb3N0ZWQg
YSBwYXRjaCB0aGF0IHRvIG15ICp2ZXJ5IGxpbWl0ZWQKdW5kZXJzdGFuZGluZyBvZiB0aGluZ3Mq
IChJIGhvcGUgSSBkb24ndCBjb25mdXNlIG1hdHRlcnMgaGVyZSEpIHNlZW1zIHRvCmFkZHJlc3Mg
dGhlIHNhbWUgcHJvYmxlbSwgYnV0IHNsaWdodGx5IGRpZmZlcmVudGx5OgpodHRwczovL2xvcmUu
a2VybmVsLm9yZy9hbGwvMjAyMzA1MTYwOTEyMDkuMzA5ODI2Mi0xLW0udHJldHRlckBwZW5ndXRy
b25peC5kZS8KCk5vIHJlcGx5IHlldC4KClRoYXQncyBhbGwgYSBiaXQgdW5mb3J0dW5hdGUsIGFz
IGl0J3Mgbm90IGhvdyByZWdyZXNzaW9uIGZpeGVzIHNob3VsZCBiZQpkZWFsdCB3aXRoIC0tIGFu
ZCBjYXVzZWQgbXVsdGlwbGUgcGVvcGxlIGhlYWRhY2hlcyB0aGF0IGNvdWxkIGhhdmUgYmVlbgph
dm9pZGVkLiA6LS8KCkJ1dCB3ZWxsLCB0aGluZ3MgaGFwcGVuLiBCdXQgaXQgbGVhZHMgdG8gdGhl
IHF1ZXN0aW9uOgoKSG93IGNhbiB3ZSBmaW5hbGx5IGFkZHJlc3MgdGhlIGlzc3VlIHF1aWNrbHkg
bm93IHRvIGVuc3VyZSBpcyBkb2Vzbid0CmNhdXNlIGhlYWRhY2hlcyBmb3IgZXZlbiBtb3JlIHBl
b3BsZT8KCk1hcmVrLCBNaWNoYWVsLCBjb3VsZCB5b3Ugd29yayBvbiBhIHBhdGNoIHRvZ2V0aGVy
IHRoYXQgd2UgdGhlbiBnZXQKc29tZXdoYXQgZmFzdC10cmFja2VkIHRvIExpbnVzIHRvIGF2b2lk
IGhpbSBnZXR0aW5nIGV2ZW4gbW9yZSB1bmhhcHB5CmFib3V0IHRoZSBzdGF0ZSBvZiB0aGluZ3Nb
MV0/CgpDaWFvLCBUaG9yc3RlbgoKWzFdIHNlZQpodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwv
Q0FIay09d2d6VThfZEduMFlnK0R5WDdhbW1Ua0RVQ3lFSjRDPU52bkhSaHhLV0M3V3B3QG1haWwu
Z21haWwuY29tLwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
