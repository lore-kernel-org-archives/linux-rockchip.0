Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFF8BC43458
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Jul 2026 16:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M3eMZwDOiw/wFxHmiatxuXuEy8AQ6DblIVkzjhJ+P+4=; b=hokDSp8oVulwtU
	39+S1d/yBVMYODJIEf8P0nQ0oKjigGGq6ty8NvFTdI+9fNfhsniTBzAPbaT5y2Y7FKMA69yO8MCi8
	8wFEoUWg1NmSvRlH7yr3IEnWqAKYbzShBKhDdVyLVKxdTEcLCt9dpdQi0LJSCpohCM47x1g05RQSy
	Jk37Wu8Kr6wkTPJ778nnFU6qL1z9SVcy+nUNprsuz8CVdsG2rukpiGXX1wX0L/4H1/zBlVl1wIXXl
	ynz6LDQ1PQSUmyNgn568/6WwICJcxwePLgxEyAQQbczpauMIvXj87Y7duXvzNlNEfZ/iR6K1U17Ch
	+b3UfKmx9hnZxPsIPvBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfguA-00000007Yku-3IYv;
	Fri, 03 Jul 2026 16:38:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfgu8-00000007Yk5-3AbI;
	Fri, 03 Jul 2026 16:38:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Cs75p+IM1gwfpKthc4TEByeHqgqGfc4z5ObGktLZjdY=; b=P7GJt/29oVsv5I7SJHYT0CN4RH
	mAFDRwiTLxmI3sztsWqfDq2nvN+eB0y2pLHeQFVUjhkrbecEWh5ASwNITjia1JVtzf8mFnGF0O96H
	FHogpOEvJlg5FgzB3d+9UqaToTkFIa7OHMHnK9p4MRx9IdJWgV09+HseUqdq/xc6mm9ZJcHZDaXH3
	fa3ZYaj59NiM0B2akAbqIdDKr/OaM35cFw6JprEnngN159dzKqk8m+jVy9XVsQSaOrxGL3FgGJDlZ
	Mgjip2xWHT+neyMXruRTp9dqk10Anw8C6lBRjbHZ+LqZg7wCOAmpto0WpRBfEVaXgF9UNFzz4bEla
	/cvslYPw==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Diederik de Haas <diederik@cknow-tech.com>,
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: kernel@collabora.com, Andy Yan <andyshrk@163.com>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/9] dt-bindings: display: vop2: Add missing reset properties
Date: Fri, 03 Jul 2026 18:37:45 +0200
Message-ID: <8183064.gsGJI6kyIV@diego>
In-Reply-To: <fe8038fe-940a-4c61-a551-082534ef9c51@collabora.com>
References: <20260617-dw-hdmi-qp-yuv-v1-0-a665cfd06d7d@collabora.com>
 <DJC0L3CRJ0WL.IZEYVLPROMM1@cknow-tech.com>
 <fe8038fe-940a-4c61-a551-082534ef9c51@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260703_093816_792571_30C6BE90 
X-CRM114-Status: GOOD (  19.81  )
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

QW0gRG9ubmVyc3RhZywgMTguIEp1bmkgMjAyNiwgMTA6Mzk6MTQgTWl0dGVsZXVyb3DDpGlzY2hl
IFNvbW1lcnplaXQgc2NocmllYiBDcmlzdGlhbiBDaW9jYWx0ZWE6Cj4gSGkgRGllZGVyaWssCj4g
Cj4gT24gNi8xOC8yNiAxMDo1OCBBTSwgRGllZGVyaWsgZGUgSGFhcyB3cm90ZToKPiA+IEhpIENy
aXN0aWFuLAo+ID4gCj4gPiBUaGFua3MgZm9yIHRoaXMgc2VyaWVzIDotKSBKdXN0IDEgbml0IChh
dCB0aGUgZW5kKSAuLi4KPiA+IAo+ID4gT24gV2VkIEp1biAxNywgMjAyNiBhdCA4OjUyIFBNIENF
U1QsIENyaXN0aWFuIENpb2NhbHRlYSB3cm90ZToKPiA+PiBEb2N1bWVudCB0aGUgVk9QMiByZXNl
dHMgY29ycmVzcG9uZGluZyB0byB0aGUgQVhJLCBBSEIgYW5kIERDTEtfVlAwLi4yCj4gPj4gY2xv
Y2tzLCB3aGljaCBhcmUgY29tbW9uIHRvIGFsbCBzdXBwb3J0ZWQgU29DcywgcGx1cyBEQ0xLX1ZQ
MyB3aGljaCBpcwo+ID4+IHByb3ZpZGVkIG9ubHkgb24gUkszNTg4Lgo+ID4+Cj4gPj4gU2lnbmVk
LW9mZi1ieTogQ3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlzdGlhbi5jaW9jYWx0ZWFAY29sbGFib3Jh
LmNvbT4KPiA+PiAtLS0KPiA+PiAgLi4uL2JpbmRpbmdzL2Rpc3BsYXkvcm9ja2NoaXAvcm9ja2No
aXAtdm9wMi55YW1sICAgfCA0MiArKysrKysrKysrKysrKysrKysrKysrCj4gPj4gIDEgZmlsZSBj
aGFuZ2VkLCA0MiBpbnNlcnRpb25zKCspCj4gPj4KPiA+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvcm9ja2NoaXAvcm9ja2NoaXAtdm9wMi55
YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvcm9ja2NoaXAv
cm9ja2NoaXAtdm9wMi55YW1sCj4gPj4gaW5kZXggOTNkYTFmYjlhZGM0Li5kM2JjNTM4MGY5MTAg
MTAwNjQ0Cj4gPj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3Bs
YXkvcm9ja2NoaXAvcm9ja2NoaXAtdm9wMi55YW1sCj4gPj4gKysrIGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvcm9ja2NoaXAvcm9ja2NoaXAtdm9wMi55YW1sCj4g
Wy4uLl0KPiAKPiA+PiBAQCAtMjg5LDYgKzMyMSwxNiBAQCBleGFtcGxlczoKPiA+PiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgImRjbGtfdnAwIiwKPiA+PiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgImRjbGtfdnAxIiwKPiA+PiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgImRjbGtfdnAyIjsKPiA+PiArICAgICAgICAgICAgICAgIHJlc2V0cyA9IDwmY3J1IFNS
U1RfQV9WT1A+LAo+ID4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgPCZjcnUgU1JTVF9IX1ZP
UD4sCj4gPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICA8JmNydSBTUlNUX1ZPUDA+LAo+ID4+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgPCZjcnUgU1JTVF9WT1AxPiwKPiA+PiArICAgICAg
ICAgICAgICAgICAgICAgICAgIDwmY3J1IFNSU1RfVk9QMj47Cj4gPj4gKyAgICAgICAgICAgICAg
ICByZXNldC1uYW1lcyA9ICJheGkiLAo+ID4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAiYWhiIiwKPiA+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgImRjbGtfdnAwIiwK
PiA+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgImRjbGtfdnAxIiwKPiA+PiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgImRjbGtfdnAyIjsKPiA+PiAgICAgICAgICAgICAg
ICAgIHBvd2VyLWRvbWFpbnMgPSA8JnBvd2VyIFJLMzU2OF9QRF9WTz47Cj4gPiAKPiA+IFBsYWNl
IHJlc2V0KiBwcm9wcyBiZWxvdyBwb3dlci1kb21haW5zIChsaWtlIGluIHBhdGNoIDkpID8KPiA+
IFNvIGV2ZXJ5b25lIHdobyBjb3BpZXMgeW91ciBleGFtcGxlIGhhcyB0aGUgY29ycmVjdCBzb3J0
aW5nIG9yZGVyLgo+IAo+IFRoZSBleGFtcGxlIGRvZXNuJ3Qgc3RyaWN0bHkgZm9sbG93IHRoYXQg
b3JkZXJpbmcgZWl0aGVyIOKAlCBzZWUgZS5nLiB0aGUgaW9tbXVzCj4gcHJvcGVydHkg4oCUIHNv
IEkgcGxhY2VkIHRoZSByZXNldHMgcmlnaHQgYWZ0ZXIgdGhlIGNsb2Nrcywgd2hpY2gga2VlcHMg
dGhlCj4gcmVsYXRlZCBwcm9wZXJ0aWVzIGdyb3VwZWQgdG9nZXRoZXIuCj4gCj4gVGhhdCBzYWlk
LCBJIGRvbid0IGhhdmUgYSBzdHJvbmcgcHJlZmVyZW5jZS4gCj4gCj4gSGVpa28sIGlzIHRoZXJl
IGEgY29udmVudGlvbiB5b3UnZCBsaWtlIHRoZSBSb2NrY2hpcCBiaW5kaW5ncyB0byBmb2xsb3cg
aGVyZT8KPiBIYXBweSB0byByZW9yZGVyIGlmIHNvLgoKUGxlYXNlIGp1c3QgdXNlIHN0YW5kYXJk
IGRldmljZXRyZWUgb3JkZXJpbmcsIGFzIGRlc2NyaWJlZCBpbiB0aGUKZG9jdW1lbnRhdGlvbi4g
V2UgZ2VuZXJhbGx5IGRvbid0IHdhbnQgdG8gaW52ZW50IG5ldyBkaXZlcmdpbmcgdGhpbmdzIDot
KQoKCkhlaWtvCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
