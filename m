Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F130C27C52
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Jun 2024 09:53:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tGjb9ksBijNYKZgKQO7BbCCVZzBSsAwlCgzvPMP/mKU=; b=y4hKj60dTtmTIP
	nv9R2LkLCaz90vIcsjoIblHHZZx758zDdTb91pnG21bcxHO/TSW2y5d5W6KeLozBuodtWdJWwcgtw
	82M34C/+991XI/Td7u8nRiTnqo+dY6NJ85KMohWLSFT9IHAiqoB/Qd1sJXAw7IS8eZp8Du0vUuNzD
	cZkC0qTl6OhuPDAWO2OyOXf036AU/X6SGXUP7JFHrGklckXfaxO7OnAFQF6UTFLB3bSiXXpK+6TWj
	MKJ4np1pS8F6Y+MPzrcNTDQT4uajZAyfUcXJ+utlq0leVowUYMIZAba/Toa83ppp7LcdOGEYm4u2s
	oi5u1rS3IR+Rov643HSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sF9oO-00000009HxU-1eiZ;
	Thu, 06 Jun 2024 09:53:36 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sF9oK-00000009HtW-1DFw;
	Thu, 06 Jun 2024 09:53:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1717667605;
	bh=CKTgow/rXEHMO5WjfhlWa4EqAX2k6le6hA30B/0Rkug=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Qncj7IYyv4cPm7O8mmmeYAsqXX2wIMRYjy47ZisSwnTzuBapQHru2SfHHT5snuLzU
	 NyJ/WPRp/6MGqP+ZMMhBM4jFWOLG5/qddVlFH5dKcZP1qRN2m4xOQPv74qFQfH8/rp
	 HRvkqkGUS91XBUdJFpJZXiT3vRq4FPOvfZVb8E1/oIsOHdhO7Z1761xudvFgPbsq0r
	 l7XGNa3vch39wRWsYD7c/tVCqEAyk/84VVKlCpUI6/mlItPi497RrIQuHRENY/R79h
	 8efYUvpHPwgqh8nQpKJOxnRvThALy2bP83BmgTfnm2bmRiHLGOhyWq7dtWHacQdkar
	 HgukqBYuuih7w==
Received: from [100.115.223.179] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id CC0683781182;
	Thu,  6 Jun 2024 09:53:23 +0000 (UTC)
Message-ID: <25ba8753-b7e9-4f6f-a9ad-c5266540939a@collabora.com>
Date: Thu, 6 Jun 2024 12:53:23 +0300
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
 <20240601-b4-rk3588-bridge-upstream-v1-13-f6203753232b@collabora.com>
 <2554679.TLnPLrj5Ze@diego>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <2554679.TLnPLrj5Ze@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_025332_491071_6F5A7537 
X-CRM114-Status: GOOD (  21.65  )
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

T24gNi81LzI0IDU6NDggUE0sIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+IEFtIFNhbXN0YWcsIDEu
IEp1bmkgMjAyNCwgMTU6MTI6MzUgQ0VTVCBzY2hyaWViIENyaXN0aWFuIENpb2NhbHRlYToKPj4g
VGhlIFN5bm9wc3lzIERlc2lnbldhcmUgSERNSSAyLjEgUXVhZC1QaXhlbCAoUVApIFRYIGNvbnRy
b2xsZXIgc3VwcG9ydHMKPj4gdGhlIGZvbGxvd2luZyBmZWF0dXJlcywgYW1vbmcgb3RoZXJzOgo+
Pgo+PiAqIEZpeGVkIFJhdGUgTGluayAoRlJMKQo+PiAqIDRLQDEyMEh6IGFuZCA4S0A2MEh6IHZp
ZGVvIG1vZGVzCj4+ICogVmFyaWFibGUgUmVmcmVzaCBSYXRlIChWUlIpIGluY2x1ZGluZyBRdWlj
ayBNZWRpYSBTd2l0Y2hpbmcgKFFNUyksIGFrYQo+PiAgIENpbmVtYSBWUlIKPj4gKiBGYXN0IFZh
Y3RpdmUgKEZWQSksIGFrYSBRdWljayBGcmFtZSBUcmFuc3BvcnQgKFFGVCkKPj4gKiBTQ0RDIEky
QyBEREMgYWNjZXNzCj4+ICogVE1EUyBTY3JhbWJsZXIgZW5hYmxpbmcgMjE2MHBANjBIeiB3aXRo
IFJHQi9ZQ2JDcjQ6NDo0Cj4+ICogWUNiQ3I0OjI6MCBlbmFibGluZyAyMTYwcEA2MEh6IGF0IGxv
d2VyIEhETUkgbGluayBzcGVlZHMKPj4gKiBNdWx0aS1zdHJlYW0gYXVkaW8KPj4gKiBFbmhhbmNl
ZCBBdWRpbyBSZXR1cm4gQ2hhbm5lbCAoRUFSQykKPj4KPj4gQWRkIGRyaXZlciB0byBlbmFibGUg
YmFzaWMgc3VwcG9ydCwgaS5lLiBSR0Igb3V0cHV0IHVwIHRvIDRLQDYwSHosCj4+IHdpdGhvdXQg
YXVkaW8sIENFQyBvciBhbnkgSERNSSAyLjEgc3BlY2lmaWMgZmVhdHVyZXMuCj4+Cj4+IENvLWRl
dmVsb3BlZC1ieTogQWxnZWEgQ2FvIDxhbGdlYS5jYW9Acm9jay1jaGlwcy5jb20+Cj4+IFNpZ25l
ZC1vZmYtYnk6IEFsZ2VhIENhbyA8YWxnZWEuY2FvQHJvY2stY2hpcHMuY29tPgo+PiBTaWduZWQt
b2ZmLWJ5OiBDcmlzdGlhbiBDaW9jYWx0ZWEgPGNyaXN0aWFuLmNpb2NhbHRlYUBjb2xsYWJvcmEu
Y29tPgo+PiAtLS0KPj4gIGRyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvTWFrZWZpbGUg
ICAgIHwgICAyICstCj4+ICBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LWhkbWkt
cXAuYyB8IDc4NyArKysrKysrKysrKysrKysrKysrKysrKysrCj4+ICBkcml2ZXJzL2dwdS9kcm0v
YnJpZGdlL3N5bm9wc3lzL2R3LWhkbWktcXAuaCB8IDgzMSArKysrKysrKysrKysrKysrKysrKysr
KysrKysKPj4gIGluY2x1ZGUvZHJtL2JyaWRnZS9kd19oZG1pLmggICAgICAgICAgICAgICAgIHwg
ICA4ICsKPj4gIDQgZmlsZXMgY2hhbmdlZCwgMTYyNyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL01h
a2VmaWxlIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9NYWtlZmlsZQo+PiBpbmRl
eCBjZTcxNTU2MmU5ZTUuLjgzNTRlNDg3OWY3MCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2JyaWRnZS9zeW5vcHN5cy9NYWtlZmlsZQo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYnJp
ZGdlL3N5bm9wc3lzL01ha2VmaWxlCj4gCj4+ICtzdGF0aWMgaW50IGR3X2hkbWlfcXBfaTJjX3Jl
YWQoc3RydWN0IGR3X2hkbWkgKmhkbWksCj4+ICsJCQkgICAgICAgdW5zaWduZWQgY2hhciAqYnVm
LCB1bnNpZ25lZCBpbnQgbGVuZ3RoKQo+PiArewo+PiArCXN0cnVjdCBkd19oZG1pX2kyYyAqaTJj
ID0gaGRtaS0+aTJjOwo+PiArCWludCBzdGF0Owo+PiArCj4+ICsJaWYgKCFpMmMtPmlzX3JlZ2Fk
ZHIpIHsKPj4gKwkJZGV2X2RiZyhoZG1pLT5kZXYsICJzZXQgcmVhZCByZWdpc3RlciBhZGRyZXNz
IHRvIDBcbiIpOwo+PiArCQlpMmMtPnNsYXZlX3JlZyA9IDB4MDA7Cj4+ICsJCWkyYy0+aXNfcmVn
YWRkciA9IHRydWU7Cj4+ICsJfQo+PiArCj4+ICsJd2hpbGUgKGxlbmd0aC0tKSB7Cj4+ICsJCXJl
aW5pdF9jb21wbGV0aW9uKCZpMmMtPmNtcCk7Cj4+ICsKPj4gKwkJZHdfaGRtaV9xcF9tb2QoaGRt
aSwgaTJjLT5zbGF2ZV9yZWcrKyA8PCAxMiwgSTJDTV9BRERSLAo+PiArCQkJICAgICAgIEkyQ01f
SU5URVJGQUNFX0NPTlRST0wwKTsKPj4gKwo+PiArCQlkd19oZG1pX3FwX21vZChoZG1pLCBJMkNN
X0ZNX1JFQUQsIEkyQ01fV1JfTUFTSywKPj4gKwkJCSAgICAgICBJMkNNX0lOVEVSRkFDRV9DT05U
Uk9MMCk7Cj4gCj4gU29tZWhvdyB0aGUgc2VnbWVudCBoYW5kbGluZyBpcyBwcmVzZW50IGluIHRo
ZSByZXN0IG9mIHRoZSBpMmMgY29kZSBoZXJlLCBidXQKPiBub3QgdGhlIGFjdHVhbCBoYW5kbGlu
ZyBmb3IgcmVhZHMuCj4gCj4gVGhlIHZlbmRvci1rZXJuZWwgZG9lczoKPiAKPiAtICAgICAgICAg
ICAgICAgZHdfaGRtaV9xcF9tb2QoaGRtaSwgSTJDTV9GTV9SRUFELCBJMkNNX1dSX01BU0ssCj4g
LSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEkyQ01fSU5URVJGQUNFX0NPTlRST0wwKTsK
PiArICAgICAgICAgICAgICAgaWYgKGkyYy0+aXNfc2VnbWVudCkKPiArICAgICAgICAgICAgICAg
ICAgICAgICBkd19oZG1pX3FwX21vZChoZG1pLCBJMkNNX0VYVF9SRUFELCBJMkNNX1dSX01BU0ss
Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgSTJDTV9JTlRFUkZBQ0Vf
Q09OVFJPTDApOwo+ICsgICAgICAgICAgICAgICBlbHNlCj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgZHdfaGRtaV9xcF9tb2QoaGRtaSwgSTJDTV9GTV9SRUFELCBJMkNNX1dSX01BU0ssCj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgSTJDTV9JTlRFUkZBQ0VfQ09OVFJP
TDApOwoKSG1tLCBmb3Igc29tZSByZWFzb24gdGhpcyBpcyBub3QgcHJlc2VudCBpbiB0aGUgc3Rh
YmxlLTUuMTAtcm9jazUgYnJhbmNoIApJJ3ZlIGJlZW4gdXNpbmcgYXMgYW4gaW1wbGVtZW50YXRp
b24gcmVmZXJlbmNlOgoKaHR0cHM6Ly9naXRodWIuY29tL3JhZHhhL2tlcm5lbC9ibG9iL3N0YWJs
ZS01LjEwLXJvY2s1L2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctaGRtaS1xcC5j
I0w3NjAKCklzIHRoZXJlIGFuIHVwZGF0ZWQgZm9yaz8KCj4gV2l0aG91dCB0aGlzIGNoYW5nZSwg
Y29ubmVjdGluZyB0byBhIERWSSBkaXNwbGF5IGRvZXMgbm90IHdvcmssIGFuZAo+IHJlYWRpbmcg
dGhlIEVESUQgZW5kcyBpbiB0aGUgImkyYyByZWFkIGVycm9yIiBiZWxvdy4KPiAKPiBBZGRpbmcg
dGhlIHNlZ21lbnQgaGFuZGxpbmcgYXMgYWJvdmUgbWFrZXMgdGhlIERWSSBjb25uZWN0aW9uCj4g
d29yayAoYXMgaXQgZG9lcyBpbiB0aGUgdmVuZG9yLWtlcm5lbCkuCj4gCj4gU28gaXQgd291bGQg
YmUgbmljZSBpZiB5b3UgY291bGQgbWF5YmUgaW5jb3Jwb3JhdGUgdGhpcyBpbiB0aGUgbmV4dCB2
ZXJzaW9uPwoKU3VyZSwgdGhhbmtzIGZvciBwb2ludGluZyB0aGlzIG91dCEKCkNyaXN0aWFuCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
