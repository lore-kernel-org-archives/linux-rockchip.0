Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEB92C4167B
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Nov 2023 10:12:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I7JtM/Mv2q1ojOLbFMYPwQRAJkpRABRSxoP8Q04OMFk=; b=SKlNyexEP+gO++
	8Rc/ODD7zbuVACusETXQdF6YSJhmafJHN7qc6lNQb1kyi5ViXHMPnieKs8NhVzMaSxqWxwEGi+Vzw
	MUvxW/yPaCkAJTzMQOoCva4/56EcgnMgcKHmTeATMsyZbkUsqOMIiAP4JZ4tDV2p/uCt+AmO+i8EY
	0lt1v40oITI+KIMrR1TxK8OJabG/mu+TqzVW63ZL8vq2kMuPS/sbEBQHjndWGUVYl/hXu4EEk6Ckm
	mqfARzh37jInrDWFdwsp/yyuttPNYkHa05hMyHCG9a6IcFE63exYfrnPcV6spBs+4z1Y75JdQzC3f
	iWhdYSSYgQlwDPNh6wFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7Yb1-0022g0-2l;
	Mon, 27 Nov 2023 10:12:07 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7Yaz-0022f9-0g;
	Mon, 27 Nov 2023 10:12:06 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
	by mailout.nyi.internal (Postfix) with ESMTP id 629E15C00AF;
	Mon, 27 Nov 2023 05:12:04 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Mon, 27 Nov 2023 05:12:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to;
	 s=fm3; t=1701079924; x=1701166324; bh=28QuhMK9GVHX2Z+NvBneJtnv1
	aX+4y54lRy7QfGLO9c=; b=i+tMYLJCsz1fCVNiTjbB8G+sFnfmkdlL7A/tSOg8M
	klmEiIJbH4Dyf2V1/Qsn0FV7jxS0Jw6QqsckaeBBpbxoHS1UhWJb709X/v1uNpmq
	V0nuG668VjbE0xoiscZn9UomWEfoz3R58yQ9oIftT2ki9xsomooDoFlsoyzBkyJ+
	Cvn+ENZAqLVRzqUF299QZ/PbtTOC7QNDGKhqywLNF6SzhPKH1hyldH5BrtEUmdUs
	hS49iqLS7EaUOQseWrkgJTI+0chdYmtfU/9TcwNGCzfuMYeIJqoL/Pz3QkxKB1e0
	8DJdvPK/RVwBn6KdBXxe77c5Rx5B9rEkTcxo+7CtO8nQA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1701079924; x=1701166324; bh=28QuhMK9GVHX2Z+NvBneJtnv1aX+4y54lRy
	7QfGLO9c=; b=B2b6Bm1RDl3w/VSr2E/9+ZeA1NrYiUOwbI4sVCFcqWIdYvunCQo
	HARPrAl7NeOBq9CAgo4z02U7lm98YCm75N8BwSC7sFWCE0/btv1e/n3x3zqh0/9l
	Uzf4vQjeCY+/aNPEjyWlNrxbN9SMpR9hf0pUy26cF5J1immTl03KSvvIe6deufp7
	3DOsxb96z+2PjYcNJvjbQfmORvx9FgcuSbpVcR4AcrdJQvDzlqJzZCU3zo9InEmZ
	V6uROjtWaE8z1yFSJGXaEL0k8nUz1ya3xUfkZ+6xEneLUmfQjd45oyYLEjz/UUoX
	mdMgdQdB9NhKFR0xiRDcPnGSId0ZYo+MX/A==
X-ME-Sender: <xms:dGtkZXvt_lu42vwK-DdQzrMNhNE019tHig2q_EumY-dSwvMwDb6P2Q>
    <xme:dGtkZYe7QRT5qxGs0Z8HqAtuKRsFmr5Bkx-ICAlZ0JoExOpIbrMF9rWjHJKiW5Drx
    Q9LKeD6pg>
X-ME-Received: <xmr:dGtkZax6TJgsAco6gcq6HuBrlkqIe81HilaR-zVwtrIssIvD7Pc6VVP3xEy9VRMGcgFdhr73TL0G4ldcCQx4F7yuRxYKZVogXvwMQw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudeiuddguddvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepkfffgggfuffvvehfhfgjtgfgsehtkeertddtvdejnecuhfhrohhmpefvihhm
    ucfnuhhnnhcuoehtihhmsehfvggrthhhvghrthhophdrohhrgheqnecuggftrfgrthhtvg
    hrnhepueegfefgveeuiedtheffgfefveejkeetiefhhfdvjeevlefhueekudeuleeghfek
    necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepthhimh
    esfhgvrghthhgvrhhtohhprdhorhhg
X-ME-Proxy: <xmx:dGtkZWMvOhI3yos1B1UGvIaKM4E5b5d1e5A2wj1iQnWKdrrroWi0iw>
    <xmx:dGtkZX_j4M5pkrqNtXGiubRVZ5z2FnYzOV98CcVS__-KwInlQxoLUw>
    <xmx:dGtkZWWTH3788f3CJe3a_P3z25wNYmp0KwaaROAhFJ6BtF4GcBEjag>
    <xmx:dGtkZTRm_5FvNfh2phWy9lxNym8j1deMwtLwloT6YWUYgdDbAH1z1g>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 27 Nov 2023 05:11:59 -0500 (EST)
Message-ID: <69e4609d-689d-4f03-b5f7-d3563ace185b@feathertop.org>
Date: Mon, 27 Nov 2023 21:11:57 +1100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/9] i2c: rk3x: Adjust offset for i2c2 on rv1126
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andi Shyti <andi.shyti@kernel.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-i2c@vger.kernel.org
References: <20231122122232.952696-1-tim@feathertop.org>
 <20231122122232.952696-4-tim@feathertop.org>
 <20231126194311.jxkvz3kqgsbzfgek@zenone.zhora.eu> <4717511.tIAgqjz4sF@diego>
From: Tim Lunn <tim@feathertop.org>
In-Reply-To: <4717511.tIAgqjz4sF@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_021205_314869_3748D82B 
X-CRM114-Status: GOOD (  26.30  )
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

Ck9uIDExLzI3LzIzIDExOjI2LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBIaSBBbmRpLAo+Cj4g
QW0gU29ubnRhZywgMjYuIE5vdmVtYmVyIDIwMjMsIDIwOjQzOjExIENFVCBzY2hyaWViIEFuZGkg
U2h5dGk6Cj4+IEhpIFRpbSwKPj4KPj4gT24gV2VkLCBOb3YgMjIsIDIwMjMgYXQgMTE6MjI6MjZQ
TSArMTEwMCwgVGltIEx1bm4gd3JvdGU6Cj4+PiBSb2NrY2hpcCBSVjExMjYgaGFzIHNwZWNpYWwg
Y2FzZSBtYXNrIGJpdHMgZm9yIGkyYzIuCj4+Pgo+Pj4gaTJjMiB3YXNudCBwcmV2aW91c2x5IGVu
YWJsZWQgaW4gcnYxMTI2LmR0c2ksIGFkZGluZyBEVCBub2RlIGFsb25lCj4+PiBpcyBub3Qgc3Vm
ZmljaWVudCB0byBlbmFibGUgaTJjMi4gVGhpcyBwYXRjaCBmaXhlcyB0aGUgaTJjMiBidXMuCj4+
IElmIEkgZG9uJ3QgaGF2ZSBzdWZmaWNpZW50IGluZm9ybWF0aW9uIGFib3V0IHRoZSBoYXJkd2Fy
ZSB0aGlzCj4+IGRlc2NyaXB0aW9uIGlzIGNvbXBsZXRlbHkgbWVhbmluZ2xlc3MgdG8gbWUuCj4+
Cj4+PiBTaWduZWQtb2ZmLWJ5OiBUaW0gTHVubiA8dGltQGZlYXRoZXJ0b3Aub3JnPgo+Pj4gLS0t
Cj4+Pgo+Pj4gQ2hhbmdlcyBpbiB2MjoKPj4+IC0gaTJjOiBjbGFyaWZ5IGNvbW1pdCBtZXNzYWdl
Cj4+Pgo+Pj4gICBkcml2ZXJzL2kyYy9idXNzZXMvaTJjLXJrM3guYyB8IDcgKysrKystLQo+Pj4g
ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Pj4KPj4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2kyYy9idXNzZXMvaTJjLXJrM3guYyBiL2RyaXZlcnMvaTJj
L2J1c3Nlcy9pMmMtcmszeC5jCj4+PiBpbmRleCBhMDQ0Y2EwYzM1YTEuLjE1MTkyNzQ2NmQxZCAx
MDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtcmszeC5jCj4+PiArKysgYi9k
cml2ZXJzL2kyYy9idXNzZXMvaTJjLXJrM3guYwo+Pj4gQEAgLTEyODgsOCArMTI4OCwxMSBAQCBz
dGF0aWMgaW50IHJrM3hfaTJjX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4+
PiAgIAkJCXJldHVybiAtRUlOVkFMOwo+Pj4gICAJCX0KPj4+ICAgCj4+PiAtCQkvKiAyNytpOiB3
cml0ZSBtYXNrLCAxMStpOiB2YWx1ZSAqLwo+Pj4gLQkJdmFsdWUgPSBCSVQoMjcgKyBidXNfbnIp
IHwgQklUKDExICsgYnVzX25yKTsKPj4+ICsJCWlmIChpMmMtPnNvY19kYXRhID09ICZydjExMjZf
c29jX2RhdGEgJiYgYnVzX25yID09IDIpCj4+PiArCQkJdmFsdWUgPSBCSVQoMjApIHwgQklUKDQp
Owo+PiBBbnkgY2hhbmNlIHRvIHB1dCBhIGNvbW1lbnQgaGVyZSBhcyBpdCBpcyBpbiB0aGUgb3Ro
ZXIKPj4gYXNzaWdubWVudD8KPj4KPj4gQXJlIHRoZSB0d28gYXNzaWdubWVudCBtdXR1YWxseSBl
eGNsdXNpdmU/ClllcyB0aGV5IGFyZSBtdXR1YWxseSBleGNsdXNpdmUsIGFuZCBpdHMgb25seSBp
MmMyIHRoYXQgaXMgCm5vbi1zZXF1ZW50aWFsIChhcyBwZXIgSGVpa29zIGRlc2NyaXB0aW9uIGJl
bG93KS4KPj4KPj4gSGVpa28sIGFueSBjaGFuY2UgdG8gdGFrZSBhIGxvb2sgaGVyZT8KPiBTbyB0
aGUgYmFja2dyb3VuZCBpcywgdGhhdCBvbiBzb21lIFNvQ3MgUm9ja2NoaXAgaW1wbGVtZW50ZWQg
dG8KPiBkaWZmZXJlbnQgdmFyaWFudHMgZm9yIHRoZSBpMmMgY29udHJvbGxlci4gT25lIG5ldy1z
dHlsZSBjb250cm9sbGVyCj4gdGhhdCB0aGV5IHN0YXJ0ZWQgdXNpbmcgaW4gcmszMDY2IGFuZCBh
cmUgdXNpbmcgZXZlbiB0b2RheS4KPgo+IEZvciB0aGVzZSBvbGQgc29jcyB0aGV5IGtlcHQgdGhl
ICJvbGQiIGNvbnRyb2xsZXIgYmxvY2sgYXMgYSBzb3J0Cj4gb2YgZmFsbGJhY2sgaWYgdGhlIG5l
dyB0aGluZyBkaWRuJ3Qgd29yayBvdXQsIGFuZCB0aGUgYml0IGFib3ZlIGlzCj4gc3dpdGNoaW5n
IGJldHdlZW4gdGhlCj4KPiBIZW5jZSB0aGF0IGlzIGxpbWl0ZWQgdG8gcmszMDY2LCByazMxODgg
YW5kIHNlZW1pbmdseSB0aGUgcnYxMTI2Lgo+IEFuZCB3aGlsZSB0aGUgYml0cyBjb250cm9sbGlu
ZyB0aGUgaTJjIGNvbnRyb2xsZXJzIG9uIHRoZSBvcmlnaW5hbCBzb2NzCj4gYXJlIG9yZGVyIHNl
cXVlbnRpYWxseSBpbiB0aGUgZ3JmIHJlZ2lzdGVyLCB0aGUgcnYxMTI2IHNlZW1zIHRvIGhhdmUK
PiB0aG9zZSBiaXRzIGluIG5vbi1jb25zZXF1dGl2ZSBwbGFjZXMuCj4KPgo+IFNvIFRMO0RSIHRo
ZSBjaGFuZ2UgaXRzZWxmIGlzIGxpa2VseSBnb29kLCBhbmQgaG9wZWZ1bGx5IHRoZXJlIHdvbid0
Cj4gYmUgYW55IG1vcmUgb2YgdGhvc2UsIGFzIGFsbCB0aGUgbmV3IHNvY3MgZG9uJ3QgbmVlZCB0
aGlzIGFueW1vcmUuCnJ2MTEwOCBpcyBhbHNvIHNpbWlsYXIgYnV0IGRpZmZlcmVudCBiaXRzIGFn
YWluIChvbmx5IGdvaW5nIG9mZiB0aGUgQlNQIApzb3VyY2VzKS4KSSBkb250IGhhdmUgaGFyZHdh
cmUgb3IgdGhlIFRSTSB0byB2YWxpZGF0ZSB0aGlzIG9uIHJ2MTEwOC4KPgo+IEkgZG8gYWdyZWUg
d2l0aCB0aGUgcmVxdWVzdCBmb3IgYSBjb21tZW50IGRlc2NyaWJpbmcgdGhlIGlzc3VlCj4gaW4g
dGhlIGNvZGUsIGJ1dCBvdGhlcndpc2UKCkkgd2lsbCBmaXggdGhpcy4KCj4gQWNrZWQtYnk6IEhl
aWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+Cj4KPgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
