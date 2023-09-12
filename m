Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 674ECCA0ECA
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Sep 2023 08:41:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SRkg9Xb8AgoX1R9/e7CyfbNyCuVZOZ5EivHavmjBQ5M=; b=qTKTekke7OzIMC
	Ahwnfxat7y7SmbUzt7cmKPrgSoI1O7K5YUaa2lxPOtL/zPBQz6nT8ONmaMz+obTbjYQvUudfJMSfb
	aEMmit2g2zzC9WG7wUmMLtpFGkhMin53yD532r89MP7i7UX1LE6biXGtzDDqLGRU2P96TSCijwskh
	C+5C8KrFpz6MARLyruL59wsXZ2qIPSCKvix2KVi+lCOWOwk8ndZ4ZSovEcPWlsF2d3FTwaZ/mF0Su
	VJrUHmt81cm+K9nes1rZbOCUT3NQ4zNCOpYHCRflXkjx2izSs/wxak6j9h/zdDqT/Mx8RT8pm/NJ4
	8NH27WIYHOofHY1wHe4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfyxU-002btL-2E;
	Tue, 12 Sep 2023 08:41:20 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfyxQ-002bqH-2d;
	Tue, 12 Sep 2023 08:41:18 +0000
Received: from [IPV6:2a01:e0a:120:3210:97bb:c25c:2a33:8c3f] (unknown [IPv6:2a01:e0a:120:3210:97bb:c25c:2a33:8c3f])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id F33E7660731E;
	Tue, 12 Sep 2023 09:41:12 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1694508073;
	bh=w/TdXTx3LDuhrwUkGlnc8ARDv3ZcTpp3jTCQlJdW2v8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=AC9A0+iipuJDLFRye3agEFkEcsg6C2UVU2DfCR2L1ra1iXcm32H/m39HLqPjy/xft
	 fll+pDqmkVfqffuDwA5YdxATA9PHvnw1fI884Lifj+XZk1AYGDXHp/xa8bIgrNSpxZ
	 g1c+YrqE0GHxg4s7hpAADPl5/p/DgTxQ6SlY+axS9becasvU8ZiozOUgn2eH4JLSQg
	 +Z19rAlw2Dk/4fPSSv+TLEacVygXl1Z11ADpxYIlANtZV2JZcOgy10SMWPsplVyt8S
	 1GUm6ob77QADfyTrLgXphDbYV9UyGCkH+oIV6KZQcFAzgQwBgIXoXgpkm+l5hGll8q
	 EIndAywMtvAhA==
Message-ID: <40329795-a57d-d0f3-adb4-0720dd20f6e2@collabora.com>
Date: Tue, 12 Sep 2023 10:41:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v6 14/18] media: verisilicon: vp9: Use destination buffer
 height to compute chroma offset
To: =?UTF-8?Q?Jernej_=c5=a0krabec?= <jernej.skrabec@gmail.com>,
 mchehab@kernel.org, tfiga@chromium.org, m.szyprowski@samsung.com,
 ming.qian@nxp.com, ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl,
 nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com
References: <20230901124414.48497-1-benjamin.gaignard@collabora.com>
 <4856958.31r3eYUQgx@jernej-laptop>
 <7da0a2ab-032a-9de9-e136-58f973238c5b@collabora.com>
 <3248154.aeNJFYEL58@jernej-laptop>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <3248154.aeNJFYEL58@jernej-laptop>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230912_014116_982249_96254460 
X-CRM114-Status: GOOD (  17.01  )
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

CkxlIDExLzA5LzIwMjMgw6AgMTg6MzYsIEplcm5laiDFoGtyYWJlYyBhIMOpY3JpdMKgOgo+IERu
ZSBwb25lZGVsamVrLCAxMS4gc2VwdGVtYmVyIDIwMjMgb2IgMTA6NTU6MDIgQ0VTVCBqZSBCZW5q
YW1pbiBHYWlnbmFyZAo+IG5hcGlzYWwoYSk6Cj4+IExlIDEwLzA5LzIwMjMgw6AgMTU6MjEsIEpl
cm5laiDFoGtyYWJlYyBhIMOpY3JpdCA6Cj4+PiBIaSBCZW5qYW1pbiEKPj4+Cj4+PiBEbmUgcGV0
ZWssIDAxLiBzZXB0ZW1iZXIgMjAyMyBvYiAxNDo0NDoxMCBDRVNUIGplIEJlbmphbWluIEdhaWdu
YXJkCj4+Pgo+Pj4gbmFwaXNhbChhKToKPj4+PiBTb3VyY2UgYW5kIGRlc3RpbmF0aW9uIGJ1ZmZl
ciBoZWlnaHQgbWF5IG5vdCBiZSB0aGUgc2FtZSBiZWNhdXNlCj4+Pj4gYWxpZ25tZW50IGNvbnN0
cmFpbnQgYXJlIGRpZmZlcmVudC4KPj4+PiBVc2UgZGVzdGluYXRpb24gaGVpZ2h0IHRvIGNvbXB1
dGUgY2hyb21hIG9mZnNldCBiZWNhdXNlIHdlIHRhcmdldAo+Pj4+IHRoaXMgYnVmZmVyIGFzIGhh
cmR3YXJlIG91dHB1dC4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWluIEdhaWduYXJk
IDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+Pj4+IEZpeGVzOiBlMmRhNDY1NDU1
Y2UgKCJtZWRpYTogaGFudHJvOiBTdXBwb3J0IFZQOSBvbiB0aGUgRzIgY29yZSIpCj4+Pj4gLS0t
Cj4+Pj4KPj4+PiAgICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19n
Ml92cDlfZGVjLmMgfCA0ICstLS0KPj4+PiAgICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KyksIDMgZGVsZXRpb25zKC0pCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9w
bGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZzJfdnA5X2RlYy5jCj4+Pj4gYi9kcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19nMl92cDlfZGVjLmMgaW5kZXgKPj4+PiA2
ZGIxYzMyZmNlNGQuLjFmM2Y1ZTdjZTk3OCAxMDA2NDQKPj4+PiAtLS0gYS9kcml2ZXJzL21lZGlh
L3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19nMl92cDlfZGVjLmMKPj4+PiArKysgYi9kcml2
ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19nMl92cDlfZGVjLmMKPj4+PiBA
QCAtOTMsOSArOTMsNyBAQCBzdGF0aWMgaW50IHN0YXJ0X3ByZXBhcmVfcnVuKHN0cnVjdCBoYW50
cm9fY3R4ICpjdHgsCj4+Pj4gY29uc3Qgc3RydWN0IHY0bDJfY3RybF92cDlfIHN0YXRpYyBzaXpl
X3QgY2hyb21hX29mZnNldChjb25zdCBzdHJ1Y3QKPj4+PiBoYW50cm9fY3R4ICpjdHgsCj4+Pj4K
Pj4+PiAgICAJCQkgICAgY29uc3Qgc3RydWN0IHY0bDJfY3RybF92cDlfZnJhbWUKPj4+ICpkZWNf
cGFyYW1zKQo+Pj4KPj4+PiAgICB7Cj4+Pj4KPj4+PiAtCWludCBieXRlc19wZXJfcGl4ZWwgPSBk
ZWNfcGFyYW1zLT5iaXRfZGVwdGggPT0gOCA/IDEgOiAyOwo+Pj4+IC0KPj4+PiAtCXJldHVybiBj
dHgtPnNyY19mbXQud2lkdGggKiBjdHgtPnNyY19mbXQuaGVpZ2h0ICogYnl0ZXNfcGVyX3BpeGVs
Owo+Pj4+ICsJcmV0dXJuIGN0eC0+ZHN0X2ZtdC53aWR0aCAqIGN0eC0+ZHN0X2ZtdC5oZWlnaHQg
KiBjdHgtPmJpdF9kZXB0aCAvCj4+PiA4Owo+Pj4KPj4+IENvbW1pdCBtZXNzYWdlIGRvZXNuJ3Qg
bWVudGlvbiBiaXRfZGVwdGggY2hhbmdlIGF0IGFsbC4gV2hpbGUgSSB0aGluawo+Pj4gdGhlcmUg
aXMgbm8gZGlmZmVyZW5jZSBiZXR3ZWVuIGRlY19wYXJhbXMtPmJpdF9kZXB0aCBhbmQgY3R4LT5i
aXRfZGVwdGgsCj4+PiB5b3Ugc2hvdWxkbid0IGp1c3QgdXNlIG9yZGluYXJ5IGRpdmlzaW9uLiBJ
ZiBiaXRfZGVwdGggaXMgMTAsIGl0IHdpbGwgYmUKPj4+IHJvdW5kZWQgZG93bi4gQW5kIGlmIHlv
dSBkZWNpZGUgdG8gdXNlIGJpdF9kZXB0aCBmcm9tIGNvbnRleHQsIHBsZWFzZQo+Pj4gcmVtb3Zl
IGRlY19wYXJhbXMgYXJndW1lbnQuCj4+IEkgd2lsbCBjaGFuZ2UgdGhpcyBwYXRjaCBhbmQgY3Jl
YXRlIGEgaGVscGVycyBmdW5jdGlvbiBmb3IgY2hyb21hIGFuZCBtb3Rpb24KPj4gdmVjdG9ycyBv
ZmZzZXRzIHRoYXQgVlA5IGFuZCBIRVZDIGNvZGUgd2lsbCB1c2Ugc2luY2UgdGhleSBhcmUgaWRl
bnRpY2FsLgo+PiBJIGRvbid0IHNlZSBpc3N1ZSB3aXRoIHRoZSBkaXZpc2lvbi4gSWYgeW91IGhh
dmUgaW4gbWluZCBhIHNvbHV0aW9uIHBsZWFzZQo+PiB3cml0ZSBpdCBzbyBJIGNvdWxkIHRlc3Qg
aXQuCj4gU29sdXRpb24gaXMgc2FtZSBhcyB0aGUgY29kZSB0aGF0IHlvdSByZW1vdmVkOgo+IGlu
dCBieXRlc19wZXJfcGl4ZWwgPSBkZWNfcGFyYW1zLT5iaXRfZGVwdGggPT0gOCA/IDEgOiAyOwo+
Cj4gT3IgYWx0ZXJuYXRpdmVseToKPiBpbnQgYnl0ZXNfcGVyX3BpeGVsID0gRElWX1JPVU5EX1VQ
KGRlY19wYXJhbXMtPmJpdF9kZXB0aCwgOCk7Cj4KPiBDb25zaWRlciBiaXRfZGVwdGggYmVpbmcg
MTAuIFdpdGggb2xkIGNvZGUgeW91IGdldCAyLCB3aXRoIHlvdXJzIHlvdSBnZXQgMS4KClRoZSBv
bGQgY29kZSBpcyB3cm9uZyA7LSkKSWYgdGhlIGZvcm1hdCBkZXB0aCBpcyAxMCBiaXRzIHBlciBw
aXhlbCB0aGVuIGNocm9tYSBvZmZzZXQgKGluIGJ5dGVzKSBmb3JtdWxhIGlzCndpZHRoICogaGVp
Z2h0ICogMTAgLyA4IG5vdCB3aWR0aCAqIGhlaWdodCAqIDE2IC8gOC4KCkkgaGF2ZSBhbHJlYWR5
IGNvbmZpcm0gdGhhdCB3aXRoIEhFVkMgb24gdGhlIHNhbWUgaGFyZHdhcmUuCgpSZWdhcmRzLApC
ZW5qYW1pbgoKPgo+IEJlc3QgcmVnYXJkcywKPiBKZXJuZWoKPgo+PiBSZWdhcmRzLAo+PiBCZW5q
YW1pbgo+Pgo+Pj4gQmVzdCByZWdhcmRzLAo+Pj4gSmVybmVqCj4+Pgo+Pj4+ICAgIH0KPj4+PiAg
ICAKPj4+PiAgICBzdGF0aWMgc2l6ZV90IG12X29mZnNldChjb25zdCBzdHJ1Y3QgaGFudHJvX2N0
eCAqY3R4LAo+Cj4KPgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
