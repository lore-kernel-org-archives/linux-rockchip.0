Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02957C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Aug 2024 18:00:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DYolEotDeTEN9uqoUYKlO7cc++rX8ZQYsT4DSTgb94E=; b=uDOaQEmNb42kTQ
	Hl/1fOiAZsYSHIW87AkeAVVOh/KtRSiCp0RXu5dqxwoL9yMaHDRsfQXBGXrYMmavi0h1LMmkM8TQZ
	t3skjOYoHJ+ZjxmNj4kDdODxjADWqUVIG49+hVBxfPTmkEb7+7AC29NuXLOc5hST7fiouwZus7Gp2
	bg7W12R9IKl6EGOoveYDiJjSm15gj9FJND3YV5YGeTHnrSvo/WxGMr8V36inG4Sc2a7lPmxmnbLUE
	8sC9AvrGpdoaAdD5mOyIvLtm3DVyonyiJUeGJci3beoQYOUXg4XeJR9v/mN52ayHy8WqjWTbghDn8
	uHx99u/cwrzcspfs2Zqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbkx8-00000005t95-3CAb;
	Wed, 07 Aug 2024 18:00:02 +0000
Received: from smtpbgsg2.qq.com ([54.254.200.128])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbkx4-00000005t8R-2wNo
	for linux-rockchip@lists.infradead.org;
	Wed, 07 Aug 2024 18:00:00 +0000
X-QQ-mid: bizesmtp82t1723053586tuboajr4
X-QQ-Originating-IP: OB5KuGMTICcCY9lLYXKnkFvm6kHDYB+I9n3OC0vk/h4=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 08 Aug 2024 01:59:44 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 4203750472283249964
Message-ID: <ED7CECC5A1D5AB39+c52f07a4-0015-4c30-8ac8-545d3c66e167@radxa.com>
Date: Thu, 8 Aug 2024 02:59:44 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC 1/2] dt-bindings: arm: rockchip: add Radxa E52C
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org
References: <20240807084642.742-1-naoki@radxa.com>
 <b7f1f8c0cdc132b175d8cfba218b4441@manjaro.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <b7f1f8c0cdc132b175d8cfba218b4441@manjaro.org>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240807_105959_146843_F959A627 
X-CRM114-Status: GOOD (  12.13  )
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

SGksCgpPbiA4LzcvMjQgMjM6NTAsIERyYWdhbiBTaW1pYyB3cm90ZToKPiBIZWxsbyBGdWthdW1p
LAo+IAo+IE9uIDIwMjQtMDgtMDcgMTA6NDYsIEZVS0FVTUkgTmFva2kgd3JvdGU6Cj4+IEFkZCBk
ZXZpY2V0cmVlIGJpbmRpbmcgZm9yIHRoZSBSYWR4YSBFNTJDLgo+Pgo+PiBSYWR4YSBFNTJDIGlz
IGEgY29tcGFjdCBuZXR3b3JrIGNvbXB1dGVyIHVzaW5nIHRoZSBSb2NrY2hpcCBSSzM1ODIKPj4g
Y2hpcC4KPj4KPj4gU2lnbmVkLW9mZi1ieTogRlVLQVVNSSBOYW9raSA8bmFva2lAcmFkeGEuY29t
Pgo+PiAtLS0KPj4gaG93IHNob3VsZCB3ZSBoYW5kbGUgUkszNTgyPyBhcyBmYXIgYXMgSSBrbm93
LCBpdCdzIGp1c3QgYW4gYW5vdGhlcgo+PiB2ZXJzaW9uIG9mIFJLMzU4OFMuCj4gCj4gQ291bGQg
eW91LCBwbGVhc2UsIHByb3ZpZGUgbGlua3MgdG8gZG93bnN0cmVhbSBrZXJuZWwgY29kZSBmcm9t
Cj4gUm9ja2NoaXAgdGhhdCBzaG93cyB0aGUgQ1BVIGFuZCBHUFUgT1BQcyBmb3IgdGhlIFJLMzU4
Mj8KCmh0dHBzOi8vZ2l0aHViLmNvbS9yYWR4YS9rZXJuZWwvY29tbWl0cy9saW51eC02LjEtc3Rh
bi1ya3IxLwoKSSBub3RpY2VkIHRoZXJlIGFyZSBzb21lIGRpZmZlcmVuY2VzIGJldHdlZW4gc291
cmNlIGFuZCBzY2hlbWF0aWMuIEkgCmd1ZXNzIHRoZXJlIGFyZSBzb21lIGNvcHkgJiBwYXN0ZSB3
b3JrLCBib3RoIGFyZSBub3Qgc28gcmVsaWFibGUuLi4KCj4gQnkgdGhlIHdheSwgaXMgdGhlIHNj
aGVtYXRpYyBvZiBSYWR4YSBFNTJDIGF2YWlsYWJsZT8KCml0J3Mgbm90IHlldCBhdmFpbGFibGUg
aW4gcHVibGljLiBldmVyeXRoaW5nLCBpbmNsdWRlIGhhcmR3YXJlLCBpcyBXSVAuCmJ1dCBpdCB3
aWxsIGJlIGF2YWlsYWJsZSBiZWZvcmUgZW5kIG9mIHRoaXMgbW9udGguCgpCZXN0IHJlZ2FyZHMs
CgotLQpGVUtBVU1JIE5hb2tpClJhZHhhIENvbXB1dGVyIChTaGVuemhlbikgQ28uLCBMdGQuCgo+
PiAtLS0KPj4gwqBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlw
LnlhbWwgfCA2ICsrKysrKwo+PiDCoDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKPj4K
Pj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9j
a2NoaXAueWFtbAo+PiBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9j
a2NoaXAueWFtbAo+PiBpbmRleCAyYWQ4MzVmNDA2OGUuLmJhNmQwM2IzN2JlZiAxMDA2NDQKPj4g
LS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1s
Cj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAu
eWFtbAo+PiBAQCAtNzU5LDYgKzc1OSwxMiBAQCBwcm9wZXJ0aWVzOgo+PiDCoMKgwqDCoMKgwqDC
oMKgwqDCoCAtIGNvbnN0OiByYWR4YSxjbTNpCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gY29u
c3Q6IHJvY2tjaGlwLHJrMzU2OAo+Pgo+PiArwqDCoMKgwqDCoCAtIGRlc2NyaXB0aW9uOiBSYWR4
YSBFNTJDCj4+ICvCoMKgwqDCoMKgwqDCoCBpdGVtczoKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoCAt
IGVudW06Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIHJhZHhhLGU1MmMKPj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoCAtIGNvbnN0OiByb2NrY2hpcCxyazM1ODhzCj4+ICsKPj4gwqDCoMKg
wqDCoMKgIC0gZGVzY3JpcHRpb246IFJhZHhhIFJvY2sKPj4gwqDCoMKgwqDCoMKgwqDCoCBpdGVt
czoKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBjb25zdDogcmFkeGEscm9jawo+IAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
