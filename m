Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1296ACCF2D4
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Oct 2026 03:19:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8+b/Kv6nqysMvjJwhijVBx88VS7wDEsDvWQa6ShiPrw=; b=PCayRBJ3fZYNcg
	kDPGXFOQ3KZHPlrx4SNC3ouTbe4YboGkWKuKaibJcL3VoPuj90FTcHPOxvDm0oejRXZgHBYaanLFU
	WR4gEg6ytJVK2ACet2NKXdo7YqIJhrkOa8x282hu/raleCH2Fx89F8eUg+GshWR2Xm7HImrAn84ng
	E6tISqS3wvXnGA2hrj1rcaMwHD+m8B6bHfsvM6BIgtMzXoPjzXnoIF5e8H67FbHFfWZQ6Vk/Hqnof
	onoUr/+yRX79xzXqHbtGinWp7JCSmjknOC25pkRfXOi27c6hwHb7b5WLEUemOnu3qw4lvyAU7HQPx
	JwyINSA/0KEdvZ8Mz6kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIduW-00000006Vy0-2JuH;
	Mon, 19 Oct 2026 03:19:40 +0000
Received: from mail-m1061.netease.com ([154.81.10.61])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIduS-00000006Vwv-0tka;
	Mon, 19 Oct 2026 03:19:38 +0000
Received: from [127.0.0.1] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 517ccec8a;
	Mon, 19 Oct 2026 11:19:24 +0800 (GMT+08:00)
Message-ID: <039f91a1-7944-4092-9f9c-29b60e8fb17a@rock-chips.com>
Date: Mon, 19 Oct 2026 11:19:14 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 6/6] drm/rockchip: dw_hdmi_qp: Advertise BT.709 and
 BT.2020 colorimetries
To: =?UTF-8?Q?Jan_Clau=C3=9Fen?= <jan.claussen10@web.de>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
References: <20261018123037.19560-1-jan.claussen10@web.de>
 <20261018123037.19560-7-jan.claussen10@web.de>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <20261018123037.19560-7-jan.claussen10@web.de>
X-HM-Tid: 0aa1522bcbba03a7kunm2ba821ca621edd
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDTR9KVhkaGExPSRkdSxhJT1YVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=X8qrc33bAdqlCUhSSbAnZ7Rg0xsGeQmWcCbJS176oyZkg2wZzy/HQVrpMmR7d7krcZ8mgQDMHVWnffVtLTJOO/maaoxdKbG7QGGk9gvw5pkv9W6qA8geJFC97doHHcDT4cxXOMCS8Cwt/F6Ozb2vYl+RaJa1xkjdhBwCavmCljM=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=bQMCpVw1uFP1boBJUVC1GNNS3Uq4o6Be3+8+DlETUU0=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261018_201936_875529_62DF3835 
X-CRM114-Status: GOOD (  15.01  )
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
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgSmFuLAoKT24gMTAvMTgvMjAyNiA4OjMwIFBNLCBKYW4gQ2xhdcOfZW4gd3JvdGU6Cj4gRXhw
b3NlIEJULjIwMjAgUkdCIGFuZCBZQ0MgY29sb3JpbWV0cnkgc28gdXNlcnNwYWNlIGNhbiBlbmFi
bGUgSERSCj4gb3V0cHV0LiBBbHNvIGV4cGxpY2l0bHkgZXhwb3NlIEJULjcwOSBZQ0MgYXMgaXQg
aXMgbGlzdGVkIGluIHRoZQo+IFJvY2tjaGlwIFJLMzU4OCBUUk0gVjEuMC1QYXJ0MiAyMDIyMDMw
OSBkYXRhIHNoZWV0Lgo+IAo+IFRlc3RlZCBvbiBhIFJhZHhhIFJvY2sgNUIgKFJLMzU4OCkgd2l0
aCBhbiBMRyBPTEVENTVCODdMQyBpbiBLREUKPiBQbGFzbWEgNi43LjU6IGVuYWJsaW5nIEhEUiBz
d2l0Y2hlcyB0aGUgY29sb3JzcGFjZSB0byBCVC4yMDIwLCBhbmQKPiBkaXNhYmxpbmcgaXQgcmVz
dG9yZXMgdGhlIGRlZmF1bHQuCj4gCj4gU2lnbmVkLW9mZi1ieTogSmFuIENsYXXDn2VuIDxqYW4u
Y2xhdXNzZW4xMEB3ZWIuZGU+Cj4gLS0tCj4gCj4gTm90IHN1cmUgaWYgQlQuNzA5IG5lZWRzIHRv
IGJlIGV4cGxpY2l0bHkgZXhwb3NlZCBoZXJlLCBidXQgaXQgaXMgbWVudGlvbmVkIGluIHRoZSBk
YXRhIHNoZWV0Lgo+IE1pZ2h0IGJlIGNvdmVyZWQgYnkgRFJNX01PREVfQ09MT1JJTUVUUllfREVG
QVVMVCB0aG91Z2guCgpDYzogQ3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlzdGlhbi5jaW9jYWx0ZWFA
Y29sbGFib3JhLmNvbT4KCkhpIENyaXN0aWFuLCBtYXkgYmUgeW91IHdvdWxkIGJlIGludGVyZXN0
ZWQgaW4gdGhpcyBzZXJpZXM/CgoiREVGQVVMVCIgbWF5IHJlZmVyIHRvIGVpdGhlciBCVC42MDEg
b3IgQlQuNzA5LiBJdCBzaG91bGQgc3VwcG9ydCB0aGUKZm9sbG93aW5nIGNvbG9yIHNwYWNlczoK
CiNkZWZpbmUgSERNSV9DT0xPUlNQQUNFX0NBUFNfVjEJCShEUk1fTU9ERV9DT0xPUklNRVRSWV9E
RUZBVUxUIHwgXAoJCQkJCURSTV9NT0RFX0NPTE9SSU1FVFJZX1NNUFRFXzE3ME1fWUNDIHwgXAoJ
CQkJCURSTV9NT0RFX0NPTE9SSU1FVFJZX0JUNzA5X1lDQyB8IFwKCQkJCQlEUk1fTU9ERV9DT0xP
UklNRVRSWV9CVDIwMjBfUkdCKQoKI2RlZmluZSBIRE1JX0NPTE9SU1BBQ0VfQ0FQU19WMgkJKEhE
TUlfQ09MT1JTUEFDRV9DQVBTX1YxIHwgXAoJCQkJCURSTV9NT0RFX0NPTE9SSU1FVFJZX0RDSV9Q
M19SR0JfRDY1KQoKPiAKPiBCVC43MDkvQlQuMjAyMCBZQ0MgYXJlIHVudGVzdGVkLgo+IAo+ICBk
cml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRtaV9xcC1yb2NrY2hpcC5jIHwgNCArKysrCj4g
IDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL3JvY2tjaGlwL2R3X2hkbWlfcXAtcm9ja2NoaXAuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9yb2NrY2hpcC9kd19oZG1pX3FwLXJvY2tjaGlwLmMKPiBpbmRleCA5YzRjZjY4ZDc5ZDUuLmRi
Yjg3ZGZkMDAwYyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRt
aV9xcC1yb2NrY2hpcC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3X2hkbWlf
cXAtcm9ja2NoaXAuYwo+IEBAIC02MDUsNiArNjA1LDEwIEBAIHN0YXRpYyBpbnQgZHdfaGRtaV9x
cF9yb2NrY2hpcF9iaW5kKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGRldmljZSAqbWFzdGVy
LAo+ICAJCQkJICAgICAgQklUKERSTV9PVVRQVVRfQ09MT1JfRk9STUFUX1lDQkNSNDQ0KSB8Cj4g
IAkJCQkgICAgICBCSVQoRFJNX09VVFBVVF9DT0xPUl9GT1JNQVRfWUNCQ1I0MjIpOwo+ICAKPiAr
CXBsYXRfZGF0YS5zdXBwb3J0ZWRfY29sb3JzcGFjZXMgPSBCSVQoRFJNX01PREVfQ09MT1JJTUVU
UllfQlQ3MDlfWUNDKSB8Cj4gKwkJCQkgICAgICBCSVQoRFJNX01PREVfQ09MT1JJTUVUUllfQlQy
MDIwX1JHQikgfAo+ICsJCQkJICAgICAgQklUKERSTV9NT0RFX0NPTE9SSU1FVFJZX0JUMjAyMF9Z
Q0MpOwo+ICsKPiAgCWVuY29kZXIgPSAmaGRtaS0+ZW5jb2Rlci5lbmNvZGVyOwo+ICAJZW5jb2Rl
ci0+cG9zc2libGVfY3J0Y3MgPSBkcm1fb2ZfZmluZF9wb3NzaWJsZV9jcnRjcyhkcm0sIGRldi0+
b2Zfbm9kZSk7Cj4gIAoKLS0gCkJlc3QsIApDaGFveWkKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
