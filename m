Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43B33C4708E
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Jan 2023 23:14:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i1teixqi4aql6q2qkbHEayVTAisO2sBxbWGirfDsAfo=; b=h/O/QwGteeGDxO
	VbENHEz+sdpI7R16KzbYhmEspFbYBbOQUcR+HYiogNBz5RfR0mkcdMPPfjpcESGLfx01qQc/X/xp2
	rxaKOzeXq4QFCp2puEC96ZhJkG0OfFXqW0sqaU6s8H567hA/v4YtKUzyvikjzIeP6FiPV+kPGKCj9
	98PbCCbDzmAacfZX5F4+Xgc1dwAS4i4ikqlJYUSVquzZqhZkqtQyZLE8nMOuwEkYaHp5h1HfSlMhm
	27vG14EGmsCxMa+gCXSCvLN9M/tpQ04JGTrrGpOiLW3//Wn0rB0YMcvOfEwIkUF4I4YURTaZm4OVi
	yHwJUkbG7VjtOoN7oRAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDZRc-00G1dn-CU; Thu, 05 Jan 2023 23:14:44 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDVms-00E3yq-T7
	for linux-rockchip@lists.infradead.org; Thu, 05 Jan 2023 19:20:30 +0000
Received: from [IPv6:2a00:23c7:6883:e501:6192:d8f9:963c:a052] (unknown [IPv6:2a00:23c7:6883:e501:6192:d8f9:963c:a052])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: obbardc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 6FEFF6602D2E;
	Thu,  5 Jan 2023 19:20:21 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1672946421;
	bh=5L9drfFJSTu5DZP2sxEv+jFG5NmOrd7W3Q4N9gnPgNE=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=OXQrltlC/bx+E26cNvzRwuM2BZraSxwqp9NuKlbjaAkODY89kqtWTGRQ1a9o9qM9W
	 zfOF6FlAo9rfvQ5swAmjte9abXjsGi5Zs2yzizp5UvOOqFtq8uCrvyjYvkCuA76y8I
	 +I9Bf4e11Hh+kq/OD/qn5Urde+4GpStGTUNr/end09xgR0P2gpeBpAQi24alrBeD71
	 eMD8n118TNjJPeHStj9g/cgSv+HYOIHsy5RbBldoFSKEvBeCtnRU5KHux3QfE+ZMM5
	 yaf4LjiGgCWoAsEhBuHMtCYWzz+U5Qar/rn0ggVwFpwKrNgACbyU7HXjlz7Ib2Fo/L
	 +217K54VdSugw==
Message-ID: <d12fc3f83ace9285f7e1153003b14bc351ce95de.camel@collabora.com>
Subject: Re: [PATCHv6 4/7] dt-bindings: arm: rockchip: add initial rk3588
 boards
From: Christopher Obbard <chris.obbard@collabora.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>, Heiko Stuebner
	 <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Marc Zyngier <maz@kernel.org>, Linus
 Walleij <linus.walleij@linaro.org>, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>,  linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org,  linux-kernel@vger.kernel.org,
 kernel@collabora.com, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Thu, 05 Jan 2023 19:20:19 +0000
In-Reply-To: <20221214182247.79824-5-sebastian.reichel@collabora.com>
References: <20221214182247.79824-1-sebastian.reichel@collabora.com>
	 <20221214182247.79824-5-sebastian.reichel@collabora.com>
User-Agent: Evolution 3.46.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230105_112027_293377_364115C4 
X-CRM114-Status: GOOD (  11.43  )
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

T24gV2VkLCAyMDIyLTEyLTE0IGF0IDE5OjIyICswMTAwLCBTZWJhc3RpYW4gUmVpY2hlbCB3cm90
ZToKPiBBZGQgRFQgYmluZGluZyBkb2N1bWVudGF0aW9uIGZvciB0aGUgUm9ja2NoaXAgUkszNTg4
IEVWQjEsCj4gUmFkeGEgUm9jayA1IE1vZGVsIEEgYW5kIEIuCj4gCj4gQ28tRGV2ZWxvcGVkLWJ5
OiBDaHJpc3RvcGhlciBPYmJhcmQgPGNocmlzLm9iYmFyZEBjb2xsYWJvcmEuY29tPgo+IFNpZ25l
ZC1vZmYtYnk6IENocmlzdG9waGVyIE9iYmFyZCA8Y2hyaXMub2JiYXJkQGNvbGxhYm9yYS5jb20+
Cj4gQWNrZWQtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lAbGlu
YXJvLm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJl
aWNoZWxAY29sbGFib3JhLmNvbT4KPiAtLS0KPiDCoC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Fy
bS9yb2NrY2hpcC55YW1swqDCoMKgwqDCoMKgwqDCoCB8IDE1Cj4gKysrKysrKysrKysrKysrCj4g
wqAxIGZpbGUgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwKPiBiL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbAo+IGluZGV4IGM2
YzY5YTRlMzc3Ny4uNDlkNDQyYWZlNjdmIDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbAo+IEBAIC02MjAsNiArNjIwLDE2
IEBAIHByb3BlcnRpZXM6Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBjb25zdDogcmFkeGEscm9j
azNhCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBjb25zdDogcm9ja2NoaXAscmszNTY4Cj4gwqAK
PiArwqDCoMKgwqDCoCAtIGRlc2NyaXB0aW9uOiBSYWR4YSBSb2NrIDUgTW9kZWwgQQo+ICvCoMKg
wqDCoMKgwqDCoCBpdGVtczoKPiArwqDCoMKgwqDCoMKgwqDCoMKgIC0gY29uc3Q6IHJhZHhhLHJv
Y2stNWEKPiArwqDCoMKgwqDCoMKgwqDCoMKgIC0gY29uc3Q6IHJvY2tjaGlwLHJrMzU4OHMKPiAr
Cj4gK8KgwqDCoMKgwqAgLSBkZXNjcmlwdGlvbjogUmFkeGEgUm9jayA1IE1vZGVsIEIKCkhpIFNl
YmFzdGlhbiwKClRvIGJldHRlciBtYXRjaCBvdGhlciBib2FyZHMgZnJvbSB0aGlzIHZlbmRvciAo
ZS5nLiBSQURYQSBST0NLIDQpCgp3b3VsZCBpdCBiZSBiZXN0IHRvIGNhcGl0YWxpc2UgdGhpcyAo
YW5kIG9idmlvdXNseSB0aGUgbW9kZWwgZmllbGQgaW4KdGhlIHJlc3BlY3RpdmUgRFRTIHBhdGNo
ZXMpIHRoZSBzYW1lPwoKU28gaXQgd291bGQgYmVjb21lICJSYWR4YSBST0NLIDVBIiBhbmQgIlJh
ZHhhIFJPQ0sgNUIiLgoKSXQncyBhbHNvIGNhcGl0YWxpc2VkIHRoaXMgd2F5IG9uIHRoZSBkb2N1
bWVudGF0aW9uIHdlYnNpdGUgWzFdLgoKKEkgdGhpbmsgdGhlIHZlbmRvciBoYXMgc3BlY2lmaWNh
bGx5IGRyb3BwZWQgdGhlIFBpIHJlZmVyZW5jZSBmcm9tCnRoZXNlIGJvYXJkcywgYnV0IEkgZG9u
J3Qga25vdyB3aHkpCgpUaGFua3MhCkNocmlzCgpbMV06IGh0dHBzOi8vd2lraS5yYWR4YS5jb20v
Um9jazUvNUIKCgoKPiArwqDCoMKgwqDCoMKgwqAgaXRlbXM6Cj4gK8KgwqDCoMKgwqDCoMKgwqDC
oCAtIGNvbnN0OiByYWR4YSxyb2NrLTViCj4gK8KgwqDCoMKgwqDCoMKgwqDCoCAtIGNvbnN0OiBy
b2NrY2hpcCxyazM1ODgKPiArCj4gwqDCoMKgwqDCoMKgIC0gZGVzY3JpcHRpb246IFJpa29tYWdp
YyBNSzgwOCB2MQo+IMKgwqDCoMKgwqDCoMKgwqAgaXRlbXM6Cj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqAgLSBjb25zdDogcmlrb21hZ2ljLG1rODA4Cj4gQEAgLTcwNCw2ICs3MTQsMTEgQEAgcHJvcGVy
dGllczoKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIGNvbnN0OiByb2NrY2hpcCxyazMzOTktc2Fw
cGhpcmUtZXhjYXZhdG9yCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBjb25zdDogcm9ja2NoaXAs
cmszMzk5Cj4gwqAKPiArwqDCoMKgwqDCoCAtIGRlc2NyaXB0aW9uOiBSb2NrY2hpcCBSSzM1ODgg
RXZhbHVhdGlvbiBib2FyZAo+ICvCoMKgwqDCoMKgwqDCoCBpdGVtczoKPiArwqDCoMKgwqDCoMKg
wqDCoMKgIC0gY29uc3Q6IHJvY2tjaGlwLHJrMzU4OC1ldmIxLXYxMAo+ICvCoMKgwqDCoMKgwqDC
oMKgwqAgLSBjb25zdDogcm9ja2NoaXAscmszNTg4Cj4gKwo+IMKgwqDCoMKgwqDCoCAtIGRlc2Ny
aXB0aW9uOiBSb2NrY2hpcCBSVjExMDggRXZhbHVhdGlvbiBib2FyZAo+IMKgwqDCoMKgwqDCoMKg
wqAgaXRlbXM6Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBjb25zdDogcm9ja2NoaXAscnYxMTA4
LWV2Ygo+IC0tIAo+IDIuMzkuMAo+IAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
