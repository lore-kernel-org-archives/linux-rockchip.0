Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 430CDC27C54
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Jun 2024 11:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e/F/O4HvS95Fafc45PdphMPRkRNbTb7JBZQdzh8BTE0=; b=kIdKVLEbO2DDgW
	ZhaMXmHFpSqk6VHCa8FJuQ6pY9RSD14idkR8k2fw1JbfjLjYggS8MjT5zjptJUYlAYnFI0q89vzvh
	1aK17Y9+QDxUPwqzkztvrXf5H0I0qdAX57RS9V/XjIeUc7LrTnyS8qBao/v6j/RbEBpWyF1q7ijbk
	J/Uqusom4Z6rkMkTl+bOs8bapx4eD+h1Wq0S0RpLXOWCKWh8YJWkpBNNMe5bWqQnD+JcABH3HSIoE
	lEHypjbiH4sTlAkui5W9IOI6M/z5KGpantueXjc38OXsKzUjDoKxc7ASHgKepp+YOfGZK9CBQ6Hrw
	HdUUKGvsR7A2/teHf8XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFBLq-00000009Y6Y-49GS;
	Thu, 06 Jun 2024 11:32:15 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFBLn-00000009Y5h-2TeQ;
	Thu, 06 Jun 2024 11:32:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1717673529;
	bh=LVldkK8M41rECJCGVc6CKfxKAtGbI7b4XW5+qeNYwes=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=TRsvVgw6mTl+ZIgvPF2J6hWsru1V6hAeE9pFE45FwtFb76e08WNM+8tFtIVUKq9Z9
	 7OTDTyFGfdwSQFIs6njlQRyB0//L69olHhFkTBN2F5tgeh+9GFNSTrVUWdMqU1qcUo
	 hgrGKWDFgfNMwWhCz/kgI/8eJzl0cDALMCAi41jPbxHzp/1dtfSjyM6GYd8C7dpeCJ
	 S1A2GCGTLv5KuFzqMougFG03gNQcYP1uH4ZtzsuJPCoN0Wf2+W+rh7tRtRYbeINtZ2
	 BtzBGEQ7NXXd+IZ0cHtAQuMFAYpzJD8ZU2T5f4KBOYmxMu+2SquHnzui5bUF3r/vwQ
	 UrZXB0u/Ue4bQ==
Received: from [100.115.223.179] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id C68F7378061A;
	Thu,  6 Jun 2024 11:32:07 +0000 (UTC)
Message-ID: <d42ac22f-1d12-4828-9bd0-9633c1ea92ee@collabora.com>
Date: Thu, 6 Jun 2024 14:32:07 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 13/14] drm/bridge: synopsys: Add DW HDMI QP TX controller
 driver
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@collabora.com,
 Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>,
 Algea Cao <algea.cao@rock-chips.com>
References: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
 <2554679.TLnPLrj5Ze@diego>
 <25ba8753-b7e9-4f6f-a9ad-c5266540939a@collabora.com>
 <2491902.uoxibFcf9D@diego>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Content-Language: en-US
In-Reply-To: <2491902.uoxibFcf9D@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_043211_809137_34BC030A 
X-CRM114-Status: GOOD (  17.16  )
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

T24gNi82LzI0IDE6MTYgUE0sIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+IEFtIERvbm5lcnN0YWcs
IDYuIEp1bmkgMjAyNCwgMTE6NTM6MjMgQ0VTVCBzY2hyaWViIENyaXN0aWFuIENpb2NhbHRlYToK
Pj4gT24gNi81LzI0IDU6NDggUE0sIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+Pj4gQW0gU2Ftc3Rh
ZywgMS4gSnVuaSAyMDI0LCAxNToxMjozNSBDRVNUIHNjaHJpZWIgQ3Jpc3RpYW4gQ2lvY2FsdGVh
Ogo+Pj4+IFRoZSBTeW5vcHN5cyBEZXNpZ25XYXJlIEhETUkgMi4xIFF1YWQtUGl4ZWwgKFFQKSBU
WCBjb250cm9sbGVyIHN1cHBvcnRzCj4+Pj4gdGhlIGZvbGxvd2luZyBmZWF0dXJlcywgYW1vbmcg
b3RoZXJzOgo+Pj4+Cj4+Pj4gKiBGaXhlZCBSYXRlIExpbmsgKEZSTCkKPj4+PiAqIDRLQDEyMEh6
IGFuZCA4S0A2MEh6IHZpZGVvIG1vZGVzCj4+Pj4gKiBWYXJpYWJsZSBSZWZyZXNoIFJhdGUgKFZS
UikgaW5jbHVkaW5nIFF1aWNrIE1lZGlhIFN3aXRjaGluZyAoUU1TKSwgYWthCj4+Pj4gICBDaW5l
bWEgVlJSCj4+Pj4gKiBGYXN0IFZhY3RpdmUgKEZWQSksIGFrYSBRdWljayBGcmFtZSBUcmFuc3Bv
cnQgKFFGVCkKPj4+PiAqIFNDREMgSTJDIEREQyBhY2Nlc3MKPj4+PiAqIFRNRFMgU2NyYW1ibGVy
IGVuYWJsaW5nIDIxNjBwQDYwSHogd2l0aCBSR0IvWUNiQ3I0OjQ6NAo+Pj4+ICogWUNiQ3I0OjI6
MCBlbmFibGluZyAyMTYwcEA2MEh6IGF0IGxvd2VyIEhETUkgbGluayBzcGVlZHMKPj4+PiAqIE11
bHRpLXN0cmVhbSBhdWRpbwo+Pj4+ICogRW5oYW5jZWQgQXVkaW8gUmV0dXJuIENoYW5uZWwgKEVB
UkMpCj4+Pj4KPj4+PiBBZGQgZHJpdmVyIHRvIGVuYWJsZSBiYXNpYyBzdXBwb3J0LCBpLmUuIFJH
QiBvdXRwdXQgdXAgdG8gNEtANjBIeiwKPj4+PiB3aXRob3V0IGF1ZGlvLCBDRUMgb3IgYW55IEhE
TUkgMi4xIHNwZWNpZmljIGZlYXR1cmVzLgo+Pj4+Cj4+Pj4gQ28tZGV2ZWxvcGVkLWJ5OiBBbGdl
YSBDYW8gPGFsZ2VhLmNhb0Byb2NrLWNoaXBzLmNvbT4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBBbGdl
YSBDYW8gPGFsZ2VhLmNhb0Byb2NrLWNoaXBzLmNvbT4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBDcmlz
dGlhbiBDaW9jYWx0ZWEgPGNyaXN0aWFuLmNpb2NhbHRlYUBjb2xsYWJvcmEuY29tPgo+Pj4+IC0t
LQo+Pj4+ICBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL01ha2VmaWxlICAgICB8ICAg
MiArLQo+Pj4+ICBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LWhkbWktcXAuYyB8
IDc4NyArKysrKysrKysrKysrKysrKysrKysrKysrCj4+Pj4gIGRyaXZlcnMvZ3B1L2RybS9icmlk
Z2Uvc3lub3BzeXMvZHctaGRtaS1xcC5oIHwgODMxICsrKysrKysrKysrKysrKysrKysrKysrKysr
Kwo+Pj4+ICBpbmNsdWRlL2RybS9icmlkZ2UvZHdfaGRtaS5oICAgICAgICAgICAgICAgICB8ICAg
OCArCj4+Pj4gIDQgZmlsZXMgY2hhbmdlZCwgMTYyNyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5
cy9NYWtlZmlsZSBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvTWFrZWZpbGUKPj4+
PiBpbmRleCBjZTcxNTU2MmU5ZTUuLjgzNTRlNDg3OWY3MCAxMDA2NDQKPj4+PiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL01ha2VmaWxlCj4+Pj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9NYWtlZmlsZQo+Pj4KPj4+PiArc3RhdGljIGludCBkd19o
ZG1pX3FwX2kyY19yZWFkKHN0cnVjdCBkd19oZG1pICpoZG1pLAo+Pj4+ICsJCQkgICAgICAgdW5z
aWduZWQgY2hhciAqYnVmLCB1bnNpZ25lZCBpbnQgbGVuZ3RoKQo+Pj4+ICt7Cj4+Pj4gKwlzdHJ1
Y3QgZHdfaGRtaV9pMmMgKmkyYyA9IGhkbWktPmkyYzsKPj4+PiArCWludCBzdGF0Owo+Pj4+ICsK
Pj4+PiArCWlmICghaTJjLT5pc19yZWdhZGRyKSB7Cj4+Pj4gKwkJZGV2X2RiZyhoZG1pLT5kZXYs
ICJzZXQgcmVhZCByZWdpc3RlciBhZGRyZXNzIHRvIDBcbiIpOwo+Pj4+ICsJCWkyYy0+c2xhdmVf
cmVnID0gMHgwMDsKPj4+PiArCQlpMmMtPmlzX3JlZ2FkZHIgPSB0cnVlOwo+Pj4+ICsJfQo+Pj4+
ICsKPj4+PiArCXdoaWxlIChsZW5ndGgtLSkgewo+Pj4+ICsJCXJlaW5pdF9jb21wbGV0aW9uKCZp
MmMtPmNtcCk7Cj4+Pj4gKwo+Pj4+ICsJCWR3X2hkbWlfcXBfbW9kKGhkbWksIGkyYy0+c2xhdmVf
cmVnKysgPDwgMTIsIEkyQ01fQUREUiwKPj4+PiArCQkJICAgICAgIEkyQ01fSU5URVJGQUNFX0NP
TlRST0wwKTsKPj4+PiArCj4+Pj4gKwkJZHdfaGRtaV9xcF9tb2QoaGRtaSwgSTJDTV9GTV9SRUFE
LCBJMkNNX1dSX01BU0ssCj4+Pj4gKwkJCSAgICAgICBJMkNNX0lOVEVSRkFDRV9DT05UUk9MMCk7
Cj4+Pgo+Pj4gU29tZWhvdyB0aGUgc2VnbWVudCBoYW5kbGluZyBpcyBwcmVzZW50IGluIHRoZSBy
ZXN0IG9mIHRoZSBpMmMgY29kZSBoZXJlLCBidXQKPj4+IG5vdCB0aGUgYWN0dWFsIGhhbmRsaW5n
IGZvciByZWFkcy4KPj4+Cj4+PiBUaGUgdmVuZG9yLWtlcm5lbCBkb2VzOgo+Pj4KPj4+IC0gICAg
ICAgICAgICAgICBkd19oZG1pX3FwX21vZChoZG1pLCBJMkNNX0ZNX1JFQUQsIEkyQ01fV1JfTUFT
SywKPj4+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJMkNNX0lOVEVSRkFDRV9DT05U
Uk9MMCk7Cj4+PiArICAgICAgICAgICAgICAgaWYgKGkyYy0+aXNfc2VnbWVudCkKPj4+ICsgICAg
ICAgICAgICAgICAgICAgICAgIGR3X2hkbWlfcXBfbW9kKGhkbWksIEkyQ01fRVhUX1JFQUQsIEky
Q01fV1JfTUFTSywKPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEky
Q01fSU5URVJGQUNFX0NPTlRST0wwKTsKPj4+ICsgICAgICAgICAgICAgICBlbHNlCj4+PiArICAg
ICAgICAgICAgICAgICAgICAgICBkd19oZG1pX3FwX21vZChoZG1pLCBJMkNNX0ZNX1JFQUQsIEky
Q01fV1JfTUFTSywKPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEky
Q01fSU5URVJGQUNFX0NPTlRST0wwKTsKPj4KPj4gSG1tLCBmb3Igc29tZSByZWFzb24gdGhpcyBp
cyBub3QgcHJlc2VudCBpbiB0aGUgc3RhYmxlLTUuMTAtcm9jazUgYnJhbmNoIAo+PiBJJ3ZlIGJl
ZW4gdXNpbmcgYXMgYW4gaW1wbGVtZW50YXRpb24gcmVmZXJlbmNlOgo+Pgo+PiBodHRwczovL2dp
dGh1Yi5jb20vcmFkeGEva2VybmVsL2Jsb2Ivc3RhYmxlLTUuMTAtcm9jazUvZHJpdmVycy9ncHUv
ZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1oZG1pLXFwLmMjTDc2MAo+Pgo+PiBJcyB0aGVyZSBhbiB1
cGRhdGVkIGZvcms/Cj4gCj4gSSB0aGluayB0aGUgcmFkeGEgY29kZS1iYXNlIGlzIHF1aXRlIG9s
ZCBpbiB0ZXJtcyBvZiBzZGstdmVyc2lvbiBpdCdzIGJhc2VkIG9uLgo+IEdyYWJiaW5nIGEgNi4x
IGJyYW5jaCBmcm9tIFJhZHhhIHNob3dzIGl0IGluOgo+IGh0dHBzOi8vZ2l0aHViLmNvbS9yYWR4
YS9rZXJuZWwvYmxvYi9saW51eC02LjEtc3Rhbi1ya3IxL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uv
c3lub3BzeXMvZHctaGRtaS1xcC5jI0w5OTUKCkluZGVlZCwgSSBzaG91bGQgaGF2ZSBzd2l0Y2hl
ZCB0byB1c2luZyB0aGlzIG9uZSBhcyBpdCBzZWVtcyB0byBpbmNsdWRlIApxdWl0ZSBhIGZldyBw
b3RlbnRpYWxseSBpbnRlcmVzdGluZyB1cGRhdGVzICh3aWxsIGNoZWNrIGluIGRldGFpbCBmb3Ig
djIpLgoKRm9yIG5vdywgd2UgbWlzcyBjZGMwOTg0YzkwZGMgKCJkcm0vYnJpZGdlOiBzeW5vcHN5
czogZHctaGRtaS1xcDogU3VwcG9ydCAKcmVhZCBleHQgYmxvY2sgZWRpZCIpLCB3aGljaCBwcm92
aWRlcyBhbiBhZGRpdGlvbmFsIGNoYW5nZToKCkBAIC0xMDg2LDcgKzEwOTAsNyBAQCBzdGF0aWMg
aW50IGR3X2hkbWlfaTJjX3hmZXIoc3RydWN0IGkyY19hZGFwdGVyICphZGFwLAogICAgICAgICAg
ICAgICAgICAgICAgICBpMmMtPmlzX3NlZ21lbnQgPSB0cnVlOwogICAgICAgICAgICAgICAgICAg
ICAgICBoZG1pX21vZGIoaGRtaSwgRERDX1NFR01FTlRfQUREUiwgSTJDTV9TRUdfQUREUiwKICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEkyQ01fSU5URVJGQUNFX0NPTlRST0wxKTsK
LSAgICAgICAgICAgICAgICAgICAgICAgaGRtaV9tb2RiKGhkbWksICptc2dzW2ldLmJ1ZiwgSTJD
TV9TRUdfUFRSLAorICAgICAgICAgICAgICAgICAgICAgICBoZG1pX21vZGIoaGRtaSwgKm1zZ3Nb
aV0uYnVmIDw8IDcsIEkyQ01fU0VHX1BUUiwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIEkyQ01fSU5URVJGQUNFX0NPTlRST0wxKTsKICAgICAgICAgICAgICAgIH0gZWxzZSB7CiAg
ICAgICAgICAgICAgICAgICAgICAgIGlmIChtc2dzW2ldLmZsYWdzICYgSTJDX01fUkQpCgpXaWxs
IHRyeSB0byBncmFiIHNvbWUgbW9yZSBkaXNwbGF5cyB0byBpbXByb3ZlIHRlc3Rpbmcgb24gbXkg
ZW5kLgoKVGhhbmtzLApDcmlzdGlhbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
