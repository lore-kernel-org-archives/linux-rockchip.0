Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F24BECD37AC
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 May 2026 08:03:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UPBCErwDzEBWnr0hvjF88KSDZ3uY1apIfgcr4t3/Enk=; b=0QDKadxBAp+0xX
	rTRQG6oKXgUZ/Ua0JzB8XCRLI2jWgfZSoZFfJ1cXI9+EI75Cz2F1RFtzCvMLGNV2nhup7bT3NyEC4
	DpyXMwQQY8lisKJBUxqQqdKSom7n//LHPz47+Dm1Wyr+PUPhG2jaAVCdFE0mRcpuDyZAM4dFePk/q
	+GFxtyzV+AS2U6B8eD2pa/qAgDH0GzCEOskEionZmL5D7YqpcArFgviMrwO6h0cd1xTTL2EXUxh+x
	hCIol628I3RfZ1zLZO1IRoYbTGVNF5zV3IFTV8ZhTBAWSgmTKTj8QwLtDm5hnNGQtu8I0v6tKOhx8
	vcmCOF4JwSOdBUwd0zXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMLc4-0000000Ch5e-2ZF9;
	Mon, 11 May 2026 08:03:40 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMLc2-0000000Ch4G-1GTJ;
	Mon, 11 May 2026 08:03:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1778486614;
	bh=OOD9ejGOq1GD23MKZbk3wWbT69dIL2i532BvtjlqEA4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=f/doleWfbDXAM+7D0dCxYoFGCSg3KnthDXDoMsGPNoO3k35eOH4dooG6z9nefPe4m
	 86J4pMorgiQXIkBkd21pAlpC2AeiUWpjcf0stP7przS5L5MLautRM62dNU9EbOoPn/
	 SoTri/wqpYBMsDiBvaKFSw2RZrAFAnP7bwk8ZIEjqlVXYrmIZECyBbiK62sbV4yo84
	 YDUTGNXVu+HFsVE3vwfEaToC6nxAlb5euL0wtj2mpqmagLim1Nrhyleipt57V5yvag
	 UNwpGmlc9xOgcDCR8P1sRCuOfaN6TmGPjcJm5J9rl/2qT/cA+9kFKfGFPdv9zu+ixJ
	 ZftEEEt9NS3Bg==
Received: from [100.64.1.43] (unknown [100.64.1.43])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 44E1E17E1004;
	Mon, 11 May 2026 10:03:34 +0200 (CEST)
Message-ID: <57c8310f-c972-40b2-96ed-90358d96b2ac@collabora.com>
Date: Mon, 11 May 2026 10:03:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 0/5] Add support for Verisilicon IOMMU used by media
 codec blocks
To: =?UTF-8?B?SsO2cmcgUsO2ZGVs?= <joro@8bytes.org>
Cc: will@kernel.org, robin.murphy@arm.com, krzk+dt@kernel.org,
 conor+dt@kernel.org, heiko@sntech.de, iommu@lists.linux.dev,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com
References: <20260415072349.44237-1-benjamin.gaignard@collabora.com>
 <33nsz23rcstwznq6dnsuibndbwtoc767evshltj35kgysdg63r@fxhwobu53cww>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <33nsz23rcstwznq6dnsuibndbwtoc767evshltj35kgysdg63r@fxhwobu53cww>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_010338_523533_0A4135B7 
X-CRM114-Status: GOOD (  10.24  )
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

CkxlIDExLzA1LzIwMjYgw6AgMTA6MDEsIErDtnJnIFLDtmRlbCBhIMOpY3JpdMKgOgo+IE9uIFdl
ZCwgQXByIDE1LCAyMDI2IGF0IDA5OjIzOjM2QU0gKzAyMDAsIEJlbmphbWluIEdhaWduYXJkIHdy
b3RlOgo+PiBCZW5qYW1pbiBHYWlnbmFyZCAoNSk6Cj4+ICAgIGR0LWJpbmRpbmdzOiB2ZW5kb3It
cHJlZml4ZXM6IEFkZCBWZXJpc2lsaWNvbgo+PiAgICBkdC1iaW5kaW5nczogaW9tbXU6IHZlcmlz
aWxpY29uOiBBZGQgYmluZGluZyBmb3IgVlNJIElPTU1VCj4+ICAgIGlvbW11OiBBZGQgdmVyaXNp
bGljb24gSU9NTVUgZHJpdmVyCj4+ICAgIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgdmVyaXNp
bGljb24gSU9NTVUgbm9kZSBvbiBSSzM1ODgKPj4gICAgYXJtNjQ6IGRlZmNvbmZpZzogZW5hYmxl
IFZlcmlzaWxpY29uIElPTU1VIGZvciBSb2NrY2hpcCBSSzM1ODgKPj4KPj4gICAuLi4vYmluZGlu
Z3MvaW9tbXUvdmVyaXNpbGljb24saW9tbXUueWFtbCAgICAgfCAgNzEgKysKPj4gICAuLi4vZGV2
aWNldHJlZS9iaW5kaW5ncy92ZW5kb3ItcHJlZml4ZXMueWFtbCAgfCAgIDIgKwo+PiAgIE1BSU5U
QUlORVJTICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgOCArCj4+ICAgYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtYmFzZS5kdHNpIHwgIDExICsKPj4gICBh
cmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnICAgICAgICAgICAgICAgICAgfCAgIDEgKwo+PiAg
IGRyaXZlcnMvaW9tbXUvS2NvbmZpZyAgICAgICAgICAgICAgICAgICAgICAgICB8ICAxMSArCj4+
ICAgZHJpdmVycy9pb21tdS9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICAgIHwgICAxICsK
Pj4gICBkcml2ZXJzL2lvbW11L3ZzaS1pb21tdS5jICAgICAgICAgICAgICAgICAgICAgfCA3OTYg
KysrKysrKysrKysrKysrKysrCj4+ICAgOCBmaWxlcyBjaGFuZ2VkLCA5MDEgaW5zZXJ0aW9ucygr
KQo+PiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvaW9tbXUvdmVyaXNpbGljb24saW9tbXUueWFtbAo+PiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBk
cml2ZXJzL2lvbW11L3ZzaS1pb21tdS5jCj4gQXBwbGllZCB0byB0aGUgbmV3IHZlcmlzaWxpY29u
IGJyYW5jaC4KClRoYW5rcyBhIGxvdC4KClJlZ2FyZHMsCkJlbmphbWluCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
