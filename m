Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AF62C00140
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Aug 2022 00:19:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mgbaJN11bR+KoKnS3aXNOYJO7KQn+kz1/sxSK4zZTs8=; b=L/9L53SmXrLjqW
	0u2zjDZZbZ+mg1VcVxw2E+0KqJApayObrRq4GYjUat/754LGvrW1JRE/v5+KGTJTtvc4iSwblvX6m
	7RU2zmXuOsfkSZ7WHIbgwWIOIMGAKgq2ZfCzTaO2dFu0+IJ/i+hrXbUzR0N908sjaJIjmoQJLKvgW
	vcvLhZ5eEky+MtqzxmKjjZXNB4eXtVQyM8ASZ6W2BPWvFl/lap6z/gDwmgYTBdHdgHlbH02SOEsgP
	RHKkNOLlPSL8NLd60q766C2XlUBa92Ru1o61BA1qGtAtynWbpzmdlVlu7gqF8+sjor1/x+OY9hdjS
	3ENAvUKbjpb6kZKECfLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oPvA5-0028Uo-MS; Mon, 22 Aug 2022 00:19:25 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oPv9j-00280g-Og; Mon, 22 Aug 2022 00:19:05 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id E149A5C00E4;
	Sun, 21 Aug 2022 20:19:02 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Sun, 21 Aug 2022 20:19:02 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	tom-fitzhenry.me.uk; h=cc:cc:content-transfer-encoding
	:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm1; t=1661127542; x=1661213942; bh=L2nkszgY5W
	OfLgRzK4a0UTYpubHoRBwTEQkzg8BqgV8=; b=LygE7oGCZGQrEJbufqeGM76mIs
	M/PjtSxgA2DNSOl0S9uAEKPMLttVPpdcpeQtAYCtAER1eepiE08PzrOCipnx84CC
	7TeESltxOHCNzR00fyTlWpbr1IP/18FiyEldDA2Dfha/bS4nYa+XMzdrHwMixa1G
	DUJ5a8pBQn62QdhtEI6aOdQSTi95UgOuaiqEoA7H632q/VL4pHOsHBSNKuyQ3Znm
	iIQQ/N4OXJ/dPOFI0PIY8t9Z0mKX0Ju1STgytjFFtaitRQg0Eqk4p3gxb1Rga5yY
	QvsUR+9l/dxo0uOXGrqFvDznHSIaoxWpUe4KWY1wxO3Y/goCJJB5QM/RoTTw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1661127542; x=
	1661213942; bh=L2nkszgY5WOfLgRzK4a0UTYpubHoRBwTEQkzg8BqgV8=; b=o
	gfLdqt6wbPAR0sXCwaq4zcEkmMMKZCZ/ESqK/G/zVM/WjKnbtqZAzMCCEFrpakke
	42TvM0/0qykA39za++YftSeMEjruEGHwYgt5BPhnvURBXmiO0RdupD0oX1gEr1Ss
	yFGXqvT6RnaoPO8aQQ0f6s4GI/fsAq5p+aFDEZ3RjuWqeKYcdeyCmwudT18oI6Dz
	5ErkfTUsK2XLd2325kJi9K71OOvvWQuWMEwjNvhYPI8+IDDCm+GfCchb5qCBAVSg
	RnNX2Uxd2RMdr4Pure0tQqgmy/UO2iwOXjbTPWKM3nLSBtouHHftiVjyeD/TecnR
	W0X/RnjgwKr1r8kOqPYtg==
X-ME-Sender: <xms:dssCYxQx4TasUzZxR4pdf88CLkmagWVgum4J6A83ATl65KXfeCrgGQ>
    <xme:dssCY6z5X47wBkPU6Z6QuGRQr161ErGsdmg_e-10lnj8I_Gj6tEcK8uOgxB2ewUK6
    cCOKvh5893XKkr-dQ>
X-ME-Received: <xmr:dssCY20uHiNgRzO4861SmEehuRCZTffIVbqcGp4FOMYTFML7TtInpw5pGOfifWlUOobjYg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdeiiedgfeehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefkffggfgfuvfevfhfhjggtgfesth
    ekredttdefjeenucfhrhhomhepvfhomhcuhfhithiihhgvnhhrhicuoehtohhmsehtohhm
    qdhfihhtiihhvghnrhihrdhmvgdruhhkqeenucggtffrrghtthgvrhhnpeelgfffheegtd
    fgudefhfdvveeviedttedthfevgeeugffgveeujeefteetteeigfenucffohhmrghinhep
    khgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrg
    hilhhfrhhomhepthhomhesthhomhdqfhhithiihhgvnhhrhidrmhgvrdhukh
X-ME-Proxy: <xmx:dssCY5Ae76hQ1mLulG_Bfu6PZRHNyT5a5jYHGw9nrkpSxEx5zRTAgg>
    <xmx:dssCY6gnSQxOsWLxVPM2KoD7vMVBSJyFA2tvFRyuqOCn1kPaToURcw>
    <xmx:dssCY9pujbTvodKmvRtB_wWwNtBdLJ9UIejjG0q1AzxW2ZubDxye0w>
    <xmx:dssCY64g--RsODk7U39RdeC3t2zOnVd4MGOw7OzydtrHAo5YMg2jyw>
Feedback-ID: iefc945ae:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 21 Aug 2022 20:19:01 -0400 (EDT)
Message-ID: <460cd42b-4192-6761-7313-268a684e1e28@tom-fitzhenry.me.uk>
Date: Mon, 22 Aug 2022 10:19:00 +1000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.3
Subject: Re: [PATCH v3 2/2] arm64: dts: rockchip: Add initial support for
 Pine64 PinePhone Pro
Content-Language: en-US
To: =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= <n@nfraprado.net>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 martijn@brixit.nl, ayufan@ayufan.eu, megi@xff.cz,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, phone-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20220815123004.252014-1-tom@tom-fitzhenry.me.uk>
 <20220815123004.252014-3-tom@tom-fitzhenry.me.uk>
 <20220818030547.eblbmchutmnn6jih@notapiano>
From: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>
In-Reply-To: <20220818030547.eblbmchutmnn6jih@notapiano>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220821_171904_258351_6E44330D 
X-CRM114-Status: GOOD (  21.92  )
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

T24gMTgvOC8yMiAxMzowNSwgTsOtY29sYXMgRi4gUi4gQS4gUHJhZG8gd3JvdGU6Cgo+IHRoYW5r
cyBmb3IgZ2V0dGluZyB0aGUgdXBzdHJlYW1pbmcgb2YgdGhpcyBEVCBnb2luZy4gU29tZSBjb21t
ZW50cyBiZWxvdy4KCk5vIHdvcnJpZXMsIHRoYW5rIHlvdSBmb3IgeW91ciByZXZpZXchCgo+IFlv
dSdyZSBhbHNvIGFkZGluZyB0aGUgU0QgY29udHJvbGxlciBoZXJlLiBEb2VzIGl0IHdvcmsgYXMg
aXM/IElmIHNvIGFkZCBpdCB0bwo+IHRoZSBjb21taXQgZGVzY3JpcHRpb24gYXMgd2VsbC4KSSB3
aWxsIG5vdGUgdGhpcyBpbiB2NC4KPj4gKy8qIFBpbmVQaG9uZSBQcm8gZGF0YXNoZWV0Ogo+IEZp
cnN0IGNvbW1lbnQgbGluZSBzaG91bGQgYmUgZW1wdHkgZm9sbG93aW5nIHRoZSBjb2Rpbmcgc3R5
bGUgWzFdLiBMaWtlIHlvdSBkaWQKPiBmb3IgdGhlIGNvcHlyaWdodHMgYWJvdmUuCj4KPiBbMV0g
aHR0cHM6Ly93d3cua2VybmVsLm9yZy9kb2MvaHRtbC9sYXRlc3QvcHJvY2Vzcy9jb2Rpbmctc3R5
bGUuaHRtbCNjb21tZW50aW5nCgpJIHdpbGwgZG8gdGhpcyBpbiB2NC4KCj4gVGhpcyBzaWduYWwg
aXMgY2FsbGVkIHZjY19zeXMgaW4gdGhlIGRhdGFzaGVldCwgc28gSSBzdWdnZXN0IHdlIGtlZXAg
dGhhdCBuYW1lCj4gaGVyZS4gSXQncyBub3QgZXZlcnlkYXkgdGhhdCB3ZSBnZXQgYSBkZXZpY2Ug
d2l0aCBhIHB1YmxpY2x5IGF2YWlsYWJsZSBkYXRhc2hlZXQKPiA6XikuCgpJbmRlZWQhIDopIEkg
d2lsbCBkbyB0aGlzIGluIHY0LgoKPiArIHJrODE4OiBwbWljQDFjIHsKPj4gKwkJY29tcGF0aWJs
ZSA9ICJyb2NrY2hpcCxyazgxOCI7Cj4+ICsJCXJlZyA9IDwweDFjPjsKPj4gKwkJaW50ZXJydXB0
LXBhcmVudCA9IDwmZ3BpbzE+Owo+PiArCQlpbnRlcnJ1cHRzID0gPFJLX1BDNSBJUlFfVFlQRV9M
RVZFTF9MT1c+Owo+PiArCQkjY2xvY2stY2VsbHMgPSA8MT47Cj4+ICsJCWNsb2NrLW91dHB1dC1u
YW1lcyA9ICJ4aW4zMmsiLCAicms4MDgtY2xrb3V0MiI7Cj4gV2hhdCBhYm91dCBrZWVwaW5nIHRo
ZSBkYXRhc2hlZXQgbmFtZXMgaGVyZSB0b28/IGNsazMya291dDEsIGNsazMya291dDIKUGVyIE1l
Z2kncyByZXNwb25zZSwgSSdsbCBzdGljayB3aXRoIHRoZSBjdXJyZW50IG5hbWVzLgo+PiArCQkJ
dmNjXzF2ODogdmNjX3dsOiBEQ0RDX1JFRzQgewo+ICBGcm9tIHRoZSBkYXRhc2hlZXQsIHZjY193
bCBpcyBhY3R1YWxseSB3aXJlZCB0byB2Y2MzdjNfc3lzLiBCdXQgbG9va3MgbGlrZQo+IHZjY193
bCBpcyBvbmx5IHVzZWQgZm9yIGJsdWV0b290aCBhbmQgeW91J3JlIG5vdCBlbmFibGluZyBpdCB5
ZXQgYW55d2F5LCBzbyBqdXN0Cj4gZHJvcCB0aGlzIGV4dHJhIGxhYmVsLCBhbmQgaXQgY2FuIGJl
IGFkZGVkIHdoZW4gYmx1ZXRvb3RoIGlzIGFkZGVkIChvciBub3QsIGFuZAo+IHRoZW4gdGhlIGJs
dWV0b290aCBzdXBwbHkganVzdCBwb2ludHMgZGlyZWN0bHkgdG8gdmNjM3YzX3N5cykuCkdvb2Qg
Y2F0Y2gsIEkgd2lsbCByZW1vdmUgdGhlIHZjY193bCBsYWJlbC4KPj4gKwkJCXZjY19wb3dlcl9v
bjogTERPX1JFRzQgewo+PiArCQkJCXJlZ3VsYXRvci1uYW1lID0gInZjY19wb3dlcl9vbiI7Cj4g
VGhlIG5hbWUgb24gdGhlIGRhdGFzaGVldCBmb3IgdGhpcyBvbmUgaXMgcms4MThfcHdyX29uLgpJ
IHdpbGwgdXNlIHRoZSBuYW1lIHJrODE4X3B3cl9vbiBpbiB2NC4KPj4gKwo+PiArJmNsdXN0ZXIx
X29wcCB7Cj4+ICsJb3BwMDYgewo+PiArCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+PiArCX07Cj4g
VGhlcmUncyBhY3R1YWxseSBhbiBvcHAwNiBub2RlIGluIHRoZSBPUFAgZm9yIFJLMzM5OS1ULCBv
bmx5IHRoYXQgdGhlIGZyZXF1ZW5jeQo+IGlzIHNsaWdodGx5IGxvd2VyLiBNYXliZSB5b3UgY291
bGQga2VlcCBpdCBlbmFibGVkIGJ1dCBvdmVycmlkZSB0aGUgZnJlcXVlbmN5Pwo+Cj4gT3IgZ2l2
ZW4gdGhlIGFib3ZlIHBvaW50IGFib3V0IHRoZSBtYXggdm9sdGFnZXMsIG1heWJlIGl0IHdvdWxk
IGJlIGJlc3QgdG8gaGF2ZQo+IGEgc2VwYXJhdGUgT1BQIHRhYmxlIGFmdGVyIGFsbD8KUGVyIE1l
Z2kncyByZXNwb25zZS9yYXRpb25hbGUsIEknbGwga2VlcCB0aGUgZXhpc3RpbmcgdGFibGUsIGJ1
dCAKcmUtaW50cm9kdWNlIGNsdXN0ZXIxX29wcC9vcHAwNiB3aXRoIHVwZGF0ZWQgZnJlcXVlbmN5
L3ZvbHRhZ2UsIGFsaWduZWQgCndpdGggdGhlIFJLMzM5OS1UIGRhdGFzaGVldC4KPj4gKwo+PiAr
CW9wcDA3IHsKPj4gKwkJc3RhdHVzID0gImRpc2FibGVkIjsKPj4gKwl9Owo+PiArfTsKPj4gKwo+
PiArJmlvX2RvbWFpbnMgewo+PiArCXN0YXR1cyA9ICJva2F5IjsKPiBMZXQncyBrZWVwIHRoZSBz
dGF0dXMgYXQgdGhlIGVuZCBvZiB0aGUgbm9kZSBmb3IgY29uc2lzdGVuY3kgd2l0aCB0aGUgcmVz
dC4KSSB3aWxsIGRvIHRoaXMgaW4gdjQuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
