Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53769CA5FA1
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2026 07:17:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/NJ1xdpjsRguYJ4YVS+molCe6vL1Cm1ODmnvq1k58Hg=; b=s7xow91KyoaskZ
	nothb6tg9piehhY7EKlG5kIxuFjSR8qsPTJ6ESdCG+mrxH7/ZFq5xqvW0tACjqlh/asmLua0r+LWV
	+C2AuxE1rXWNH5fahyofmhwRMWTQtbtlWVXymWZ/cLcXCG5z8NhMz8po+3y+ck6NvwA/NrF9KB9yo
	Eiqau9rxqrGmg3jHdLc17nyBvBE2iRQvhZFcCCl2DquTSNBFWLhzKuD965ddRwSkj/VDcaxvR3oDv
	I6p5P9fHZ/btkAZt8wSGPtiOVkfCfKN3vamfkv3o4SmjTmmYIHftf44ujvpFTNgZLNNma/7fO6pac
	L9WCw7JEGR7b06KXToSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBS52-00000002Zle-30MI;
	Tue, 29 Sep 2026 07:16:48 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBS4r-00000002Zj6-0dCB;
	Tue, 29 Sep 2026 07:16:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=g8yFIMfXcamOSTdytiUcdogK/QABhn5sWuK0oBzBWh8=; b=JU6SdQtfHbp7GOa0g/LtGGQiur
	j3xDjNclktugrMB9t0vVuOriXQQUp8D8yojzbTQES5lCn3nJYWK7KgedNcyDhWL9yx22KjTWgWxPA
	Aakyp7g4tdpT8aRGIcuHtOxrFiGuOFa1CN2835Vgki+tcJUnmbmak3nmM/NpBjE28BJNW7jnchm0t
	e1FiCVG7magzcbdrffqTs4ICN/PQqLnbZhyQ4Mxpulu5NKC3ABgq+hQ3O97/ohioCEb4MPLPu6NCD
	0JRTXMPsYfSh41U6eTYcy7IRgam7nju2X7l7MQANT/nqeil9bIgwz8Xl1f1doW9BVjJoIxHX9/foT
	tAkvCy/Q==;
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xBS4n-00000002HSQ-1rT3;
	Tue, 29 Sep 2026 07:16:36 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: spu@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id E1FB5201548;
	Tue, 29 Sep 2026 09:16:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790666191;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=g8yFIMfXcamOSTdytiUcdogK/QABhn5sWuK0oBzBWh8=;
	b=ZHw0xdkYy/CgZdHMayUgrCk0soMlwyhaMORQtte2UHNbGN0o201RQsAvUvvJO0B/tASX+K
	/e0QmBTAs0E8LKSyAfA4hd2UAsZXpkivVzKhxGuDX4TfgNMICqDkuMmn48zqRWQX3qvPF6
	DfeWkjOBdLoVRw0n213tpVu59oBTgSu9LjsbEOUJxM9A+RyJ3odHCwW9Gcewpwi3es0t3O
	tlfG1smpcr8FKjykCeJJ52sDjjmZdksnikADGoc1+fSMbkdYRyrhl+OErnc/xq3XdEMsv9
	EuR0AYN9PxHH5HcwEeYN9/lPQXY4kV6tWJ5AiUqFE+JQXlWhzHB9qmvqDc6Ong==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790666191;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=g8yFIMfXcamOSTdytiUcdogK/QABhn5sWuK0oBzBWh8=;
	b=M+JKN1oGvusBH3GBbsSTZwkM4KbQFzknN49NdMhTKlqHKiBQJY4k1juzDjamtQAQ8oPB42
	5aA3ZEb0Ez2mG5RFTyZ0Ban7gPtS1dziE/z1uAc8TrABDztC45SrHuOrk5YQdx0N+1ulIB
	aneZeVJR0b2X2p8GxboV2RsfyDY54tyrxLg5IZLD4VJcttFfbTNBVyHSejK05VXBxle0yV
	kC+bU5sSk0PUkd1z+uVJNKKYqf2NRx9dvHoqNBD2Wo2WGfFQLoWyRHB9HYqPEb9ZvSLq91
	KqdkhQXcWNrik2OuYExfRRGTSyEEY9qCD8rp3VoIJS+NVKJ8JZy7QuZwQGkWSQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790666191; a=rsa-sha256;
	cv=none;
	b=Ii8cJJuTLEYqiYxjCnvVvpCmlwjg6YT9uF6cvpIcfUkAdlNqZJR+/9KjwdoBQfHNHDdTNI
	r2tpE0lmVSyfwqqWL/5BTsriQOQoQ1DzcdcWbvE6cPVSeraHe9aHfx0ZTpEXUjF2dgs+1C
	1WfW308uJJtKuPmNtHwWlkisDqE9GgAYL2XzaKda1BL5QBRk+wQR1Ld1rYLhku1NzY83bH
	zeLUvWs8BWlZ11bkzJy4O77PE5UbzMj1vTM71AzOJ5cqjIi5tQqKjaROg/B84Wv5OWu5PK
	6tO8nZdpMj/J6UK6/C9ZK+LR1SrUrHEmZKnj/A3uvNtxQlDLkheGUayXk4BftA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=spu@pengutronix.de smtp.mailfrom=s.pueschel@pengutronix.de
Message-ID: <b3b26ca0-c362-47ff-837f-989fb8f9cc12@pengutronix.de>
Date: Tue, 29 Sep 2026 09:16:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] media: rockchip: rga: quiesce IRQ before releasing m2m
 state
To: Nicolas Dufresne <nicolas@ndufresne.ca>, Fan Wu <fanwu01@zju.edu.cn>,
 jacob-chen@iotwrt.com, ezequiel@vanguardiasur.com.ar
Cc: mchehab@kernel.org, heiko@sntech.de, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20260704084659.612221-1-fanwu01@zju.edu.cn>
 <c5bb16dec180576cb7e68221880b5e36b7cb689b.camel@ndufresne.ca>
Content-Language: en-US
From: =?UTF-8?Q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
In-Reply-To: <c5bb16dec180576cb7e68221880b5e36b7cb689b.camel@ndufresne.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260929_081633_835612_D5B53D9F 
X-CRM114-Status: GOOD (  23.77  )
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

SGksCgpPbiA5LzI4LzI2IDIyOjE4LCBOaWNvbGFzIER1ZnJlc25lIHdyb3RlOgo+IEhpLAo+Cj4g
TGUgc2FtZWRpIDA0IGp1aWxsZXQgMjAyNiDDoCAwODo0NiArMDAwMCwgRmFuIFd1IGEgw6ljcml0
wqA6Cj4+IHJnYV9yZW1vdmUoKSByZWxlYXNlcyB0aGUgbTJtIHN0YXRlIGJlZm9yZSB0aGUgSVJR
IGlzIGZyZWVkLiBUaGUgSVJRIGlzCj4+IGRldm0tbWFuYWdlZCBhbmQgaXMgb25seSByZWxlYXNl
ZCBvbmNlIHJnYV9yZW1vdmUoKSByZXR1cm5zLCBzbyByZ2FfaXNyKCkKPj4gY2FuIHN0aWxsIHJ1
biB3aGlsZSB0aGUgbTJtIGRldmljZSBzdGF0ZSBpcyBiZWluZyB0b3JuIGRvd24uCj4+Cj4+IFN0
b3JlIHRoZSBJUlEgbnVtYmVyIGluIHN0cnVjdCByb2NrY2hpcF9yZ2EsIHVucmVnaXN0ZXIgdGhl
IHZpZGVvIGRldmljZQo+PiBmaXJzdCwgYW5kIGZyZWUgdGhlIElSUSBiZWZvcmUgcmVsZWFzaW5n
IHRoZSBtMm0gc3RhdGUgc28gdGhlIGhhbmRsZXIKPj4gY2Fubm90IHJ1biBhZ2FpbnN0IHRoZSBm
cmVlZCBzdGF0ZS4KPj4KPj4gRml4ZXM6IGY3ZTdiNDhlNmQ3OSAoIlttZWRpYV0gcm9ja2NoaXAv
cmdhOiB2NGwyIG0ybSBzdXBwb3J0IikKPj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKPj4g
U2lnbmVkLW9mZi1ieTogRmFuIFd1IDxmYW53dTAxQHpqdS5lZHUuY24+Cj4gQWdhaW4sIEkgZG9u
J3Qga25vdyBpZiB0aGlzIGlzIGEgcmVhbCBpc3N1ZSwgYnV0IHNlZW1zIGZhaXIuCgp0aGFua3Mg
Zm9yIGZvcndhcmRpbmcuIEFsc28gc3R1bWJsZWQgdXBvbiB0aGUgb3JkZXJpbmcgaW4gdGhlIHJl
bW92ZSAKZnVuY3Rpb24gYnV0IGtlcHQgaXQsIGFzIGl0IGxvb2tlZCBha3dhcmQgaWYgaXQgbWlz
bWF0Y2hlZCB0aGUgcHJvYmUgCmNsZWFudXAgb3JkZXIgKHdoaWNoIGNvbWVzIGZyb20gdGhlIGZh
Y3QgdGhhdCB0aGUgdmlkZW8gZGV2aWNlIGlzIAphbGxvY2F0ZWQsIHRoZW4gdGhlIG0ybSBkZXZp
Y2UgYW5kIGFmdGVyIHRoYXQgdGhlIHZpZGVvIGRldmljZSBpcyAKcmVnaXN0ZXJlZCkuIElzIGl0
IHBvc3NpYmxlIHRvIGluaXQgdGhlIG0ybSBkZXZpY2UgZmlyc3QgYW5kIHRoZW4gCmFsbG9jYXRl
IGFuZCByZWdpc3RlciB0aGUgdmlkZW9fZGV2aWNlLCB0aHVzIGtlZXBpbmcgdGhlIHNhbWUgdGVh
cmRvd24gCm9yZGVyIChpJ2QgdGhlbiBhZGp1c3QgdGhpcyBpbiBteSBtdWx0aS1jb3JlIHNlcmll
cyk/IE9yIGlzIHRoZXJlIHNvbWUgCmxvZ2ljIGJlaGluZCB0aGlzIHByb2JlIG9yZGVyaW5nPwoK
QnR3LiB0aGUgaXJxIHZhcmlhYmxlIHdpbGwgcHJvYmFibHkgYmUgZHJvcHBlZCB3aXRoIG15IApt
dWxpdC1jb3JlL2NvbXBvbmVudC1kZXZpY2VzIHBhdGNoc2V0LCBhcyBJIHRoZW4gaGF2ZSBhIHNl
cGFyYXRlIGNvcmUgCnN0cnVjdCBhbmQgY2FuIGNoZWNrIGlmIG15IGNvcmUgaGFzIGJlZW4gYWxy
ZWFkeSBib3VuZCB0byBzb21ldGhpbmcgKGFuZCAKb3RoZXJ3aXNlIGlnbm9yZSBJUlFzKS4gU2Vl
IFsxXVsyXQoKClNpbmNlcmVseQogwqAgwqAgU3ZlbgoKClsxXSAKaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvbGludXgtbWVkaWEvMjAyNjA5MTYtc3B1LXJnYTNtdWx0aWNvcmUtdjItMTMtMjNhYTJj
Yjc0ZTYxQHBlbmd1dHJvbml4LmRlLwoKWzJdIApodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51
eC1tZWRpYS8yMDI2MDkxNi1zcHUtcmdhM211bHRpY29yZS12Mi0xNC0yM2FhMmNiNzRlNjFAcGVu
Z3V0cm9uaXguZGUvCgoKPiBSZXZpZXdlZC1ieTogTmljb2xhcyBEdWZyZXNuZSA8bmljb2xhcy5k
dWZyZXNuZUBjb2xsYWJvcmEuY29tPgo+Cj4gUGlja2VkLCB0eQo+Cj4+IC0tLQo+PiBDaGFuZ2Vz
IGluIHYyOgo+PiAtIFJlYmFzZWQgb250byBtZWRpYS1jb21taXR0ZXJzL2ZpeGVzIChMaW51eCA3
LjItcmMxKSBzbyB0aGUgTWVkaWEgQ0kKPj4gICAgdmFsaWQtYW5jZXN0b3IgY2hlY2sgcGFzc2Vz
LiBUaGUgcmdhIGRyaXZlciB3YXMgcmV3cml0dGVuIHVwc3RyZWFtCj4+ICAgIChyZ2EzIHN1cHBv
cnQsIGV4dGVybmFsIElPTU1VLCBjbGtfYnVsaywgY21kYnVmIG1vdmVkIHRvIHJnYV9jdHgpLCBz
bwo+PiAgICB0aGlzIGlzIGEgcmUtcG9ydCByYXRoZXIgdGhhbiBhIHB1cmUgcmViYXNlOiB0aGUg
cmVzb3VyY2UgZnJlZWQgZHVyaW5nCj4+ICAgIHJlbW92YWwgaXMgbm93IHJnYS0+bTJtX2Rldi4K
Pj4gLS0tCj4+ICAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMgfCA0
ICsrKy0KPj4gICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuaCB8IDEg
Kwo+PiAgIDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+
Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2Eu
YyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jCj4+IGluZGV4IGIz
Y2I2YmY4ZWI4Ni4uZmJjOTk0NjJkY2UyIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL21lZGlhL3Bs
YXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYwo+PiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3Jt
L3JvY2tjaGlwL3JnYS9yZ2EuYwo+PiBAQCAtNzk3LDYgKzc5Nyw3IEBAIHN0YXRpYyBpbnQgcmdh
X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4+ICAgCQlyZXQgPSBpcnE7Cj4+
ICAgCQlnb3RvIGVycl9wdXRfY2xrOwo+PiAgIAl9Cj4+ICsJcmdhLT5pcnEgPSBpcnE7Cj4+ICAg
Cj4+ICAgCXJldCA9IGRldm1fcmVxdWVzdF9pcnEocmdhLT5kZXYsIGlycSwgcmdhX2lzciwKPj4g
ICAJCQkgICAgICAgcmdhX2hhc19pbnRlcm5hbF9pb21tdShyZ2EpID8gMCA6IElSUUZfU0hBUkVE
LAo+PiBAQCAtODc2LDggKzg3Nyw5IEBAIHN0YXRpYyB2b2lkIHJnYV9yZW1vdmUoc3RydWN0IHBs
YXRmb3JtX2RldmljZSAqcGRldikKPj4gICAKPj4gICAJdjRsMl9pbmZvKCZyZ2EtPnY0bDJfZGV2
LCAiUmVtb3ZpbmdcbiIpOwo+PiAgIAo+PiAtCXY0bDJfbTJtX3JlbGVhc2UocmdhLT5tMm1fZGV2
KTsKPj4gICAJdmlkZW9fdW5yZWdpc3Rlcl9kZXZpY2UocmdhLT52ZmQpOwo+PiArCWRldm1fZnJl
ZV9pcnEocmdhLT5kZXYsIHJnYS0+aXJxLCByZ2EpOwo+PiArCXY0bDJfbTJtX3JlbGVhc2Uocmdh
LT5tMm1fZGV2KTsKPj4gICAJdjRsMl9kZXZpY2VfdW5yZWdpc3RlcigmcmdhLT52NGwyX2Rldik7
Cj4+ICAgCj4+ICAgCXBtX3J1bnRpbWVfZGlzYWJsZShyZ2EtPmRldik7Cj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuaCBiL2RyaXZlcnMvbWVk
aWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5oCj4+IGluZGV4IGJkNDMxNTM0ZDBkMy4uN2Jj
ZGYzNmMxMWI0IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlw
L3JnYS9yZ2EuaAo+PiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9y
Z2EuaAo+PiBAQCAtNzMsNiArNzMsNyBAQCBzdHJ1Y3Qgcm9ja2NoaXBfcmdhIHsKPj4gICAJc3Ry
dWN0IGRldmljZSAqZGV2Owo+PiAgIAlzdHJ1Y3QgcmVnbWFwICpncmY7Cj4+ICAgCXZvaWQgX19p
b21lbSAqcmVnczsKPj4gKwlpbnQgaXJxOwo+PiAgIAlzdHJ1Y3QgY2xrX2J1bGtfZGF0YSAqY2xr
czsKPj4gICAJaW50IG51bV9jbGtzOwo+PiAgIAlzdHJ1Y3Qgcm9ja2NoaXBfcmdhX3ZlcnNpb24g
dmVyc2lvbjsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
