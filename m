Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D43ED3C550
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Oct 2024 06:39:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mfy9lvNl4aS7ozCRl1fkWAg6VbB2t7rsF8wgoq0kf/4=; b=Cd3MbkYgPgCIJVQ3MNQRAOPfEM
	9lVu85hcP3qTealee07Z5klKJlgqLJCc5+Ny5uY67tRDEiILFRWy5i/yzi/yyNylYkE/G7Q+v9eFa
	TNf/UiT1PoeKWo4VRcQlAaJhqJwRVhkRvU+N1WTTaLwYqTw138MCHFcHAo6tW9jyFrhtvGXTG3CnB
	nJ3B8cT0k5Ld9dkgEkVIyKedVc96c/YJTQ745OPwKBNxPIsiU9xGHkEKce18IcVmm1g56QtiO3Vq8
	+lNoeJDAFT8qcUm87ttxsaLCOg94YUjn993nYeYkSpmBcuXVM8VTwMNDmMWobU8ccrNcmaaINePWi
	dya0DG9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1gdl-0000000HAb2-286r;
	Fri, 18 Oct 2024 06:39:13 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1gcF-0000000HANk-2bL5;
	Fri, 18 Oct 2024 06:37:42 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1729233457;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tQrAlybDcm+BHN6KghRbFaYYrJAEKr0934b1OCxB7wU=;
	b=a3bd3Lv+1DcGM36LvuPPteYTY9SOB1DUVXjq+8nimatWpeQZ3TvAucM5Zb2aDdP5Shnarc
	40EeKhlpz+VGOeD029yG8kDGHIkYgYu0HSyc4uiqPhKf6oQDkE9d8akhY5g4cnUi1qNKme
	q8NZ8OBiCy2o2PLLeGOXjmyFlAG/3njyiERdqKbs+qTwomFUudc4HuaPfpDsiVbGCOI1FT
	xWe2hdkDSPPD/PMfDa/C7apyjcnIxwEqvxR/xE0z2PlZphGlh043hPTA7e6BDzk9MxHtlg
	30nPyeURDSdzJgIUAwSvLhaOmyhmhgAlGwANaq7tg4z6eX5Y2Rh/4gJ4xR0wkw==
Date: Fri, 18 Oct 2024 08:37:36 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Frank Wang <frawang.cn@gmail.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, william.wu@rock-chips.com,
 tim.chen@rock-chips.com, yubing.zhang@rock-chips.com, Frank Wang
 <frank.wang@rock-chips.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: soc: rockchip: add rk3576 vo1-grf
 syscon
In-Reply-To: <d2a200aa-1301-4940-a39c-0412fe741994@gmail.com>
References: <20241017025230.28752-1-frawang.cn@gmail.com>
 <ca0ee8752791f53bac23933e1582dd86@manjaro.org>
 <d2a200aa-1301-4940-a39c-0412fe741994@gmail.com>
Message-ID: <ee27926c06bedd62f417dbd7d01ce8b3@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_233740_259762_A97EE9CD 
X-CRM114-Status: GOOD (  14.95  )
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

SGVsbG8gRnJhbmssCgpPbiAyMDI0LTEwLTE4IDA4OjE4LCBGcmFuayBXYW5nIHdyb3RlOgo+IE9u
IDIwMjQvMTAvMTggMTM6MDIsIERyYWdhbiBTaW1pYyB3cm90ZToKPj4gT24gMjAyNC0xMC0xNyAw
NDo1MiwgRnJhbmsgV2FuZyB3cm90ZToKPj4+IEZyb206IEZyYW5rIFdhbmcgPGZyYW5rLndhbmdA
cm9jay1jaGlwcy5jb20+Cj4+PiAKPj4+IEFkZCByb2NrY2hpcCxyazM1NzYtdm8xLWdyZiBzeXNj
b24gY29tcGF0aWJsZSwgdGhlIHZvMS1ncmYgaXMKPj4+IGNvbmZpZ3VyZWQgaW4gdXNiZHAgcGh5
IGRyaXZlci4KPj4+IAo+Pj4gU2lnbmVkLW9mZi1ieTogRnJhbmsgV2FuZyA8ZnJhbmsud2FuZ0By
b2NrLWNoaXBzLmNvbT4KPj4+IC0tLQo+Pj4gQ2hhbmdlbG9nOgo+Pj4gdjI6Cj4+PiDCoC0gVGhp
cyBpcyBhIG5ldyBwYXRjaCBhZGRzIHJrMzU3Ni12bzEtZ3JmIHN5c2Nvbi4KPj4gCj4+IENvdWxk
IHlvdSwgcGxlYXNlLCBjbGFyaWZ5IGEgYml0IHdoeSBpcyB0aGlzIGFkZGl0aW9uYWwgcGF0Y2gK
Pj4gbmVlZGVkIGluIHRoaXMgc2VyaWVzPwo+IAo+IEkgbWVudGlvbmVkIGluIHRoZSBjb21taXQg
Y29udGVudC4gVGhlIHVzYmRwLXBoeSBkcml2ZXIgc2VsZWN0IGRwCj4gbGFuZXMgdmlhIGNvbmZp
Z3VyaW5nIHRoZSB2bzEtZ3JmLgoKWWVzLCBJIGFscmVhZHkgc2F3IHRoYXQgaW4gdGhlIHBhdGNo
IGRlc2NyaXB0aW9uLiAgVGhvdWdoLCBhbmQKSSBhcG9sb2dpemUgaWYgSSdtIG1pc3Npbmcgc29t
ZXRoaW5nIG9idmlvdXMsIEkgY2FuJ3Qgc2VlIHdoZXJlCmlzIGl0IGFjdHVhbGx5IHVzZWQgaW4g
dGhlIGNvZGU/ICBJcyBpdCB5ZXQgdG8gYmUgdXNlZCBpbiB0aGUKZHRzKGkpIGZpbGVzPwoKSSdk
IGFwcHJlY2lhdGUgaWYgeW91IGNvdWxkIGNsYXJpZnkgdGhhdCBqdXN0IGEgYml0IGZ1cnRoZXIs
IHNvCkkgY2FuIGhvcGVmdWxseSB1bmRlcnN0YW5kIGl0IGJldHRlci4KCj4+PiB2MToKPj4+IMKg
LSBub25lCj4+PiAKPj4+IMKgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvYy9y
b2NrY2hpcC9ncmYueWFtbCB8IDIgKysKPj4+IMKgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9u
cygrKQo+Pj4gCj4+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3NvYy9yb2NrY2hpcC9ncmYueWFtbAo+Pj4gYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3Mvc29jL3JvY2tjaGlwL2dyZi55YW1sCj4+PiBpbmRleCA1MGQ3MjdmNGI3NmM2Li5m
ZDQyMjE3YWI4NWU3IDEwMDY0NAo+Pj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3NvYy9yb2NrY2hpcC9ncmYueWFtbAo+Pj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL3NvYy9yb2NrY2hpcC9ncmYueWFtbAo+Pj4gQEAgLTMzLDYgKzMzLDcg
QEAgcHJvcGVydGllczoKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSByb2NrY2hp
cCxyazM1NzYtdXNiLWdyZgo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIHJvY2tj
aGlwLHJrMzU3Ni11c2JkcHBoeS1ncmYKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
LSByb2NrY2hpcCxyazM1NzYtdm8wLWdyZgo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IC0gcm9ja2NoaXAscmszNTc2LXZvMS1ncmYKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgLSByb2NrY2hpcCxyazM1NzYtdm9wLWdyZgo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCAtIHJvY2tjaGlwLHJrMzU4OC1iaWdjb3JlMC1ncmYKPj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgLSByb2NrY2hpcCxyazM1ODgtYmlnY29yZTEtZ3JmCj4+PiBAQCAtMjgzLDYg
KzI4NCw3IEBAIGFsbE9mOgo+Pj4gwqDCoMKgwqDCoMKgwqDCoCBjb21wYXRpYmxlOgo+Pj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqAgY29udGFpbnM6Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
ZW51bToKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIHJvY2tjaGlwLHJrMzU3Ni12
bzEtZ3JmCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gcm9ja2NoaXAscmszNTg4
LXZvLWdyZgo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIHJvY2tjaGlwLHJrMzU4
OC12bzAtZ3JmCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gcm9ja2NoaXAscmsz
NTg4LXZvMS1ncmYKPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+IExpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
