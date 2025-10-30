Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24402CCF9EE
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Oct 2025 03:14:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=srd6oYkFQFeSy7VGXEceZMNKRdydCHK+CnKQvRQlm/o=; b=Yvqpb1m1Pbe0T2
	gMYjMnSjhTYiYiCrzGkUr4vI43LftMz6RKzz9/I8hdyp2tkLP3+firHC/JTKFSPt+j5oD9Lkbs57j
	Xcu9hNg5AfMRPi9QQVrcl1tuwAu36XhZ4GXu/jWJ1Oyit6IZg87CfcLeKhfKusI/Z1T/bR2SX7a9W
	iQQY7CdaWepI+Ai5qFHgr1Yam5EsXKaelWOHGVNH7Jn+qj41E/XApsR7+1Tgo1Bwo7IKRQCyiITu0
	ndl+ufoerrY5hEKUInDhMSRflC4gheKuTg93D8uViiTfm1O/Jyoh1PNX9XnUYk7CY4F10h3QBdLGq
	fFgkCrIYNpziG02Ao3PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEJ70-00000003PFk-2ZOE;
	Thu, 30 Oct 2025 03:14:06 +0000
Received: from mail-m3284.qiye.163.com ([220.197.32.84])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEJ6w-00000003PF2-0XTu;
	Thu, 30 Oct 2025 03:14:04 +0000
Received: from [172.16.12.149] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 27b7b5d56;
	Thu, 30 Oct 2025 11:13:53 +0800 (GMT+08:00)
Message-ID: <7853bbf0-34e5-4880-a2f4-2d73f25cd5e6@rock-chips.com>
Date: Thu, 30 Oct 2025 11:13:51 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 10/10] arm64: dts: rockchip: rk3399-evb-ind: Add
 support for DisplayPort
To: Peter Chen <hzpeterchen@gmail.com>, Chaoyi Chen <kernel@airkyi.com>
Cc: Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Yubing Zhang <yubing.zhang@rock-chips.com>,
 Frank Wang <frank.wang@rock-chips.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Amit Sunil Dhamne <amitsd@google.com>, Dragan Simic <dsimic@manjaro.org>,
 Johan Jonker <jbx6244@gmail.com>, Diederik de Haas <didi.debian@cknow.org>,
 Peter Robinson <pbrobinson@gmail.com>, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
References: <20251029071435.88-1-kernel@airkyi.com>
 <20251029071435.88-11-kernel@airkyi.com>
 <CAL411-o6mF71oBeRsJ-OPZNbLegn4iJ_ELN9xVdppTM3ssUPOw@mail.gmail.com>
 <cc8b583a-77ec-4a7f-97cc-2d148f7fee9f@rock-chips.com>
 <e0c5bda3-7428-49e0-9955-fa23f1e4f35d@rock-chips.com>
 <CAL411-oXfvp-iqN+uRmFHijdmW=1omKwozKOoZ2shxukMHmwPg@mail.gmail.com>
 <C6253E8254C80B0F+839b71d0-1bd8-40b7-9515-7ce4a1eb8673@airkyi.com>
 <CAL411-pULVu4AYybW9oW7kmr4M_kJhdytgBjLPb4y6w_2dj+0w@mail.gmail.com>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <CAL411-pULVu4AYybW9oW7kmr4M_kJhdytgBjLPb4y6w_2dj+0w@mail.gmail.com>
X-HM-Tid: 0a9a331b863b03abkunmb7090e2043262e
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUJNGFZNQ0tDGU9DGh9MSU1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpPSE
	xVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=SQVUwkwvxyCWtCdSzsP/tXB93YNtCupIhIhQ00CSdl54mjwHsgiZuOkw9accZWeqDE2m3y5GmX8bLQn1Dz42qXdQqPuIMzqAFw7dir7OI14TX7BSiWvgzFwiCL2OALE2z+GHw55hkOovciBLGJ5HKDcID5cMmDcTqARlrl/WMlY=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=u9ztqH78wDt1szeKu+Mrw37tmnOhAVykkfsydy8rr6U=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251029_201402_660127_52EED18B 
X-CRM114-Status: GOOD (  17.76  )
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

T24gMTAvMzAvMjAyNSAxMDo1MCBBTSwgUGV0ZXIgQ2hlbiB3cm90ZToKCj4+PiBPa2F5LiAgTXkg
cXVlc3Rpb24gaXMgYmFzaWM6IFVTQjIgUEhZIHN1cHBsaWVzIERQL0RNLCBhbmQgdGhlIERQL0RN
IGlzCj4+PiBzaG9ydCBmb3IgVHlwZS1DIGNvbm5lY3RvciwKPj4+IGFuZCBubyBjb250cm9sIGlz
IG5lZWRlZCBmb3IgVHlwZS1DIGFwcGxpY2F0aW9uLgo+Pj4gV2h5IGlzIHRoZXJlIGEgcmVtb3Rl
LWVuZHBvaW50IGNvbm5lY3Rpb24gYmV0d2VlbiBVU0IyIFBIWSBhbmQgVHlwZS1DIGNvbm5lY3Rv
cj8KPj4gICBGcm9tIHRoZSBwZXJzcGVjdGl2ZSBvZiBUeXBlLUMsIHRoaXMgc2hvdWxkIG5vdCBi
ZSBhZGRlZC4gIElzIHRoZSBhcHByb2FjaCBpbiB2MiBjb3JyZWN0IFswXSA/Cj4+Cj4gSGF2ZSB5
b3UgdHJpZWQgZGVidWdnaW5nIGJhc2VkIG9uIHVwc3RyZWFtIGNvZGU/CgpZZXMsIEkgaGF2ZSB0
cmllZCBib3RoIHRoZSB2MiBhbmQgdjggYXBwcm9hY2hlcywgYW5kIGJvdGggY2FuIHdvcmsuCgoK
PiB2MiBpcyBjb3JyZWN0LCBidXQgdGhlIGR0cyBuZWVkcyB0byBpbXByb3ZlLgo+IC0gVGhlcmUg
aXMgYSByZW1vdGUtZW5kcG9pbnQgY29ubmVjdGlvbiBmb3IgVVNCIHJvbGUgc3dpdGNoIGJldHdl
ZW4KPiBUeXBlLUMgY29ubmVjdG9yCj4gZGV2aWNlIGFuZCBVU0IgY29udHJvbGxlciBkZXZpY2UK
PiAtIFRoZXJlIGlzIGEgcmVtb3RlLWVuZHBvaW50IGNvbm5lY3Rpb24gZm9yIG9yaWVudGF0aW9u
IGFuZCBsYW5lIGNvbmZpZ3VyYXRpb24KPiBiZXR3ZWVuIFR5cGUtQyBjb25uZWN0b3IgZGV2aWNl
IGFuZCBVU0IvRFAgUEhZIGRldmljZS4KCkluIHY4IHBhdGNoNSwgd2UgaW1wbGVtZW50ZWQgdHlw
ZWNfbXV4IGFuZCB0eXBlY19zd2l0Y2ggaW4gdGhlIFVTQi9EUCBQSFkuCgpJIHRoaW5rIHRoZSBj
dXJyZW50IHJlbW90ZS1lbmRwb2ludCBjb25uZWN0aW9ucyBhcmUgYWxsIGNoaWxkIG5vZGUgb2Yg
dGhlIFVTQi9EUCBQSFkuIFRoYXQgaXM6CgoKJnRjcGh5MF9kcCB7CiDCoCDCoCBtb2RlLXN3aXRj
aDsKIMKgIMKgIC4uLgp9OwoKCiZ0Y3BoeTBfdXNiMyB7CiDCoCDCoCBvcmllbnRhdGlvbi1zd2l0
Y2g7CiDCoCDCoCAuLi4KfTsKCgpEb2VzIHRoaXMgc3RpbGwgbmVlZCB0byBiZSBpbXByb3ZlZD8g
VGhhbmsgeW91LgoKCj4KPiBQZXRlcgo+Cj4+IFswXTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
YWxsLzIwMjUwNzE1MTEyNDU2LjEwMS02LWtlcm5lbEBhaXJreWkuY29tLwo+Pgo+PiBPciBpcyB0
aGUgZm9sbG93aW5nIGFwcHJvYWNoIGNvcnJlY3Q/Cj4+Cj4+Cj4+IHBvcnRAMCB7Cj4+ICAgICAg
IHJlZyA9IDwwPjsKPj4KPj4gICAgICAgdXNiY19oczogZW5kcG9pbnQgewo+PiAgICAgICAgICAg
cmVtb3RlLWVuZHBvaW50ID0gPCZ0Y3BoeTA+Owo+PiAgICAgICB9Owo+PiB9Owo+Pgo+PiBwb3J0
QDEgewo+PiAgICAgICByZWcgPSA8MT47Cj4+Cj4+ICAgICAgIHVzYmNfc3M6IGVuZHBvaW50IHsK
Pj4gICAgICAgICAgIHJlbW90ZS1lbmRwb2ludCA9IDwmdGNwaHkwPjsKPj4gICAgICAgfTsKPj4g
fTsKPj4KPj4gcG9ydEAyIHsKPj4gICAgICAgcmVnID0gPDI+Owo+Pgo+PiAgICAgICB1c2JjX2Rw
OiBlbmRwb2ludCB7Cj4+ICAgICAgICAgICByZW1vdGUtZW5kcG9pbnQgPSA8JnRjcGh5MF90eXBl
Y19kcD47Cj4+ICAgICAgIH07Cj4+IH07Cj4+Cj4+Cj4+Pj4+Pj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBwb3J0QDEgewo+Pj4+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICByZWcgPSA8MT47Cj4+Pj4+Pj4gKwo+Pj4+Pj4+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICB1c2JjX3NzOiBlbmRwb2ludCB7Cj4+Pj4+Pj4gKyBy
ZW1vdGUtZW5kcG9pbnQgPSA8JnRjcGh5MF90eXBlY19zcz47Cj4+Pj4+Pj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIH07Cj4+Pj4+Pj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICB9Owo+Pj4+Pj4+ICsKPj4+Pj4+PiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHBvcnRAMiB7Cj4+Pj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHJlZyA9IDwyPjsKPj4+Pj4+PiArCj4+Pj4+Pj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHVzYmNfZHA6IGVuZHBvaW50IHsKPj4+Pj4+PiArIHJlbW90
ZS1lbmRwb2ludCA9IDwmdGNwaHkwX3R5cGVjX2RwPjsKPj4+Pj4+PiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgfTsKPj4+Pj4+PiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIH07Cj4+Pj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgfTsKPj4+Pj4+PiAr
ICAgICAgICAgICAgICAgfTsKPj4+Pj4+PiArICAgICAgIH07Cj4+Pj4+Pj4gK307Cj4+Pj4+Pj4g
Kwo+Pj4+Pj4gLi4uLi4KPj4+Pj4+PiAgICAgJnUycGh5MCB7Cj4+Pj4+Pj4gICAgICAgICAgICBz
dGF0dXMgPSAib2theSI7Cj4+Pj4+Pj4gKwo+Pj4+Pj4+ICsgICAgICAgcG9ydCB7Cj4+Pj4+Pj4g
KyAgICAgICAgICAgICAgIHUycGh5MF90eXBlY19oczogZW5kcG9pbnQgewo+Pj4+Pj4+ICsgICAg
ICAgICAgICAgICAgICAgICAgIHJlbW90ZS1lbmRwb2ludCA9IDwmdXNiY19ocz47Cj4+Pj4+Pj4g
KyAgICAgICAgICAgICAgIH07Cj4+Pj4+Pj4gKyAgICAgICB9Owo+Pj4+Pj4+ICAgICB9Owo+Pj4+
Pj4+Cj4+Pj4+PiBUaGVyZSBpcyBubyBzd2l0Y2ggYW5kIG11eCwgaG93IHRvIGNvLXdvcmsgd2l0
aCBUeXBlLUM/Cj4+Pj4+IEkgY2hlY2tlZCB0aGUgcGh5LXJvY2tjaGlwLWlubm8tdXNiMi5jIGJ1
dCBkaWQgbm90IGZpbmQgYW55IHN3aXRjaCBvciBtdXguIERvZXMgdGhpcyBtZWFuIHRoYXQgd2Ug
bmVlZCB0byBpbXBsZW1lbnQgdGhlbT8gVGhhbmsgeW91Lgo+Pj4+IFdhaXQgYSBtaW51dGUsIGFj
dHVhbGx5IHdlIGhhdmUgbXVsdGlwbGUgaGFyZHdhcmUgaW50ZXJmYWNlcywgb25lIG9mIHdoaWNo
IGlzIFR5cGUtQywgZXZlbnR1YWxseSBjb25uZWN0ZWQgdG8gVVNCRFBQSFksIGFuZCB0aGUgb3Ro
ZXIgaXMgbWljcm8tdXNiIGNvbm5lY3RlZCB0byBVMlBIWS4KPj4+IEkgYXNzdW1lIHRoZSBNaWNy
by1VU0IgY29ubmVjdG9yIGRvZXMgbm90IHVzZSBUeXBlLUMvUEQgSUMsIGlzIGl0Cj4+PiByaWdo
dD8gRG9lcyBpdCByZWxhdGUgdG8gdGhpcyBwYXRjaD8KPj4+Cj4+PiBCZXN0IHJlZ2FyZHMsCj4+
PiBQZXRlcgo+Pj4KPgotLSAKQmVzdCwKQ2hhb3lpCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
