Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66102CCF9EB
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Oct 2025 10:21:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CDcSeLkkFQlTWo2qttechItbKoAKyNNHKaD94tY6/oY=; b=fOtTI1/dBRrSSu
	JiNva3MyIkKZQw0r4GWzEAK/kzwER6r2jqmOjAHOVYs1jdeR1nqYzpLX+Av4fOzHS3CuO0rq6XRi4
	cVBQQqhq7ogIU3qN7tC6TDOFLVuW1jbPvd0oArGyOIqT/JsgWP6md1CtArN+Bf9BiDAyx1vSx3j5s
	OV0jqVgP1I9a9pVs5iSxNlLQ6ZNDsqkdgHRDEYvlclrX/6HvVSmnEB1xBnCk6d44wQ6oCZ2bdcAZ9
	ymBFZTvtWNNTH3h1ORu3tgW1ZOwVDhoojBWM7N/Q5U0rXf5ELSH20CbTec/VGAN1HZqupPVZaeRGk
	KV2LecyzEbEKvXpM0iyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE3Iw-00000000hlH-0WfV;
	Wed, 29 Oct 2025 10:21:22 +0000
Received: from mail-m49195.qiye.163.com ([45.254.49.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE3Is-00000000hgv-3YTI;
	Wed, 29 Oct 2025 10:21:20 +0000
Received: from [172.16.12.149] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 27a20e337;
	Wed, 29 Oct 2025 18:21:09 +0800 (GMT+08:00)
Message-ID: <cc8b583a-77ec-4a7f-97cc-2d148f7fee9f@rock-chips.com>
Date: Wed, 29 Oct 2025 18:21:08 +0800
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
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <CAL411-o6mF71oBeRsJ-OPZNbLegn4iJ_ELN9xVdppTM3ssUPOw@mail.gmail.com>
X-HM-Tid: 0a9a2f7c571703abkunmeb663c22345d26
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGhkeGlYYQh9NGEtMSx4dQhlWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpPSE
	xVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=LdvT8yD55DgQk4sSKILpIpTMXTznVSncF63l6VkUkbyLicwzodkCBt91xnRXJAz6qAqJzyDEiy1ZOtqF1gWvG+5YfYbEXIgUeJHQ1NXAoz4QIXjvKBF5G6COWnbG0/O9NjxQJZ7SzaH6qSjtRb0zw7ZkPku5KSQcFgmMTSj/5MY=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=2y//5yz0cKqyDq/eGQvh7lZNErNDwqj5oCuOmDJhx+0=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251029_032119_389848_22080BD8 
X-CRM114-Status: GOOD (  12.87  )
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

SGkgUGV0ZXIsCgpPbiAxMC8yOS8yMDI1IDU6NDUgUE0sIFBldGVyIENoZW4gd3JvdGU6Cj4+ICsm
aTJjNCB7Cj4+ICsgICAgICAgaTJjLXNjbC1yaXNpbmctdGltZS1ucyA9IDw0NzU+Owo+PiArICAg
ICAgIGkyYy1zY2wtZmFsbGluZy10aW1lLW5zID0gPDI2PjsKPj4gKyAgICAgICBzdGF0dXMgPSAi
b2theSI7Cj4+ICsKPj4gKyAgICAgICB1c2JjMDogdHlwZWMtcG9ydGNAMjIgewo+PiArICAgICAg
ICAgICAgICAgY29tcGF0aWJsZSA9ICJmY3MsZnVzYjMwMiI7Cj4+ICsgICAgICAgICAgICAgICBy
ZWcgPSA8MHgyMj47Cj4+ICsgICAgICAgICAgICAgICBpbnRlcnJ1cHQtcGFyZW50ID0gPCZncGlv
MT47Cj4+ICsgICAgICAgICAgICAgICBpbnRlcnJ1cHRzID0gPFJLX1BBMiBJUlFfVFlQRV9MRVZF
TF9MT1c+Owo+PiArICAgICAgICAgICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4g
KyAgICAgICAgICAgICAgIHBpbmN0cmwtMCA9IDwmdXNiYzBfaW50PjsKPj4gKyAgICAgICAgICAg
ICAgIHZidXMtc3VwcGx5ID0gPCZ2YnVzX3R5cGVjPjsKPj4gKwo+PiArICAgICAgICAgICAgICAg
dXNiX2NvbjogY29ubmVjdG9yIHsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJs
ZSA9ICJ1c2ItYy1jb25uZWN0b3IiOwo+PiArICAgICAgICAgICAgICAgICAgICAgICBsYWJlbCA9
ICJVU0ItQyI7Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgIGRhdGEtcm9sZSA9ICJkdWFsIjsK
Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgcG93ZXItcm9sZSA9ICJkdWFsIjsKPj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgdHJ5LXBvd2VyLXJvbGUgPSAic2luayI7Cj4+ICsgICAgICAgICAg
ICAgICAgICAgICAgIG9wLXNpbmstbWljcm93YXR0ID0gPDEwMDAwMDA+Owo+PiArICAgICAgICAg
ICAgICAgICAgICAgICBzaW5rLXBkb3MgPQo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIDxQRE9fRklYRUQoNTAwMCwgMjUwMCwgUERPX0ZJWEVEX1VTQl9DT01NKT47Cj4+ICsgICAg
ICAgICAgICAgICAgICAgICAgIHNvdXJjZS1wZG9zID0KPj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICA8UERPX0ZJWEVEKDUwMDAsIDE1MDAsIFBET19GSVhFRF9VU0JfQ09NTSk+Owo+
PiArCj4+ICsgICAgICAgICAgICAgICAgICAgICAgIGFsdG1vZGVzIHsKPj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBkaXNwbGF5cG9ydCB7Cj4+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBzdmlkID0gL2JpdHMvIDE2IDwweGZmMDE+Owo+PiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdmRvID0gPDB4MDAwMDFjNDY+Owo+PiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIH07Cj4+ICsgICAgICAgICAgICAgICAgICAg
ICAgIH07Cj4+ICsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgcG9ydHMgewo+PiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICNhZGRyZXNzLWNlbGxzID0gPDE+Owo+PiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICNzaXplLWNlbGxzID0gPDA+Owo+PiArCj4+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgcG9ydEAwIHsKPj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwwPjsKPj4gKwo+PiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgdXNiY19oczogZW5kcG9pbnQgewo+PiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZW1vdGUtZW5kcG9pbnQgPSA8
JnUycGh5MF90eXBlY19ocz47Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICB9Owo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIH07Cj4+ICsKPiBXaHkg
VVNCMiBQSFkgbmVlZHMgdG8gYmUgbm90aWZpZWQgZm9yIFR5cGUtQyBjb25uZWN0aW9uPwoKSSB0
aGluayB0aGUgVVNCLWNvbm5lY3RvciBiaW5kaW5nIHJlcXVpcmUgYSBwb3J0QDAgZm9yIEhpZ2gg
U3BlZWQuwqAgU28gSSBmaWxsZWQgaW4gVVNCMiBQSFkgaGVyZS4gQW5kIEkgaGF2ZSBsb29rZWQg
dXAgYm9hcmRzIHdpdGggdGhlIHNhbWUgdXNhZ2UsIGFuZCBzb21lIG9mIHRoZSByZXN1bHRzIGFy
ZSBhcyBmb2xsb3dzOgoKLSByazMzOTktZmlyZWZseS5kdHMKCi0gcmszMzk5LXBpbmVib29rLXBy
by5kdHMKCi0gcmszMzk5LWVhaWRrLTYxMC5kdHMKCgo+Cj4+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgcG9ydEAxIHsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHJlZyA9IDwxPjsKPj4gKwo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgdXNiY19zczogZW5kcG9pbnQgewo+PiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICByZW1vdGUtZW5kcG9pbnQgPSA8JnRjcGh5MF90eXBlY19z
cz47Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB9Owo+PiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIH07Cj4+ICsKPj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBwb3J0QDIgewo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgcmVnID0gPDI+Owo+PiArCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICB1c2JjX2RwOiBlbmRwb2ludCB7Cj4+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHJlbW90ZS1lbmRwb2ludCA9IDwmdGNwaHkwX3R5cGVj
X2RwPjsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIH07Cj4+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfTsKPj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgfTsKPj4gKyAgICAgICAgICAgICAgIH07Cj4+ICsgICAgICAgfTsKPj4gK307Cj4+ICsKPiAu
Li4uLgo+PiAgICZ1MnBoeTAgewo+PiAgICAgICAgICBzdGF0dXMgPSAib2theSI7Cj4+ICsKPj4g
KyAgICAgICBwb3J0IHsKPj4gKyAgICAgICAgICAgICAgIHUycGh5MF90eXBlY19oczogZW5kcG9p
bnQgewo+PiArICAgICAgICAgICAgICAgICAgICAgICByZW1vdGUtZW5kcG9pbnQgPSA8JnVzYmNf
aHM+Owo+PiArICAgICAgICAgICAgICAgfTsKPj4gKyAgICAgICB9Owo+PiAgIH07Cj4+Cj4gVGhl
cmUgaXMgbm8gc3dpdGNoIGFuZCBtdXgsIGhvdyB0byBjby13b3JrIHdpdGggVHlwZS1DPwoKSSBj
aGVja2VkIHRoZSBwaHktcm9ja2NoaXAtaW5uby11c2IyLmMgYnV0IGRpZCBub3QgZmluZCBhbnkg
c3dpdGNoIG9yIG11eC4gRG9lcyB0aGlzIG1lYW4gdGhhdCB3ZSBuZWVkIHRvIGltcGxlbWVudCB0
aGVtPyBUaGFuayB5b3UuCgoKPgo+IEJlc3QgcmVnYXJkcywKPiBQZXRlcgo+Cj4KLS0gCkJlc3Qs
CkNoYW95aQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
