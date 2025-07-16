Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0B5BC83F17
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Jul 2025 01:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nVrBMYut13Imjiy2QGBeNTi3jn4mmWsUDJFaHfLfii4=; b=mbvDbM7VwglSXi
	xSU9wgst3Zw1rbcKgn4FIyXO7rQS93L3fCReCTlVdbUVCFCt4+LglLca8WfnHPY2aMAzffBlga6KL
	1bQHLC61cxaV3xNbQlhlUiGROGFSA0y2tfD8jvP+OP5U/wWOWwDYx8ipq3zLAu5dgHkwC70qsUG76
	aCp4x4xYqiiOyA/Zp7IByyAk4qbRd5D0/E7lFj6BxSF9cE9CIbzWDh1Er5EvY1LaDqvmy+VoGSwvr
	eyGSb9MigS60HxM2pgTeEl4f6vsz2sVhSsDiB0SEbfYKd1o41zDieEbSj1FQYW/8cIDI3Q0P86FCI
	2cqh9cuFOxiB5o1Ny/yQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubrO2-00000006ZWf-3Msi;
	Wed, 16 Jul 2025 01:56:46 +0000
Received: from mail-m15599.qiye.163.com ([101.71.155.99])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubrNy-00000006ZVy-2gOj;
	Wed, 16 Jul 2025 01:56:44 +0000
Received: from [127.0.0.1] (gy-adaptive-ssl-proxy-4-entmail-virt151.gy.ntes [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1c22589b7;
	Wed, 16 Jul 2025 09:56:28 +0800 (GMT+08:00)
Message-ID: <c84cb838-e6e7-4ed0-8d12-67b82f85ff28@rock-chips.com>
Date: Wed, 16 Jul 2025 09:56:27 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] phy: rockchip: phy-rockchip-typec: Add support for
 Type-C TCPM
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Chaoyi Chen <kernel@airkyi.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Yubing Zhang <yubing.zhang@rock-chips.com>,
 Frank Wang <frank.wang@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Amit Sunil Dhamne <amitsd@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>,
 Diederik de Haas <didi.debian@cknow.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 dri-devel@lists.freedesktop.org
References: <20250715112456.101-1-kernel@airkyi.com>
 <20250715112456.101-4-kernel@airkyi.com>
 <eqb5m22om6bx2ypjtnlwdjmgfyycpmgrlvro34xwlwjj4j2jeq@mrarg36wetp6>
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <eqb5m22om6bx2ypjtnlwdjmgfyycpmgrlvro34xwlwjj4j2jeq@mrarg36wetp6>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkgYH1ZMGk9MGh0fHhlJH0xWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCS0
	NVSktLVUpCWQY+
X-HM-Tid: 0a9810f28ea703abkunm90ac2de114329c6
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Pkk6PAw6TzE0CQkqHyMaKTwO
	FCMwFBxVSlVKTE5JTUhLQkJDTExNVTMWGhIXVRgTGhQCElUYEx4VOwkUGBBWGBMSCwhVGBQWRVlX
	WRILWUFZTkNVSUlVTFVKSk9ZV1kIAVlBSUNNTDcG
DKIM-Signature: a=rsa-sha256;
	b=W0jW9R03pDXvYvm3Rcj4D/OVXpsMGGUD4uR1EzjGrfUvJ1jREzszZ3UvHu9fA4hJSWutBZqokl4p7J5EL4BskBgoitkLIFthMM+EJ1eWoL5y4pjR+pSdm4P3can6FI5v2Cx7gxWVhXUR4sdLwXNQPCr29lZXHdhlnt5R7jcGTaA=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=jn0hRWbIM6rr6NocmrIeQ0wNYnfckKljpY3FeBK/+iY=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250715_185643_171675_83FAA5D5 
X-CRM114-Status: GOOD (  11.67  )
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

SGkgRG1pdHJ5LAoKT24gMjAyNS83LzE1IDIwOjA1LCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+
IE9uIFR1ZSwgSnVsIDE1LCAyMDI1IGF0IDA3OjI0OjU0UE0gKzA4MDAsIENoYW95aSBDaGVuIHdy
b3RlOgo+PiBGcm9tOiBDaGFveWkgQ2hlbiA8Y2hhb3lpLmNoZW5Acm9jay1jaGlwcy5jb20+Cj4+
Cj4+IFRoaXMgcGF0Y2ggYWRkIHN1cHBvcnQgZm9yIFR5cGUtQyBQb3J0IENvbnRyb2xsZXIgTWFu
YWdlci4KPj4gVGhlIGV4dGNvbiBkZXZpY2Ugc2hvdWxkIHN0aWxsIGJlIHN1cHBvcnRlZC4KPj4K
Pj4gU2lnbmVkLW9mZi1ieTogQ2hhb3lpIENoZW4gPGNoYW95aS5jaGVuQHJvY2stY2hpcHMuY29t
Pgo+PiAtLS0KPj4gICBkcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdHlwZWMuYyB8
IDMzNSArKysrKysrKysrKysrKysrKysrKy0tCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDMxOSBpbnNl
cnRpb25zKCspLCAxNiBkZWxldGlvbnMoLSkKPiBQbGVhc2Uga2VlcCBUQ1BNIGltcGxlbWVudGF0
aW9uIHVuZGVyIGRyaXZlcnMvdXNiL3R5cGVjL3RjcG0vIC4gQ3JlYXRlCj4gYW4gYXV4IGRldmlj
ZSBhbmQgd3JpdGUgYW4gYXV4IGRyaXZlciBmb3IgdGhlIFRDUE0gcGFydC4KClNvcnJ5LMKgdGhl
IGNvbW1pdCBtZXNzYWdlc8KgbWF5wqBub3TCoGJlwqBkZXNjcmliZWTCoGFjY3VyYXRlbHnCoGVu
b3VnaC4KCgpUaGlzIHBhdGNoIGFkZHMgbXV4L3N3aXRjaCBvcGVyYXRpb25zIHRvIHRoZSBQSFkg
ZHJpdmVyIHRvIGltcHJvdmUgCmNvbW11bmljYXRpb24gd2l0aCB0aGUgVENQTSBmcmFtZXdvcmsu
IFNpbmNlIHRoaXMgUEhZIGlzIGEgY29tYm8gVVNCL0RQIApQSFksIGl0IHJlcXVpcmVzIGNvbmZp
Z3VyYXRpb24gY2hhbmdlcyB0byB0aGUgUEhZIGxhbmVzIGJhc2VkIG9uIHRoZSAKVVNCLUPCoCBw
bHVnIG9yaWVudGF0aW9uIChDQyBsb2dpYyksIHNpbWlsYXIgdG8gdGhlIGV4aXN0aW5nIGV4dGNv
biAKbWVjaGFuaXNtIGltcGxlbWVudGF0aW9uLiBPZiBjb3Vyc2UsIHRoZSBvcmlnaW5hbCBleHRj
b24gZnVuY3Rpb25hbGl0eSAKd2lsbCByZW1haW4gZnVsbHkgY29tcGF0aWJsZS4KCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
