Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFCEDFF4956
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Mar 2026 08:04:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zYQhBx8C35xlNLqXALSH1cy1DVdFy5Vtpaz5SYmClFs=; b=tpIxVNIS8lPhId
	qJ+U56jVMojzBL+wlrb45BgrFhgocGsEA7VQ9bZs0Iop7Vgo6ANQPuxYQfURVcaecCZ2yRgE2fRPd
	mWVyIbf0Adq2J9Esn0aHEwCNRNKmj1eMoiMJUEe0De35+yxBg2+Q2V/EKcrS+fTV1rXKGhHlZa0DN
	Iy76ag0atdBqqSIoAHvjz5tMpcBhjydNL6/h5W0H4XhSumyrmpIi/GTjG0AMPj/OMaweQ2+7GncUo
	AEbGr91sEaABRQfZ0HJ+g0mpVpsnqwYd3nJBRo81UeMlIp4EVamzmll4McUic7kuYKPx3OiwbaXLH
	Lt9ozdKBXjgMQHUUhSnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w77bq-0000000AoBr-2fhB;
	Mon, 30 Mar 2026 08:04:30 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w77bp-0000000AoBa-1VLp;
	Mon, 30 Mar 2026 08:04:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 808DC60121;
	Mon, 30 Mar 2026 08:04:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6D32C4CEF7;
	Mon, 30 Mar 2026 08:04:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774857868;
	bh=YiDVacVWTR7QV0Z3LWZZDvKO3j+7kXqpLoj9VeVHTHs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=AHZiV6Maae+Zyz70DUVCwmRVnqQUUx9YCRgxLOxE6h2gIyVxyzcZsQV4+fdXbe4xo
	 y7jvrSARcS7mDL0ulc1DPa1ZRPXDj8+DqDVxjgO492MIvOFskPKzc6LE2+HE8ANCWS
	 VrA1+6P0RnbuNyj1Fs7bN7nXehni53nFOxXU40tkJdxsQZo9yd+TybC6sSsLcGfIut
	 KT2QzqMQ6Yd1k8Owj96/QWlpWQWflTJke/Ba5Yps9Pw3fl9DxHGJmlKyoiqb4syRhR
	 HfPqz6MWvAqUl6e/DihD01UL427JeOsyfCRMOdTdx/sA9Wi5x5RW3D7oFDmiXbIBRJ
	 sdM5Nu/tcdPQw==
Message-ID: <4525cc8e-cb05-4126-ad91-c2e18b809b84@kernel.org>
Date: Mon, 30 Mar 2026 10:04:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Add RK3562 serial aliases
To: =?UTF-8?B?6LCi6Ie06YKmIChYSUUgWmhpYmFuZyk=?= <Yeking@Red54.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org,
 finley.xiao@rock-chips.com, heiko@sntech.de, kever.yang@rock-chips.com,
 krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh@kernel.org
References: <9b3ee9e9-d44d-49b1-81ac-9c3806dc0efb@kernel.org>
 <tencent_723DE3D68C7F44CF67ED583F558130B47208@qq.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <tencent_723DE3D68C7F44CF67ED583F558130B47208@qq.com>
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

T24gMzAvMDMvMjAyNiAwNDo0Niwg6LCi6Ie06YKmIChYSUUgWmhpYmFuZykgd3JvdGU6Cj4gT24g
U2F0LCBNYXIgMjgsIDIwMjYgYXQgMDQ6MDg6NTdQTSArMDEwMCwgS3J6eXN6dG9mIEtvemxvd3Nr
aSB3cm90ZToKPj4gT24gMjgvMDMvMjAyNiAxNDowNSwg6LCi6Ie06YKmIChYSUUgWmhpYmFuZykg
d3JvdGU6Cj4+PiBUaGlzIGZpeGVzIHRoZSBzdGRvdXQtcGF0aCBpbiByazM1NjItZXZiMi12MTAu
ZHRzLgo+Pj4KPj4+IEZpeGVzOiBjZWI2ZWYxZWE5MDAgKCJhcm02NDogZHRzOiByb2NrY2hpcDog
QWRkIFJLMzU2MiBldmIyIGRldmljZXRyZWUiKQo+Pj4gU2lnbmVkLW9mZi1ieTog6LCi6Ie06YKm
IChYSUUgWmhpYmFuZykgPFlla2luZ0BSZWQ1NC5jb20+Cj4+PiAtLS0KPj4+ICBhcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2Mi5kdHNpIHwgMTAgKysrKysrKysrKwo+Pj4gIDEgZmls
ZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTYyLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzU2Mi5kdHNpCj4+PiBpbmRleCBlNDgxNmFhM2RhZTAuLjE0ZTc0ZThhYzdkZiAx
MDA2NDQKPj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTYyLmR0c2kK
Pj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTYyLmR0c2kKPj4+IEBA
IC0yNiw2ICsyNiwxNiBAQCBhbGlhc2VzIHsKPj4+ICAJCWdwaW8yID0gJmdwaW8yOwo+Pj4gIAkJ
Z3BpbzMgPSAmZ3BpbzM7Cj4+PiAgCQlncGlvNCA9ICZncGlvNDsKPj4+ICsJCXNlcmlhbDAgPSAm
dWFydDA7Cj4+PiArCQlzZXJpYWwxID0gJnVhcnQxOwo+Pj4gKwkJc2VyaWFsMiA9ICZ1YXJ0MjsK
Pj4+ICsJCXNlcmlhbDMgPSAmdWFydDM7Cj4+PiArCQlzZXJpYWw0ID0gJnVhcnQ0Owo+Pj4gKwkJ
c2VyaWFsNSA9ICZ1YXJ0NTsKPj4+ICsJCXNlcmlhbDYgPSAmdWFydDY7Cj4+PiArCQlzZXJpYWw3
ID0gJnVhcnQ3Owo+Pj4gKwkJc2VyaWFsOCA9ICZ1YXJ0ODsKPj4+ICsJCXNlcmlhbDkgPSAmdWFy
dDk7Cj4+Cj4+IFVBUlQgYWxpYXNlcyBhcmUgcHJvcGVydGllcyBvZiB0aGUgYm9hcmRzLCBub3Qg
U29DLgo+Pgo+PiBCZXN0IHJlZ2FyZHMsCj4+IEtyenlzenRvZgo+IAo+IFNvIGFyZSB5b3Ugc2F5
aW5nIHRoYXQgd2UgbmVlZCB0byByZW1vdmUgdGhlIHNlcmlhbCBhbGlhc2VzIGZyb20gZmlsZXMK
PiBsaWtlIHJrMzMwOC5kdHNpLCByazMzMjguZHRzaSwgcmszMzY4LmR0c2ksIHJrMzM5OS1iYXNl
LmR0c2ksCj4gcmszNTZ4LWJhc2UuZHRzaSwgcmszNTc2LmR0c2ksIHJrMzU4OC1iYXNlLmR0c2ks
IGFuZCBzbyBvbj8KCldlbGwsIEkgdHJpZWQgb25jZSBidXQgcGVvcGxlIGRpc2FncmVlZCBiZWNh
dXNlIG9mIGltcGFjdCwgc28gcHJvYmFibHkgbm90LgoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
