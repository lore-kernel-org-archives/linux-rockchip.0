Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D2A6CCF9EB
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Oct 2025 02:17:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6JdbewzVL9VjO3jgBI48igtBLEJ9p5n1eKlsjBYtnB0=; b=Gd8r6LHvLGF963
	2iIkjXcwGYpoHuCV88g75d6DPF9lNTKJKu1xKsSKhtpQoKZN9Eocx+/0AtcbPCaUJZB3Y9mg4r3P7
	G+gdqoM65ymNVOenyNTAQ0SKkW6DQJpmL/SfEQDW4N/CWNzkW2ZsPdLtnkBhFBb7oLbUILLW7viY1
	lnLFkZ/POybMcWmEzqAWJ7xUo9kJvJz0OkEvcMYdR09nnsUNTCLVCzn1zHS5AYVxjFAGQ7Nd6IfQd
	nh5Hwj8OLToUQ4CpnNozX9RiEMUPXFzDR4jjYfI4AJzRGxX6lul3fVjHGmVJMgeXFw4Cm7uINi3AJ
	A9F65n31PbJh8arFJLFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEIEV-00000003Mtk-2sMT;
	Thu, 30 Oct 2025 02:17:47 +0000
Received: from smtpbguseast3.qq.com ([54.243.244.52])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEIER-00000003Mog-2etj;
	Thu, 30 Oct 2025 02:17:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1761790620;
	bh=dRHxWofqNvre4c7gYW9pSN8OyvpdSlasaGgbf/HjiS0=;
	h=Message-ID:Date:MIME-Version:Subject:To:From;
	b=vH0+LccfeOAwAVbnBaALWmAmLCQEj0I8XtZdc7sGZoSzAxN3Fkuqu1qQiaiYL326u
	 w0G0xVRL7RYAxor0SPxfERiDUdrioBntr8160rWJi2xG/AFwy9X8HWMz1E9UWok7HM
	 1qh5KwrbjQzrpGbwTxZuXiZy/uF4UY+A9kIw3+QM=
X-QQ-mid: esmtpsz21t1761790610t2286961f
X-QQ-Originating-IP: FCJSyEhyWxQkXT6SGDOtofz4EUe9Cd81eY6Os229Qyg=
Received: from [172.16.12.149] ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 30 Oct 2025 10:16:47 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 1275723360735953640
Message-ID: <C6253E8254C80B0F+839b71d0-1bd8-40b7-9515-7ce4a1eb8673@airkyi.com>
Date: Thu, 30 Oct 2025 10:16:45 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 10/10] arm64: dts: rockchip: rk3399-evb-ind: Add
 support for DisplayPort
To: Peter Chen <hzpeterchen@gmail.com>,
 Chaoyi Chen <chaoyi.chen@rock-chips.com>
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
Content-Language: en-US
From: Chaoyi Chen <kernel@airkyi.com>
In-Reply-To: <CAL411-oXfvp-iqN+uRmFHijdmW=1omKwozKOoZ2shxukMHmwPg@mail.gmail.com>
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpsz:airkyi.com:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: OPdvjVtisQSKcRlL75dFsNIHBIAyQERADWxFjoYDC99KDjawoBPtVKHI
	LCrYqtLsiWfOlaL2LG+wsIWqBljK30GyvyuzT3MUap7nfmPo5CVKWNebzd0+Blijy9gkM4k
	g9Xt0X0E4A9gNOkoeOsXSnA9ixZmvdJlhrS8hCWTXMH36UKzQFppq7xhDxnodqE1sXNCI2q
	fov8SDOyWn/+BepodydDTDV+/W7bYIrhxgC5rOsToxhS8EtRU3p7Oq24IcPf3HQhtayBGrv
	Ye1UOksVbmfPArt88xVNNb+yFwzngM7eZM93fjAGUxdi/g9byknI3BmQg3rbOTKvrI+4YH2
	mPHpcgIxbAHgDGgDYtFk6OBqZZiYA1H687er9fqyAAzRaXktqAz0flyrcnZGIMoSXE8CQ07
	xagvXTqO2yLqHetA05BnikFrYoWCpe/SFF45ZhCIY0FkpYjA2eXhPgWks+EnEOmNa8k1Iw9
	GAptxxlL4PpGfPOAgUcdKrFXIZYvLkjHwwxjyNpvtVOl3kLw3xAwswxlSStDPbWdrXQebsb
	xA/6MBwqjFBWotvEK7UZRm0rEWaFev3xYYDiEBrdjMwI8ri4++//9kMcRJqrXwVSx5iCm+d
	UymplYqdMbjUrFpr97zU+Wpoxj67Z6vpQ/YJfAevp5d3yVs06MNJWvt7ywVmjkKtOmZBIO/
	OP4lHYxmWmLCxwHY7uWu8i7yv1d7uoAshWDOIeUXvBYP1U49z/p5CSxzafxfgo5B9TfeclG
	nQnSIwQlAsCqJyorHNNpignubeM6WLap0U6tDfrjBJzX5DTIW+KpF04g6lcHdClWqFTmIBU
	7QVhn7rloaA1T+lzlioy+2xl0un3jVBXvCtGoqSdoRr99hoYC0fKCPElBterF8knaQzdT9e
	zUj0j4oDJnxxyfVwbcJTE/sUCLIp8yzBrgQRAuzdiF9KGzK404/J02udjNaIcsMLDhcp8Vm
	gq/+5Ry0Udy2MxFVYKgVyy6TmUCBV6cEtwplF2D46IhMfOHFAAWxLk7JP4IpEJpJTFqaxYo
	tOSBEthA==
X-QQ-XMRINFO: Mp0Kj//9VHAxr69bL5MkOOs=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251029_191744_236500_0AA46FC4 
X-CRM114-Status: GOOD (  18.29  )
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

SGkgUGV0ZXIsCgpPbiAxMC8zMC8yMDI1IDk6MzQgQU0sIFBldGVyIENoZW4gd3JvdGU6Cj4gT24g
V2VkLCBPY3QgMjksIDIwMjUgYXQgNjozMuKAr1BNIENoYW95aSBDaGVuIDxjaGFveWkuY2hlbkBy
b2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4+IE9uIDEwLzI5LzIwMjUgNjoyMSBQTSwgQ2hhb3lpIENo
ZW4gd3JvdGU6Cj4+Cj4+PiBIaSBQZXRlciwKPj4+Cj4+PiBPbiAxMC8yOS8yMDI1IDU6NDUgUE0s
IFBldGVyIENoZW4gd3JvdGU6Cj4+Pj4+ICsmaTJjNCB7Cj4+Pj4+ICsgICAgICAgaTJjLXNjbC1y
aXNpbmctdGltZS1ucyA9IDw0NzU+Owo+Pj4+PiArICAgICAgIGkyYy1zY2wtZmFsbGluZy10aW1l
LW5zID0gPDI2PjsKPj4+Pj4gKyAgICAgICBzdGF0dXMgPSAib2theSI7Cj4+Pj4+ICsKPj4+Pj4g
KyAgICAgICB1c2JjMDogdHlwZWMtcG9ydGNAMjIgewo+Pj4+PiArICAgICAgICAgICAgICAgY29t
cGF0aWJsZSA9ICJmY3MsZnVzYjMwMiI7Cj4+Pj4+ICsgICAgICAgICAgICAgICByZWcgPSA8MHgy
Mj47Cj4+Pj4+ICsgICAgICAgICAgICAgICBpbnRlcnJ1cHQtcGFyZW50ID0gPCZncGlvMT47Cj4+
Pj4+ICsgICAgICAgICAgICAgICBpbnRlcnJ1cHRzID0gPFJLX1BBMiBJUlFfVFlQRV9MRVZFTF9M
T1c+Owo+Pj4+PiArICAgICAgICAgICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4+
Pj4gKyAgICAgICAgICAgICAgIHBpbmN0cmwtMCA9IDwmdXNiYzBfaW50PjsKPj4+Pj4gKyAgICAg
ICAgICAgICAgIHZidXMtc3VwcGx5ID0gPCZ2YnVzX3R5cGVjPjsKPj4+Pj4gKwo+Pj4+PiArICAg
ICAgICAgICAgICAgdXNiX2NvbjogY29ubmVjdG9yIHsKPj4+Pj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgY29tcGF0aWJsZSA9ICJ1c2ItYy1jb25uZWN0b3IiOwo+Pj4+PiArICAgICAgICAgICAg
ICAgICAgICAgICBsYWJlbCA9ICJVU0ItQyI7Cj4+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAg
IGRhdGEtcm9sZSA9ICJkdWFsIjsKPj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgcG93ZXIt
cm9sZSA9ICJkdWFsIjsKPj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgdHJ5LXBvd2VyLXJv
bGUgPSAic2luayI7Cj4+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgIG9wLXNpbmstbWljcm93
YXR0ID0gPDEwMDAwMDA+Owo+Pj4+PiArICAgICAgICAgICAgICAgICAgICAgICBzaW5rLXBkb3Mg
PQo+Pj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxQRE9fRklYRUQoNTAwMCwg
MjUwMCwgUERPX0ZJWEVEX1VTQl9DT01NKT47Cj4+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAg
IHNvdXJjZS1wZG9zID0KPj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8UERP
X0ZJWEVEKDUwMDAsIDE1MDAsIFBET19GSVhFRF9VU0JfQ09NTSk+Owo+Pj4+PiArCj4+Pj4+ICsg
ICAgICAgICAgICAgICAgICAgICAgIGFsdG1vZGVzIHsKPj4+Pj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBkaXNwbGF5cG9ydCB7Cj4+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBzdmlkID0gL2JpdHMvIDE2IDwweGZmMDE+Owo+Pj4+PiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdmRvID0gPDB4MDAwMDFjNDY+Owo+Pj4+
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIH07Cj4+Pj4+ICsgICAgICAgICAgICAg
ICAgICAgICAgIH07Cj4+Pj4+ICsKPj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgcG9ydHMg
ewo+Pj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICNhZGRyZXNzLWNlbGxzID0g
PDE+Owo+Pj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICNzaXplLWNlbGxzID0g
PDA+Owo+Pj4+PiArCj4+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcG9ydEAw
IHsKPj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDww
PjsKPj4+Pj4gKwo+Pj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
dXNiY19oczogZW5kcG9pbnQgewo+Pj4+PiArIHJlbW90ZS1lbmRwb2ludCA9IDwmdTJwaHkwX3R5
cGVjX2hzPjsKPj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIH07
Cj4+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfTsKPj4+Pj4gKwo+Pj4+IFdo
eSBVU0IyIFBIWSBuZWVkcyB0byBiZSBub3RpZmllZCBmb3IgVHlwZS1DIGNvbm5lY3Rpb24/Cj4+
PiBJIHRoaW5rIHRoZSBVU0ItY29ubmVjdG9yIGJpbmRpbmcgcmVxdWlyZSBhIHBvcnRAMCBmb3Ig
SGlnaCBTcGVlZC4gIFNvIEkgZmlsbGVkIGluIFVTQjIgUEhZIGhlcmUuIEFuZCBJIGhhdmUgbG9v
a2VkIHVwIGJvYXJkcyB3aXRoIHRoZSBzYW1lIHVzYWdlLCBhbmQgc29tZSBvZiB0aGUgcmVzdWx0
cyBhcmUgYXMgZm9sbG93czoKPj4+Cj4+PiAtIHJrMzM5OS1maXJlZmx5LmR0cwo+Pj4KPj4+IC0g
cmszMzk5LXBpbmVib29rLXByby5kdHMKPj4+Cj4+PiAtIHJrMzM5OS1lYWlkay02MTAuZHRzCj4+
Pgo+IE9rYXkuICBNeSBxdWVzdGlvbiBpcyBiYXNpYzogVVNCMiBQSFkgc3VwcGxpZXMgRFAvRE0s
IGFuZCB0aGUgRFAvRE0gaXMKPiBzaG9ydCBmb3IgVHlwZS1DIGNvbm5lY3RvciwKPiBhbmQgbm8g
Y29udHJvbCBpcyBuZWVkZWQgZm9yIFR5cGUtQyBhcHBsaWNhdGlvbi4KPiBXaHkgaXMgdGhlcmUg
YSByZW1vdGUtZW5kcG9pbnQgY29ubmVjdGlvbiBiZXR3ZWVuIFVTQjIgUEhZIGFuZCBUeXBlLUMg
Y29ubmVjdG9yPwoKIEZyb20gdGhlIHBlcnNwZWN0aXZlIG9mIFR5cGUtQywgdGhpcyBzaG91bGQg
bm90IGJlIGFkZGVkLsKgIElzIHRoZSBhcHByb2FjaCBpbiB2MiBjb3JyZWN0IFswXSA/CgpbMF06
IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI1MDcxNTExMjQ1Ni4xMDEtNi1rZXJuZWxA
YWlya3lpLmNvbS8KCk9yIGlzIHRoZSBmb2xsb3dpbmcgYXBwcm9hY2ggY29ycmVjdD8KCgpwb3J0
QDAgewogwqAgwqAgcmVnID0gPDA+OwoKIMKgIMKgIHVzYmNfaHM6IGVuZHBvaW50IHsKIMKgIMKg
IMKgIMKgIHJlbW90ZS1lbmRwb2ludCA9IDwmdGNwaHkwPjsKIMKgIMKgIH07Cn07Cgpwb3J0QDEg
ewogwqAgwqAgcmVnID0gPDE+OwoKIMKgIMKgIHVzYmNfc3M6IGVuZHBvaW50IHsKIMKgIMKgIMKg
IMKgIHJlbW90ZS1lbmRwb2ludCA9IDwmdGNwaHkwPjsKIMKgIMKgIH07Cn07Cgpwb3J0QDIgewog
wqAgwqAgcmVnID0gPDI+OwoKIMKgIMKgIHVzYmNfZHA6IGVuZHBvaW50IHsKIMKgIMKgIMKgIMKg
IHJlbW90ZS1lbmRwb2ludCA9IDwmdGNwaHkwX3R5cGVjX2RwPjsKIMKgIMKgIH07Cn07CgoKPgo+
Pj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHBvcnRAMSB7Cj4+Pj4+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8MT47Cj4+Pj4+ICsKPj4+
Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVzYmNfc3M6IGVuZHBv
aW50IHsKPj4+Pj4gKyByZW1vdGUtZW5kcG9pbnQgPSA8JnRjcGh5MF90eXBlY19zcz47Cj4+Pj4+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB9Owo+Pj4+PiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIH07Cj4+Pj4+ICsKPj4+Pj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBwb3J0QDIgewo+Pj4+PiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgcmVnID0gPDI+Owo+Pj4+PiArCj4+Pj4+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICB1c2JjX2RwOiBlbmRwb2ludCB7Cj4+Pj4+ICsgcmVtb3Rl
LWVuZHBvaW50ID0gPCZ0Y3BoeTBfdHlwZWNfZHA+Owo+Pj4+PiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgfTsKPj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICB9Owo+Pj4+PiArICAgICAgICAgICAgICAgICAgICAgICB9Owo+Pj4+PiArICAgICAgICAg
ICAgICAgfTsKPj4+Pj4gKyAgICAgICB9Owo+Pj4+PiArfTsKPj4+Pj4gKwo+Pj4+IC4uLi4uCj4+
Pj4+ICAgICZ1MnBoeTAgewo+Pj4+PiAgICAgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+Pj4+PiAr
Cj4+Pj4+ICsgICAgICAgcG9ydCB7Cj4+Pj4+ICsgICAgICAgICAgICAgICB1MnBoeTBfdHlwZWNf
aHM6IGVuZHBvaW50IHsKPj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgcmVtb3RlLWVuZHBv
aW50ID0gPCZ1c2JjX2hzPjsKPj4+Pj4gKyAgICAgICAgICAgICAgIH07Cj4+Pj4+ICsgICAgICAg
fTsKPj4+Pj4gICAgfTsKPj4+Pj4KPj4+PiBUaGVyZSBpcyBubyBzd2l0Y2ggYW5kIG11eCwgaG93
IHRvIGNvLXdvcmsgd2l0aCBUeXBlLUM/Cj4+PiBJIGNoZWNrZWQgdGhlIHBoeS1yb2NrY2hpcC1p
bm5vLXVzYjIuYyBidXQgZGlkIG5vdCBmaW5kIGFueSBzd2l0Y2ggb3IgbXV4LiBEb2VzIHRoaXMg
bWVhbiB0aGF0IHdlIG5lZWQgdG8gaW1wbGVtZW50IHRoZW0/IFRoYW5rIHlvdS4KPj4gV2FpdCBh
IG1pbnV0ZSwgYWN0dWFsbHkgd2UgaGF2ZSBtdWx0aXBsZSBoYXJkd2FyZSBpbnRlcmZhY2VzLCBv
bmUgb2Ygd2hpY2ggaXMgVHlwZS1DLCBldmVudHVhbGx5IGNvbm5lY3RlZCB0byBVU0JEUFBIWSwg
YW5kIHRoZSBvdGhlciBpcyBtaWNyby11c2IgY29ubmVjdGVkIHRvIFUyUEhZLgo+IEkgYXNzdW1l
IHRoZSBNaWNyby1VU0IgY29ubmVjdG9yIGRvZXMgbm90IHVzZSBUeXBlLUMvUEQgSUMsIGlzIGl0
Cj4gcmlnaHQ/IERvZXMgaXQgcmVsYXRlIHRvIHRoaXMgcGF0Y2g/Cj4KPiBCZXN0IHJlZ2FyZHMs
Cj4gUGV0ZXIKPgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
