Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7134FEE57D0
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Dec 2025 08:13:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W/bk9CnNzaNq/3juVKKgGkgXWG1N1ANsWlBTmq4YGfE=; b=bT4aLLPE9y1YVl
	Vd6bStxwG2+Oq3CgGk+hC44nix7AmjVko11GsDZP9MAyUpm9P6P4+jMmB22TJA8icLIOc1jzJXh3g
	pV7Xr1SMRhsQ/B1EtMGPc9kn16UiLSJgerIj1hT9btEaLR7dcAPGHpRQQBCqahqtxlbzpyIDyJDeG
	l7nEo83+OsPSGJE3HvqJqi6yJ3FV64/gdfR/l9TmztzTiDnwQ7chS2IPIKSA6rVYF6iuLfMw34yos
	WCSlDsOwEGLiUve1smXN0GStCr00bp47N9HzoNWm4uBZSJBQ9E3j6q6UWLYOvqtKrbDTd9mZMQnzQ
	QHWxllMw6Aau7LtJNgpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1varKB-00000005mch-1nFd;
	Wed, 31 Dec 2025 08:12:55 +0000
Received: from mail-m32108.qiye.163.com ([220.197.32.108])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1varK9-00000005mcH-0YgF;
	Wed, 31 Dec 2025 08:12:54 +0000
Received: from [172.16.12.16] (gy-adaptive-ssl-proxy-1-entmail-virt204.gy.ntes [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2f223fb0b;
	Wed, 31 Dec 2025 16:12:33 +0800 (GMT+08:00)
Message-ID: <0de0f505-5858-4ea6-85a7-4c386ac205e9@rock-chips.com>
Date: Wed, 31 Dec 2025 16:12:33 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 7/7] ARM: dts: rockchip: rk3506: Add pinctrl and rmio
 dtsi for rk3506
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 tao.huang@rock-chips.com
References: <20251227114957.3287944-1-ye.zhang@rock-chips.com>
 <20251227114957.3287944-8-ye.zhang@rock-chips.com>
 <ebb720f6-4756-437f-a71a-d94f45d732e8@kernel.org>
From: Ye Zhang <ye.zhang@rock-chips.com>
In-Reply-To: <ebb720f6-4756-437f-a71a-d94f45d732e8@kernel.org>
X-HM-Tid: 0a9b73773f5d09d8kunm7d1b63c029b1073
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQxhNQlZCH09PTEMYT0IeHkxWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=LlMTtoudwY0r8GtTq3kRlvFU7O9LrvHrzRYkwTvLuJkRNjj1JKUg8aTA2zm1GVSnbB29fNF/sO5ZNrbHF630uTJfymHO6MMom80zaV5fR4MvcHbT3Q7Z2oGbuWhzpyiLPBMMVoNSi4y6+caIs3cWB/JBkJ9NjVt0dG5DjCS22M8=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=PJXRdk/Jm/8W9JuE53zA910TazhkvqSxi7iqm+rHlCQ=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251231_001253_650304_A2B2E6B2 
X-CRM114-Status: GOOD (  10.53  )
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

CuWcqCAyMDI1LzEyLzI4IDE4OjM3LCBLcnp5c3p0b2YgS296bG93c2tpIOWGmemBkzoKPiBPbiAy
Ny8xMi8yMDI1IDEyOjQ5LCBZZSBaaGFuZyB3cm90ZToKPj4gKwkJL29taXQtaWYtbm8tcmVmLwo+
PiArCQlybV9pbzI4X3RvdWNoX2tleV9pbjY6IHJtLWlvMjgtdG91Y2gta2V5LWluNiB7Cj4+ICsJ
CQlyb2NrY2hpcCxwaW5zID0KPj4gKwkJCQk8MSBSS19QQzMgNyAmcGNmZ19wdWxsX25vbmU+Owo+
PiArCQkJcm9ja2NoaXAscm1pby1waW5zID0KPj4gKwkJCQk8MCAyOCA0OT47Cj4+ICsJCX07Cj4+
ICsKPj4gKwkJL29taXQtaWYtbm8tcmVmLwo+PiArCQlybV9pbzI4X3RvdWNoX2tleV9pbjc6IHJt
LWlvMjgtdG91Y2gta2V5LWluNyB7Cj4+ICsJCQlyb2NrY2hpcCxwaW5zID0KPj4gKwkJCQk8MSBS
S19QQzMgNyAmcGNmZ19wdWxsX25vbmU+Owo+PiArCQkJcm9ja2NoaXAscm1pby1waW5zID0KPj4g
KwkJCQk8MCAyOCA1MD47Cj4+ICsJCX07Cj4+ICsKPj4gKwkJL29taXQtaWYtbm8tcmVmLwo+PiAr
CQlybV9pbzI4X3NhaTBfbWNsazogcm0taW8yOC1zYWkwLW1jbGsgewo+PiArCQkJcm9ja2NoaXAs
cGlucyA9Cj4+ICsJCQkJPDEgUktfUEMzIDcgJnBjZmdfcHVsbF9ub25lPjsKPj4gKwkJCXJvY2tj
aGlwLHJtaW8tcGlucyA9Cj4+ICsJCQkJPDAgMjggNTE+Owo+PiArCQl9Owo+PiArCj4+ICsJCS9v
bWl0LWlmLW5vLXJlZi8KPj4gKwkJcm1faW8yOF9zYWkwX3NjbGs6IHJtLWlvMjgtc2FpMC1zY2xr
IHsKPj4gKwkJCXJvY2tjaGlwLHBpbnMgPQo+PiArCQkJCTwxIFJLX1BDMyA3ICZwY2ZnX3B1bGxf
bm9uZT47Cj4+ICsJCQlyb2NrY2hpcCxybWlvLXBpbnMgPQo+PiArCQkJCTwwIDI4IDUyPjsKPj4g
KwkJfTsKPj4gKwo+PiArCQkvb21pdC1pZi1uby1yZWYvCj4+ICsJCXJtX2lvMjhfc2FpMF9scmNr
OiBybS1pbzI4LXNhaTAtbHJjayB7Cj4+ICsJCQlyb2NrY2hpcCxwaW5zID0KPj4gKwkJCQk8MSBS
S19QQzMgNyAmcGNmZ19wdWxsX25vbmU+Owo+PiArCQkJcm9ja2NoaXAscm1pby1waW5zID0KPj4g
KwkJCQk8MCAyOCA1Mz47Cj4+ICsJCX07Cj4+ICsKPj4gKwkJL29taXQtaWYtbm8tcmVmLwo+PiAr
CQlybV9pbzI4X3NhaTBfc2RpMDogcm0taW8yOC1zYWkwLXNkaTAgewo+PiArCQkJcm9ja2NoaXAs
cGlucyA9Cj4+ICsJCQkJPDEgUktfUEMzIDcgJnBjZmdfcHVsbF9ub25lPjsKPj4gKwkJCXJvY2tj
aGlwLHJtaW8tcGlucyA9Cj4+ICsJCQkJPDAgMjggNTQ+Owo+PiArCQl9Owo+IFdoeSBhcmUgeW91
IGRlZmluaW5nIGFsbCBwaW5zPyBUaGlzIGlzIHdyb25nLCB5b3VyIGRyaXZlciBoYXMgdG8gZG8g
aXQsCj4gbm90IERUUy4gQWxsIHRoZXNlIGRlZmluaXRpb25zIHdoZW4gbm90IHVzZWQgYXJlIGp1
c3QgcG9pbnRsZXNzLgo+ClRoaXMgZmlsZSBpcyBhdXRvLWdlbmVyYXRlZCB0byBwcm92aWRlIGEg
Y29tcGxldGUgc2V0IG9mIFJNSU8gCmNvbmZpZ3VyYXRpb25zLsKgIMKgT3VyIGludGVudGlvbiBp
cyB0byBvZmZlciBhIGdlbmVyaWMgbGlicmFyeSBmb3IgYWxsIApmdXR1cmUgYm9hcmQgZGV2ZWxv
cGVycywgc28gdGhleSBjYW4gc2ltcGx5IHBpY2sgdGhlIG5lZWRlZCBub2RlcyBieSAKcGhhbmRs
ZSB3aXRob3V0IG1hbnVhbGx5IGxvb2tpbmcgdXAgcmVnaXN0ZXIgdmFsdWVzIGluIHRoZSBkYXRh
c2hlZXQgCmV2ZXJ5IHRpbWUuwqAgwqBUaGlzIGltcHJvdmVzIHVzYWJpbGl0eSBhbmQgc3RhbmRh
cmRpemF0aW9uLgoKV2UgYWxzbyB1c2VkIHRoZSAvb21pdC1pZi1uby1yZWYvIHRhZywgc28gdGhp
cyB3aWxsIHN0cmljdGx5IG5vdCAKaW5jcmVhc2UgdGhlIHNpemUgb2YgdGhlIGNvbXBpbGVkIERU
QiBiaW5hcnkgYXQgYWxsLgoKQ291bGQgeW91IHBsZWFzZSByZWNvbnNpZGVyIGlmIHRoaXPCoCBh
cHByb2FjaCBpcyBhY2NlcHRhYmxlIGdpdmVuIHRoZSAKdXNhYmlsaXR5IGJlbmVmaXRzPwoKSWYg
eW91IHN0aWxsIGNvbnNpZGVyIHRoZSB+MjVrIGxpbmVzIG9mIHNvdXJjZSBjb2RlIGJsb2F0IHVu
YWNjZXB0YWJsZSAKZm9yIHVwc3RyZWFtLCB3ZSB3aWxsIGhhdmUgdG8gZHJvcCB0aGlzIGdlbmVy
aWMgZHRzaSBmaWxlIGFuZCBsZXQgdXNlcnMgCm1hbnVhbGx5IGRlZmluZSBvbmx5IHRoZSByZXF1
aXJlZCBub2RlcyB3aGVuIGFkZGluZyBib2FyZCBzdXBwb3J0LgoKQmVzdCByZWdhcmRzLApZZSBa
aGFuZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
