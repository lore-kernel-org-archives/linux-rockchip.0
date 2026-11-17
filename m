Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E3C606A8AD
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2026 08:25:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=KvsPb78z;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Ph5A7mc/
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=EDtUZTy6FqW9Gy2SdTDYnyFYpbooY5La6AQ0cOZtkkM=; b=KvsPb78ztE/1GQRXTBXzPDOXDu
	1Q8WWDkZskXF337eHAZnlAE0uBPdjpGaLoAwH5DfTFRGXeboLp5WuM3WKry39MKgjeFxJL51Hwh8z
	izjBsaVtjK1Dx0lWw1pJ2sqTJhiQrVYb8q5tSxyqMsaeQrcXPZ7B2DTq9I1ckQEIqj3nkodPYEfuU
	e3FEWsAvCynSGO98qQCy6W7hZj/Dpa4ZkHPV3mj4tcSLitlgnoADN73m8qFaEgB3l6jibfK47bPxG
	8Mx1XzmFDd4m1SSO0aAW9wsUn1GDiCdZ9CaFBuhKFLM0SXRMZ6pu5GkvYQWIIGmW9q44PZvX+x8fy
	kEPVECJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTEVc-00000004sVU-35tE;
	Tue, 17 Nov 2026 08:25:44 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTEVb-00000004sV6-0ZDU;
	Tue, 17 Nov 2026 08:25:43 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8BFDF466EA;
	Tue, 17 Nov 2026 08:25:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5E651F000C5;
	Tue, 17 Nov 2026 08:25:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794903942;
	bh=+hujyyJhAtV9+j0TPvcHHV2OIVquZfJfleCKzkG+n+Y=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=Ph5A7mc/DTICXLffxM//Teh42HusVR1+ZEw2K90Oe2JJ35j0et/QAQtx13zhz5FXR
	 jPn1TDkoxtDQat2UPHH1gn+PPTHKJAHcf04I/1TEYl68JGR3s5yoobb6KIsFknIotA
	 YOKjf+wA8CGQlFWMcGp5biKG1WUBFsTpnP5v4vUUhhPJrwJ4n0TEaeGdLMYMMw88tP
	 BSy2ccJivwOBwyZgEdF3nkH70HpiU/JCVtlQkwMt7wNdYIyQsBAmBw1hAC9cx5IFL8
	 KhFsu+574EiUUQyiro0r+xrcgKopOYBdfMq+JZWJDBH511MRixEF9aGjmB+liMljx3
	 8f6kJdO/+VsvQ==
Message-ID: <eaabb4ff-c748-4123-93b8-f49684600c71@kernel.org>
Date: Tue, 17 Nov 2026 09:25:36 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: Add IEP2 deinterlacer to
 RK3588
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Arun Iyengar <aiyengar1990@gmail.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Hans Verkuil <hverkuil@kernel.org>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Alex Bee <knaerzche@gmail.com>
References: <20261115-iep2-v2-0-3d8798cd9a55@gmail.com>
 <20261115-iep2-v2-3-3d8798cd9a55@gmail.com>
 <20261116-luminous-heavenly-guan-b20f2e@quoll>
 <yRxnTArhQFiS4u_tncJj-g@sntech.de>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 xsFNBFVDQq4BEAC6KeLOfFsAvFMBsrCrJ2bCalhPv5+KQF2PS2+iwZI8BpRZoV+Bd5kWvN79
 cFgcqTTuNHjAvxtUG8pQgGTHAObYs6xeYJtjUH0ZX6ndJ33FJYf5V3yXqqjcZ30FgHzJCFUu
 JMp7PSyMPzpUXfU12yfcRYVEMQrmplNZssmYhiTeVicuOOypWugZKVLGNm0IweVCaZ/DJDIH
 gNbpvVwjcKYrx85m9cBVEBUGaQP6AT7qlVCkrf50v8bofSIyVa2xmubbAwwFA1oxoOusjPIE
 J3iadrwpFvsZjF5uHAKS+7wHLoW9hVzOnLbX6ajk5Hf8Pb1m+VH/E8bPBNNYKkfTtypTDUCj
 NYcd27tjnXfG+SDs/EXNUAIRefCyvaRG7oRYF3Ec+2RgQDRnmmjCjoQNbFrJvJkFHlPeHaeS
 BosGY+XWKydnmsfY7SSnjAzLUGAFhLd/XDVpb1Een2XucPpKvt9ORF+48gy12FA5GduRLhQU
 vK4tU7ojoem/G23PcowM1CwPurC8sAVsQb9KmwTGh7rVz3ks3w/zfGBy3+WmLg++C2Wct6nM
 Pd8/6CBVjEWqD06/RjI2AnjIq5fSEH/BIfXXfC68nMp9BZoy3So4ZsbOlBmtAPvMYX6U8VwD
 TNeBxJu5Ex0Izf1NV9CzC3nNaFUYOY8KfN01X5SExAoVTr09ewARAQABzSVLcnp5c3p0b2Yg
 S296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+wsGPBBMBCgA5AhsDBgsJCAcDAgYVCAIJCgsE
 FgIDAQIeAQIXgBYhBJvQfg4MUfjVlne3VBuTQ307QWKbBQJp2mE8AAoJEBuTQ307QWKbeaIP
 /ihHTkTW4KsN/DQ945JJbyu5tI0J80Wue7QyyLPglyKfhgb5cLLNPpOC8cCIJsc7+W3i2P38
 s2c1cOH6CYGE7E9ur3Vfme8NW2S2I/Z8VC7bZnzyS23wT17LrsdS/qCpx4o8U+pt/xdXDKph
 EGRYrIEmMpUWvyYzyYKGIe25FtaayIIKpq8eZYyFcp2f/sG5IkOW5uZzHPMPdcm87jU7fyuQ
 rAU2vx9r+ulUfQ/q9Z2roC/ode3l7t2pN7BCBCsUDp6JCrUyZrtT1e7EbA0ZRP3aOBNk2P2E
 DQOgJGjGdO5Yx2Y9LFtltu6JbsBJHi1syGRX3AtQYOMc4Y1WGoeZJmMlvKj2ZqqXNkcWi2DS
 IQEWB0uW6CqFsBBIMGDa+6OzdaVO/uAVXWDWml02Men3CILdI1MbVjoh8ECqYUY7OQ+JJvNN
 vnliuq5WM3Ghd3jg/LZZrxXjdIginRHFQCjIJYLKpLZWm1/iDFedcfzqRNYmTtqscdCNHW41
 oT3Z7BmO9xwdjuwBS6nmS6JJwkbf5Ot2QR4pB/DRU7ZwjT1qHe+9r9gF32wXVQatHNGK/VVu
 sfwOnkdxCWkp/qb2gdQRmZh+SedStWshigH6sNfuHBloF/q+hjMRc8b2m326OZdrbSHwY1Sz
 vti8Hn7n8NjdHO9LKB7BIdjkA9DA5WsqOuVCzsFNBFVDXDQBEADNkrQYSREUL4D3Gws46JEo
 Z9HEQOKtkrwjrzlw/tCmqVzERRPvz2Xg8n7+HRCrgqnodIYoUh5WsU84N03KlLueMNsWLJBv
 BaubYN4JuJIdRr4dS4oyF1/fQAQPHh8Thpiz0SAZFx6iWKB7Qrz3OrGCjTPcW6eiOMheesVS
 5hxietSmlin+SilmIAPZHx7n242u6kdHOh+/SyLImKn/dh9RzatVpUKbv34eP1wAGldWsRxb
 f3WP9pFNObSzI/Bo3kA89Xx2rO2roC+Gq4LeHvo7ptzcLcrqaHUAcZ3CgFG88CnA6z6lBZn0
 WyewEcPOPdcUB2Q7D/NiUY+HDiV99rAYPJztjeTrBSTnHeSBPb+qn5ZZGQwIdUW9YegxWKvX
 XHTwB5eMzo/RB6vffwqcnHDoe0q7VgzRRZJwpi6aMIXLfeWZ5Wrwaw2zldFuO4Dt91pFzBSO
 IpeMtfgb/Pfe/a1WJ/GgaIRIBE+NUqckM+3zJHGmVPqJP/h2Iwv6nw8U+7Yyl6gUBLHFTg2h
 YnLFJI4Xjg+AX1hHFVKmvl3VBHIsBv0oDcsQWXqY+NaFahT0lRPjYtrTa1v3tem/JoFzZ4B0
 p27K+qQCF2R96hVvuEyjzBmdq2esyE6zIqftdo4MOJho8uctOiWbwNNq2U9pPWmu4vXVFBYI
 GmpyNPYzRm0QPwARAQABwsF2BBgBCgAgAhsMFiEEm9B+DgxR+NWWd7dUG5NDfTtBYpsFAmna
 YUkACgkQG5NDfTtBYptX+BAApg32CkxwNucNEi8WfWA8oKkW0y8YDuY6ORMo9FWNGiT/OTy0
 vyJrLocrpn86zwfjVp+eCrssPYh8eqJfnWqmYv6ACQtHPYzPZQ3mSo8H97Z01oUxITzCxpXm
 ZkLgPIqtDPcC2E3dPM/fVxcyowM8XsaMA9wcsaUYrta8toOq2b9tKcjleKMfMrm0gQ9u7wUc
 QbLkwj6TCLOwucb07GXzLTNF9PZmaDUpKAZjMjmrW+le+SFvQbhamx0rxLWPR0NWntXpbCn+
 +ACch03p/JyTBVktxFsFyCt7pTPE1kEaeuXBTe/a2D9iQvRxRW19LvuO2e59/u1wYUiH/orz
 wbIC2S4dBsPAPihL3ztOU1yE86GPyQtSE0kU+/7snnLt4QGi6PChf3t5gnNjAzjUUovO8rgI
 c+5yN5heq5loYHgK6OQ9OlHzsPHO9e9MOQcKlFycs1pyijFGzDwdNUm/SchK8iWT2QApTx4A
 K9bCVaboTA2T77QYkRcRJYSsO1alGX0ome/hMLD1daXlkrNUp1HWa3K4iytLRXjCSIorWiGs
 n+q3krnpXu3TFkA8qtOFZMdnIiFuiq1yLT8hptsV5xh1TA2nsVvSYiaCr3q4s4BKjS/KrLDb
 qoxzw8ISjdUp4pA85vb6YLCmb39NgidD+7PmAr65lBNveIFynTgsja1rRQ4=
In-Reply-To: <yRxnTArhQFiS4u_tncJj-g@sntech.de>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMTYvMTEvMjAyNiAxOTozMiwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gTW9udGFnLCAx
Ni4gTm92ZW1iZXIgMjAyNiwgMTM6MzU6MjggTWl0dGVsZXVyb3DDpGlzY2hlIE5vcm1hbHplaXQg
c2NocmllYiBLcnp5c3p0b2YgS296bG93c2tpOgo+PiBPbiBTdW4sIE5vdiAxNSwgMjAyNiBhdCAw
ODo0Nzo0NEFNICswMDAwLCBBcnVuIEl5ZW5nYXIgd3JvdGU6Cj4+PiBBZGQgdGhlIElFUDIgZGVp
bnRlcmxhY2VyIGFuZCBpdHMgSU9NTVUgdG8gdGhlIFJLMzU4OCBiYXNlIGR0c2kuIEJvdGgKPj4+
IHNoYXJlIEdJQyBTUEkgMTE3IGFuZCBzaXQgaW4gdGhlIFZEUFUgcG93ZXIgZG9tYWluLgo+Pj4K
Pj4+IEFkZHJlc3NlcywgY2xvY2tzLCByZXNldHMgYW5kIHRoZSBpbnRlcnJ1cHQgYXJlIHRha2Vu
IGZyb20gdGhlIFJvY2tjaGlwCj4+PiBCU1AgcmszNTg4cy5kdHNpIChkZXZlbG9wLTYuMSkuCj4+
Pgo+Pj4gU2lnbmVkLW9mZi1ieTogQXJ1biBJeWVuZ2FyIDxhaXllbmdhcjE5OTBAZ21haWwuY29t
Pgo+Pj4gLS0tCj4+PiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtYmFzZS5k
dHNpIHwgMjIgKysrKysrKysrKysrKysrKysrKysrKwo+Pj4gIDEgZmlsZSBjaGFuZ2VkLCAyMiBp
bnNlcnRpb25zKCspCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTg4LWJhc2UuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTg4LWJhc2UuZHRzaQo+Pj4gaW5kZXggYWE2OWZkMzc5M2ZkLi41Mjk3NTE5YmQyNTEgMTAwNjQ0
Cj4+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1iYXNlLmR0c2kK
Pj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWJhc2UuZHRzaQo+
Pj4gQEAgLTEzOTcsNiArMTM5NywyOCBAQCB2ZXB1MTIxXzNfbW11OiBpb21tdUBmZGJhYzgwMCB7
Cj4+PiAgCQkjaW9tbXUtY2VsbHMgPSA8MD47Cj4+PiAgCX07Cj4+PiAgCj4+PiArCWllcDogZGVp
bnRlcmxhY2VAZmRiYjAwMDAgewo+Pgo+PiBXaHkgYWxsIHRoZXNlIGFyZSBvdXRzaWRlIHNvYyBu
b2RlPyBUaGF0J3MgbW9yZSBvZiBhIHF1ZXN0aW9uIHRvCj4+IGV4aXN0aW5nIGNvZGUuLi4KPiAK
PiBNYW55IHllYXJzIGJhY2ssIGR1cmluZyB0aGUgUkszMjg4IGFkZGl0aW9uIEkgZ290IHRoZSBj
b21tZW50IGZyb20gdGhlCj4gYXJtLXNvYyBtYWludGFpbmVyIHRvIGRyb3AgdGhlIHNvYyBub2Rl
IFswXToKPiAKPiAiWy4uLl0gdGhpcyBpc24ndCBob3cgd2UgdGVuZCB0byBkbyBpdCBhbnkgbW9y
ZSAodW5sZXNzIGFsbCBkZXZpY2VzCj4gYXJlIHBoeXNpY2FsbHkgb24gYSBidXMsIGJ1dCB0aGVu
IGl0IHNob3VsZCBwcm9iYWJseSBiZSBuYW1lZCBzb21ldGhpbmcgZWxzZQo+IHRoYW4gJ3NvYycp
LiIKPiAKPiBTbyBzaW5jZSB0aGVuIHdlIGRpZG4ndCBoYXZlIHNvYyBub2Rlcy4gRXhjZXB0IGlu
IHRpbWUgZm9yIHRoZSBSSzM1NzYsIHRoZQo+IHR1bmUgaGFzIGNoYW5nZWQsIHNvIHNvY3MgZnJv
bSB0aGVuIG9uIGhhdmUgYSBzb2Mgbm9kZSBhZ2FpbiA7LSkgLgo+IAoKSSB0aGluayB0aGUgY29t
bWVudCB3YXMgbWlzcGxhY2VkIGFuZCBtaXN1bmRlcnN0b29kLiBJbmRlZWQgbm9uLU1NSU8Kbm9k
ZXMgd2VyZSBub3Qgc3VwcG9zZWQgdG8gYmUgaW4gc29jLiBCdXQgdGhlIE1NSU8gbm9kZSBhcmUg
dW5kZXIKTU1JTy1idXMsIHdoaWNoIHVzdWFsbHkgd2UgY2FsbCBzb2MuCgpJdCdzIGRvY3VtZW50
ZWQgYWxzbyB3cml0aW5nLWJpbmRpbmdzLCBzaW5jZSAyMDE5LCB0aG91Z2ggOikKCldlbGwsIG5v
dCBhIGJsb2NrZXIgZm9yIHRoaXMgcGF0Y2ggYW5kIEkgbGVhdmUgaXQgdG8geW91IHdoYXQgdG8g
ZG8gd2l0aApleGlzdGluZyBhbmQgbmV3IERUU0kuCgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
