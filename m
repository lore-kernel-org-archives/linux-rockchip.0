Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F4037CF9C6B
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Sep 2024 07:59:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xposu3fORYmTcGCfygqzYa1ACQNF5gNCM9HyaxDNPjw=; b=xnSnw/Gl4qIcZ7
	FgW/av771FrfFBn2+Uo3ppjKmjl0nMOZgiztoexVdL9lnIsMazFlotBU7KY9DmY3gWe53E77Cwxme
	gNolEgO555JSZw1awlrGeyOMet20npAFp4ZxtvlKYBn2r8VKZxQVNwZCCv3k3MQtaRi1WhNo9LwQv
	M8czTVijxWETrb/YsXf6fPk178j6b9qFHp439olEDa41eLLX+NFZEb4JaMJbp+8AADKXXfTHFkSdi
	mO3OR8zC4/KnrCy2yu5VJcUfoh380airvKxnCAEGxfaV3K+3f8btF5yXl8SoGVaaRuDtMCTp/CI9D
	ybYHHOPo6uaolZR//9Tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1st0SE-00000001VrU-2nNY;
	Tue, 24 Sep 2024 07:59:26 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1st0Pi-00000001VWW-2caN;
	Tue, 24 Sep 2024 07:56:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 91009A4357E;
	Tue, 24 Sep 2024 07:56:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AFED8C4CEC4;
	Tue, 24 Sep 2024 07:56:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727164609;
	bh=kzUHa3F8g7HzmaY7eIKodTFvZiEfnXtOihHzuIcg0Vw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=aCQIQvq2FMrjjooDgWTx27eXRecH0zbuJBRPuDLpDwJTKEkFbeJtGu+RW3ErnWh7v
	 yyPx5LzrfJ/9j7MpkkGLZoEzkSmvHlwtq1kp0HZOxRDDgAWrueHc5yHq69+3F1Qp8t
	 2LeK79guRYR3mFDyaLjxvATI72a8ulJJKB4THrxfOwL784uTSJ0w9vod0reCmV3woz
	 2ZNqVInOXU0CF25ed2fnEiJ5T7JToB1XD4XstzN70QUH2rcxP7aVVynNwF+Q2RdX7g
	 jFO/KS7CJ24RmfmunmsxMrZbGq0FC1mEc9CxR3j7TfD3hgxSzz2YT0AUG3zDAOJcj9
	 lKEnHI/5YA0sg==
Message-ID: <e77cab18-155a-4174-bca0-5ff1ce1d2b6f@kernel.org>
Date: Tue, 24 Sep 2024 09:56:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND PATCH 1/2] dt-bindings: phy: rockchip,inno-usb2phy: add
 rk3576
To: Frank Wang <frank.wang@rock-chips.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, heiko@sntech.de, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 william.wu@rock-chips.com, tim.chen@rock-chips.com, wmc@rock-chips.com
References: <20240923025326.10467-1-frank.wang@rock-chips.com>
 <snccizbw6thn3lhwad4xppp7vqii4p56ttl2gufwc3ke7vfckf@e4b7nvwwtdfr>
 <1f996322-e6f6-4dd5-a1d7-c2bde92c876b@rock-chips.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <1f996322-e6f6-4dd5-a1d7-c2bde92c876b@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_005650_811564_4344EC8C 
X-CRM114-Status: GOOD (  14.32  )
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

T24gMjQvMDkvMjAyNCAwNDoyNCwgRnJhbmsgV2FuZyB3cm90ZToKPiBIaSBLcnp5c3p0b2YsCj4g
T24gMjAyNC85LzIzIDE3OjMxLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+PiBPbiBNb24s
IFNlcCAyMywgMjAyNCBhdCAxMDo1MzoyNUFNICswODAwLCBGcmFuayBXYW5nIHdyb3RlOgo+Pj4g
QWRkIGNvbXBhdGlibGUgZm9yIHRoZSBVU0IyIHBoeSBpbiB0aGUgUm9ja2NoaXAgUkszNTc2IFNv
Qy4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBGcmFuayBXYW5nIDxmcmFuay53YW5nQHJvY2stY2hp
cHMuY29tPgo+Pj4gLS0tCj4+PiAgIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9yb2NrY2hp
cCxpbm5vLXVzYjJwaHkueWFtbCB8IDEwICsrKysrKysrKy0KPj4+ICAgMSBmaWxlIGNoYW5nZWQs
IDkgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3JvY2tjaGlwLGlubm8tdXNiMnBoeS55
YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9yb2NrY2hpcCxpbm5v
LXVzYjJwaHkueWFtbAo+Pj4gaW5kZXggNTI1NDQxMzEzN2M2NC4uMjE0OTE3ZTU1YzBiNiAxMDA2
NDQKPj4+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcm9ja2No
aXAsaW5uby11c2IycGh5LnlhbWwKPj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9waHkvcm9ja2NoaXAsaW5uby11c2IycGh5LnlhbWwKPj4+IEBAIC0yMCw2ICsyMCw3
IEBAIHByb3BlcnRpZXM6Cj4+PiAgICAgICAgIC0gcm9ja2NoaXAscmszMzY2LXVzYjJwaHkKPj4+
ICAgICAgICAgLSByb2NrY2hpcCxyazMzOTktdXNiMnBoeQo+Pj4gICAgICAgICAtIHJvY2tjaGlw
LHJrMzU2OC11c2IycGh5Cj4+PiArICAgICAgLSByb2NrY2hpcCxyazM1NzYtdXNiMnBoeQo+Pj4g
ICAgICAgICAtIHJvY2tjaGlwLHJrMzU4OC11c2IycGh5Cj4+PiAgICAgICAgIC0gcm9ja2NoaXAs
cnYxMTA4LXVzYjJwaHkKPj4+ICAgCj4+PiBAQCAtMzQsMTAgKzM1LDE2IEBAIHByb3BlcnRpZXM6
Cj4+PiAgICAgICBjb25zdDogMAo+Pj4gICAKPj4+ICAgICBjbG9ja3M6Cj4+PiAtICAgIG1heEl0
ZW1zOiAxCj4+PiArICAgIG1pbkl0ZW1zOiAxCj4+PiArICAgIGl0ZW1zOgo+Pj4gKyAgICAgIC0g
ZGVzY3JpcHRpb246IHBoeWNsayAtIFBIWSBpbnB1dCByZWZlcmVuY2UgY2xvY2tzLgo+Pj4gKyAg
ICAgIC0gZGVzY3JpcHRpb246IGFjbGsgYW5kIGFjbGtfc2x2IGFyZSBvcHRpb25hbCBhbmQgdXNl
ZCBmb3IgVVNCIE1NVS4KPj4+ICAgCj4+PiAgICAgY2xvY2stbmFtZXM6Cj4+PiArICAgIG1pbkl0
ZW1zOiAxCj4+PiAgICAgICBjb25zdDogcGh5Y2xrCj4+PiArICAgIGNvbnN0OiBhY2xrCj4+PiAr
ICAgIGNvbnN0OiBhY2xrX3Nsdgo+PiBQbGVhc2UgdGVzdC4uLiBOb3Qgc3VyZSB3aGF0IHlvdSB3
YW50ZWQgdG8gYWNoaWV2ZSBoZXJlLCBidXQgbWF5YmUKPj4gb25lT2Y/Cj4gCj4gVGhlICJhY2xr
IiBhbmQgImFjbGtfc2x2IiBjbG9ja3MgYXJlIG5ldyBpbiBSSzM1NzYsIHlvdSBtZWFuIHRoZSBj
aGFuZ2VzIAo+IHNob3VsZCBiZSBsaWtlIHRoZSBiZWxvdz8KPiAKPiBAQCAtMzQsMTAgKzM1LDIw
IEBAIHByb3BlcnRpZXM6Cj4gIMKgwqDCoMKgIGNvbnN0OiAwCj4gCj4gIMKgwqAgY2xvY2tzOgo+
IC3CoMKgwqAgbWF4SXRlbXM6IDEKPiArwqDCoMKgIG1pbkl0ZW1zOiAxCj4gK8KgwqDCoCBtYXhJ
dGVtczogMwo+IAo+ICDCoMKgIGNsb2NrLW5hbWVzOgo+IC3CoMKgwqAgY29uc3Q6IHBoeWNsawo+
ICvCoMKgwqAgbWluSXRlbXM6IDEKPiArwqDCoMKgIG1heEl0ZW1zOiAzCj4gK8KgwqDCoCBpdGVt
czoKPiArwqDCoMKgwqDCoCBvbmVPZjoKPiArwqDCoMKgwqDCoMKgwqAgLSBkZXNjcmlwdGlvbjog
UEhZIGlucHV0IHJlZmVyZW5jZSBjbG9ja3MuCj4gK8KgwqDCoMKgwqDCoMKgwqDCoCBjb25zdDog
cGh5Y2xrCj4gK8KgwqDCoMKgwqDCoMKgIC0gZGVzY3JpcHRpb246IGFjbGsgZm9yIFVTQiBNTVUu
Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoCBjb25zdDogYWNsawo+ICvCoMKgwqDCoMKgwqDCoCAtIGRl
c2NyaXB0aW9uOiBhY2xrX3NsdiBmb3IgVVNCIE1NVS4KPiArwqDCoMKgwqDCoMKgwqDCoMKgIGNv
bnN0OiBhY2xrX3NsdgoKTm9wZSwgeW91IGp1c3QgbWVzc2VkIHRoZSBvcmRlci4gT3JkZXIgaXMg
c3RyaWN0LgoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
