Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0685CC56208
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Aug 2026 11:49:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OskCiNZuOUP6QtsfzgGzOTkAYYRDxgBtfhDy3eIRXlQ=; b=z/315A/cIq7y9qvuB37pcjuDPw
	YOkDA3V6k4UCF90+2ygGypfmoAJ+SrEXHRGPBE7eNboRwskx+7tw8HlJKfBOPil9XCEbe7ESisuOe
	ahgH2D8YVLHKEhJj+jaPr+N6u8E+XxYSjKs14iIhz4rJDShJ5Po2iHHKrf+1KU7qXViICpF6sWwlI
	1xfH6nZtyJ5SvSbmXsRKcnMrCWaQMShQw3DIKF2xjXnfaCtpG1z0L7saEozCDiuAHshgDEPSue9RF
	A1bEjeVhe4HZ7n4Z7znuj74pqhTzOYHX+GxrQr4ZQ9/96otLrvMdnMiKhfuPsKTQYH/QQTfYl6Jd3
	nxfxr6yQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrwbM-00000005gPX-0mjf;
	Thu, 06 Aug 2026 11:49:32 +0000
Received: from ixit.cz ([84.42.129.46])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrwbI-00000005gKV-1Bfq;
	Thu, 06 Aug 2026 11:49:31 +0000
Received: from [10.13.80.162] (unknown [176.101.149.185])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by ixit.cz (Postfix) with ESMTPSA id DB5DA5340316;
	Thu, 06 Aug 2026 13:49:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ixit.cz; s=dkim;
	t=1786016949;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=/s3rnEvEi/wr4ErGlkJ4G8TE/5xsRmeGjRMpGNrPM6s=;
	b=HPOQ2qS4tGHpMgL/fTwnEaea3KkRxWEnFwBh3/BGjpBGUi9zdkyGcQ/BGa6bd9cyAtm7i2
	DbIYy2/B/wMoYO6y6Y/g6lg+N14jZ+aqO97FyG+aSDGwwg0RRiwetEdUYud2mHzS/Y7iDL
	5vDIq5SNL/Wt9IiP0QU9VQuO3ae2kjw=
Message-ID: <dd2f19ac-a65e-4e53-aa2f-6f76c949366e@ixit.cz>
Date: Thu, 6 Aug 2026 13:49:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] arm64: dts: rockchip: rk3399-pinephone-pro: DW9714
 coil requires higher voltage
To: =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megi@xff.cz>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Olivier Benjamin <olivier.benjamin@bootlin.com>,
 Manuel Traut <manut@mecka.net>, Alexander Warnecke
 <awarnecke002@hotmail.com>, Frank Li <Frank.Li@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 phone-devel@vger.kernel.org, imx@lists.linux.dev, stable@vger.kernel.org
References: <20260801-pp-pro-camera-v1-0-7b4d90788f9f@ixit.cz>
 <20260801-pp-pro-camera-v1-2-7b4d90788f9f@ixit.cz>
 <2j7ogeqj565sftp5wzqvtzi2id76fof623bifbmyu6ckhf6vm6@ya7h4tp5i4qf>
 <7d55eaba-967c-4de6-8021-6b2d17670b1f@ixit.cz>
 <galrq4ug3hhny2ivpylqwuztwv7vnqvm6sdhlu6pucxk6qy2mz@zxw4ckkxj2sh>
Content-Language: en-US
From: David Heidelberg <david@ixit.cz>
Autocrypt: addr=david@ixit.cz; keydata=
 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
In-Reply-To: <galrq4ug3hhny2ivpylqwuztwv7vnqvm6sdhlu6pucxk6qy2mz@zxw4ckkxj2sh>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260806_044928_754524_C540AB33 
X-CRM114-Status: GOOD (  24.07  )
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

T24gMDYvMDgvMjAyNiAxMzoxOSwgT25kxZllaiBKaXJtYW4gd3JvdGU6Cj4gSGksCj4gCj4gT24g
VHVlLCBBdWcgMDQsIDIwMjYgYXQgMTE6MTI6MjFBTSArMDIwMCwgRGF2aWQgSGVpZGVsYmVyZyB3
cm90ZToKPj4gT24gMDQvMDgvMjAyNiAwOTozOSwgT25kxZllaiBKaXJtYW4gd3JvdGU6Cj4+PiBI
aSwKPj4+Cj4+PiBPbiBTYXQsIEF1ZyAwMSwgMjAyNiBhdCAwMjozNToyMUFNICswMjAwLCBEYXZp
ZCBIZWlkZWxiZXJnIHZpYSBCNCBSZWxheSB3cm90ZToKPj4+PiBGcm9tOiBEYXZpZCBIZWlkZWxi
ZXJnIDxkYXZpZEBpeGl0LmN6Pgo+Pj4+Cj4+Pj4gQnkgZGF0YXNoZWV0IHRoZSBWREQgKGluLWtl
cm5lbCBuYW1lZCB2Y2MpIHJhbmdlIGlzIGJldHdlZW4gMi4zIHRvIDQuMyBWLgo+Pj4+IFVzdWFs
bHkgaXQncyBhcm91bmQgMi44IFYuIEhlcmUgaXQgbWF0Y2hlcyB0aGUgYXZkZDJ2OF9kdnAuCj4+
Pj4KPj4+PiBGaXhlczogOTMzNmViODI5YTE4ICgiYXJtNjQ6IGR0czogcm9ja2NoaXA6IGRlc2Ny
aWJlIEkyYyBCdXMgMSBhbmQgSU1YMjU4IHdvcmxkIGNhbWVyYSBvbiBQaW5lUGhvbmUgUHJvIikK
Pj4+PiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwo+Pj4+IFNpZ25lZC1vZmYtYnk6IERhdmlk
IEhlaWRlbGJlcmcgPGRhdmlkQGl4aXQuY3o+Cj4+Pj4gLS0tCj4+Pj4gICAgYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazMzOTktcGluZXBob25lLXByby5kdHMgfCAyICstCj4+Pj4gICAg
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4+Pj4KPj4+PiBk
aWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcGluZXBob25l
LXByby5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1waW5lcGhvbmUt
cHJvLmR0cwo+Pj4+IGluZGV4IGQ0NmNkZmUzZjc4NDkuLmJkZTM1ZDliMjI2M2UgMTAwNjQ0Cj4+
Pj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcGluZXBob25lLXBy
by5kdHMKPj4+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1waW5l
cGhvbmUtcHJvLmR0cwo+Pj4+IEBAIC00NzMsMTcgKzQ3MywxNyBAQCB3Y2FtX291dDogZW5kcG9p
bnQgewo+Pj4+ICAgIAkJCX07Cj4+Pj4gICAgCQl9Owo+Pj4+ICAgIAl9Owo+Pj4+ICAgIAl3Y2Ft
X2xlbnM6IGNhbWVyYS1sZW5zQGMgewo+Pj4+ICAgIAkJY29tcGF0aWJsZSA9ICJkb25nd29vbixk
dzk3MTQiOwo+Pj4+ICAgIAkJcmVnID0gPDB4MGM+Owo+Pj4+ICAgIAkJLyogU2FtZSBJMmMgYnVz
IGFzIGJvdGggY2FtZXJhcywgZGVwZW5kcyBvbiB2Y2NhMXY4X2NvZGVjIGZvciBwb3dlci4gKi8K
Pj4+PiAtCQl2Y2Mtc3VwcGx5ID0gPCZ2Y2MxdjhfZHZwPjsKPj4+PiArCQl2Y2Mtc3VwcGx5ID0g
PCZhdmRkMnY4X2R2cD47Cj4+Pgo+Pj4gVGhpcyBkb2VzIG5vdCBtYXRjaCByZWFsaXR5LCBzY2hl
bWF0aWMgc2F5cyBpdCdzIFZDQzJWOF9EVlA6Cj4+Pgo+Pj4gCWh0dHBzOi8veGZmLmN6L2RsL3Rt
cC82MjUzYTA0NjUzMjlkZjQxLnBuZwo+Pgo+PiBBaG9qLAo+Pgo+PiB0aGFua3MgZm9yIHNwb3R0
aW5nIHRoaXMsIHNpbmNlIEkga25vdyB5b3UgaGF2ZSB0aGUgZGV2aWNlLCB3b3VsZCBiZSB0b28K
Pj4gbXVjaCB0byBhc2sgeW91IHRvIHNlbmQgc3RhbmRhbG9uZSBmaXggZm9yIFBQIFBybz8KPj4K
Pj4gSSB3b3VsZCBkcm9wIHRoZSBjaGFuZ2UgZnJvbSB0aGUgc2VyaWVzLgo+IAo+IE9rLiBKdXN0
IGZvciB0aGUgcmVmZXJlbmNlLCB2Y2MxdjhfZHZwIGhlcmUgZmVlZHMgYW4gZW5hYmxlIHBpbiBm
b3IgVkNDMlY4X0RWUAo+IExETyByZWd1bGF0b3IgKHdoaWNoIGlzIHN1cHBsaWVkIGZyb20gVkND
M1YzX1NZUyBhbmQgbm90IGRlc2NyaWJlZCBpbiBEVCwgeWV0KS4KPiBTbyBpbiBwcmFjdGljZSBl
bmFibGluZyB2Y2MxdjhfZHZwIGVuYWJsZXMgYm90aCBWQ0MyVjhfRFZQIGFuZCBBVkREMlY4X0RW
UCBhbmQKPiB3aGlsZSBEVCBkb2VzIG5vdCBkZXNjcmliZSB0aGUgSFcgaW4gZGV0YWlsLCBpdCBk
ZXNjcmliZXMgdGhlIG9ubHkgcmVndWxhdG9yCj4gdGhhdCBpcyBhY3R1YWxseSBjb250cm9sbGFi
bGUgYW5kIGVuYWJsZXMgYWxsIG5lZWRlZCBwb3dlciByYWlscyBmb3IgdGhlIGNhbWVyYQo+IG1v
ZHVsZXMgYWxsIGJ5IGl0c2VsZiBpbiBwcm9wZXIgb3JkZXIvdGltaW5nLgo+IAo+IE5vdCBzdXJl
IHdoYXQncyB0aGUgRFQgbWFpbnRhaW5lcnMgaWRlYSBoZXJlIGFib3V0IHdoZXRoZXIgRFQgaGFz
IHRvIGRlc2NyaWJlCj4gZXZlcnkgZGV0YWlsIG9mIHBvd2VyIHJhaWxzIHJvdXRpbmcsIG9yIGp1
c3Qgd2hhdCdzIHByYWdtYXRpYy4KCk15IHBlcmNlcHRpb24gaXMgdGhhdCBEVCBzeW50YXggc2hv
dWxkIGRlc2NyaWJlIGV2ZXJ5dGhpbmcsIGV4Y2VwdCBwYXNzaXZlIApjb21wb25lbnRzLgoKTm8g
YWRkaXRpb25hbCBHUElPIGlzIG5lZWRlZCB0byBlbmFibGUgVkNDIGFuZCBBVkREPwoKSGVyZSwg
aXQgc2VlbXMgdG8gbWUgdGhhdCBleHBsYW5hdGlvbiBsaWtlIHRoaXMgaW4gRFQgY291bGQgY292
ZXIgaXQuIEJ1dCBJJ20gbm8gCmF1dGhvcml0eSBoZXJlIDopCgpEYXZpZAoKPiAKPiBCZXN0IHJl
Z2FyZHMsCj4gCW8uai4KPiAKPj4gRGF2aWQKPj4KPj4gUC5TLiBJIG5vdGljZWQgSSBkaWRuJ3Qg
bWFyayB0aGlzIHNlcmllcyBSRkMuIFRvbyBsYXRlLgo+Pgo+Pj4KPj4+IHJlZ2FyZHMsCj4+PiAJ
by4KPj4+Cj4+Pj4gICAgCX07Cj4+Pj4gICAgCXVjYW06IGNhbWVyYUAzNiB7Cj4+Pj4gICAgCQlj
b21wYXRpYmxlID0gIm92dGksb3Y4ODU4IjsKPj4+PiAgICAJCXJlZyA9IDwweDM2PjsKPj4+PiAg
ICAJCWNsb2NrcyA9IDwmY3J1IFNDTEtfQ0lGX09VVD47IC8qIE1JUElfTUNMSzEsIGRlcml2ZWQg
ZnJvbSBDSUZfQ0xLMCAqLwo+Pj4+ICAgIAkJY2xvY2stbmFtZXMgPSAieHZjbGsiOwo+Pj4+ICAg
IAkJZG92ZGQtc3VwcGx5ID0gPCZ2Y2MxdjhfZHZwPjsKPj4+Pgo+Pj4+IC0tIAo+Pj4+IDIuNTMu
MAo+Pj4+Cj4+Pj4KPj4KPj4gLS0gCj4+IERhdmlkIEhlaWRlbGJlcmcKPj4KCi0tIApEYXZpZCBI
ZWlkZWxiZXJnCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
