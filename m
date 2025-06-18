Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0BC4C7115B
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Jun 2025 06:37:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FSCQOKqcUWUSZVRzaEwh0z+xFrzXHLPGX1HT9oROpkA=; b=VO/u4Ya+wo0DIm
	IYSB8FARM9AGZQAHLvnZLXHQR84WRwpmoOoDdtNqTubuuST7kFdfpc5WjAcI+UdCRAon7t9lDJsWk
	N0skLLjOHgv/0T6tO3h/2stnUhaQJW1aphFiUYFMqpcTg7evBC3uAKS4IRPb0j3hMI+5a78hAor4d
	XscZ5gAwCghg2Z6KnVUrKtFSNApP/7eu9OarFKVNKKi2dpxTLDrB5DFPI89Rgbr2ZQN51aDITcVww
	npPrFsmV1Jgc+fJO4QCTy7jUQIYwIGBb5oFSAI8h5Wc0z1lJ2mZygNqcd/14nJiord69oZRX0F0Uk
	wGreF5Kf4Ghjs1sA0/Og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRmQh-00000009BtN-3TH9;
	Wed, 18 Jun 2025 06:37:51 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRmLU-00000009BFn-2aMY;
	Wed, 18 Jun 2025 06:32:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1750228346;
	bh=y10M8imfJ9o9x4GicbvPGTG3FTDU5rk/ab+BdMuexKg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=T34ktW0oHpuFm0dNOITwZ4sMW7CMFEoqqP5DDtdOZrPLpha+3GfXyd02Cli/vadBU
	 LlWPVtA6T+zvqc73KzuhZ/CnssL5rl721ZEmYcCqUTsL6O7BE/Z1rDLNKY7u6pKSDs
	 yPsimWcGx4Blwgtu5smzFikqknZWd7TgPR08HJT6kQJSudRYAbQEitAJvfV+6nJCIP
	 Fk3YMS5kFx6OZd8Ra1zChjmdjdyC+6KirckL/a0YjlfTO90bjUj6evempYqSQw3pf3
	 Rvhjqv6TwLKI8xV6X97d9vFRM2ErqWaKIMVpL+lClT8Ei9Z2efKav1ncp9VY49nAQo
	 aWLfOCHHBszqQ==
Received: from [10.40.0.100] (185-251-200-162.lampert.tv [185.251.200.162])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: mriesch)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C91F817E0863;
	Wed, 18 Jun 2025 08:32:25 +0200 (CEST)
Message-ID: <8ba2f458-4a66-44f6-8528-4654cfe379ff@collabora.com>
Date: Wed, 18 Jun 2025 08:32:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] dt-bindings: phy: rockchip-inno-csi-dphy: add rk3588
 variant
To: Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Collabora Kernel Team <kernel@collabora.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20250616-rk3588-csi-dphy-v1-0-84eb3b2a736c@collabora.com>
 <20250616-rk3588-csi-dphy-v1-2-84eb3b2a736c@collabora.com>
 <0f2b8934-9b3d-4913-b734-b4fe7f0c7d0a@linaro.org>
Content-Language: en-US
From: Michael Riesch <michael.riesch@collabora.com>
In-Reply-To: <0f2b8934-9b3d-4913-b734-b4fe7f0c7d0a@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_233228_806759_F5764DD9 
X-CRM114-Status: GOOD (  19.42  )
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

SGkgTmVpbCwKClRoYW5rcyBmb3IgeW91ciBjb21tZW50cyEKCk9uIDYvMTcvMjUgMTE6MzEsIG5l
aWwuYXJtc3Ryb25nQGxpbmFyby5vcmcgd3JvdGU6Cj4gT24gMTcvMDYvMjAyNSAxMDo1NCwgTWlj
aGFlbCBSaWVzY2ggdmlhIEI0IFJlbGF5IHdyb3RlOgo+PiBGcm9tOiBNaWNoYWVsIFJpZXNjaCA8
bWljaGFlbC5yaWVzY2hAY29sbGFib3JhLmNvbT4KPj4KPj4gVGhlIFJvY2tjaGlwIFJLMzU4OCB2
YXJpYW50IG9mIHRoZSBDU0ktMiBEUEhZIGZlYXR1cmVzIHR3byByZXNldCBsaW5lcy4KPj4gQWRk
IHRoZSB2YXJpYW50IGFuZCBhbGxvdyBmb3IgdGhlIGFkZGl0aW9uYWwgcmVzZXQuCj4gCj4gTm8g
bmFtZXMgZm9yIHRoZSBuZXcgcmVzZXRzIG9uIHRoZSBSSzM1ODggPwoKSSBsZWZ0IHRoZSBuYW1l
cyBhd2F5IGJlY2F1c2UgVEJIIEkgZG9uJ3Qgc2VlIHRoZSB2YWx1ZSBpbiB0aGVtIChpbiB0aGF0
CmNhc2UpLgoKRG93bnN0cmVhbSB1c2VzIHJlc2V0LW5hbWVzID0gInNyc3RfY3NpcGh5MCIsICJz
cnN0X3BfY3NpcGh5MCI7IGFuZAp0aGVyZSBpcyBubyBiZXR0ZXIgZGVzY3JpcHRpb24uIE9uZSBj
b3VsZCBndWVzcyB0aGF0IHRoZSBzZWNvbmQgcmVzZXQKY29ycmVzcG9uZHMgdG8gImFwYiIgYnV0
IHRoaXMgaXMganVzdCBndWVzc2luZyBhbmQgd2Ugd291bGQgc3RpbGwgaGF2ZQp0byBndWVzcy9m
aW5kIGEgcHJvcGVyIG5hbWUgZm9yIHRoZSBmaXJzdCByZXNldC4KCkFtYXppbmdseSB0aGUgbWFp
bmxpbmUgZHJpdmVyIGRvZXMgbm90IHNlZW0gdG8gZG8gYW55dGhpbmcgd2l0aCB0aGUKcmVzZXRz
ICh1bmxlc3MgSSBvdmVybG9va2VkIHNvbWUgaW1wbGljaXQgbWFnaWMpLiBEb3duc3RyZWFtIGRv
ZXMgYQpzaW1wbGUgcmVzZXRfY29udHJvbF97YXNzZXJ0LGRlYXNzZXJ0fSBiZWZvcmUgY29uZmln
dXJpbmcgdGhlIFBIWS4gTm93CmlmIHRoZSBkaWZmZXJlbnQgcmVzZXRzIGFyZSBoYW5kbGVkIGlu
IGJ1bGsgbW9kZSwgZG9lcyBpdCByZWFsbHkgbWFrZQpzZW5zZSB0byBhZGRyZXNzIGVhY2ggcmVz
ZXQgaW5kaXZpZHVhbGx5PwoKQmVzdCByZWdhcmRzLApNaWNoYWVsCgo+IAo+IE5laWwKPiAKPj4K
Pj4gU2lnbmVkLW9mZi1ieTogTWljaGFlbCBSaWVzY2ggPG1pY2hhZWwucmllc2NoQGNvbGxhYm9y
YS5jb20+Cj4+IC0tLQo+PiDCoCAuLi4vYmluZGluZ3MvcGh5L3JvY2tjaGlwLWlubm8tY3NpLWRw
aHkueWFtbMKgwqDCoMKgwqDCoCB8IDYwICsrKysrKysrKysrKwo+PiArKysrKysrKy0tCj4+IMKg
IDEgZmlsZSBjaGFuZ2VkLCA1NSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+Pgo+PiBk
aWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9yb2NrY2hp
cC1pbm5vLWNzaS0KPj4gZHBoeS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3BoeS9yb2NrY2hpcC1pbm5vLWNzaS0KPj4gZHBoeS55YW1sCj4+IGluZGV4IDVhYzk5NGIz
YzBhYS4uNjc1NTczOGIxM2VlIDEwMDY0NAo+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvcGh5L3JvY2tjaGlwLWlubm8tY3NpLWRwaHkueWFtbAo+PiArKysgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3JvY2tjaGlwLWlubm8tY3NpLWRwaHku
eWFtbAo+PiBAQCAtMjEsNiArMjEsNyBAQCBwcm9wZXJ0aWVzOgo+PiDCoMKgwqDCoMKgwqDCoCAt
IHJvY2tjaGlwLHJrMzMyNi1jc2ktZHBoeQo+PiDCoMKgwqDCoMKgwqDCoCAtIHJvY2tjaGlwLHJr
MzM2OC1jc2ktZHBoeQo+PiDCoMKgwqDCoMKgwqDCoCAtIHJvY2tjaGlwLHJrMzU2OC1jc2ktZHBo
eQo+PiArwqDCoMKgwqDCoCAtIHJvY2tjaGlwLHJrMzU4OC1jc2ktZHBoeQo+PiDCoCDCoMKgwqAg
cmVnOgo+PiDCoMKgwqDCoMKgIG1heEl0ZW1zOiAxCj4+IEBAIC0zOSwxOCArNDAsNDkgQEAgcHJv
cGVydGllczoKPj4gwqDCoMKgwqDCoCBtYXhJdGVtczogMQo+PiDCoCDCoMKgwqAgcmVzZXRzOgo+
PiAtwqDCoMKgIGl0ZW1zOgo+PiAtwqDCoMKgwqDCoCAtIGRlc2NyaXB0aW9uOiBleGNsdXNpdmUg
UEhZIHJlc2V0IGxpbmUKPj4gK8KgwqDCoCBtaW5JdGVtczogMQo+PiArwqDCoMKgIG1heEl0ZW1z
OiAyCj4+IMKgIMKgwqDCoCByZXNldC1uYW1lczoKPj4gLcKgwqDCoCBpdGVtczoKPj4gLcKgwqDC
oMKgwqAgLSBjb25zdDogYXBiCj4+ICvCoMKgwqAgbWluSXRlbXM6IDEKPj4gK8KgwqDCoCBtYXhJ
dGVtczogMgo+PiDCoCDCoMKgwqAgcm9ja2NoaXAsZ3JmOgo+PiDCoMKgwqDCoMKgICRyZWY6IC9z
Y2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3BoYW5kbGUKPj4gwqDCoMKgwqDCoCBkZXNj
cmlwdGlvbjoKPj4gwqDCoMKgwqDCoMKgwqAgU29tZSBhZGRpdGlvbmFsIHBoeSBzZXR0aW5ncyBh
cmUgYWNjZXNzIHRocm91Z2ggR1JGIHJlZ3MuCj4+IMKgICthbGxPZjoKPj4gK8KgIC0gaWY6Cj4+
ICvCoMKgwqDCoMKgIHByb3BlcnRpZXM6Cj4+ICvCoMKgwqDCoMKgwqDCoCBjb21wYXRpYmxlOgo+
PiArwqDCoMKgwqDCoMKgwqDCoMKgIGNvbnRhaW5zOgo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBlbnVtOgo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSByb2NrY2hpcCxweDMwLWNz
aS1kcGh5Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIHJvY2tjaGlwLHJrMTgwOC1j
c2ktZHBoeQo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSByb2NrY2hpcCxyazMzMjYt
Y3NpLWRwaHkKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gcm9ja2NoaXAscmszMzY4
LWNzaS1kcGh5Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIHJvY2tjaGlwLHJrMzU2
OC1jc2ktZHBoeQo+PiArwqDCoMKgIHRoZW46Cj4+ICvCoMKgwqDCoMKgIHByb3BlcnRpZXM6Cj4+
ICvCoMKgwqDCoMKgwqDCoCByZXNldHM6Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqAgaXRlbXM6Cj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gZGVzY3JpcHRpb246IGV4Y2x1c2l2ZSBQSFkgcmVz
ZXQgbGluZQo+PiArCj4+ICvCoMKgwqDCoMKgwqDCoCByZXNldC1uYW1lczoKPj4gK8KgwqDCoMKg
wqDCoMKgwqDCoCBpdGVtczoKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBjb25zdDogYXBi
Cj4+ICsKPj4gK8KgwqDCoMKgwqAgcmVxdWlyZWQ6Cj4+ICvCoMKgwqDCoMKgwqDCoCAtIHJlc2V0
LW5hbWVzCj4+ICvCoMKgwqAgZWxzZToKPj4gK8KgwqDCoMKgwqAgcHJvcGVydGllczoKPj4gK8Kg
wqDCoMKgwqDCoMKgIHJlc2V0czoKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoCBtaW5JdGVtczogMgo+
PiArCj4+ICvCoMKgwqDCoMKgwqDCoCByZXNldC1uYW1lczoKPj4gK8KgwqDCoMKgwqDCoMKgwqDC
oCBtaW5JdGVtczogMgo+PiArCj4+IMKgIHJlcXVpcmVkOgo+PiDCoMKgwqAgLSBjb21wYXRpYmxl
Cj4+IMKgwqDCoCAtIHJlZwo+PiBAQCAtNTksNyArOTEsNiBAQCByZXF1aXJlZDoKPj4gwqDCoMKg
IC0gJyNwaHktY2VsbHMnCj4+IMKgwqDCoCAtIHBvd2VyLWRvbWFpbnMKPj4gwqDCoMKgIC0gcmVz
ZXRzCj4+IC3CoCAtIHJlc2V0LW5hbWVzCj4+IMKgwqDCoCAtIHJvY2tjaGlwLGdyZgo+PiDCoCDC
oCBhZGRpdGlvbmFsUHJvcGVydGllczogZmFsc2UKPj4gQEAgLTc4LDMgKzEwOSwyMiBAQCBleGFt
cGxlczoKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJlc2V0LW5hbWVzID0gImFwYiI7Cj4+IMKgwqDC
oMKgwqDCoMKgwqDCoCByb2NrY2hpcCxncmYgPSA8JmdyZj47Cj4+IMKgwqDCoMKgwqAgfTsKPj4g
K8KgIC0gfAo+PiArwqDCoMKgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9jbG9jay9yb2NrY2hpcCxy
azM1ODgtY3J1Lmg+Cj4+ICvCoMKgwqAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3Jlc2V0L3JvY2tj
aGlwLHJrMzU4OC1jcnUuaD4KPj4gKwo+PiArwqDCoMKgIHNvYyB7Cj4+ICvCoMKgwqDCoMKgwqDC
oCAjYWRkcmVzcy1jZWxscyA9IDwyPjsKPj4gK8KgwqDCoMKgwqDCoMKgICNzaXplLWNlbGxzID0g
PDI+Owo+PiArCj4+ICvCoMKgwqDCoMKgwqDCoCBjc2lfZHBoeTA6IHBoeUBmZWRjMDAwMCB7Cj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszNTg4LWNz
aS1kcGh5IjsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVnID0gPDB4MCAweGZlZGMwMDAw
IDB4MCAweDgwMDA+Owo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjbG9ja3MgPSA8JmNydSBQ
Q0xLX0NTSVBIWTA+Owo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjbG9jay1uYW1lcyA9ICJw
Y2xrIjsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgI3BoeS1jZWxscyA9IDwwPjsKPj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVzZXRzID0gPCZjcnUgU1JTVF9DU0lQSFkwPiwgPCZjcnUg
U1JTVF9QX0NTSVBIWTA+Owo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByb2NrY2hpcCxncmYg
PSA8JmNzaWRwaHkwX2dyZj47Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0YXR1cyA9ICJk
aXNhYmxlZCI7Cj4+ICvCoMKgwqDCoMKgwqDCoCB9Owo+PiArwqDCoMKgIH07Cj4+Cj4gCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
