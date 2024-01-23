Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 363D6C47DDB
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Jan 2024 04:11:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mcjv3OnFeacow4ajrzTvN2p0/+HjtmHmvdENu31+vD0=; b=EjV14uAosratEn
	zFtopFbBOGIXn7zHSzpDz4PFabmKvxi9nrS+8fcNlVCOBg71/ekpGuYCTocAff1RJyDaaal5cRdZO
	hyFbMByjYTegMNFIcKZ5JlJo5RiVJmbipbMZn6+ZwZp9QxsJrLKkxzE1X2ekww/INTvgf5r0vZ7d7
	L6w46jiGwyKJBwvg01LJfD9jWLLOqUJcuqzSCrJTmKqGdFxi8/qiPna0zaW+D3Rf5ztqhV/LlE1kj
	3X+SyNv9XpemwEXvvFnIuFDA7fGJecn18FwZO/KozqaM4B0phjKx4s3DTmMf0b6uJMfhuWZwYcSEe
	k+4eOlX/RwWABT7JJxxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rS87h-00F2i4-1d;
	Tue, 23 Jan 2024 04:10:53 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rS87e-00F2gr-2V;
	Tue, 23 Jan 2024 04:10:52 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id 52A0E5C02FF;
	Mon, 22 Jan 2024 23:10:45 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Mon, 22 Jan 2024 23:10:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:subject:subject:to:to; s=fm2;
	 t=1705983044; x=1706069444; bh=X1AxwnZE1mN7IbTs9hN/G30XDwpnHhRi
	KWHtMsjJUm0=; b=aEqI77XQJ4u07KvVtt6AD42ntSY7SPwR7QWMDRv/EFaSGfbd
	Dtk1PhZ+JxLzzsw809IdtRzqNM4BTLeZLaNxRDQGfS7SwMe5Pi2lTapAYet7P0SX
	DHYpMQbwe7kr7oosX+5hY5409EO+7Ue6W5jCxBFvOb3MJBt5NEGlt6neUKOcxfgb
	zYt8/ysAbh3mkirJ0acAZhpXgI/1M2DjJpXU1l/l5ktSyH8y3lI6xB4PDXSfuHbe
	ivzfyZsZyoSVukzOpLmXezsaaiBjmJTv7DZpnDR8TH6evmj06usThJDjaQh2IFqi
	yv1f49ILCXV6vsPjRWLU/4U+gxTtHDIfj1DZQA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1705983044; x=
	1706069444; bh=X1AxwnZE1mN7IbTs9hN/G30XDwpnHhRiKWHtMsjJUm0=; b=Q
	fHAgxVbCVfHB8lh5RXJqESKdEPFJzwdgtykuZLFvo2eSgc07a8tXMKYM25PBzvw9
	ksL1+MnLbNauyYa/E6pmv3hUIICLycJ8M7Uxfh1f5WM8OQuA6mGIspL4sD74upcJ
	D4adpI4r6/1iC7E4NUWB0BOCEGY+rj7L6WeZPa81NcK97JExSpP+7M94uPHKCuGL
	Hb1Tg9g07jEFmUbOU2o0VKWc+ZTdiSZtKXXMh32rLcCoE2M96gev3/I29LYnQG1x
	OtglSD2mZ6xoaIpQPIj2yovrY7TzbNIEC5Q/WEmU/84A5PVCgMP/TiuLEzdGLZZx
	XocCV4fr5OaqQN6Ktcotw==
X-ME-Sender: <xms:QzyvZY47fvbmwvwVakG6Y3PISRlTm1pSxFQpGmukHDv5aNJYa8UGdQ>
    <xme:QzyvZZ4LH7AUz3tEzWaDY5tS5DaofqSEXl8FLzAfGaf0CZTReddMgN5Xm0d4gu_OY
    CpaKLd2Dg>
X-ME-Received: <xmr:QzyvZXc-sJLEjVCubf5yYB0amMFwc96MK1008N-vn-3hPjh9hBIPC1xFGe64SgRJV-iEo7upeMlpjrKeldqiAolGJ966qCI6AlRRTg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdekjedgieeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepkfffgggfuffvvehfhfgjtgfgsehtkeertddtvdejnecuhfhrohhmpefvihhm
    ucfnuhhnnhcuoehtihhmsehfvggrthhhvghrthhophdrohhrgheqnecuggftrfgrthhtvg
    hrnhepueegfefgveeuiedtheffgfefveejkeetiefhhfdvjeevlefhueekudeuleeghfek
    necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepthhimh
    esfhgvrghthhgvrhhtohhprdhorhhg
X-ME-Proxy: <xmx:QzyvZdLuwNmW7gtVIa2fKi7ijGvsnYQ5oG7Jym2PmuV4agGah-dLXg>
    <xmx:QzyvZcIfko-yFUUatPPba4w-m3MtsRa1okumhLC-th_aLwMPe9_QgA>
    <xmx:QzyvZextfm3wQD7NLq3YFSAzM5eK0s_yW-kVgxJ5cQWPxoX5oK7fuw>
    <xmx:RDyvZazTe1eN29OyB8mkpFbtZBqGKAmMZtr_5wsC_x1VgoHIVEGQ0w>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 22 Jan 2024 23:10:38 -0500 (EST)
Message-ID: <93d775df-af84-44ff-870e-f720a33ddf34@feathertop.org>
Date: Tue, 23 Jan 2024 15:10:35 +1100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] dt-bindings: rockchip: rk809: Document audio codec
 properties
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-rockchip@lists.infradead.org, conor.dooley@microchip.com,
 robh+dt@kernel.org, devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org, Chris Zhong <zyw@rock-chips.com>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Lee Jones <lee@kernel.org>, Zhang Qing <zhangqing@rock-chips.com>,
 linux-kernel@vger.kernel.org
References: <20240120135529.899403-1-tim@feathertop.org>
 <20240120135529.899403-3-tim@feathertop.org>
 <04ccf5f5-1f02-42f9-b1fc-b781c54d7ae9@linaro.org>
From: Tim Lunn <tim@feathertop.org>
In-Reply-To: <04ccf5f5-1f02-42f9-b1fc-b781c54d7ae9@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240122_201051_003547_1557288A 
X-CRM114-Status: GOOD (  18.45  )
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

Ck9uIDEvMjIvMjQgMTk6MTQsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4gT24gMjAvMDEv
MjAyNCAxNDo1NSwgVGltIEx1bm4gd3JvdGU6Cj4+IFJvY2tjaGlwIFJLODA5IHNoYXJlcyB0aGUg
c2FtZSBhdWRpbyBjb2RlYyBibG9jayBhcyB0aGUgcms4MTcgbWZkLCBhbmQKPj4gaXMgY29tcGF0
aWJsZSB3aXRoIHRoZSBleGlzdGluZyByazgxN19jb2RlYyBkcml2ZXIuCj4gUGxlYXNlIHVzZSBz
dWJqZWN0IHByZWZpeGVzIG1hdGNoaW5nIHRoZSBzdWJzeXN0ZW0uIFlvdSBjYW4gZ2V0IHRoZW0g
Zm9yCj4gZXhhbXBsZSB3aXRoIGBnaXQgbG9nIC0tb25lbGluZSAtLSBESVJFQ1RPUllfT1JfRklM
RWAgb24gdGhlIGRpcmVjdG9yeQo+IHlvdXIgcGF0Y2ggaXMgdG91Y2hpbmcuCk9rIEkgd2lsbCBj
aGVjayB0aGlzLgo+Cj4+IFRoaXMgcGF0Y2ggaW50cm9kdWNlcyB0byB0aGUgYmluZGluZyB0aGUg
c3RhbmRhcmQgcHJvcGVydHkgI3NvdW5kLWRhaS1jZWxscwo+PiBhbmQgYWxzbyBhbiBvcHRpb25h
bCBjb2RlYyBjaGlsZCBub2RlIHRvIGhvbGQgY29kZWMgc3BlY2lmaWMgcHJvcGVydGllcy4KPj4g
Q3VycmVudGx5IHRoZXJlIGlzIG9ubHkgb25lIHByb3BlcnR5IGluIHRoaXMgbm9kZSBob3dldmVy
IHRoZSBkb3duc3RyZWFtCj4+IGRyaXZlciBzaG93cyBhIG51bWJlciBvZiBvdGhlciBwcm9wZXJ0
aWVzIHRoYXQgYXJlIHN1cHBvcnRlZCBieSB0aGUgY29kZWMKPj4gaGFyZHdhcmUsIHRoYXQgY291
bGQgYmUgaW1wbGVtZW50ZWQgaW4gdGhlIGZ1dHVyZS4gVGhpcyBtYWludGFpbnMgdGhlCj4+IGV4
aXN0aW5nIGRyaXZlciBBQkkgYW5kIGtlZXBzIGNvbnNpc3RlbmN5IHdpdGggdGhlIHJrODE3IGJp
bmRpbmdzLgo+IFNvIHlvdSBhcmUgYWRkaW5nIGEgbmV3IG5vZGU/IEp1c3QgZm9yIG9uZSBwcm9w
ZXJ0eT8gTm8sIGp1c3QgcHV0IGl0Cj4gaW50byBwYXJlbnQgbm9kZS4KVGhlIGV4aXN0aW5nIHVw
c3RyZWFtIGNvZGVjIGRyaXZlciBwYXJzZXMgdGhlIHByb3BlcnR5IGZyb20gdGhlICJjb2RlYyIg
CnN1Yi1ub2RlLCBpZiBJCm1vdmUgaXQgdG8gdGhlIHBhcmVudCBub2RlIGhlcmUsIEkgd2lsbCBu
ZWVkIHRvIHBhdGNoIHRoZSBjb2RlYyBkcml2ZXIgCnRvIHNlYXJjaCBpbiBib3RoIGxvY2F0aW9u
cywKc28gYXMgdG8gbm90IGJyZWFrIHRoZSByazgxNyBiaW5kaW5ncy7CoCBJZiB0aGF0IGlzIHBy
ZWZlcnJlZCwgSSBjYW4gZG8gCml0IHRoYXQgd2F5Lgo+Cj4gRG93bnN0cmVhbSBkcml2ZXIgZG9l
cyBub3QgbWF0dGVyIGF0IGFsbCBpbiB0aGF0IGFzcGVjdC4KPgpUaGUgY29kZWMgaGFyZHdhcmUg
c3VwcG9ydHMgYWRkaXRpb25hbCBwcm9wZXJ0aWVzIGJ1dCB0aGV5IGFyZSBub3QgCmltcGxlbWVu
dGVkIGN1cnJlbnRseSBpbgp1cHN0cmVhbSBkcml2ZXIuCgoKPgo+IEJlc3QgcmVnYXJkcywKPiBL
cnp5c3p0b2YKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
