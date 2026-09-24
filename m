Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 033CCC982FD
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Sep 2026 03:55:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+l6bAguCUWIsAZTuAYCR9QoaeOCB1Gj0I+k5Gf5GnWc=; b=ivAUiIqjwg0pDu
	OKrG8iMVPmkBmoGD/zo34u8dxVrAWgw/ZOLUNFdSpW6DYxuOdMEGUY0idamHM3zDeqkTBZFzbhNWo
	L8UyblVau8JiT8ByxEYB5T4INPNMyZwmpR7NhCEG8Hb/LqUFKxk0BgAr06650bh+jOZRj+a+3plvg
	U9+yAohD3lT/l7FVgN+bRSR4IJ33STxIwN80k8jOFoUihHf2dma0PDHCn5w/2vQJzsoEYnM9cwOrl
	JF2OwYUqbeknBTVDpN6hBwPoOr8SRgVmUIyzAUGHVuSx4OytDTYp3O4rujVYKf6LlC4+9ZfeCRrJw
	bV2hYVSNwfCpfLK90Q8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9aYc-00000009yeI-19ek;
	Thu, 24 Sep 2026 03:55:38 +0000
Received: from mail-m49201.qiye.163.com ([45.254.49.201])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9aYY-00000009ydk-3R3S;
	Thu, 24 Sep 2026 03:55:36 +0000
Received: from [172.16.12.74] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4ef67db11;
	Thu, 24 Sep 2026 11:40:27 +0800 (GMT+08:00)
Message-ID: <a0754d11-d88b-4dda-972f-7c696a037bc2@rock-chips.com>
Date: Thu, 24 Sep 2026 11:40:26 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RSEND] drm/bridge: analogix_dp: use
 devm_phy_optional_get() for the DP PHY
From: Damon Ding <damon.ding@rock-chips.com>
To: Jun Yan <jerrysteve1101@gmail.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Heiko Stuebner <heiko@sntech.de>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20260924020417.868588-1-jerrysteve1101@gmail.com>
 <0ef54850-6919-4a29-a8df-586a3dc2de5f@rock-chips.com>
Content-Language: en-US
In-Reply-To: <0ef54850-6919-4a29-a8df-586a3dc2de5f@rock-chips.com>
X-HM-Tid: 0aa0d180169903a8kunm9636794c1822a2
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkaGUkZVkhPTBlCHRlMHRpMGVYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=R2qke+wv6KNzNLcVu0eEdHjxQszzsXDF9ACD9mTV4CxZ/ZXKWIwxNzTQqOiNNDQPFP0gCf6xZfuh0PqcHz/aMcGhDQV2s/5XbqC2H/LAfUL4btsNm1hSbcTqzUD7AsjLvtKdpEJoKLEjEHei693VjiYmqfUaLeEoYwqWUV1/7v4=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=FzcMe83hf5C3AZ1U0/2gbxcveYRvl8Cs0W878bkhmyk=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_205535_401850_12455C14 
X-CRM114-Status: GOOD (  21.04  )
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

T24gOS8yNC8yMDI2IDExOjI0IEFNLCBEYW1vbiBEaW5nIHdyb3RlOgo+IEhpIEp1biwKPiAKPiBP
biA5LzI0LzIwMjYgMTA6MDQgQU0sIEp1biBZYW4gd3JvdGU6Cj4+IFRoZSBEUCBQSFkgaXMgb3B0
aW9uYWw6IHRoZSBSb2NrY2hpcCBSSzMzOTkgZURQIGNvbnRyb2xsZXIgKHVzZWQgYXMgdGhlCj4+
IGludGVybmFsIGVEUCBwb3J0KSBoYXMgbm8gc2VwYXJhdGUgUEhZIGRldmljZSBhbmQgcmVsaWVz
IG9uIGl0cyBidWlsdC1pbgo+PiBQSFksIHdoaWNoIGlzIHByb2dyYW1tZWQgZGlyZWN0bHkgdGhy
b3VnaCB0aGUgR1JGIHJlZ2lzdGVycywgc28gaXRzIERUCj4+IG5vZGUgY2FycmllcyBubyAicGh5
cyIvInBoeS1uYW1lcyIgcHJvcGVydHkuCj4+Cj4+IFJlcXVlc3RpbmcgdGhlIFBIWSB3aXRoIGRl
dm1fcGh5X2dldCgpIHRoZXJlZm9yZSByZXR1cm5zIC1FTk9ERVYgKG9yCj4+IC1FTk9TWVMgd2hl
biBDT05GSUdfR0VORVJJQ19QSFkgaXMgZGlzYWJsZWQpIGFuZCB0aGUgZHJpdmVyIGxvZ3MgYQo+
PiBtaXNsZWFkaW5nICJubyBEUCBwaHkgY29uZmlndXJlZCIgZXJyb3IgYXQgcHJvYmUgdGltZSBi
ZWZvcmUgZmFsbGluZyBiYWNrCj4+IHRvIGEgTlVMTCBwaHkuCj4+Cj4+IFVzZSBkZXZtX3BoeV9v
cHRpb25hbF9nZXQoKSBpbnN0ZWFkLCB3aGljaCByZXR1cm5zIE5VTEwgd2hlbiB0aGUgUEhZIGlz
Cj4+IGFic2VudCBhbmQgb3RoZXJ3aXNlIGJlaGF2ZXMgaWRlbnRpY2FsbHksIGFuZCBkcm9wIHRo
ZSBtYW51YWwgLUVOT0RFVi8KPj4gLUVOT1NZUyBoYW5kbGluZy4gVGhpcyBhbHNvIHJlbW92ZXMg
dGhlIHNwdXJpb3VzIGVycm9yIG1lc3NhZ2UuCj4+Cj4+IEFzc2lzdGVkLWJ5OiBDbGF1ZGU6ZGVl
cHNlZWstdjQtZmxhc2gKPj4gU2lnbmVkLW9mZi1ieTogSnVuIFlhbiA8amVycnlzdGV2ZTExMDFA
Z21haWwuY29tPgo+PiAtLS0KPj4gwqAgLi4uL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4L2FuYWxv
Z2l4X2RwX2NvcmUuYyB8IDE4ICsrKy0tLS0tLS0tLS0tLS0tLQo+PiDCoCAxIGZpbGUgY2hhbmdl
ZCwgMyBpbnNlcnRpb25zKCspLCAxNSBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9naXhfZHBfY29yZS5jIGIvIAo+PiBk
cml2ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4L2FuYWxvZ2l4X2RwX2NvcmUuYwo+PiBpbmRl
eCAxOGU3NmQxZTc4ZTEuLjI4ZWI2NjhkM2UzZiAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeF9kcF9jb3JlLmMKPj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeF9kcF9jb3JlLmMKPj4gQEAgLTE0MjcsMjEg
KzE0MjcsOSBAQCBhbmFsb2dpeF9kcF9wcm9iZShzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCAK
Pj4gYW5hbG9naXhfZHBfcGxhdF9kYXRhICpwbGF0X2RhdGEpCj4+IMKgwqDCoMKgwqAgaWYgKHJl
dCkKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiBFUlJfUFRSKHJldCk7Cj4+IC3CoMKgwqAg
ZHAtPnBoeSA9IGRldm1fcGh5X2dldChkcC0+ZGV2LCAiZHAiKTsKPj4gLcKgwqDCoCBpZiAoSVNf
RVJSKGRwLT5waHkpKSB7Cj4+IC3CoMKgwqDCoMKgwqDCoCBkZXZfZXJyKGRwLT5kZXYsICJubyBE
UCBwaHkgY29uZmlndXJlZFxuIik7Cj4+IC3CoMKgwqDCoMKgwqDCoCByZXQgPSBQVFJfRVJSKGRw
LT5waHkpOwo+PiAtwqDCoMKgwqDCoMKgwqAgaWYgKHJldCkgewo+PiAtwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCAvKgo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICogcGh5IGl0c2VsZiBpcyBu
b3QgZW5hYmxlZCwgc28gd2UgY2FuIG1vdmUgZm9yd2FyZAo+PiAtwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgICogYXNzaWduaW5nIE5VTEwgdG8gcGh5IHBvaW50ZXIuCj4+IC3CoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgKi8KPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKHJldCA9PSAtRU5P
U1lTIHx8IHJldCA9PSAtRU5PREVWKQo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IGRwLT5waHkgPSBOVUxMOwo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlbHNlCj4+IC3CoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIEVSUl9QVFIocmV0KTsKPj4gLcKgwqDC
oMKgwqDCoMKgIH0KPj4gLcKgwqDCoCB9Cj4gCj4gSXQgc2hvdWxkIGJlIGJldHRlciB0byBhZGQg
c29tZSBjb21tZW50cyBoZXJlOgo+IAo+IC8qCj4gIMKgKiBFeHlub3M1L1JLMzI4OC9SSzMzOTkg
dXNlIEFuYWxvZ2l4IERQIGNvbnRyb2xsZXIgYnVpbHQtaW4gUEhZLAo+ICDCoCogbm8gc2VwYXJh
dGUgUEhZIGNvbmZpZ3VyYXRpb24gaXMgbmVlZGVkLgo+ICDCoCovCgpXZWxsLCBJIHRoaW5rIGl0
IHNob3VsZCBiZSBmaXhlZCB0bzoKCi8qCiAgKiBSSzMyODgvUkszMzk5IHVzZSBBbmFsb2dpeCBE
UCBjb250cm9sbGVyIGJ1aWx0LWluIFBIWSwKICAqIG5vIGV4dHJhIFBIWSBjb25maWd1cmF0aW9u
IGlzIHJlcXVpcmVkLgogICovCgpUaGUgRXh5bm9zNXh4eCBjYXNlIG1heSBiZSBtb3JlIGNvbXBs
ZXguCgo+IAo+PiArwqDCoMKgIGRwLT5waHkgPSBkZXZtX3BoeV9vcHRpb25hbF9nZXQoZHAtPmRl
diwgImRwIik7Cj4+ICvCoMKgwqAgaWYgKElTX0VSUihkcC0+cGh5KSkKPj4gK8KgwqDCoMKgwqDC
oMKgIHJldHVybiBFUlJfQ0FTVChkcC0+cGh5KTsKPj4gwqDCoMKgwqDCoCBkcC0+Y2xvY2sgPSBk
ZXZtX2Nsa19nZXQoJnBkZXYtPmRldiwgImRwIik7Cj4+IMKgwqDCoMKgwqAgaWYgKElTX0VSUihk
cC0+Y2xvY2spKSB7Cj4gCj4gV2l0aCB0aGUgY29tbWVudCBhZGRlZDoKPiBSZXZpZXdlZC1ieTog
RGFtb24gRGluZyA8ZGFtb24uZGluZ0Byb2NrLWNoaXBzLmNvbT4KPiAKPiBCZXN0IHJlZ2FyZHMs
Cj4gRGFtb24KPiAKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
