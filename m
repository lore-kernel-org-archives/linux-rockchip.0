Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB911C27C40
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Aug 2023 06:57:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/aDpNU55vDhi6a0kLjlhFoaeJR0AJTHIMSBX3K2nazo=; b=PKe5QTG7J+os5w
	X3GKOIoSqFPEXf0W+k25ILJCNKadIWukPgx3KmZRtC7Sf+qmXqPc3EBTSL5iy09itqyyY9rOA90wE
	10bcw+VT18IVGT7p/JaEbaC2S5ifpfycDSbNpJKF+SDjYeYc2qOIPWyyiT6G9a5AMVaBwyl2SWq1X
	cvOrsPlQI7Zro/v7TDAJl9eQgw7EWl21LADM2xMUTIM3MVWURav3H3ZK6E3mYzPbaVdt27XFviuXi
	TaPDJs3iTEm/VqJ4Doen1NIrj9oVuuj7Pw29w0Igzy0harJSCMZLEWJfVnYqOC2e86eYse8ce0thk
	XAAvbKWQrIEIxhsNC5kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZ4Hk-002MYi-26;
	Thu, 24 Aug 2023 06:57:40 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZ4Hh-002MXV-1i
	for linux-rockchip@lists.infradead.org;
	Thu, 24 Aug 2023 06:57:39 +0000
Received: from [IPV6:2a01:e0a:120:3210:672:c310:4c8a:3a97] (unknown [IPv6:2a01:e0a:120:3210:672:c310:4c8a:3a97])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 5A1116607234;
	Thu, 24 Aug 2023 07:57:31 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1692860251;
	bh=HPMQ1bPmoWEPB0yWrgfHNNEbAq0NAVVN+S70L/CODms=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=MUQHYpRxOXuwGvWOKKGN13z4KjTLdvBVslGRO0Eq5CrLPIVG7qHw+sJR9E+S6oQ4t
	 W41ckH19sDE85RB7HTntg2a3tqvQCaKt6ZPwYyDxn2QpvaXHXm5Ocn1HEA8jCvOFiW
	 NznFV7dHygIL30F3v9/+Br0js8hQ7BWtgNSF8kApEOYBb6koI27c6p28dNMveO4ygT
	 nbx1Aj63cULG3u1ZXLrpdKrbQoeyp6zrlH1q8vaGPAvz9Cw5CJo2IfAU2dVUf0EHXl
	 unlKX6fv508DeD8rhvZwrDnWZINNzL9i2+vKDoqpq0BEa7p7bT24n1jq8Z2rCCgs4C
	 PXrv2ex8dmFyQ==
Message-ID: <fe855c2f-bf91-9832-5947-c21a3573f0f3@collabora.com>
Date: Thu, 24 Aug 2023 08:57:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH] media: verisilicon: Do not enable G2 postproc downscale
 if source is narrower than destination
To: Marek Vasut <marex@denx.de>, linux-media@vger.kernel.org
Cc: Adam Ford <aford173@gmail.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-rockchip@lists.infradead.org
References: <20230824013935.303132-1-marex@denx.de>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <20230824013935.303132-1-marex@denx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230823_235737_762296_26D5CF87 
X-CRM114-Status: GOOD (  21.11  )
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

CkxlIDI0LzA4LzIwMjMgw6AgMDM6MzksIE1hcmVrIFZhc3V0IGEgw6ljcml0wqA6Cj4gSW4gY2Fz
ZSBvZiBlbmNvZGVkIGlucHV0IFZQOSBkYXRhIHdpZHRoIHRoYXQgaXMgbm90IG11bHRpcGxlIG9m
IG1hY3JvYmxvY2sKPiBzaXplLCB3aGljaCBpcyAxNiAoZS5nLiAxMDgweDE5MjAgZnJhbWVzLCB3
aGVyZSAxMDgwIGlzIG11bHRpcGxlIG9mIDgpLCB0aGUKPiB3aWR0aCBpcyBwYWRkZWQgdG8gYmUg
YSBtdWx0aXBsZSBvZiBtYWNyb2Jsb2NrIHNpemUgKGZvciAxMDgweDE5MjAgZnJhbWVzLAo+IHRo
YXQgaXMgMTA4OHgxOTIwKS4KPgo+IFRoZSBoYW50cm9fcG9zdHByb2NfZzJfZW5hYmxlKCkgY2hl
Y2tzIHdoZXRoZXIgdGhlIGVuY29kZWQgZGF0YSB3aWR0aCBpcwo+IGVxdWFsIHRvIGRlY29kZWQg
ZnJhbWUgd2lkdGgsIGFuZCBpZiBub3QsIGVuYWJsZXMgZG93bi1zY2FsZSBtb2RlLiBGb3IgYQo+
IGZyYW1lIHdoZXJlIGlucHV0IGlzIDEwODB4MTkyMCBhbmQgb3V0cHV0IGlzIDEwODh4MTkyMCwg
dGhpcyBpcyBpbmNvcnJlY3QKPiBhcyBubyBkb3duLXNjYWxlIGhhcHBlbnMsIHRoZSBmcmFtZSBp
cyBvbmx5IHBhZGRlZC4gRW5hYmxpbmcgdGhlIGRvd24tc2NhbGUKPiBtb2RlIGluIHRoaXMgY2Fz
ZSByZXN1bHRzIGluIGNvcnJ1cHRlZCBmcmFtZXMuCj4KPiBGaXggdGhpcyBieSBhZGp1c3Rpbmcg
dGhlIGNoZWNrIHRvIHRlc3Qgd2hldGhlciBlbmNvZGVkIGRhdGEgd2lkdGggaXMKPiBncmVhdGVy
IHRoYW4gZGVjb2RlZCBmcmFtZSB3aWR0aCwgYW5kIG9ubHkgaW4gdGhhdCBjYXNlIGVuYWJsZSB0
aGUKPiBkb3duLXNjYWxlIG1vZGUuCj4KPiBUbyBnZW5lcmF0ZSBpbnB1dCB0ZXN0IGRhdGEgdG8g
dHJpZ2dlciB0aGlzIGJ1ZywgdXNlIGUuZy46Cj4gJCBnc3QtbGF1bmNoLTEuMCB2aWRlb3Rlc3Rz
cmMgISB2aWRlby94LXJhdyx3aWR0aD0yNzIsaGVpZ2h0PTI1Nixmb3JtYXQ9STQyMCAhIFwKPiAg
ICAgICAgICAgICAgICAgICB2cDllbmMgISBtYXRyb3NrYW11eCAhIGZpbGVzaW5rIGxvY2F0aW9u
PS90bXAvdGVzdC52cDkKPiBUbyB0cmlnZ2VyIHRoZSBidWcgdXBvbiBkZWNvZGluZyAobm90ZSB0
aGF0IHRoZSBOVjEyIG11c3QgYmUgZm9yY2VkLCBhcwo+IHRoYXQgYXNzdXJlcyB0aGUgb3V0cHV0
IGRhdGEgd291bGQgcGFzcyB0aGUgRzIgcG9zdHByb2MpOgo+ICQgZ3N0LWxhdW5jaC0xLjAgZmls
ZXNyYyBsb2NhdGlvbj0vdG1wL3Rlc3QudnA5ICEgbWF0cm9za2FkZW11eCAhIHZwOXBhcnNlICEg
XAo+ICAgICAgICAgICAgICAgICAgIHY0bDJzbHZwOWRlYyAhIHZpZGVvL3gtcmF3LGZvcm1hdD1O
VjEyICEgdmlkZW9jb252ZXJ0ICEgZmJkZXZzaW5rCgpJIGhhZCBwcm9wb3NlIHRoZSBzYW1lIHBh
dGNoIGluIG15IHNlcmllcyBpbiBKdWx5OgpodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3By
b2plY3QvbGludXgtbWVkaWEvcGF0Y2gvMjAyMzA3MDUxMjEwNTYuMzcwMTctOC1iZW5qYW1pbi5n
YWlnbmFyZEBjb2xsYWJvcmEuY29tLwoKUmV2aWV3ZWQtYnk6IEJlbmphbWluIEdhaWduYXJkIDxi
ZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgoKPgo+IEZpeGVzOiA3OWM5ODdkZThiMzUg
KCJtZWRpYTogaGFudHJvOiBVc2UgcG9zdCBwcm9jZXNzb3Igc2NhbGluZyBjYXBhY2l0aWVzIikK
PiBTaWduZWQtb2ZmLWJ5OiBNYXJlayBWYXN1dCA8bWFyZXhAZGVueC5kZT4KPiAtLS0KPiBDYzog
QWRhbSBGb3JkIDxhZm9yZDE3M0BnbWFpbC5jb20+Cj4gQ2M6IEJlbmphbWluIEdhaWduYXJkIDxi
ZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+IENjOiBFemVxdWllbCBHYXJjaWEgPGV6
ZXF1aWVsQHZhbmd1YXJkaWFzdXIuY29tLmFyPgo+IENjOiBNYXVybyBDYXJ2YWxobyBDaGVoYWIg
PG1jaGVoYWJAa2VybmVsLm9yZz4KPiBDYzogUGhpbGlwcCBaYWJlbCA8cC56YWJlbEBwZW5ndXRy
b25peC5kZT4KPiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCj4gQ2M6IGxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiAtLS0KPiAgIGRyaXZlcnMvbWVkaWEvcGxhdGZv
cm0vdmVyaXNpbGljb24vaGFudHJvX3Bvc3Rwcm9jLmMgfCAyICstCj4gICAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19wb3N0cHJvYy5jIGIvZHJpdmVycy9t
ZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fcG9zdHByb2MuYwo+IGluZGV4IDAyMjRm
ZjY4YWIzZmMuLjY0ZDZmYjg1MmFlOWIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fcG9zdHByb2MuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Bvc3Rwcm9jLmMKPiBAQCAtMTA3LDcgKzEwNyw3
IEBAIHN0YXRpYyB2b2lkIGhhbnRyb19wb3N0cHJvY19nMV9lbmFibGUoc3RydWN0IGhhbnRyb19j
dHggKmN0eCkKPiAgIAo+ICAgc3RhdGljIGludCBkb3duX3NjYWxlX2ZhY3RvcihzdHJ1Y3QgaGFu
dHJvX2N0eCAqY3R4KQo+ICAgewo+IC0JaWYgKGN0eC0+c3JjX2ZtdC53aWR0aCA9PSBjdHgtPmRz
dF9mbXQud2lkdGgpCj4gKwlpZiAoY3R4LT5zcmNfZm10LndpZHRoIDw9IGN0eC0+ZHN0X2ZtdC53
aWR0aCkKPiAgIAkJcmV0dXJuIDA7Cj4gICAKPiAgIAlyZXR1cm4gRElWX1JPVU5EX0NMT1NFU1Qo
Y3R4LT5zcmNfZm10LndpZHRoLCBjdHgtPmRzdF9mbXQud2lkdGgpOwoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
