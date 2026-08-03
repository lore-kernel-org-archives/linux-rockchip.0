Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C06E0C55822
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Aug 2026 19:54:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zRUygq+Ok+GQneLpDI31KO5MaaXIEbuDI1EqrNKa3do=; b=xscHIcDpJbgTQD
	AkAX4RIYbEFd1zsL67Uy4l7iMZZpveMcSzVvLP4C5vHb4DbuSK8wdAMKAlBtM7MFmQ57EsIimCAcU
	gPET+MAtM+bW393T6f7dAxmQj/Hznh69InAwiRu9g3HJc65nsiHj77juMx46cTIuo6OI+/rxkzmQe
	dxSJZfxMFqvC+QNfK9Hao43je3iYcC1OCB0XxyAuei5S/fHZccGVLUZfa+7TzCsFjSRH1LS/hGjae
	2RNwCYFRffYDhd987JakJwAQidlwN1iw/oQoKRPi5CoKndNaA0ElN2mRMZj950znl+8Se8Gyhgx04
	E32Np7Xx073AHESR9ipA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqyjw-00000000T6T-3euV;
	Mon, 03 Aug 2026 19:54:24 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqyjs-00000000T6C-42KQ;
	Mon, 03 Aug 2026 19:54:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=qNkEgZtE9MyrRrLinjI/1vsPROGFxoSujraxlInN0iw=; b=lLmY11O4g2pIqSWooliYhlAw3h
	kBlCwiLqUoJvefeWiOMaLHnv3ecNro69r8LrasamqHfLLwNeoFdKKcws7V4ps9kA7tSYao6xcHMTb
	GeSVZQoaJtLTHd4XusNzIh3roSrgGfPmx0PTN0vnvwWjimj/JfdT7e6VmfuR92U5zLdX8GbcN4Mi3
	rdz1prPUDomcT6N9NjJj7NUIl2lsfXU80E2DUVXgFhdixqL66wPJ2uIjAfGb8CVmpKH5HtbzazYxS
	Xpr/8o0x91ftRM3/8L9BO75Cpsu7CO4a/R6fZTJcQJv4K3684eb0QxF7g7YNBHaHhUvDddBhXZfHM
	vMA9BLcw==;
Received: from ixit.cz ([84.42.129.46])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wqyjp-00000009J6R-0Yqz;
	Mon, 03 Aug 2026 19:54:19 +0000
Received: from [10.0.0.182] (unknown [10.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by ixit.cz (Postfix) with ESMTPSA id AA37E5340321;
	Mon, 03 Aug 2026 21:35:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ixit.cz; s=dkim;
	t=1785785719;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=qNkEgZtE9MyrRrLinjI/1vsPROGFxoSujraxlInN0iw=;
	b=CCKoQ1CVpmqp8XoxyeAiSn1Wke25wcx+oIwCGSfaJkvDrezNwe9fgfOWhY+y71UhUhRLO1
	/0HfWAFcTOX46qQ75eNsOvZ5YmwCY8Y3PquVUqU/ltOdR0QYunrLxXDFgX2P9EQ6eC4a18
	mEZ8erCjUnmSdpDymfaUC0GKg00N/j4=
Message-ID: <58da7454-e539-4e2b-b658-829cece52205@ixit.cz>
Date: Mon, 3 Aug 2026 21:35:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] arm64: dts: imx8mq-librem5: Dongwoon DW9714 coil
 requires higher voltage
To: Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Ondrej Jirman <megi@xff.cz>, Olivier Benjamin
 <olivier.benjamin@bootlin.com>, Manuel Traut <manut@mecka.net>,
 Alexander Warnecke <awarnecke002@hotmail.com>, Frank Li <Frank.Li@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 Martin Kepplinger <martin.kepplinger@puri.sm>,
 Shawn Guo <shawnguo@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 phone-devel@vger.kernel.org, imx@lists.linux.dev, stable@vger.kernel.org
References: <20260801-pp-pro-camera-v1-0-7b4d90788f9f@ixit.cz>
 <20260801-pp-pro-camera-v1-4-7b4d90788f9f@ixit.cz>
 <yJywMSNTQGGZm3rbxd56Yw@puri.sm>
Content-Language: en-US
From: David Heidelberg <david@ixit.cz>
Autocrypt: addr=david@ixit.cz; keydata=
 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
In-Reply-To: <yJywMSNTQGGZm3rbxd56Yw@puri.sm>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_205417_320983_C102E6AA 
X-CRM114-Status: GOOD (  19.24  )
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

T24gMDMvMDgvMjAyNiAyMDoxMiwgU2ViYXN0aWFuIEtyenlzemtvd2lhayB3cm90ZToKPiBPbiBz
b2JvdGEsIDEgc2llcnBuaWEgMjAyNiAwMjozNToyMyBjemFzIMWbcm9ka293b2V1cm9wZWpza2kg
bGV0bmkgRGF2aWQKPiBIZWlkZWxiZXJnIHZpYSBCNCBSZWxheSB3cm90ZToKPj4gRnJvbTogRGF2
aWQgSGVpZGVsYmVyZyA8ZGF2aWRAaXhpdC5jej4KPj4KPj4gQnkgZGF0YXNoZWV0IHRoZSBWREQg
KGluLWtlcm5lbCBuYW1lZCB2Y2MpIHJhbmdlIGlzIGJldHdlZW4gMi4zIHRvIDQuMyBWLgo+PiBV
c3VhbGx5IGl0J3MgYXJvdW5kIDIuOCBWLiBIZXJlIGl0IG1hdGNoZXMgdGhlIHJlZ192Y2FtXzJ2
OC4KPiAKPiBJdCBkb2Vzbid0IC0gVkNBTV8yVjggaXNuJ3QgY29ubmVjdGVkIHRvIERXOTcxNCAo
YW5kIG5laXRoZXIgaXMgQ1NJXzFWOCk7Cj4gVkNBTV9BRlZERCBpcy4KCkkgZGlkbid0IHJlYWxp
emVkIHdlIGhhdmUgZGF0YXNoZWV0IGhlcmUgOikKCj4gCj4+IDEuOCBWIGhlcmUgaXMgbGlrZWx5
IHVzZWQgZm9yIGkyYyBsZXZlbCBzaGlmdGVyLgo+IAo+IEknbSBub3Qgc3VyZSB3aGVyZSB5b3Un
dmUgZ290IGFuIEkyQyBsZXZlbCBzaGlmdGVyIGZyb20sIHRoZXJlJ3Mgbm9uZSBpbnZvbHZlZAoK
aXQncyBjb3B5LXBhc3RlIGZyb20gcHJldmlvdXMgY29tbWl0cy4KCj4gdGhlcmUuIENTSV8xVjgg
aXMgcGFzc2VkIHRvIHRoZSByZWFyIGNhbWVyYSBtb2R1bGUgYXMgRE9WREQgYW5kIGlzIGNvbnN1
bWVkIGJ5Cj4gUzVLM0w2IGFzIFZERElPLCBhbmQgYm90aCBTNUszTDYgYW5kIERXOTcxNCBhcmUg
Y29ubmVjdGVkIHRvIEkyQzRfU0RBLwo+IEkyQzRfU0NMLCBvcGVyYXRpbmcgYXQgdGhlIDEuOFYg
bGV2ZWwsIG9ubHkgdGhvdWdoIGFuIEVNSSBmaWx0ZXIgKEY3IGluIHRoZQo+IHNjaGVtYXRpYyku
CgpJIGRvbid0IHNlZSB0aGUgQUZWREQgaW4gdGhlIFsxXSwgZG8geW91IGhhdmUgaXQgc29tZXdo
ZXJlIGRlZmluZWQ/CgpUaGFua3MKRGF2aWQKClsxXSAKaHR0cHM6Ly9zb3VyY2UucHVyaS5zbS9M
aWJyZW01L2xpbnV4Ly0vdHJlZS9wdXJlb3MvbGF0ZXN0L2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJl
ZXNjYWxlP3JlZl90eXBlPWhlYWRzCgo+IAo+Pgo+PiBGaXhlczogZjAwZGYyYmRiNTEyICgiYXJt
NjQ6IGR0czogaW14OG1xLWxpYnJlbTU6IGRlc2NyaWJlIHRoZSB2b2ljZSBjb2lsCj4+IG1vdG9y
IGZvciBmb2N1cyBjb250cm9sIikgQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKPj4gU2lnbmVk
LW9mZi1ieTogRGF2aWQgSGVpZGVsYmVyZyA8ZGF2aWRAaXhpdC5jej4KPj4gLS0tCj4+ICAgYXJj
aC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLWxpYnJlbTUuZHRzaSB8IDIgKy0KPj4g
ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPj4KPj4gZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS1saWJyZW01LmR0
c2kKPj4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEtbGlicmVtNS5kdHNp
IGluZGV4Cj4+IGY1ZDUyOWM1YmFmM2UuLjU4M2NiYTJkM2JlYmYgMTAwNjQ0Cj4+IC0tLSBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS1saWJyZW01LmR0c2kKPj4gKysrIGIv
YXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLWxpYnJlbTUuZHRzaQo+PiBAQCAt
MTE2NywxNyArMTE2NywxNyBAQCAmaTJjNCB7Cj4+ICAgCXBpbmN0cmwtMSA9IDwmcGluY3RybF9p
MmM0X2dwaW8+Owo+PiAgIAlzY2wtZ3Bpb3MgPSA8JmdwaW81IDIwIChHUElPX0FDVElWRV9ISUdI
IHwgR1BJT19PUEVOX0RSQUlOKT47Cj4+ICAgCXNkYS1ncGlvcyA9IDwmZ3BpbzUgMjEgKEdQSU9f
QUNUSVZFX0hJR0ggfCBHUElPX09QRU5fRFJBSU4pPjsKPj4gICAJc3RhdHVzID0gIm9rYXkiOwo+
Pgo+PiAgIAl2Y21AYyB7Cj4+ICAgCQljb21wYXRpYmxlID0gImRvbmd3b29uLGR3OTcxNCI7Cj4+
ICAgCQlyZWcgPSA8MHgwYz47Cj4+IC0JCXZjYy1zdXBwbHkgPSA8JnJlZ19jc2lfMXY4PjsKPj4g
KwkJdmNjLXN1cHBseSA9IDwmcmVnX3ZjYW1fMnY4PjsKPj4gICAJfTsKPj4KPj4gICAJYmF0OiBm
dWVsLWdhdWdlQDM2IHsKPj4gICAJCWNvbXBhdGlibGUgPSAibWF4aW0sbWF4MTcwNTUiOwo+PiAg
IAkJcmVnID0gPDB4MzY+Owo+PiAgIAkJaW50ZXJydXB0LXBhcmVudCA9IDwmZ3BpbzM+Owo+PiAg
IAkJaW50ZXJydXB0cyA9IDwyMCBJUlFfVFlQRV9MRVZFTF9MT1c+Owo+PiAgIAkJcGluY3RybC1u
YW1lcyA9ICJkZWZhdWx0IjsKPiAKPiAKPiAKPiAKCi0tIApEYXZpZCBIZWlkZWxiZXJnCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
