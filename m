Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60D1ACCA476
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Oct 2025 13:46:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VsnZOvW7VuqAhVY0WVs7yVGGCSKmdCJ6uawNl3zrt4Q=; b=lB5ckxlIAosfJo
	SaWY2F6aYEE6PqURUerduDOHrUtLtxxlrO06XWzATH99WRhIckZ8cTU62EgtQJAQqp0cyHU2q1mch
	YR/wmoI7175fOr8FM3xc3byVMFSnz0o6DwrSvy7CAJXDSuKusnxsgpMfiNpGLu5Sg2IANyPk/SyG4
	G72K0FBtrPjs9ZoFtl4Mbch9QBnIl/nPIwR9uSH+Go+ATH6vk/IQzmSlXGLIJa1cboq/kyiHsX9aw
	QJjdBOc/Wjd0qWcpQyeV64MUW2a29OJq4FKnrqBZwv+nShtZm8C0u8lqguaCBFqpFE1r19N2ZXUZt
	vhqoIDV3ok/gVPYvbM0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v7DSK-00000008apZ-319q;
	Fri, 10 Oct 2025 13:46:48 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v7DSH-00000008aoq-25kE;
	Fri, 10 Oct 2025 13:46:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1760103999;
	bh=j+7Q50v1WcbolonU2FwjWi93Z0/pQgPtjDDj72dphGs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=nlVtMYQSaBTbBqEzskyVDW3uqVSg0BCrNtKS6VAG5QXDRwNiNzeITlsWwvFtu4i3P
	 1WRK4yb5kYm82Yr9g+ZWRTiMYKA1C2CFvEQExtAob4eMz7/oxBRsVGvVig9gHxGKMv
	 cJSGz3ReDwM9SWWa8y+iywpSRmJai4H3rrgzGKXFCus8YGZpxDf9uFdiL+/4cb5E5b
	 6hIufXoENtW3maZaVUrwwSUfRJF5THUFM2+GEB48Z+bumAxZYvvx0LffQJ0FIApPkP
	 eomBRxbnJvZwqdTuQ7/SGm8xuhJzx2yjDb9rj2VAeCU02C1h2PcEySLiBEYWVBK6uV
	 OS+TrbwZCsFLg==
Received: from [10.40.0.100] (185-67-175-126.lampert.tv [185.67.175.126])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: mriesch)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C8D8017E01F5;
	Fri, 10 Oct 2025 15:46:38 +0200 (CEST)
Message-ID: <de1a1dce-f60e-48a1-9945-d2c91b328df5@collabora.com>
Date: Fri, 10 Oct 2025 15:46:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 00/17] media: rockchip: add a driver for the rockchip
 camera interface
To: Bryan O'Donoghue <bod@kernel.org>,
 Mehdi Djait <mehdi.djait@linux.intel.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 =?UTF-8?Q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Gerald Loacker <gerald.loacker@wolfvision.net>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Markus Elfring <Markus.Elfring@web.de>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kever Yang <kever.yang@rock-chips.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Collabora Kernel Team <kernel@collabora.com>,
 Paul Kocialkowski <paulk@sys-base.io>,
 Alexander Shiyan <eagle.alexander923@gmail.com>,
 Val Packett <val@packett.cool>, Rob Herring <robh@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Mehdi Djait <mehdi.djait@bootlin.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <HSTnNzc6MTLHGWih5qjlI2nvVECP8FVdcQVeBON4KlWYLtEaWIlNmEpKTU_vlqitbIIHMpabKnvnmpEQFqHYxQ==@protonmail.internalid>
 <20240220-rk3568-vicap-v11-0-af0eada54e5d@collabora.com>
 <88b1dcda-be2d-4c57-b042-c1809ef1dc97@kernel.org>
Content-Language: en-US
From: Michael Riesch <michael.riesch@collabora.com>
In-Reply-To: <88b1dcda-be2d-4c57-b042-c1809ef1dc97@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251010_064645_711862_388E27B8 
X-CRM114-Status: GOOD (  24.09  )
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

SGkgQnJ5YW4sCgpPbiAxMC8xMC8yNSAxNDoxNSwgQnJ5YW4gTydEb25vZ2h1ZSB3cm90ZToKPiBP
biAxNy8wOS8yMDI1IDE2OjM4LCBNaWNoYWVsIFJpZXNjaCB2aWEgQjQgUmVsYXkgd3JvdGU6Cj4+
IEhhYmlkZXJlLAo+Pgo+PiBUaGlzIHNlcmllcyBpbnRyb2R1Y2VzIHN1cHBvcnQgZm9yIHRoZSBS
b2NrY2hpcCBDYW1lcmEgSW50ZXJmYWNlIChDSUYpLAo+PiB3aGljaCBpcyBmZWF0dXJlZCBpbiBt
YW55IFJvY2tjaGlwIFNvQ3MgaW4gZGlmZmVyZW50IHZhcmlhdGlvbnMuCj4+IEZvciBleGFtcGxl
LCB0aGUgUFgzMCBWaWRlbyBJbnB1dCBQcm9jZXNzb3IgKFZJUCkgaXMgYWJsZSB0byByZWNlaXZl
Cj4+IHZpZGVvIGRhdGEgdmlhIHRoZSBEaWdpdGFsIFZpZGVvIFBvcnQgKERWUCwgYSBwYXJhbGxl
bCBkYXRhIGludGVyZmFjZSkKPj4gYW5kIHRyYW5zZmVyIGl0IGludG8gc3lzdGVtIG1lbW9yeSB1
c2luZyBhIGRvdWJsZS1idWZmZXJpbmcgbWVjaGFuaXNtCj4+IGNhbGxlZCBwaW5nLXBvbmcgbW9k
ZS4KPj4gVGhlIFJLMzU2OCBWaWRlbyBDYXB0dXJlIChWSUNBUCkgdW5pdCwgb24gdGhlIG90aGVy
IGhhbmQsIGZlYXR1cmVzIGEKPj4gRFZQIGFuZCBhIE1JUEkgQ1NJLTIgcmVjZWl2ZXIgdGhhdCBj
YW4gcmVjZWl2ZSB2aWRlbyBkYXRhIGluZGVwZW5kZW50bHkKPj4gKGJvdGggdXNpbmcgdGhlIHBp
bmctcG9uZyBzY2hlbWUpLgo+PiBUaGUgZGlmZmVyZW50IHZhcmlhbnRzIG1heSBoYXZlIGFkZGl0
aW9uYWwgZmVhdHVyZXMsIHN1Y2ggYXMgc2NhbGluZwo+PiBhbmQvb3IgY3JvcHBpbmcuCj4+IEZp
bmFsbHksIHRoZSBSSzM1ODggVklDQVAgdW5pdCBjb25zdGl0dXRlcyBhbiBlc3NlbnRpYWwgcGll
Y2Ugb2YgdGhlCj4+IGNhbWVyYSBpbnRlcmZhY2Ugd2l0aCBvbmUgRFZQLCBzaXggTUlQSSBDU0kt
MiByZWNlaXZlcnMsIHNjYWxlL2Nyb3AKPj4gdW5pdHMsIGFuZCBhIGRhdGEgcGF0aCBtdWx0aXBs
ZXhlciAodG8gc2NhbGVyIHVuaXRzLCB0byBJU1AsIC4uLikuCj4+Cj4+IFRoZSB2MTEgb2YgdGhl
IHNlcmllcyBhZGRzIGEgbWVkaWEgY29udHJvbGxlciBjZW50cmljIFY0TDIgZGV2aWNlIGRyaXZl
cgo+PiBmb3IgdGhlIFJvY2tjaGlwIENJRiB3aXRoCj4+IMKgIC0gc3VwcG9ydCBmb3IgdGhlIFBY
MzAgVklQIChub3QgdGVzdGVkLCB0aG91Z2gsIGR1ZSB0byB0aGUgbGFjayBvZiBIVykKPj4gwqAg
LSBzdXBwb3J0IGZvciB0aGUgUkszNTY4IFZJQ0FQLCBpbmNsdWRpbmcKPj4gwqDCoMKgwqAgLSBj
YXB0dXJpbmcgZnJhbWVzIGZyb20gdGhlIERWUAo+PiDCoMKgwqDCoCAtIGNhcHR1cmluZyBmcmFt
ZXMgZnJvbSB0aGUgTUlQSSBDU0ktMiByZWNlaXZlcgo+PiDCoCAtIGFic3RyYWN0aW9uIGZvciB0
aGUgcGluZy1wb25nIHNjaGVtZSB0byBhbGxvdyBmb3IgZnV0dXJlIGV4dGVuc2lvbnMKPj4gwqAg
LSBhYnN0cmFjdGlvbiBmb3IgdGhlIElOVEVSRkFDRSBhbmQgQ1JPUCBwYXJ0cyB0byBhbGxvdyBm
b3IgZnV0dXJlCj4+IMKgwqDCoCBleHRlbnNpb25zCj4+IMKgIC0gaW5pdGlhbCBzdXBwb3J0IGZv
ciBkaWZmZXJlbnQgdmlydHVhbCBjaGFubmVscyAobm90IHRlc3RlZCwgdGhvdWdoLAo+PiDCoMKg
wqAgZHVlIHRvIHRoZSBsYWNrIG9mIEhXKQo+PiBhbmQgYSBWNEwyIHN1YmRldmljZSBkcml2ZXIg
Zm9yIHRoZSBSb2NrY2hpcCBNSVBJIENTSS0yIFJlY2VpdmVyLgo+Pgo+PiBUaGUgZHJpdmVyIGNh
biBiZSByZWFkaWx5IGV4dGVuZGVkIHRvIHByb3ZpZGUgc3VwcG9ydCBmb3IgdGhlIFJLMzU4OAo+
PiBWSUNBUCB2YXJpYW50LiBJbiBvcmRlciB0byBrZWVwIHRoaW5ncyBzaW1wbGUsIGhvd2V2ZXIs
IHRoaXMgZXh0ZW5zaW9uCj4+IHNoYWxsIGJlIHN1Ym1pdHRlZCBzZXBhcmF0ZWx5Lgo+Pgo+PiBM
b29raW5nIGZvcndhcmQgdG8geW91ciBjb21tZW50cyEKPj4KPj4gVG86IE1laGRpIERqYWl0PG1l
aGRpLmRqYWl0QGxpbnV4LmludGVsLmNvbT4KPj4gVG86IE1heGltZSBDaGV2YWxsaWVyPG1heGlt
ZS5jaGV2YWxsaWVyQGJvb3RsaW4uY29tPgo+PiBUbzogVGjDqW8gTGVicnVuPHRoZW8ubGVicnVu
QGJvb3RsaW4uY29tPgo+PiBUbzogVGhvbWFzIFBldGF6em9uaTx0aG9tYXMucGV0YXp6b25pQGJv
b3RsaW4uY29tPgo+PiBUbzogR2VyYWxkIExvYWNrZXI8Z2VyYWxkLmxvYWNrZXJAd29sZnZpc2lv
bi5uZXQ+Cj4+IFRvOiBCcnlhbiBPJ0Rvbm9naHVlPGJyeWFuLm9kb25vZ2h1ZUBsaW5hcm8ub3Jn
Pgo+PiBUbzogTWFya3VzIEVsZnJpbmc8TWFya3VzLkVsZnJpbmdAd2ViLmRlPgo+PiBUbzogU2Fr
YXJpIEFpbHVzPHNha2FyaS5haWx1c0Bpa2kuZmk+Cj4+IFRvOiBMYXVyZW50IFBpbmNoYXJ0PGxh
dXJlbnQucGluY2hhcnRAaWRlYXNvbmJvYXJkLmNvbT4KPj4gVG86IE1hdXJvIENhcnZhbGhvIENo
ZWhhYjxtY2hlaGFiQGtlcm5lbC5vcmc+Cj4+IFRvOiBSb2IgSGVycmluZzxyb2JoK2R0QGtlcm5l
bC5vcmc+Cj4+IFRvOiBLcnp5c3p0b2YgS296bG93c2tpPGtyemsrZHRAa2VybmVsLm9yZz4KPj4g
VG86IENvbm9yIERvb2xleTxjb25vcitkdEBrZXJuZWwub3JnPgo+PiBUbzogSGVpa28gU3R1ZWJu
ZXI8aGVpa29Ac250ZWNoLmRlPgo+PiBUbzogS2V2ZXIgWWFuZzxrZXZlci55YW5nQHJvY2stY2hp
cHMuY29tPgo+PiBUbzogTmljb2xhcyBEdWZyZXNuZTxuaWNvbGFzLmR1ZnJlc25lQGNvbGxhYm9y
YS5jb20+Cj4+IFRvOiBTZWJhc3RpYW4gUmVpY2hlbDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJv
cmEuY29tPgo+PiBUbzogQ29sbGFib3JhIEtlcm5lbCBUZWFtPGtlcm5lbEBjb2xsYWJvcmEuY29t
Pgo+PiBUbzogUGF1bCBLb2NpYWxrb3dza2k8cGF1bGtAc3lzLWJhc2UuaW8+Cj4+IFRvOiBBbGV4
YW5kZXIgU2hpeWFuPGVhZ2xlLmFsZXhhbmRlcjkyM0BnbWFpbC5jb20+Cj4+IFRvOiBWYWwgUGFj
a2V0dDx2YWxAcGFja2V0dC5jb29sPgo+PiBUbzogUm9iIEhlcnJpbmc8cm9iaEBrZXJuZWwub3Jn
Pgo+PiBUbzogUGhpbGlwcCBaYWJlbDxwLnphYmVsQHBlbmd1dHJvbml4LmRlPgo+PiBDYzpsaW51
eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKPj4gQ2M6ZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmcK
Pj4gQ2M6bGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZwo+PiBDYzpsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKPj4gQ2M6bGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwo+PiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWVsIFJpZXNjaDxtaWNoYWVsLnJpZXNjaEB3b2xm
dmlzaW9uLm5ldD4KPj4gU2lnbmVkLW9mZi1ieTogTWljaGFlbCBSaWVzY2g8bWljaGFlbC5yaWVz
Y2hAY29sbGFib3JhLmNvbT4KPj4KPj4gQ2hhbmdlcyBpbiB2MTE6Cj4+IC0gcmtjaWY6IHNwbGl0
IGxhcmdlIGRyaXZlciBwYXRjaCAoNi8xMyBvZiB2MTApIGludG8gc21hbGxlcgo+PiDCoMKgIHBh
dGNoZXMgKDYtMTEvMTcgb2YgdjExKSAoQnJ5YW4pCj4+IC0gcmtjc2k6IHJlcGxhY2VkIGRldm1f
cmVzZXRfY29udHJvbF9hcnJheV9nZXRfZXhjbHVzaXZlIHdpdGgKPj4gwqDCoCBkZXZtX3Jlc2V0
X2NvbnRyb2xfZ2V0X2V4Y2x1c2l2ZSAoUGhpbGlwcCkKPj4gLSBMaW5rIHRvIHYxMDpodHRwczov
L2xvcmUua2VybmVsLm9yZy9yLzIwMjQwMjIwLXJrMzU2OC12aWNhcC0KPj4gdjEwLTAtNjJkOGE3
YjIwOWI0QGNvbGxhYm9yYS5jb20KPiAKPiBJIGJlbGlldmUgaXQgaXMgdGhlIGNhc2UgYW5kIHBs
ZWFzZSBmZWVsIGZyZWUgdG8gY29ycmVjdCBtZSBpZiBJJ20gd3JvbmcKPiB0aGF0IHlvdSd2ZSBk
cm9wcGVkIGEgbG9uZyBsaXN0IG9mIHNvYi9jby1kZXZlbG9wLWJ5LCBJIHRoaW5rIHdlCj4gZGlz
Y3Vzc2VkIHRoYXQgdG9vLCBiZWNhdXNlIG9mIHRoZSBsZXZlbCBvZiBjaGFuZ2UsIGl0IHNlZW1z
IHJlYXNvbmFibGUKPiB0b28uCgpDb3JyZWN0LiBUaGUgdGFnIGxpc3QgdXNlZCB0byBiZSBxdWl0
ZSBjb21wbGljYXRlZCBbMF0gZHVlIHRvIHRoZQpjb21wbGljYXRlZCBoaXN0b3J5IG9mIHRoaXMg
ZHJpdmVyLiBNYXhpbWUgd29ya2VkIG9uIHRoZSBkcml2ZXIgdXAgdG8KdjUsIE1laGRpIHVwIHRv
IHYxNCwgSSBhZGRlZCBSSzM1Njggc3VwcG9ydCBvbiB0b3Agb2YgTWVoZGkncyB2MTQgKHdpdGgK
c29tZSB2YWx1YWJsZSBjb250cmlidXRpb25zIGZyb20gR2VyYWxkKSBhbmQgc3VibWl0dGVkIHRo
YXQgYXMgdjEuIHYyIG9mCm15IHdvcmsgaW5jb3Jwb3JhdGVkIE1laGRpJ3MgdjE0LCBhbmQgaGVy
ZSB3ZSBhcmUsIGFmdGVyIHNldmVyYWwgcm91bmRzCm9mIGZlZWRiYWNrLCBhdCBzb29uLXRvLWJl
IHYxMiAob3IsIGluIGZhY3QsIHYyNSkuCgo+IE9uIHF1ZXN0aW9uIG9uIHRoYXQsIGFyZSB0aGVz
ZSBwZW9wbGUgYXdhcmUgb2YgdGhlIGNoYW5nZSBhbmQgY2MnZCBvbgo+IHRoZSBsaXN0IG9mIHJl
Y2lwaWVudHMvY29udGFjdGFibGUvYWdyZWVhYmxlIHRvIHRoZSBjaGFuZ2UgPwoKSSBhbm5vdW5j
ZWQgdGhpcyBwbGFuIGFzIGEgcmVzcG9uc2UgdG8geW91ciBjb21tZW50IHRvIHYxMCBbMV0gd2l0
aApNYXhpbWUsIE1laGRpIGFuZCBHZXJhbGQgb24gQ2M6IGFuZCBkaWQgbm90IGhlYXIgYW55IG9i
amVjdGlvbnMuCgpIb3BlIHRoYXQgdGhpcyBpcyBzdGlsbCBPSyBmb3IgZXZlcnlib2R5IQoKQmVz
dCByZWdhcmRzLApNaWNoYWVsCgpbMF0KaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtbWVk
aWEvMjAyNDAyMjAtcmszNTY4LXZpY2FwLXYxMC02LTYyZDhhN2IyMDliNEBjb2xsYWJvcmEuY29t
LwpbMV0KaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtbWVkaWEvMjNjY2M3NDQtNzQ1ZC00
YTMxLWE3OWMtMmQ2NGJmMWVkNDNkQGNvbGxhYm9yYS5jb20vCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
