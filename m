Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B742CCF9F8
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Oct 2025 06:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kG8pPCpemkS25mkfzSNB0Z9GubPq+vePO9+WMhPyFp4=; b=cIVpa0D82iY0TY
	0kwK/Ar+9tDsl9OQVtg9/kb4R3rat229gulTB6SEIm6YBqS6G/7T+8pv2ohuBEhIyr36pf0dLo1nM
	tgY2CO/bc3GWcEZ51Ub2aGvWv7A44aR8q5ZsbspgqUH9WyC/pYRqa7lj/KHtuwzfUwDcSRi9EE9GN
	pyejPdQjmg19EhB40sCciQt/8Mc7S4kj1KyH0rH1qRGWQZVgXNkoQVdLjtwpp8wcVLl0X7K1radi9
	91UyrmC8een+LF6jSqQ3Ht0aRpcHP5ytJuNMj+WWvAx0FUi2iZ3000yaHzvAG1hBym5eSXjahzdhK
	pv+L5bRSxASszgNeP1vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEMUe-00000003afY-2Vfs;
	Thu, 30 Oct 2025 06:50:44 +0000
Received: from mail-m49206.qiye.163.com ([45.254.49.206])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEMUa-00000003aem-0qeL;
	Thu, 30 Oct 2025 06:50:43 +0000
Received: from [172.16.12.149] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 27bf20e38;
	Thu, 30 Oct 2025 14:50:33 +0800 (GMT+08:00)
Message-ID: <e2fcc437-0650-4fdf-bb75-3463a80299fe@rock-chips.com>
Date: Thu, 30 Oct 2025 14:50:33 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 10/10] arm64: dts: rockchip: rk3399-evb-ind: Add
 support for DisplayPort
To: Peter Chen <hzpeterchen@gmail.com>
Cc: Chaoyi Chen <kernel@airkyi.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
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
 <7853bbf0-34e5-4880-a2f4-2d73f25cd5e6@rock-chips.com>
 <CAL411-rFK0o_cxBO_yJFHWurGFKxZGxw6=kpqxRipMetJskTaQ@mail.gmail.com>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <CAL411-rFK0o_cxBO_yJFHWurGFKxZGxw6=kpqxRipMetJskTaQ@mail.gmail.com>
X-HM-Tid: 0a9a33e1e5d603abkunm4fdeafe247c99d
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQhoeTlZCTEtOQ0pKTk1CSUNWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpOTE
	5VSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=aQQwn+vaju0fkVYqlzGfwsD04Z6mA/IUGFwt2/LybJDUI6VkbH4gPP3HejyR9GH2oDyovSq2B+HP/lZguM+2DXuCAwhyjbvdkv8Sy0w8O/SXgQZqRujAaeLAQmJ0w9DPTEMHz7SyhBw9i5kJ4Bq+y9Ft8urfVEBjRCZLvy8wSI0=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=sctOfaMCaVQx0TE/izjuKTlWuoHc1phPG68ypDI+DRY=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251029_235041_638766_A70BB249 
X-CRM114-Status: GOOD (  22.30  )
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

T24gMTAvMzAvMjAyNSAyOjEzIFBNLCBQZXRlciBDaGVuIHdyb3RlOgoKPiBPbiBUaHUsIE9jdCAz
MCwgMjAyNSBhdCAxMToxNOKAr0FNIENoYW95aSBDaGVuIDxjaGFveWkuY2hlbkByb2NrLWNoaXBz
LmNvbT4gd3JvdGU6Cj4+IE9uIDEwLzMwLzIwMjUgMTA6NTAgQU0sIFBldGVyIENoZW4gd3JvdGU6
Cj4+Cj4+Pj4+IE9rYXkuICBNeSBxdWVzdGlvbiBpcyBiYXNpYzogVVNCMiBQSFkgc3VwcGxpZXMg
RFAvRE0sIGFuZCB0aGUgRFAvRE0gaXMKPj4+Pj4gc2hvcnQgZm9yIFR5cGUtQyBjb25uZWN0b3Is
Cj4+Pj4+IGFuZCBubyBjb250cm9sIGlzIG5lZWRlZCBmb3IgVHlwZS1DIGFwcGxpY2F0aW9uLgo+
Pj4+PiBXaHkgaXMgdGhlcmUgYSByZW1vdGUtZW5kcG9pbnQgY29ubmVjdGlvbiBiZXR3ZWVuIFVT
QjIgUEhZIGFuZCBUeXBlLUMgY29ubmVjdG9yPwo+Pj4+ICAgIEZyb20gdGhlIHBlcnNwZWN0aXZl
IG9mIFR5cGUtQywgdGhpcyBzaG91bGQgbm90IGJlIGFkZGVkLiAgSXMgdGhlIGFwcHJvYWNoIGlu
IHYyIGNvcnJlY3QgWzBdID8KPj4+Pgo+Pj4gSGF2ZSB5b3UgdHJpZWQgZGVidWdnaW5nIGJhc2Vk
IG9uIHVwc3RyZWFtIGNvZGU/Cj4+IFllcywgSSBoYXZlIHRyaWVkIGJvdGggdGhlIHYyIGFuZCB2
OCBhcHByb2FjaGVzLCBhbmQgYm90aCBjYW4gd29yay4KPj4KPj4KPj4+IHYyIGlzIGNvcnJlY3Qs
IGJ1dCB0aGUgZHRzIG5lZWRzIHRvIGltcHJvdmUuCj4+PiAtIFRoZXJlIGlzIGEgcmVtb3RlLWVu
ZHBvaW50IGNvbm5lY3Rpb24gZm9yIFVTQiByb2xlIHN3aXRjaCBiZXR3ZWVuCj4+PiBUeXBlLUMg
Y29ubmVjdG9yCj4+PiBkZXZpY2UgYW5kIFVTQiBjb250cm9sbGVyIGRldmljZQo+Pj4gLSBUaGVy
ZSBpcyBhIHJlbW90ZS1lbmRwb2ludCBjb25uZWN0aW9uIGZvciBvcmllbnRhdGlvbiBhbmQgbGFu
ZSBjb25maWd1cmF0aW9uCj4+PiBiZXR3ZWVuIFR5cGUtQyBjb25uZWN0b3IgZGV2aWNlIGFuZCBV
U0IvRFAgUEhZIGRldmljZS4KPj4gSW4gdjggcGF0Y2g1LCB3ZSBpbXBsZW1lbnRlZCB0eXBlY19t
dXggYW5kIHR5cGVjX3N3aXRjaCBpbiB0aGUgVVNCL0RQIFBIWS4KPj4KPj4gSSB0aGluayB0aGUg
Y3VycmVudCByZW1vdGUtZW5kcG9pbnQgY29ubmVjdGlvbnMgYXJlIGFsbCBjaGlsZCBub2RlIG9m
IHRoZSBVU0IvRFAgUEhZLiBUaGF0IGlzOgo+Pgo+Pgo+PiAmdGNwaHkwX2RwIHsKPj4gICAgICAg
bW9kZS1zd2l0Y2g7Cj4+ICAgICAgIC4uLgo+PiB9Owo+Pgo+Pgo+PiAmdGNwaHkwX3VzYjMgewo+
PiAgICAgICBvcmllbnRhdGlvbi1zd2l0Y2g7Cj4+ICAgICAgIC4uLgo+PiB9Owo+Pgo+Pgo+PiBE
b2VzIHRoaXMgc3RpbGwgbmVlZCB0byBiZSBpbXByb3ZlZD8gVGhhbmsgeW91Lgo+Pgo+IEhpIENo
YW95aSwKPgo+IFRoZXJlIGFyZSB0d28gcXVlc3Rpb25zIEkgaGF2ZSBzdGlsbCBub3Qgc2VlbiB0
aGUgYW5zd2VyIHRvOgo+IC0gV2h5IFVTQjIgUEhZIGlzIHJlbGF0ZWQgdG8geW91ciBUeXBlLUMg
cGF0Y2g/CgpJIHdhcyBqdXN0IGZvbGxvd2luZyBvdGhlciBwZW9wbGUncyBhcHByb2FjaC4gU29y
cnksIHRoaXMgc2hvdWxkIGJlIHJlbW92ZWQgZnJvbSB0aGUgZHRzLgoKCj4gLSBIb3cgZG9lcyB0
aGUgVVNCIHJvbGUgc3dpdGNoIGV2ZW50IG5vdGlmeSB0aGUgVVNCIGNvbnRyb2xsZXIgZHJpdmVy
LCBlZyBkd2MzPwoKU29ycnksIEkgbWlzdW5kZXJzdG9vZCB3aGF0IHlvdSBzYWlkIGJlZm9yZS4g
VGhlcmUgaXMgaW5kZWVkIGEgbWlzc2luZyB1c2Itcm9sZS1zd2l0Y2ggbm93LiBJIHJlZmVycmVk
IHRvIHRoZSBhcHByb2FjaCBpbiByazM1ODgtZXZiMS12MTAuZHRzLiBJcyB0aGUgZm9sbG93aW5n
IHdheSBvZiB3cml0aW5nIGNvcnJlY3Q/CgomdXNiY19jb25uZWN0b3IgewogwqAgwqAgcG9ydHMg
ewogwqAgwqAgwqAgwqAgI2FkZHJlc3MtY2VsbHMgPSA8MT47CiDCoCDCoCDCoCDCoCAjc2l6ZS1j
ZWxscyA9IDwwPjsKCiDCoCDCoCDCoCDCoCBwb3J0QDAgewogwqAgwqAgwqAgwqAgwqAgwqAgcmVn
ID0gPDA+OwoKIMKgIMKgIMKgIMKgIMKgIMKgIHVzYmNfb3JpZW5fc3c6IGVuZHBvaW50IHsKIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIHJlbW90ZS1lbmRwb2ludCA9IDwmdGNwaHkwX3R5cGVjX29y
aWVuX3N3PjsKIMKgIMKgIMKgIMKgIMKgIMKgIH07CiDCoCDCoCDCoCDCoCB9OwoKIMKgIMKgIMKg
IMKgIHBvcnRAMSB7CiDCoCDCoCDCoCDCoCDCoCDCoCByZWcgPSA8MT47CgogwqAgwqAgwqAgwqAg
wqAgwqAgdXNiY19yb2xlX3N3OiBlbmRwb2ludCB7CiDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBy
ZW1vdGUtZW5kcG9pbnQgPSA8JmR3YzNfMF9yb2xlX3N3aXRjaD47CiDCoCDCoCDCoCDCoCDCoCDC
oCB9OwogwqAgwqAgwqAgwqAgfTsKCgogwqAgwqAgwqAgwqAgcG9ydEAyIHsKIMKgIMKgIMKgIMKg
IMKgIMKgIHJlZyA9IDwyPjsKCiDCoCDCoCDCoCDCoCDCoCDCoCB1c2JjX2RwOiBlbmRwb2ludCB7
CiDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCByZW1vdGUtZW5kcG9pbnQgPSA8JnRjcGh5MF90eXBl
Y19kcD47CiDCoCDCoCDCoCDCoCDCoCDCoCB9OwogwqAgwqAgwqAgwqAgfTsKIMKgIMKgIH07Cn07
CgomdXNiZHJkX2R3YzNfMCB7CiDCoCDCoCBzdGF0dXMgPSAib2theSI7CiDCoCDCoCB1c2Itcm9s
ZS1zd2l0Y2g7CgogwqAgwqAgcG9ydCB7CiDCoCDCoCDCoCDCoCAjYWRkcmVzcy1jZWxscyA9IDwx
PjsKIMKgIMKgIMKgIMKgICNzaXplLWNlbGxzID0gPDA+OwogwqAgwqAgwqAgwqAgZHdjM18wX3Jv
bGVfc3dpdGNoOiBlbmRwb2ludEAwIHsKIMKgIMKgIMKgIMKgIMKgIMKgIHJlZyA9IDwwPjsKIMKg
IMKgIMKgIMKgIMKgIMKgIHJlbW90ZS1lbmRwb2ludCA9IDwmdXNiY19yb2xlX3N3PjsKIMKgIMKg
IMKgIMKgIH07CiDCoCDCoCB9Owp9OwoKJnRjcGh5MF91c2IzIHsKIMKgIMKgIG9yaWVudGF0aW9u
LXN3aXRjaDsKCiDCoCDCoCBwb3J0IHsKIMKgIMKgIMKgIMKgIHRjcGh5MF90eXBlY19vcmllbl9z
dzogZW5kcG9pbnQgewogwqAgwqAgwqAgwqAgwqAgwqAgcmVtb3RlLWVuZHBvaW50ID0gPCZ1c2Jj
X29yaWVuX3N3PjsKIMKgIMKgIMKgIMKgIH07CiDCoCDCoCB9Owp9OwoKJnRjcGh5MF9kcCB7CiDC
oCDCoCBtb2RlLXN3aXRjaDsKCiDCoCDCoCBwb3J0IHsKIMKgIMKgIMKgIMKgICNhZGRyZXNzLWNl
bGxzID0gPDE+OwogwqAgwqAgwqAgwqAgI3NpemUtY2VsbHMgPSA8MD47CgogwqAgwqAgwqAgwqAg
dGNwaHkwX3R5cGVjX2RwOiBlbmRwb2ludEAwIHsKIMKgIMKgIMKgIMKgIMKgIMKgIHJlZyA9IDww
PjsKIMKgIMKgIMKgIMKgIMKgIMKgIHJlbW90ZS1lbmRwb2ludCA9IDwmdXNiY19kcD47CiDCoCDC
oCDCoCDCoCB9OwogwqAgwqAgfTsKfTsKCgo+IFBldGVyCj4+PiBQZXRlcgo+Pj4KPj4+PiBbMF06
IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI1MDcxNTExMjQ1Ni4xMDEtNi1rZXJuZWxA
YWlya3lpLmNvbS8KPj4+Pgo+Pj4+IE9yIGlzIHRoZSBmb2xsb3dpbmcgYXBwcm9hY2ggY29ycmVj
dD8KPj4+Pgo+Pj4+Cj4+Pj4gcG9ydEAwIHsKPj4+PiAgICAgICAgcmVnID0gPDA+Owo+Pj4+Cj4+
Pj4gICAgICAgIHVzYmNfaHM6IGVuZHBvaW50IHsKPj4+PiAgICAgICAgICAgIHJlbW90ZS1lbmRw
b2ludCA9IDwmdGNwaHkwPjsKPj4+PiAgICAgICAgfTsKPj4+PiB9Owo+Pj4+Cj4+Pj4gcG9ydEAx
IHsKPj4+PiAgICAgICAgcmVnID0gPDE+Owo+Pj4+Cj4+Pj4gICAgICAgIHVzYmNfc3M6IGVuZHBv
aW50IHsKPj4+PiAgICAgICAgICAgIHJlbW90ZS1lbmRwb2ludCA9IDwmdGNwaHkwPjsKPj4+PiAg
ICAgICAgfTsKPj4+PiB9Owo+Pj4+Cj4+Pj4gcG9ydEAyIHsKPj4+PiAgICAgICAgcmVnID0gPDI+
Owo+Pj4+Cj4+Pj4gICAgICAgIHVzYmNfZHA6IGVuZHBvaW50IHsKPj4+PiAgICAgICAgICAgIHJl
bW90ZS1lbmRwb2ludCA9IDwmdGNwaHkwX3R5cGVjX2RwPjsKPj4+PiAgICAgICAgfTsKPj4+PiB9
Owo+Pj4+Cj4+Pj4KPj4+Pj4+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcG9y
dEAxIHsKPj4+Pj4+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBy
ZWcgPSA8MT47Cj4+Pj4+Pj4+PiArCj4+Pj4+Pj4+PiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgdXNiY19zczogZW5kcG9pbnQgewo+Pj4+Pj4+Pj4gKyByZW1vdGUtZW5k
cG9pbnQgPSA8JnRjcGh5MF90eXBlY19zcz47Cj4+Pj4+Pj4+PiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgfTsKPj4+Pj4+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgfTsKPj4+Pj4+Pj4+ICsKPj4+Pj4+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgcG9ydEAyIHsKPj4+Pj4+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICByZWcgPSA8Mj47Cj4+Pj4+Pj4+PiArCj4+Pj4+Pj4+PiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgdXNiY19kcDogZW5kcG9pbnQgewo+Pj4+Pj4+Pj4g
KyByZW1vdGUtZW5kcG9pbnQgPSA8JnRjcGh5MF90eXBlY19kcD47Cj4+Pj4+Pj4+PiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfTsKPj4+Pj4+Pj4+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgfTsKPj4+Pj4+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAg
IH07Cj4+Pj4+Pj4+PiArICAgICAgICAgICAgICAgfTsKPj4+Pj4+Pj4+ICsgICAgICAgfTsKPj4+
Pj4+Pj4+ICt9Owo+Pj4+Pj4+Pj4gKwo+Pj4+Pj4+PiAuLi4uLgo+Pj4+Pj4+Pj4gICAgICAmdTJw
aHkwIHsKPj4+Pj4+Pj4+ICAgICAgICAgICAgIHN0YXR1cyA9ICJva2F5IjsKPj4+Pj4+Pj4+ICsK
Pj4+Pj4+Pj4+ICsgICAgICAgcG9ydCB7Cj4+Pj4+Pj4+PiArICAgICAgICAgICAgICAgdTJwaHkw
X3R5cGVjX2hzOiBlbmRwb2ludCB7Cj4+Pj4+Pj4+PiArICAgICAgICAgICAgICAgICAgICAgICBy
ZW1vdGUtZW5kcG9pbnQgPSA8JnVzYmNfaHM+Owo+Pj4+Pj4+Pj4gKyAgICAgICAgICAgICAgIH07
Cj4+Pj4+Pj4+PiArICAgICAgIH07Cj4+Pj4+Pj4+PiAgICAgIH07Cj4+Pj4+Pj4+Pgo+Pj4+Pj4+
PiBUaGVyZSBpcyBubyBzd2l0Y2ggYW5kIG11eCwgaG93IHRvIGNvLXdvcmsgd2l0aCBUeXBlLUM/
Cj4+Pj4+Pj4gSSBjaGVja2VkIHRoZSBwaHktcm9ja2NoaXAtaW5uby11c2IyLmMgYnV0IGRpZCBu
b3QgZmluZCBhbnkgc3dpdGNoIG9yIG11eC4gRG9lcyB0aGlzIG1lYW4gdGhhdCB3ZSBuZWVkIHRv
IGltcGxlbWVudCB0aGVtPyBUaGFuayB5b3UuCj4+Pj4+PiBXYWl0IGEgbWludXRlLCBhY3R1YWxs
eSB3ZSBoYXZlIG11bHRpcGxlIGhhcmR3YXJlIGludGVyZmFjZXMsIG9uZSBvZiB3aGljaCBpcyBU
eXBlLUMsIGV2ZW50dWFsbHkgY29ubmVjdGVkIHRvIFVTQkRQUEhZLCBhbmQgdGhlIG90aGVyIGlz
IG1pY3JvLXVzYiBjb25uZWN0ZWQgdG8gVTJQSFkuCj4+Pj4+IEkgYXNzdW1lIHRoZSBNaWNyby1V
U0IgY29ubmVjdG9yIGRvZXMgbm90IHVzZSBUeXBlLUMvUEQgSUMsIGlzIGl0Cj4+Pj4+IHJpZ2h0
PyBEb2VzIGl0IHJlbGF0ZSB0byB0aGlzIHBhdGNoPwo+Pj4+Pgo+Pj4+PiBCZXN0IHJlZ2FyZHMs
Cj4+Pj4+IFBldGVyCj4+Pj4+Cj4+IC0tCj4+IEJlc3QsCj4+IENoYW95aQo+Pgo+Ci0tIApCZXN0
LApDaGFveWkKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
