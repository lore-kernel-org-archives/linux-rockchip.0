Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCC21C369A4
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Sep 2024 07:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wqgOluDS+jnRiO5DDFYGA5MNA4JKWhstlXLV9iJioQg=; b=yG60zln7wZE4P5
	qrxREjkfDEcNGJY2xAecyS7QbSsBYdAHIRGgzd7KCMKH78oRHdwHaeYPcb9TjLaxy8lMyLU3k0MCZ
	k3H036GFOu3j390lBW+qDNNMP+ld+L7hj5cl+IaTpeXuz+hwtl2pI6Fw6Hajg2NLZdXqdOgPEIQRU
	nWV9xWgy9NmMgF22Cdv1DZpE/Ulej8hunLlE3bEb91yelrvu5KvOSylmbURuTs+FUdFTH7ZMUPDcg
	Bv7ox7dQvRcFX9pChZyBWkhaJnC7jQ6LloOHn1ZdZk4pLqfCOVGhu+Fpo88INxJoBbBQ5qOVfdrHW
	vHyF0VOq6dlmApvY8ANw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stMJg-00000004IR6-3JQn;
	Wed, 25 Sep 2024 07:20:04 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stMH9-00000004HXa-1Kk6;
	Wed, 25 Sep 2024 07:17:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 73955A43C0E;
	Wed, 25 Sep 2024 07:17:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 785B6C4CEC3;
	Wed, 25 Sep 2024 07:17:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727248646;
	bh=Akfo8Gddw9SK+w9XsX7ow8HzfXmSzAecBPPLdWBJbsU=;
	h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
	b=PRNNU2lZby/NT/m3KYScSfzsNzgQ/A0vRf45kpPilzJHDmV5hb1Xsatm54qiPnpyg
	 jW3GrgMDCRmpg4IKrJz5aCZRWNNWEs2DRvFHb58hSI8yOR02p8lFOO8HgOi89ceVIq
	 vY/XUAEEQCe8aaV+BXJpufPJOE9hLmGqAziy9hnRqdFyciOsuITvByl0xXsQKL3EvG
	 6+gU5uN1uMOaVkYu/xN//2dVVljqe50+yogovWBlEN8wiNY5IfJzFhIf3qGxK3yrcW
	 VNnMwL+PQu83f6kFxctMuPhAhSVRbhaaFLQxE7yq5gqvoaFxYtIXvB2k7lljPYCAFo
	 ToXELRQC8FWSg==
Message-ID: <99409dd6-f474-432e-a8fc-687993ebf942@kernel.org>
Date: Wed, 25 Sep 2024 09:17:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND PATCH 1/2] dt-bindings: phy: rockchip,inno-usb2phy: add
 rk3576
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Frank Wang <frank.wang@rock-chips.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, heiko@sntech.de, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 william.wu@rock-chips.com, tim.chen@rock-chips.com, wmc@rock-chips.com
References: <20240923025326.10467-1-frank.wang@rock-chips.com>
 <snccizbw6thn3lhwad4xppp7vqii4p56ttl2gufwc3ke7vfckf@e4b7nvwwtdfr>
 <1f996322-e6f6-4dd5-a1d7-c2bde92c876b@rock-chips.com>
 <e77cab18-155a-4174-bca0-5ff1ce1d2b6f@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <e77cab18-155a-4174-bca0-5ff1ce1d2b6f@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_001727_506549_274860A7 
X-CRM114-Status: GOOD (  13.46  )
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

T24gMjQvMDkvMjAyNCAwOTo1NiwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiBPbiAyNC8w
OS8yMDI0IDA0OjI0LCBGcmFuayBXYW5nIHdyb3RlOgo+PiBIaSBLcnp5c3p0b2YsCj4+IE9uIDIw
MjQvOS8yMyAxNzozMSwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPj4+IE9uIE1vbiwgU2Vw
IDIzLCAyMDI0IGF0IDEwOjUzOjI1QU0gKzA4MDAsIEZyYW5rIFdhbmcgd3JvdGU6Cj4+Pj4gQWRk
IGNvbXBhdGlibGUgZm9yIHRoZSBVU0IyIHBoeSBpbiB0aGUgUm9ja2NoaXAgUkszNTc2IFNvQy4K
Pj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IEZyYW5rIFdhbmcgPGZyYW5rLndhbmdAcm9jay1jaGlw
cy5jb20+Cj4+Pj4gLS0tCj4+Pj4gICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcm9ja2No
aXAsaW5uby11c2IycGh5LnlhbWwgfCAxMCArKysrKysrKystCj4+Pj4gICAxIGZpbGUgY2hhbmdl
ZCwgOSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9yb2NrY2hpcCxpbm5vLXVzYjJw
aHkueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcm9ja2NoaXAs
aW5uby11c2IycGh5LnlhbWwKPj4+PiBpbmRleCA1MjU0NDEzMTM3YzY0Li4yMTQ5MTdlNTVjMGI2
IDEwMDY0NAo+Pj4+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkv
cm9ja2NoaXAsaW5uby11c2IycGh5LnlhbWwKPj4+PiArKysgYi9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvcGh5L3JvY2tjaGlwLGlubm8tdXNiMnBoeS55YW1sCj4+Pj4gQEAgLTIw
LDYgKzIwLDcgQEAgcHJvcGVydGllczoKPj4+PiAgICAgICAgIC0gcm9ja2NoaXAscmszMzY2LXVz
YjJwaHkKPj4+PiAgICAgICAgIC0gcm9ja2NoaXAscmszMzk5LXVzYjJwaHkKPj4+PiAgICAgICAg
IC0gcm9ja2NoaXAscmszNTY4LXVzYjJwaHkKPj4+PiArICAgICAgLSByb2NrY2hpcCxyazM1NzYt
dXNiMnBoeQo+Pj4+ICAgICAgICAgLSByb2NrY2hpcCxyazM1ODgtdXNiMnBoeQo+Pj4+ICAgICAg
ICAgLSByb2NrY2hpcCxydjExMDgtdXNiMnBoeQo+Pj4+ICAgCj4+Pj4gQEAgLTM0LDEwICszNSwx
NiBAQCBwcm9wZXJ0aWVzOgo+Pj4+ICAgICAgIGNvbnN0OiAwCj4+Pj4gICAKPj4+PiAgICAgY2xv
Y2tzOgo+Pj4+IC0gICAgbWF4SXRlbXM6IDEKPj4+PiArICAgIG1pbkl0ZW1zOiAxCj4+Pj4gKyAg
ICBpdGVtczoKPj4+PiArICAgICAgLSBkZXNjcmlwdGlvbjogcGh5Y2xrIC0gUEhZIGlucHV0IHJl
ZmVyZW5jZSBjbG9ja3MuCj4+Pj4gKyAgICAgIC0gZGVzY3JpcHRpb246IGFjbGsgYW5kIGFjbGtf
c2x2IGFyZSBvcHRpb25hbCBhbmQgdXNlZCBmb3IgVVNCIE1NVS4KPj4+PiAgIAo+Pj4+ICAgICBj
bG9jay1uYW1lczoKPj4+PiArICAgIG1pbkl0ZW1zOiAxCj4+Pj4gICAgICAgY29uc3Q6IHBoeWNs
awo+Pj4+ICsgICAgY29uc3Q6IGFjbGsKPj4+PiArICAgIGNvbnN0OiBhY2xrX3Nsdgo+Pj4gUGxl
YXNlIHRlc3QuLi4gTm90IHN1cmUgd2hhdCB5b3Ugd2FudGVkIHRvIGFjaGlldmUgaGVyZSwgYnV0
IG1heWJlCj4+PiBvbmVPZj8KPj4KPj4gVGhlICJhY2xrIiBhbmQgImFjbGtfc2x2IiBjbG9ja3Mg
YXJlIG5ldyBpbiBSSzM1NzYsIHlvdSBtZWFuIHRoZSBjaGFuZ2VzIAo+PiBzaG91bGQgYmUgbGlr
ZSB0aGUgYmVsb3c/Cj4+Cj4+IEBAIC0zNCwxMCArMzUsMjAgQEAgcHJvcGVydGllczoKPj4gIMKg
wqDCoMKgIGNvbnN0OiAwCj4+Cj4+ICDCoMKgIGNsb2NrczoKPj4gLcKgwqDCoCBtYXhJdGVtczog
MQo+PiArwqDCoMKgIG1pbkl0ZW1zOiAxCj4+ICvCoMKgwqAgbWF4SXRlbXM6IDMKPj4KPj4gIMKg
wqAgY2xvY2stbmFtZXM6Cj4+IC3CoMKgwqAgY29uc3Q6IHBoeWNsawo+PiArwqDCoMKgIG1pbkl0
ZW1zOiAxCj4+ICvCoMKgwqAgbWF4SXRlbXM6IDMKPj4gK8KgwqDCoCBpdGVtczoKPj4gK8KgwqDC
oMKgwqAgb25lT2Y6Cj4+ICvCoMKgwqDCoMKgwqDCoCAtIGRlc2NyaXB0aW9uOiBQSFkgaW5wdXQg
cmVmZXJlbmNlIGNsb2Nrcy4KPj4gK8KgwqDCoMKgwqDCoMKgwqDCoCBjb25zdDogcGh5Y2xrCj4+
ICvCoMKgwqDCoMKgwqDCoCAtIGRlc2NyaXB0aW9uOiBhY2xrIGZvciBVU0IgTU1VLgo+PiArwqDC
oMKgwqDCoMKgwqDCoMKgIGNvbnN0OiBhY2xrCj4+ICvCoMKgwqDCoMKgwqDCoCAtIGRlc2NyaXB0
aW9uOiBhY2xrX3NsdiBmb3IgVVNCIE1NVS4KPj4gK8KgwqDCoMKgwqDCoMKgwqDCoCBjb25zdDog
YWNsa19zbHYKPiAKPiBOb3BlLCB5b3UganVzdCBtZXNzZWQgdGhlIG9yZGVyLiBPcmRlciBpcyBz
dHJpY3QuCgpBbmQgeW91IHN0aWxsIHNlbnQgdjIgd2l0aCB0aGlzIG1lc3NlZCBvcmRlci4gTm8u
IE9yZGVyIG11c3QgYmUgc3RyaWN0LgpDYW5ub3QgYmUgb25lT2YuCgpCZXN0IHJlZ2FyZHMsCkty
enlzenRvZgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
