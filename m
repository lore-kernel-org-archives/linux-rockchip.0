Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E56F5FED9E3
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Mar 2026 15:15:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qv0O9f/uuSH08iG/Lg/y+FXTLE4Rcx5wEFMh9UyFIGM=; b=r+iNNN6n0Sr1UD
	EYctPljOz/BgmOxtLUvYkO2KQ/8FRIp2qvIavW+53PRhcQLvIsVlGd4rXce4FVDionpj7rbZjgs9K
	0AE1q92VOgpvsvqHtA6YW0pgGF+D3Dcqqbx4LxpneNBV9U6A20N1QGL4NnR9lttFOYoWfK4792Q4N
	jqxi1MJUg5Lt7OS3o3lF0WTU9mk32u5tABXEmQmLXP1loS7oUc86ThgxuYc63DFUEwsf9mODXV2Ev
	pPcyie3pEQ0I507wpl0Y8NhzNMJx/lZHauN4PnOkIjSFTjjkMTuNax7oX7t0HmNDJ++mJ179MY2xW
	kReVvImCpuZKCNQYW8tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2W8I-00000006hpi-10D3;
	Tue, 17 Mar 2026 15:14:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2W8F-00000006hon-1aPx;
	Tue, 17 Mar 2026 15:14:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=4qqIO5Nq4HZXMqx40ONnhQAaxlGohVZ2byEsaKtpwVE=; b=aE6K6iBT+96RgF/AXkjeTIg7fI
	jlo6J/tjurPYMVRpNDnbGHBIADEYLG82kIiLADARaE4f7JgkQwuswrfvLaqqr7NtHHOCIZvJhIayv
	aWwdrfzo8wD+Qcs6NqgaPI/WOHwK89r1ko1FRqErJsJY9ZSMddQLK9hPC11feftENz+iQK3yPbQoS
	gaZfBJLzT8F7D+u5R84T+2tAFtTvO4XssjWwCxJcWkFoUQAChSJXhW0hcQSy2lVqQKzpuRaZVoVv8
	buG8FU/pxaTAE3L1mMLOx1xGWxBKJuB0jvcMfLSSPsRZB8OljdSHF9stY6s0LPCywIsQ2BZiCtQ6l
	CvCBrOLw==;
From: Heiko Stuebner <heiko@sntech.de>
To: "Rafael J. Wysocki" <rafael@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com, Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH] thermal/drivers/rockchip: Shut up eFuse prober defer warning
Date: Tue, 17 Mar 2026 16:14:45 +0100
Message-ID: <3330199.5fSG56mABF@phil>
In-Reply-To: <20260317-rockchip-thermal-trim-warning-v1-1-01bc4bda75e9@collabora.com>
References: <20260317-rockchip-thermal-trim-warning-v1-1-01bc4bda75e9@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_081455_475259_103DF7A3 
X-CRM114-Status: GOOD (  12.68  )
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

QW0gRGllbnN0YWcsIDE3LiBNw6RyeiAyMDI2LCAxNTozMTozMCBNaXR0ZWxldXJvcMOkaXNjaGUg
Tm9ybWFsemVpdCBzY2hyaWViIFNlYmFzdGlhbiBSZWljaGVsOgo+IFNodXQgdXAgdGhlIGZvbGxv
d2luZyBtZXNzYWdlIHByaW50ZWQgYXQgZXJyb3IgbGV2ZWwgb24gQXJtU29tIFNpZ2U1Ogo+IAo+
IHJvY2tjaGlwLXRoZXJtYWwgMmFlNzAwMDAudHNhZGM6IGZhaWxlZCByZWFkaW5nIHRyaW0gb2Yg
c2Vuc29yIDA6IC1FUFJPQkVfREVGRVIKPiAKPiBGaXhlczogYWUzMzJlYzAwMDlkICgidGhlcm1h
bC9kcml2ZXJzL3JvY2tjaGlwOiBTdXBwb3J0IHJlYWRpbmcgdHJpbSB2YWx1ZXMgZnJvbSBPVFAi
KQo+IFNpZ25lZC1vZmYtYnk6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBj
b2xsYWJvcmEuY29tPgoKUmV2aWV3ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2gu
ZGU+Cgo+IC0tLQo+ICBkcml2ZXJzL3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1hbC5jIHwgMyArLS0K
PiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1hbC5jIGIvZHJpdmVycy90
aGVybWFsL3JvY2tjaGlwX3RoZXJtYWwuYwo+IGluZGV4IGM0OWRkZjcwZjg2ZS4uMmE0MDMzOWRl
MGQwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVybWFsLmMKPiAr
KysgYi9kcml2ZXJzL3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1hbC5jCj4gQEAgLTE2MzgsOCArMTYz
OCw3IEBAIHJvY2tjaGlwX3RoZXJtYWxfcmVnaXN0ZXJfc2Vuc29yKHN0cnVjdCBwbGF0Zm9ybV9k
ZXZpY2UgKnBkZXYsCj4gIAlpZiAodHNhZGMtPmdldF90cmltX2NvZGUgJiYgc2Vuc29yLT5vZl9u
b2RlKSB7Cj4gIAkJZXJyb3IgPSByb2NrY2hpcF9nZXRfZWZ1c2VfdmFsdWUoc2Vuc29yLT5vZl9u
b2RlLCAidHJpbSIsICZ0cmltKTsKPiAgCQlpZiAoZXJyb3IgPCAwICYmIGVycm9yICE9IC1FTk9F
TlQpIHsKPiAtCQkJZGV2X2VycihkZXYsICJmYWlsZWQgcmVhZGluZyB0cmltIG9mIHNlbnNvciAl
ZDogJXBlXG4iLAo+IC0JCQkJaWQsIEVSUl9QVFIoZXJyb3IpKTsKPiArCQkJZGV2X2Vycl9wcm9i
ZShkZXYsIGVycm9yLCAiZmFpbGVkIHJlYWRpbmcgdHJpbSBvZiBzZW5zb3IgJWRcbiIsIGlkKTsK
PiAgCQkJcmV0dXJuIGVycm9yOwo+ICAJCX0KPiAgCQlpZiAodHJpbSkgewo+IAo+IC0tLQo+IGJh
c2UtY29tbWl0OiA2ZGUyM2Y4MWE1ZTA4YmU4ZmJmNWU4ZDdlOWZlYmM3MmE1YjVmMjdmCj4gY2hh
bmdlLWlkOiAyMDI2MDMxNy1yb2NrY2hpcC10aGVybWFsLXRyaW0td2FybmluZy1jZDAwNzJhYTJm
NDYKPiAKPiBCZXN0IHJlZ2FyZHMsCj4gCgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
