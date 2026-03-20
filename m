Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F4A71098782
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Mar 2026 12:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wBrxxNfhGmqGsRQbx+zZtK+Mhd4RiPhMkuIEVp91nRc=; b=SApOVOG4cFQo6B
	NTEkLiWUaixOyyyGA7r9o6kyC3+U8Ud3c+mGyHWf6L8wO/FokJxWNUs9iqEa7Li37R0C+GtKolEbN
	oAA2bPyT7ZpQ8TLAYkKCOSLP3sarsytxlBNdWhbOHW0R2ZNlLSgE7JTpWiGSXHb/Alafpqif6o71w
	AhATySutpb/2SwCR3/Q+ylA5JgjyrdnwaNQTeeRBOQ2V6qaLe49J1GK2GOGFk+OxgzSH1UDeCLnvY
	CP4Q0EC45EVu2z/wDm/vHV5wJLzrJYMwdVV6mWhJqUmGrrZXec3REv3bPpPnc8BqxNuMAjlZK7rke
	K2AtSACwvODC2xyL/oog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3ZQI-0000000Coam-0yuY;
	Fri, 20 Mar 2026 12:57:54 +0000
Received: from out-181.mta1.migadu.com ([95.215.58.181])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3ZQE-0000000CoaR-3H7T
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Mar 2026 12:57:53 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1774011466;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=DTsp2XW7wj8AeraB2bdtGa6sWhS0eh6HCGUmbr1Z3Hg=;
	b=I23Nrsv7n9CG6QyZnWIelYpUToQU7tThVXWL3lQKQNnFG7/v5sb4B30zbwa091zmiDGc1z
	EofL2MeGVcOB7Z4b0cXZFVG0f9gpSzxRQldF+yHQyD/qcYl6yVfQkz0r7ufYHUIFDXrcca
	DxdM6f1OGj5iAXQ7XjkE3NX7mqnQKVS63jxJBJF6G9dt3w1ffEarodAZFgcpa8TInJbFhJ
	/OsyJEBvzISEwjysvjEMVFRSjOVyY8xfA81jkzx2C/NuEPszr0+hx4ijqJDYOKCHvGIpg0
	upaahMY2B4hJ8kAkR9VrfihFqaKOLWU+U4xvK6Cqqzp3+dkYm1hE790CnSsJ3A==
Date: Fri, 20 Mar 2026 13:57:38 +0100
Message-Id: <DH7MKT7D08MW.3P75EWC69NPZF@cknow-tech.com>
Cc: "Marius Dinu" <m95d+git@psihoexpert.ro>,
 <linux-rockchip@lists.infradead.org>, "Andy Yan" <andyshrk@163.com>
Subject: Re: [PATCH v2] drm: rockchip-dw-dp: add missing dependency on
 bridge_connector
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Marius Dinu" <marius@psihoexpert.ro>
References: <20260319155051.1944-1-m95d+git@psihoexpert.ro>
 <DH6YBGOJGS8F.1KVA57WLCE235@cknow-tech.com> <abzz234Esd/b5ZHI@GRAPHRT>
In-Reply-To: <abzz234Esd/b5ZHI@GRAPHRT>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260320_055751_419531_65B431E4 
X-CRM114-Status: GOOD (  13.12  )
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

T24gRnJpIE1hciAyMCwgMjAyNiBhdCA4OjE0IEFNIENFVCwgTWFyaXVzIERpbnUgd3JvdGU6Cj4g
T24gVGh1LCAyMDI2LTAzLTE5IDE4LjU2LjU5ICsrMDEwMCwgRGllZGVyaWsgZGUgSGFhcyB3cm90
ZToKPj4gT24gVGh1IE1hciAxOSwgMjAyNiBhdCA0OjUwIFBNIENFVCwgTWFyaXVzIERpbnUgd3Jv
dGU6Cj4+ID4gQXZvaWRzIHRoaXMgZXJyb3I6Cj4+ID4gICBsZDogZHJpdmVycy9ncHUvZHJtL3Jv
Y2tjaGlwL2R3X2RwLXJvY2tjaGlwLm86IGluIGZ1bmN0aW9uIGBkd19kcF9yb2NrY2hpcF9iaW5k
JzoKPj4gPiAgIC91c3Ivc3JjL2xpbnV4L2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kd19kcC1y
b2NrY2hpcC5jOjEwODooLnRleHQrMHgxODgpOiB1bmRlZmluZWQgcmVmZXJlbmNlIHRvIGBkcm1f
YnJpZGdlX2Nvbm5lY3Rvcl9pbml0Jwo+PiA+Cj4+ID4gU2lnbmVkLW9mZi1ieTogTWFyaXVzIERp
bnUgPG05NWQrZ2l0QHBzaWhvZXhwZXJ0LnJvPgo+PiA+IC0tLQo+PiA+ICBkcml2ZXJzL2dwdS9k
cm0vcm9ja2NoaXAvS2NvbmZpZyB8IDEgKwo+PiAKPj4gJCBzY3JpcHRzL2dldF9tYWludGFpbmVy
LnBsIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9LY29uZmlnCj4+IFNhbmR5IEh1YW5nIDxoamNA
cm9jay1jaGlwcy5jb20+IChtYWludGFpbmVyOkRSTSBEUklWRVJTIEZPUiBST0NLQ0hJUCkKPj4g
IkhlaWtvIFN0w7xibmVyIiA8aGVpa29Ac250ZWNoLmRlPiAobWFpbnRhaW5lcjpEUk0gRFJJVkVS
UyBGT1IgUk9DS0NISVApCj4+IEFuZHkgWWFuIDxhbmR5LnlhbkByb2NrLWNoaXBzLmNvbT4gKG1h
aW50YWluZXI6RFJNIERSSVZFUlMgRk9SIFJPQ0tDSElQKQo+PiBNYWFydGVuIExhbmtob3JzdCA8
bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPiAobWFpbnRhaW5lcjpEUk0gRFJJVkVS
UyBBTkQgTUlTQyBHUFUgUEFUQ0hFUykKPj4gTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwu
b3JnPiAobWFpbnRhaW5lcjpEUk0gRFJJVkVSUyBBTkQgTUlTQyBHUFUgUEFUQ0hFUykKPj4gVGhv
bWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+IChtYWludGFpbmVyOkRSTSBEUklW
RVJTIEFORCBNSVNDIEdQVSBQQVRDSEVTKQo+PiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAZ21haWwu
Y29tPiAobWFpbnRhaW5lcjpEUk0gRFJJVkVSUykKPj4gU2ltb25hIFZldHRlciA8c2ltb25hQGZm
d2xsLmNoPiAobWFpbnRhaW5lcjpEUk0gRFJJVkVSUykKPj4gZHJpLWRldmVsQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZyAob3BlbiBsaXN0OkRSTSBEUklWRVJTIEZPUiBST0NLQ0hJUCkKPj4gbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnIChtb2RlcmF0ZWQgbGlzdDpBUk0vUm9ja2No
aXAgU29DIHN1cHBvcnQpCj4+IGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcgKG9w
ZW4gbGlzdDpBUk0vUm9ja2NoaXAgU29DIHN1cHBvcnQpCj4+IGxpbnV4LWtlcm5lbEB2Z2VyLmtl
cm5lbC5vcmcgKG9wZW4gbGlzdCkKPj4gCj4+IEknbSBtaXNzaW5nIHF1aXRlIGEgZmV3IG9mIHRo
ZXNlIC4uLgo+Cj4gSSBkb24ndCB1bmRlcnN0YW5kLiBJIHNob3VsZCBjYyBhbGwgdGhvc2UgYWRk
cmVzZXM/IEFsbCBvZiB0aGVtPyA6bwoKSSB1c3VhbGx5ICdUbycgdGhlIG1haW50YWluZXJzIGFu
ZCAnQ2MnIHRoZSByZXN0LiBTZWUgYWxzbwpodHRwczovL3d3dy5rZXJuZWwub3JnL2RvYy9odG1s
L2xhdGVzdC9wcm9jZXNzL3N1Ym1pdHRpbmctcGF0Y2hlcy5odG1sI3NlbGVjdC10aGUtcmVjaXBp
ZW50cy1mb3IteW91ci1wYXRjaAoKSFRILAogIERpZWRlcmlrCgo+PiA+ICAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKykKPj4gPgo+PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
cm9ja2NoaXAvS2NvbmZpZyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9LY29uZmlnCj4+ID4g
aW5kZXggMTQ3OWI4YzRlZDQwLi4zOWNkMzgzNzVlOGEgMTAwNjQ0Cj4+ID4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL3JvY2tjaGlwL0tjb25maWcKPj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9j
a2NoaXAvS2NvbmZpZwo+PiA+IEBAIC02Nyw2ICs2Nyw3IEBAIGNvbmZpZyBST0NLQ0hJUF9DRE5f
RFAKPj4gPiAgCj4+ID4gIGNvbmZpZyBST0NLQ0hJUF9EV19EUAo+PiA+ICAJYm9vbCAiUm9ja2No
aXAgc3BlY2lmaWMgZXh0ZW5zaW9ucyBmb3IgU3lub3BzeXMgRFcgRFAiCj4+ID4gKwlzZWxlY3Qg
RFJNX0JSSURHRV9DT05ORUNUT1IKPj4gPiAgCWhlbHAKPj4gPiAgCSAgVGhpcyBzZWxlY3RzIHN1
cHBvcnQgZm9yIFJvY2tjaGlwIFNvQyBzcGVjaWZpYyBleHRlbnNpb25zCj4+ID4gIAkgIHRvIGVu
YWJsZSBTeW5vcHN5cyBEZXNpZ25XYXJlIENvcmVzIGJhc2VkIERpc3BsYXlQb3J0IHRyYW5zbWl0
Cj4+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
