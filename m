Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F877CD13D9
	for <linux-rockchip@archiver.kernel.org>; Sat, 31 Aug 2024 21:54:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wqHaiWEnDG8MWP4sOGvlRX0Df/nAMAVNbzt9OErJOQA=; b=GKF+GLn3sDYM3e
	iFb8skOtf1Z3VaKz3jVtRlp3i1IcC4ptpGe5Xy3I5unw6gCXQRg6u4YPBKLHjXMqcskY0B+g2RfNC
	HCwGatYAw4Oh/pJUoi6EOGqRBF4XvCId9OO/8X9osJLGUmlwk31Bc38Audk6BGMwe/4DL+OvocnB2
	a9SeWSJXBXIhW2qD5eI82Uhn1K9gNMbBZ9dB16gV6OM5UrpQ9BWUSP/Ryv/fjpkrRS8QIz8MDc8gV
	btFRPfeBZpf1BQbI2pse5hEh3ue8kYMs2SJADvbz7Eprw/kU8z68yGRWoqq1EcErfSt1w9VScSFq2
	ref5RRZPzbnMw9/kOmpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skW38-0000000ABYT-1w8g;
	Sat, 31 Aug 2024 21:54:26 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skW35-0000000ABXv-2S8R;
	Sat, 31 Aug 2024 21:54:24 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1725141229; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=L3xPZgUyOvsSTEjNm0dIQeb87imymYH4snOOTwEUh/809qZmduS9NVuHKdK1KAhc/VHPym5XNX2nejJiMhz4aEDrTzcRbW4HNsyRFBx4gDWc5QgNrJwbUFQTeCKPtiPgbOHHlI0/AxXiI49+6AkP8/TFFpcDQ4eg2U2TpMloPd0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1725141229; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=x0RR3F/q7Ng0NQ6+zBACU56gYedu5cFaQzPMm5Tr+OA=; 
	b=Gn6fqpKd6yeBqdkkV9zOjf/luMT+xYyWR4Ico6bd8heSqT+bBvjp/GgJKq50Snbg9Ai5inemXzq8eLlKSjJ16Y7JDTUKMdvOSEj9j8OfQrzCCPrrHunTYQjAAEzNBVaFOpT3BR3ertbPnhld5UO7a0W5flXIADFV/1lEpXP3pOk=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=cristian.ciocaltea@collabora.com;
	dmarc=pass header.from=<cristian.ciocaltea@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1725141229;
	s=zohomail; d=collabora.com; i=cristian.ciocaltea@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=x0RR3F/q7Ng0NQ6+zBACU56gYedu5cFaQzPMm5Tr+OA=;
	b=KrSdd8qhTTzw0AjTdmXA7gDpavhgVnccJaW0qdQvNbGqD+jZsqbiXTPuaqYpcXW8
	ZUESfrud95oB0F/TwVwSjPCW3/a8TUojqYRnjNyuU9LefTWIzUskOgy/3cL21OI/EN/
	vHUgk5lt+DnwBsarwwBgzQJ1YLdWsFhVFn5K6/p4=
Received: by mx.zohomail.com with SMTPS id 17251412271561.7075273044212054;
	Sat, 31 Aug 2024 14:53:47 -0700 (PDT)
Message-ID: <aee7b364-39df-4eb4-a823-4e734f104982@collabora.com>
Date: Sun, 1 Sep 2024 00:53:39 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/4] dt-bindings: display: bridge: Add schema for
 Synopsys DW HDMI QP TX IP
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@collabora.com, Alexandre ARNOUD <aarnoud@me.com>,
 Luis de Arquer <ldearquer@gmail.com>
References: <20240831-b4-rk3588-bridge-upstream-v5-0-9503bece0136@collabora.com>
 <20240831-b4-rk3588-bridge-upstream-v5-1-9503bece0136@collabora.com>
 <57wj2vwjv7eehlix2bmvbm3z4agv5fsyp6vmwwqzotkdsadx7n@azqg2kkaeuxz>
 <10210346.L8ug28u51p@diego>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <10210346.L8ug28u51p@diego>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240831_145423_680471_E30016C4 
X-CRM114-Status: GOOD (  22.68  )
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

T24gOC8zMS8yNCA0OjU4IFBNLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBIaSwKPiAKPiBBbSBT
YW1zdGFnLCAzMS4gQXVndXN0IDIwMjQsIDA4OjE2OjI2IENFU1Qgc2NocmllYiBLcnp5c3p0b2Yg
S296bG93c2tpOgo+PiBPbiBTYXQsIEF1ZyAzMSwgMjAyNCBhdCAxMjo1NToyOUFNICswMzAwLCBD
cmlzdGlhbiBDaW9jYWx0ZWEgd3JvdGU6Cj4gCj4+PiArICBjbG9ja3M6Cj4+PiArICAgIG1pbkl0
ZW1zOiA0Cj4+PiArICAgIG1heEl0ZW1zOiA2Cj4+PiArICAgIGl0ZW1zOgo+Pj4gKyAgICAgIC0g
ZGVzY3JpcHRpb246IFBlcmlwaGVyYWwvQVBCIGJ1cyBjbG9jawo+Pj4gKyAgICAgIC0gZGVzY3Jp
cHRpb246IEVBUkMgUlggYmlwaGFzZSBjbG9jawo+Pj4gKyAgICAgIC0gZGVzY3JpcHRpb246IFJl
ZmVyZW5jZSBjbG9jawo+Pj4gKyAgICAgIC0gZGVzY3JpcHRpb246IEF1ZGlvIGludGVyZmFjZSBj
bG9jawo+Pj4gKyAgICBhZGRpdGlvbmFsSXRlbXM6IHRydWUKPj4KPj4gV2hhdCBpcyB0aGUgdXNl
ZnVsbmVzcyBvZiBhbGwgdGhpcz8gSG93IGNhbiB5b3UgZXZlbiBiZSBzdXJlIHRoYXQgZWFjaAo+
PiBpbXBsZW1lbnRhdGlvbiBvZiB0aGlzIGNvcmUgd2lsbCBoYXZlIGV4YWN0bHkgdGhlc2UgY2xv
Y2tzPwo+Pgo+Pj4gKwo+Pj4gKyAgY2xvY2stbmFtZXM6Cj4+PiArICAgIG1pbkl0ZW1zOiA0Cj4+
PiArICAgIG1heEl0ZW1zOiA2Cj4+PiArICAgIGl0ZW1zOgo+Pj4gKyAgICAgIC0gY29uc3Q6IHBj
bGsKPj4+ICsgICAgICAtIGNvbnN0OiBlYXJjCj4+PiArICAgICAgLSBjb25zdDogcmVmCj4+PiAr
ICAgICAgLSBjb25zdDogYXVkCj4+PiArICAgIGFkZGl0aW9uYWxJdGVtczogdHJ1ZQo+Pj4gKwo+
Pj4gKyAgaW50ZXJydXB0czoKPj4+ICsgICAgbWluSXRlbXM6IDQKPj4+ICsgICAgbWF4SXRlbXM6
IDUKPj4+ICsgICAgaXRlbXM6Cj4+PiArICAgICAgLSBkZXNjcmlwdGlvbjogQVZQIFVuaXQgaW50
ZXJydXB0Cj4+PiArICAgICAgLSBkZXNjcmlwdGlvbjogQ0VDIGludGVycnVwdAo+Pj4gKyAgICAg
IC0gZGVzY3JpcHRpb246IGVBUkMgUlggaW50ZXJydXB0Cj4+PiArICAgICAgLSBkZXNjcmlwdGlv
bjogTWFpbiBVbml0IGludGVycnVwdAo+Pgo+PiBJZiB0aGVzZSBhcmUgcmVhbCBwaW5zLCB0aGVu
IHRoaXMgc2VlbXMgbW9yZSBwb3NzaWJsZSwgYnV0Cj4+IGFkZGl0aW9uYWxJdGVtcyBkb2VzIG5v
dCBtYWtlIG1lIGhhcHB5Lgo+IAo+IFNvIHdoaWxlIG5vdCAicGlucyIsIHRoZSBpbnRlcnJ1cHRz
IGFyZSBzZXBhcmF0ZWx5IHNwZWNpZmllZCBpbiB0aGUKPiBTb0MncyBsaXN0IG9mIGludGVycnVw
dHMgaW4gdGhlIEdJQzoKPiAKPiBSSzM1ODggaGFzOgo+IAo+IDIwMSAgaXJxX2hkbWl0eDBfb2F2
cAo+IDIwMiAgaXJxX2hkbWl0eDBfb2NlYwo+IDIwMyAgaXJxX2hkbWl0eDBfb2VhcmNyeAo+IDIw
NCAgaXJxX2hkbWl0eDBfb21haW4KPiAzOTIgIGlycV9oZG1pdHgwX2hwZAo+IAo+IGFuZCBhbm90
aGVyIHNldCBvZiBhbGwgb2YgdGhlbSBmb3IgaGRtaXR4MQo+IAo+IGFuZCBSSzM1NzYgdXNpbmcg
dGhlIHNhbWUgaGRtaSBJUCBoYXM6Cj4gCj4gMzcwICBpcnFfaGRtaXR4X29hdnAKPiAzNzEgIGly
cV9oZG1pdHhfb2NlYwo+IDM3MiAgaXJxX2hkbWl0eF9vZWFyY3J4Cj4gMzczICBpcnFfaGRtaXR4
X29tYWluCj4gMzk5ICBpcnFfaGRtaXR4X2hwZAo+IAo+IHNvIEkgZ3Vlc3MgdGhlIGZpZnRoIGlu
dGVycnVwdCBpcyBtZWFudCB0byBiZSB0aGUgaG90cGx1Zz8KClllcCwgdGhhdCdzIGZvciB0aGUg
aG90cGx1ZyBkZXRlY3Rpb24uCgo+IFRob3VnaCBJIGd1ZXNzIHRoaXMgc2hvdWxkIGJlIHNwZWNp
ZmljZWQgaW4gdGhlIG5hbWUtbGlzdCB0b28uCgpNeSB1bmRlcnN0YW5kaW5nIGZyb20gQW5keSB3
YXMgdGhhdCBIUEQgaW50ZXJydXB0IGlzIFJvY2tjaGlwIHBsYXRmb3JtCnNwZWNpZmljLCBoZW5j
ZSBJIG1hZGUgaXQgcGFydCBvZiByb2NrY2hpcCxyazM1ODgtZHctaGRtaS1xcC55YW1sLgoKPiBG
cm9tIHRoZSBTb0MncyBtYW51YWwgaXQgbG9va3MgbGlrZSB0aGUgY29udHJvbGxlciBpcyBzZXQg
dXAgZnJvbQo+IGRpZmZlcmVudCBtb2R1bGVzLgo+IExpa2UgQVZQIGlzIHRoZSBhdWRpby12aWRl
by1wYWNrZXQtbW9kdWxlLCB0aGVyZSBpcyBhIE1haW4gYW5kIENFQyBNb2R1bGUKPiBhcyB3ZWxs
IGFzIGEgZUFSQyBSWCBjb250cm9sbGVyIGluc2lkZS4gSSdkIGd1ZXNzIGl0IG1pZ2h0IGJlIHBv
c3NpYmxlCj4gb3RoZXIgU29DIHZlbmRvcnMgY291bGQgbGVhdmUgb3V0IHNwZWNpZmljIG1vZHVs
ZXM/Cj4gCj4gCj4gVEw7RFIgSSB0aGluayB0aG9zZSBjbG9ja3MgYW5kIGludGVycnVwdHMgYXJl
IGRlcGVuZGVudCBvbiBob3cgdGhlCj4gSVAgY29yZSB3YXMgc3ludGhlc2l6ZWQsIHNvIGZvciBu
b3cgSSdkIHRoaW5rIHdlIGNhbiBvbmx5IGd1YXJhbnRlZQo+IHRoYXQgdGhleSBhcmUgdHJ1ZSBm
b3IgcmszNTg4IGFuZCByazM1NzYuCj4gCj4gU28gSSBndWVzcyB0aGV5IHNob3VsZCBtb3ZlIHRv
IHRoZSByb2NrY2hpcC1zcGVjaWZpYyBwYXJ0IG9mIHRoZSBiaW5kaW5nCj4gdW50aWwgd2UgaGF2
ZSBtb3JlIGhkbWktcXAgY29udHJvbGxlcnMgaW4gdGhlIGZpZWxkPwoKSWYgdGhhdCdzIHRoZSBj
YXNlLCB0aGVuIHdlIHNob3VsZCBzaW1wbHkgZHJvcCB0aGUgY29tbW9uIGJpbmRpbmcKYWx0b2dl
dGhlciBmb3Igbm93LgoKVGhhbmtzLApDcmlzdGlhbgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
