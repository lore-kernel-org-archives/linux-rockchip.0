Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74FFFC25B78
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 May 2024 08:38:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hCJPZx/yNFImJODK9o3ZvDPpObjFTb8XHPkpCeNRTpc=; b=LjIj5s/IB1P0CK7Tjat6jjTtc5
	PCd2l7x8mIWwEogQ0Y5GixVvEHy2c9CMi32WijJMKG2gWlYbqvQzCEA4/N0gCVgptrIBA5Q3HZn+p
	4ktnVRL2m3GNVzzszNp4hiLWxFcgOwgFxMa5Du6ut6MCMVmNaxl2TA+YmadzKd7pLQbsACBxu0iTD
	KMAuppqWhUGwFydZJvUiOdca1RDakB2Bsa20eBZ6+y4N2X75fgacgmuNFQ42S0hwNgdn8Oh5RaTEF
	CanpxQi6hbjzaHVLtRjEiGcK/p9Leq3Xmu1yiDu4Mv6K60UVuV+e1keRc9hoKLZCxKjpSnaoyeDWq
	+tUghVcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBsLG-0000000HV65-0czs;
	Tue, 28 May 2024 08:37:58 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBsLC-0000000HV4F-0ukj;
	Tue, 28 May 2024 08:37:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1716885468;
	bh=TW1jNG1PIoyG2+so13309xJlYyhVgbq9D68UAfsajzA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SglXt0ewsfNVjfgOblte5DXxYe8Odk5aHidxhfv8ZQblVTG7GI9Yc/cFxq62NVZ7X
	 5DZcv5LCwqa1F6GRv/DV1AwNsaoEZ5rDEWEEepby4GPPxZ3wcUEyNQzKr1Z3cuCU6L
	 S4+/xEECPAvyyx+UAARquesFnxxjqRtKt1FpNoAPJ5Gr4vj44frFNffkL+EyOYaqGK
	 NgCuhF8j+H9Xb4RH+6q8YUiXKwO0ZyBs0N3B9ja+Xm8j+6CS4YhqluGnOsyuNBW8Mj
	 xjbHL5U6lUueOIcVNsA1BXMacHvIMgYXFRVKf3Q/gLlDL1PahnVG5/cwRlnPMfumCI
	 Bv+WWc54qsaVg==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sebastianfricke)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 5C2603782157;
	Tue, 28 May 2024 08:37:48 +0000 (UTC)
Date: Tue, 28 May 2024 10:37:47 +0200
From: Sebastian Fricke <sebastian.fricke@collabora.com>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Alex Bee <knaerzche@gmail.com>,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: media: rockchip,vpu: Document RK3128
 compatible
Message-ID: <20240528083747.z55laxnmioorzaru@basti-XPS-13-9310>
References: <20240523185633.71355-1-knaerzche@gmail.com>
 <20240523185633.71355-2-knaerzche@gmail.com>
 <3639993.hdfAi7Kttb@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3639993.hdfAi7Kttb@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_013754_435041_A8010AE4 
X-CRM114-Status: GOOD (  14.43  )
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

SGV5IEhlaWtvLAoKT24gMjguMDUuMjAyNCAxMDoxOSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj5B
bSBEb25uZXJzdGFnLCAyMy4gTWFpIDIwMjQsIDIwOjU2OjMxIENFU1Qgc2NocmllYiBBbGV4IEJl
ZToKPj4gVGhlIGludGVncmF0aW9uIGZvciB0aGlzIFNvQyBpcyBzaW1pbGFyIHRvIFJLMzA2Ni9S
SzMxODguCj4+Cj4+IERvY3VtZW50IGl0J3MgY29tcGF0aWJsZS4KPj4KPj4gU2lnbmVkLW9mZi1i
eTogQWxleCBCZWUgPGtuYWVyemNoZUBnbWFpbC5jb20+Cj4KPlJldmlld2VkLWJ5OiBIZWlrbyBT
dHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgo+Cj5NZWRpYSBwZW9wbGUsIGNhbiB5b3UgYXBwbHkg
dGhpcyBwYXRjaCBhbG9uZSBmcm9tIHRoZSBzZXJpZXM/CgpZZXMsIHdpbGwgZG8gZ290IHRoaXMg
b24gbXkgbGlzdCBhbHJlYWR5IDopLgoKPgo+VGhhbmtzCj5IZWlrbwoKUmVnYXJkcywKU2ViYXN0
aWFuCgo+Cj4+IC0tLQo+PiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlh
L3JvY2tjaGlwLXZwdS55YW1sIHwgNCArKystCj4+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRp
b25zKCspLCAxIGRlbGV0aW9uKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvbWVkaWEvcm9ja2NoaXAtdnB1LnlhbWwgYi9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvcm9ja2NoaXAtdnB1LnlhbWwKPj4gaW5kZXggYzU3
ZTFmNDg4ODk1Li5kMWI0N2IxNGNhNTcgMTAwNjQ0Cj4+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9yb2NrY2hpcC12cHUueWFtbAo+PiArKysgYi9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvcm9ja2NoaXAtdnB1LnlhbWwKPj4gQEAg
LTI2LDcgKzI2LDkgQEAgcHJvcGVydGllczoKPj4gICAgICAgICAgICAtIHJvY2tjaGlwLHJrMzU2
OC12cHUKPj4gICAgICAgICAgICAtIHJvY2tjaGlwLHJrMzU4OC1hdjEtdnB1Cj4+ICAgICAgICAt
IGl0ZW1zOgo+PiAtICAgICAgICAgIC0gY29uc3Q6IHJvY2tjaGlwLHJrMzE4OC12cHUKPj4gKyAg
ICAgICAgICAtIGVudW06Cj4+ICsgICAgICAgICAgICAgIC0gcm9ja2NoaXAscmszMTI4LXZwdQo+
PiArICAgICAgICAgICAgICAtIHJvY2tjaGlwLHJrMzE4OC12cHUKPj4gICAgICAgICAgICAtIGNv
bnN0OiByb2NrY2hpcCxyazMwNjYtdnB1Cj4+ICAgICAgICAtIGl0ZW1zOgo+PiAgICAgICAgICAg
IC0gY29uc3Q6IHJvY2tjaGlwLHJrMzIyOC12cHUKPj4KPgo+Cj4KPgo+CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
