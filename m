Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC158CCF9EB
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Oct 2025 10:32:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2GOaCw3/rBp6EH6SbnRgJieCJjLiR06RMQblpiZR0JI=; b=No8m+YZzP/sLJD
	Z5c6mCYZE8mE9yQ0f5sub7RhDqiJ2SzyORzu5P8s1pIPZflWAF4OgBn/vwpdq5qTvwAvmj1GTgCnD
	C8Z4ld/vTG57o7b6WIQZAZBfVeeSPc5/De7PzUANaFes8R8tCfflVhMkUp+uQQf0HzgRoKKkwrRIV
	clUSkCM/P0EhEOhMivQOriXxl+IHzwqaQnWnLlB3uM1RexKaHea3bzrvi2BmD7r7wOqWFB1NqhheM
	gN6iD/Ci/RpSpf7M3RuFHBoBupdUmlimYdQdDq3fOHMA26tkxkSXW/t/FoLQ1njnUaYfHnvSQK2vf
	g0iY+o1Q+xabFwWl/O7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE3TO-00000000mYd-4Bi8;
	Wed, 29 Oct 2025 10:32:11 +0000
Received: from mail-m49204.qiye.163.com ([45.254.49.204])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE3TJ-00000000mS2-1dWo;
	Wed, 29 Oct 2025 10:32:09 +0000
Received: from [172.16.12.149] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 27a23665c;
	Wed, 29 Oct 2025 18:31:58 +0800 (GMT+08:00)
Message-ID: <e0c5bda3-7428-49e0-9955-fa23f1e4f35d@rock-chips.com>
Date: Wed, 29 Oct 2025 18:31:57 +0800
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
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <cc8b583a-77ec-4a7f-97cc-2d148f7fee9f@rock-chips.com>
X-HM-Tid: 0a9a2f863f0e03abkunm89a9d527348c30
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGU4eGlZKTh9OSx9CGk1PSBpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpPSE
	xVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=GmeuiUAxP7J2yuWygBp95hV/mCOru5SA8EQF6k8V2qpQmRXW7S/ggyYk6FWN6PZ5seE3nppmtySOiZU0C0yx32P3CLk2gGfF+2QjP0ShL16frucKFSI9rXy8+y7T7ReuyXgssIptoyeDmznafg59sMOyB5abKFMpN1vtCMAK/P8=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=x8PMAjpUzEpEObt1dire31F5Js78fV2X3/gBASmc8NM=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251029_033206_035780_CDE64237 
X-CRM114-Status: GOOD (  14.15  )
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

T24gMTAvMjkvMjAyNSA2OjIxIFBNLCBDaGFveWkgQ2hlbiB3cm90ZToKCj4gSGkgUGV0ZXIsCj4K
PiBPbiAxMC8yOS8yMDI1IDU6NDUgUE0sIFBldGVyIENoZW4gd3JvdGU6Cj4+PiArJmkyYzQgewo+
Pj4gK8KgwqDCoMKgwqDCoCBpMmMtc2NsLXJpc2luZy10aW1lLW5zID0gPDQ3NT47Cj4+PiArwqDC
oMKgwqDCoMKgIGkyYy1zY2wtZmFsbGluZy10aW1lLW5zID0gPDI2PjsKPj4+ICvCoMKgwqDCoMKg
wqAgc3RhdHVzID0gIm9rYXkiOwo+Pj4gKwo+Pj4gK8KgwqDCoMKgwqDCoCB1c2JjMDogdHlwZWMt
cG9ydGNAMjIgewo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29tcGF0aWJsZSA9
ICJmY3MsZnVzYjMwMiI7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZWcgPSA8
MHgyMj47Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpbnRlcnJ1cHQtcGFyZW50
ID0gPCZncGlvMT47Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpbnRlcnJ1cHRz
ID0gPFJLX1BBMiBJUlFfVFlQRV9MRVZFTF9MT1c+Owo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHBpbmN0cmwtMCA9IDwmdXNiYzBfaW50PjsKPj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHZidXMtc3VwcGx5ID0gPCZ2YnVzX3R5cGVjPjsKPj4+ICsKPj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHVzYl9jb246IGNvbm5lY3RvciB7Cj4+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29tcGF0aWJsZSA9ICJ1
c2ItYy1jb25uZWN0b3IiOwo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGxhYmVsID0gIlVTQi1DIjsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBkYXRhLXJvbGUgPSAiZHVhbCI7Cj4+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcG93ZXItcm9sZSA9ICJkdWFsIjsKPj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB0cnktcG93ZXIt
cm9sZSA9ICJzaW5rIjsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBvcC1zaW5rLW1pY3Jvd2F0dCA9IDwxMDAwMDAwPjsKPj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzaW5rLXBkb3MgPQo+Pj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8UERP
X0ZJWEVEKDUwMDAsIDI1MDAsIFBET19GSVhFRF9VU0JfQ09NTSk+Owo+Pj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNvdXJjZS1wZG9zID0KPj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
PFBET19GSVhFRCg1MDAwLCAxNTAwLCBQRE9fRklYRURfVVNCX0NPTU0pPjsKPj4+ICsKPj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBhbHRtb2RlcyB7Cj4+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGRpc3BsYXlwb3J0IHsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN2aWQgPSAvYml0
cy8gMTYgPDB4ZmYwMT47Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB2ZG8gPSA8MHgwMDAwMWM0
Nj47Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIH07Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgfTsKPj4+ICsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBwb3J0cyB7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICNhZGRyZXNzLWNlbGxzID0gPDE+Owo+Pj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCAjc2l6ZS1jZWxscyA9IDwwPjsKPj4+ICsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcG9ydEAwIHsKPj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHJlZyA9IDwwPjsKPj4+ICsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHVz
YmNfaHM6IGVuZHBvaW50IHsKPj4+ICsgcmVtb3RlLWVuZHBvaW50ID0gPCZ1MnBoeTBfdHlwZWNf
aHM+Owo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfTsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfTsKPj4+ICsKPj4gV2h5
IFVTQjIgUEhZIG5lZWRzIHRvIGJlIG5vdGlmaWVkIGZvciBUeXBlLUMgY29ubmVjdGlvbj8KPgo+
IEkgdGhpbmsgdGhlIFVTQi1jb25uZWN0b3IgYmluZGluZyByZXF1aXJlIGEgcG9ydEAwIGZvciBI
aWdoIFNwZWVkLsKgIFNvIEkgZmlsbGVkIGluIFVTQjIgUEhZIGhlcmUuIEFuZCBJIGhhdmUgbG9v
a2VkIHVwIGJvYXJkcyB3aXRoIHRoZSBzYW1lIHVzYWdlLCBhbmQgc29tZSBvZiB0aGUgcmVzdWx0
cyBhcmUgYXMgZm9sbG93czoKPgo+IC0gcmszMzk5LWZpcmVmbHkuZHRzCj4KPiAtIHJrMzM5OS1w
aW5lYm9vay1wcm8uZHRzCj4KPiAtIHJrMzM5OS1lYWlkay02MTAuZHRzCj4KPgo+Pgo+Pj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBwb3J0QDEgewo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVnID0gPDE+Owo+Pj4gKwo+Pj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgdXNiY19zczogZW5kcG9pbnQgewo+Pj4gKyByZW1vdGUtZW5k
cG9pbnQgPSA8JnRjcGh5MF90eXBlY19zcz47Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9Owo+
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCB9Owo+Pj4gKwo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwb3J0QDIgewo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgcmVnID0gPDI+Owo+Pj4gKwo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdXNiY19kcDogZW5k
cG9pbnQgewo+Pj4gKyByZW1vdGUtZW5kcG9pbnQgPSA8JnRjcGh5MF90eXBlY19kcD47Cj4+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCB9Owo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9Owo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH07Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCB9Owo+Pj4gK8KgwqDCoMKgwqDCoCB9Owo+Pj4gK307Cj4+PiArCj4+IC4uLi4uCj4+
PiDCoCAmdTJwaHkwIHsKPj4+IMKgwqDCoMKgwqDCoMKgwqAgc3RhdHVzID0gIm9rYXkiOwo+Pj4g
Kwo+Pj4gK8KgwqDCoMKgwqDCoCBwb3J0IHsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHUycGh5MF90eXBlY19oczogZW5kcG9pbnQgewo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlbW90ZS1lbmRwb2ludCA9IDwmdXNiY19ocz47Cj4+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9Owo+Pj4gK8KgwqDCoMKgwqDCoCB9Owo+
Pj4gwqAgfTsKPj4+Cj4+IFRoZXJlIGlzIG5vIHN3aXRjaCBhbmQgbXV4LCBob3cgdG8gY28td29y
ayB3aXRoIFR5cGUtQz8KPgo+IEkgY2hlY2tlZCB0aGUgcGh5LXJvY2tjaGlwLWlubm8tdXNiMi5j
IGJ1dCBkaWQgbm90IGZpbmQgYW55IHN3aXRjaCBvciBtdXguIERvZXMgdGhpcyBtZWFuIHRoYXQg
d2UgbmVlZCB0byBpbXBsZW1lbnQgdGhlbT8gVGhhbmsgeW91LgoKV2FpdCBhIG1pbnV0ZSwgYWN0
dWFsbHkgd2UgaGF2ZSBtdWx0aXBsZSBoYXJkd2FyZSBpbnRlcmZhY2VzLCBvbmUgb2Ygd2hpY2gg
aXMgVHlwZS1DLCBldmVudHVhbGx5IGNvbm5lY3RlZCB0byBVU0JEUFBIWSwgYW5kIHRoZSBvdGhl
ciBpcyBtaWNyby11c2IgY29ubmVjdGVkIHRvIFUyUEhZLgoKCj4KPgo+Pgo+PiBCZXN0IHJlZ2Fy
ZHMsCj4+IFBldGVyCj4+Cj4+Ci0tIApCZXN0LApDaGFveWkKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
