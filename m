Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90472C61D9B
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Nov 2023 13:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xPbjIsfWvWvsafa+UGOW/whczHXC8Aa/wsLxOJa4id0=; b=O0zSL+gQ9Xj8/X
	k9r5N8Hd7V5+MMdbKG924GJA6Rabrle52YMTYgPOey+wFhELxNrI73GLVSuNqU+MONdu3gMHCZXhe
	dwlrVm1idSvyr8PqkPGmGgIb3CDiRKF02D0f6a/iI5uU5pa2pzQ63/rQVwY3hg9OWB0KF1KXnLTbN
	yL1S3D5ZPoLk57xZ/+auMrSiXF1L86iRQHOqTN0LTWxzgW8wE6mf0BC9XTTQ8INmiH9xPfhAbRn87
	MVdn2BS6FSY5Y3shz7CchEDHsFMdEf04lrtAuFFYA1ypH0qdFi5VzMkfkxYJZYXrTtl2gF1bZRGih
	3v2L9pgSRk77i9RQcdMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5mzP-001uRj-38;
	Wed, 22 Nov 2023 13:09:59 +0000
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5mzL-001uQt-32;
	Wed, 22 Nov 2023 13:09:57 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id 702F33200AFD;
	Wed, 22 Nov 2023 08:09:54 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Wed, 22 Nov 2023 08:09:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to;
	 s=fm3; t=1700658593; x=1700744993; bh=8JYFkWpBAJZ7oAK7axaEz4qpz
	7gfYd54GwE6wk4IGMM=; b=wEXHfJxmZpXxMt+bflkLpJuZXa2+w5392/GKS3bK9
	qzFFhucVp97QXwNuc2j59OCRTXBjK3+S22A6b7xJJUV0pXCV77/wo71QD9feJLK/
	+FmdIw7/60gMCwrxc/WQHIVUjUgCfFkmjzJ57TRSBe4uXdrAZbWb/7JemNd5XOcd
	jWfyK5UHMoWj3bZHb+AtnexbzfLmxm9AUyU14XbL2DKyi9vx9HAEdPRNTKRiOj1O
	W8dkPF2KIMHnFbI3oP6dwW6RWHOrXC0xSNfSQstrg1GJumsE9fDyjpIoQXwSfM62
	kn8OxAi+4CxFxP9JZ52o4dH3q6R4YcqKxAk6nBb5YKmeQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1700658593; x=1700744993; bh=8JYFkWpBAJZ7oAK7axaEz4qpz7gfYd54GwE
	6wk4IGMM=; b=hyHO2FVMSr3vLZOUPe7MO844IQ9H+/AqUAgvMS/rFjKAdn0KRau
	oT2iW6iCqG+IslrvikVk8cq5d2aO3SmgGO0XTGdG0X/OOAv0d+5Of4J5ReUS2Qkr
	/SvmcuTXpK0s7SOTFoGEuhDCrlc5VLF50qWusxpfFbfeJKUzLntFewWnivFQoIat
	rqKUm0O+6M/KkrvLF+q4YLy9wwA/CF9jzo+lENfDswPs6XBn3rAl6oStWkF59uJT
	asC94VYaJUFpo8vHy1pXlBgF0H4CvvvA7Lh130fAXOG4jFkbCEgbUzS9t3ZzrXFY
	MGx7dAbBcCOm2T+wRstAluOXBKiCGUeOmhQ==
X-ME-Sender: <xms:of1dZfGp4OxSZRv144xAfk8iTdZwVrjsmdhgiMENcr0G08RXRBkFTA>
    <xme:of1dZcX9eKQSxXpHjqeMllCc0S60ACylKRCgd8NzRzpPh5IeOkjCj3C9dGIhZLQQB
    un6EYSXKg>
X-ME-Received: <xmr:of1dZRJjf3oXH7c29mwGKAIHvihOSuvSnkwvV4F_P2sD2VmY1W96A7gTutcSVAVxER_lpjE2LvYg0E5gypLSW2lcfQtA38_vk4kW3Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudehuddggeelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepkfffgggfuffvvehfhfgjtgfgsehtkeertddtvdejnecuhfhrohhmpefvihhm
    ucfnuhhnnhcuoehtihhmsehfvggrthhhvghrthhophdrohhrgheqnecuggftrfgrthhtvg
    hrnhepueegfefgveeuiedtheffgfefveejkeetiefhhfdvjeevlefhueekudeuleeghfek
    necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepthhimh
    esfhgvrghthhgvrhhtohhprdhorhhg
X-ME-Proxy: <xmx:of1dZdHGutAX9pizXGlIA9_q9c_ZU0HSFxAitli6NEpWMo7gC0bgUg>
    <xmx:of1dZVUxFnEGDViaGbxM2xlfa7-XuR_R8lg0autLWBfavbd0yITeyg>
    <xmx:of1dZYP7B8i5-0hmGtbmPJqDvDSN_SPYDpjXMrbr4nLW3-evqI0FIg>
    <xmx:of1dZUGDYYQYxYZ0spK83MoEU0sLlORAPmJ_ZZAzAOlE8k8FPnSpUQ>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 22 Nov 2023 08:09:49 -0500 (EST)
Message-ID: <4baa862c-3e05-46f4-a70e-aaa50ecd424a@feathertop.org>
Date: Thu, 23 Nov 2023 00:09:46 +1100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/9] ARM: dts: rockchip: rv1126: Add i2c2 nodes
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Cc: Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <20231122122232.952696-1-tim@feathertop.org>
 <20231122122232.952696-5-tim@feathertop.org>
 <813224c2-398d-4c2d-8909-1839ce63be60@linaro.org>
From: Tim Lunn <tim@feathertop.org>
In-Reply-To: <813224c2-398d-4c2d-8909-1839ce63be60@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_050956_154803_645FD3B3 
X-CRM114-Status: GOOD (  14.31  )
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

SGkgS3J6eXN6dG9mCgpPbiAxMS8yMi8yMyAyMzoyOSwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90
ZToKPiBPbiAyMi8xMS8yMDIzIDEzOjIyLCBUaW0gTHVubiB3cm90ZToKPj4gQWRkIGkyYzIgbm9k
ZSBhbmQgaTJjMl94ZmVyIHBpbmN0cmwgZm9yIFJvY2tjaGlwIFJWMTEyNgo+Pgo+PiBTaWduZWQt
b2ZmLWJ5OiBUaW0gTHVubiA8dGltQGZlYXRoZXJ0b3Aub3JnPgo+PiAtLS0KPj4KPj4gKG5vIGNo
YW5nZXMgc2luY2UgdjEpCj4+Cj4+ICAgYXJjaC9hcm0vYm9vdC9kdHMvcm9ja2NoaXAvcnYxMTI2
LXBpbmN0cmwuZHRzaSB8IDEwICsrKysrKysrKysKPj4gICBhcmNoL2FybS9ib290L2R0cy9yb2Nr
Y2hpcC9ydjExMjYuZHRzaSAgICAgICAgIHwgMTUgKysrKysrKysrKysrKysrCj4+ICAgMiBmaWxl
cyBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9i
b290L2R0cy9yb2NrY2hpcC9ydjExMjYtcGluY3RybC5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMv
cm9ja2NoaXAvcnYxMTI2LXBpbmN0cmwuZHRzaQo+PiBpbmRleCA0Zjg1YjdiM2ZjNGMuLjE2N2E0
OGFmYTNhNCAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvcm9ja2NoaXAvcnYxMTI2
LXBpbmN0cmwuZHRzaQo+PiArKysgYi9hcmNoL2FybS9ib290L2R0cy9yb2NrY2hpcC9ydjExMjYt
cGluY3RybC5kdHNpCj4+IEBAIC04Nyw2ICs4NywxNiBAQCBpMmMwX3hmZXI6IGkyYzAteGZlciB7
Cj4+ICAgCQkJCTwwIFJLX1BCNSAxICZwY2ZnX3B1bGxfbm9uZV9kcnZfbGV2ZWxfMF9zbXQ+Owo+
PiAgIAkJfTsKPj4gICAJfTsKPj4gKwlpMmMyIHsKPj4gKwkJL29taXQtaWYtbm8tcmVmLwo+PiAr
CQlpMmMyX3hmZXI6IGkyYzIteGZlciB7Cj4+ICsJCQlyb2NrY2hpcCxwaW5zID0KPj4gKwkJCQkv
KiBpMmMyX3NjbCAqLwo+PiArCQkJCTwwIFJLX1BDMiAxICZwY2ZnX3B1bGxfbm9uZV9kcnZfbGV2
ZWxfMF9zbXQ+LAo+PiArCQkJCS8qIGkyYzJfc2RhICovCj4+ICsJCQkJPDAgUktfUEMzIDEgJnBj
ZmdfcHVsbF9ub25lX2Rydl9sZXZlbF8wX3NtdD47Cj4+ICsJCX07Cj4+ICsJfTsKPj4gICAJcHdt
MiB7Cj4+ICAgCQkvb21pdC1pZi1uby1yZWYvCj4+ICAgCQlwd20ybTBfcGluczogcHdtMm0wLXBp
bnMgewo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvcm9ja2NoaXAvcnYxMTI2LmR0
c2kgYi9hcmNoL2FybS9ib290L2R0cy9yb2NrY2hpcC9ydjExMjYuZHRzaQo+PiBpbmRleCA2YzVj
OTI4ZjA2YzcuLmNmMWRmNzVkZjQxOCAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMv
cm9ja2NoaXAvcnYxMTI2LmR0c2kKPj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvcm9ja2NoaXAv
cnYxMTI2LmR0c2kKPj4gQEAgLTIxLDYgKzIxLDcgQEAgLyB7Cj4+ICAgCj4+ICAgCWFsaWFzZXMg
ewo+PiAgIAkJaTJjMCA9ICZpMmMwOwo+PiArCQlpMmMyID0gJmkyYzI7Cj4gTm8sIHRoaXMgc2hv
dWxkIGJlIHBlci1ib2FyZCB0byBtYXRjaCBib2FyZCBsYWJlbGluZy9zY2hlbWF0aWNzLgo+Ckkg
d2FzIGp1c3QgZm9sbG93aW5nIHdoYXQgc2VlbWVkIHRvIGJlIGRvbmUgaW4gc29tZSBvdGhlciBS
b2NrY2hpcCAKPFNvQz4uZHRzaSBmaWxlcy4gSSB3aWxsIG1vdmUgdGhpcyBhbGlhcwphbmQgdGhl
IG90aGVyIG9uZXMgZm9yIHNlcmlhbCBhbmQgZXRoZXJuZXQgaW50byB0aGUgYm9hcmQgZmlsZSBp
bnN0ZWFkIHRoZW4uCgpSZWdhcmRzCiDCoCBUaW0KPgo+IEJlc3QgcmVnYXJkcywKPiBLcnp5c3p0
b2YKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
