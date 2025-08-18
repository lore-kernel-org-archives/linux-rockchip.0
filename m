Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A5B2CA0ED1
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Aug 2025 19:18:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qx+z8+ZHY1ij4KlHnL+VsOZBjvdQxzyJ7JQnWNugV6I=; b=pyIXVMEJfUS4Dz
	oQLFRL/c280JDcPGYxGldImY9/schA1qDVLgYjp0VsDY7uL4cnDoNwR1snvYqtKWq/kykDieA8qy8
	LTa0F0ae6CM4UX9izzLoTwWLGKrlnD0Xma+MA1tIQ4iTjzwDYWGj5NFGZRG0kpkQcviF9LHtv2oY8
	xEn314yW8TjB/QAnRoS3kTIqwnUUOlpLhlmYfjHPs4zatGw+vtoCsOsT4NDBVxP2zZTGIkt41i76i
	XoniRyKRD13tuH7BSyDp9cKypToR/2MhFNWLjPhSDxJE4f8RQr+q3fN2T4pZt905lgF6Hy/CBwskr
	VdaFHtPmCsd5t/Z83rRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo5Mn-00000008UXG-0a4B;
	Mon, 18 Aug 2025 19:18:01 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo4qO-00000008OIE-1gZm;
	Mon, 18 Aug 2025 18:44:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=ubTyn2ugoz2/Rq288NzNSXVDl2tAW+oxgRy2HaQbf9M=; b=Kuhfz07MorWp4PpYWOL7VftqW3
	kPWgyELtaB1PJADPBexGvgKpFWJAjB9NSqmoY9lEjr/ulldNLSkZMDWbwN/ys/NhkWXtzctQYkM5d
	qi9dmeWfUm9UUfL8ZPKEWlrMl2MSIDqynWNMwVGU1ulHL+9zK4rP5/W2uGSEYipRh45UxzfSC2M3W
	P1WC6KTQln6tu8kKt9crOLps0HY4zkfBf53iO0c+RG12QWMwJo0JqIJHu62AQ5IGghbLxc3ZyjipZ
	E5SNbYPtwLeFrA73I+1N+f4+yBLvsafZaZidS1gPqyqJXSGblIgnQ0h5GeiQ/9zfq24JwH3xNtF+W
	5qymsxLQ==;
Received: from i53875ad4.versanet.de ([83.135.90.212] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uo4q8-0000eZ-KQ; Mon, 18 Aug 2025 20:44:16 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: "Rafael J. Wysocki" <rafael@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com, Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH] thermal: rockchip: shut up GRF warning
Date: Mon, 18 Aug 2025 20:44:15 +0200
Message-ID: <8402789.eFmWaWnqpD@diego>
In-Reply-To: <20250818-thermal-rockchip-grf-warning-v1-1-134152c97097@kernel.org>
References: <20250818-thermal-rockchip-grf-warning-v1-1-134152c97097@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_114432_461443_6725C284 
X-CRM114-Status: GOOD (  21.78  )
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

SGkgU2ViYXN0aWFuLAoKQW0gTW9udGFnLCAxOC4gQXVndXN0IDIwMjUsIDE5OjI2OjE1IE1pdHRl
bGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgU2ViYXN0aWFuIFJlaWNoZWw6Cj4gTW9z
dCBvZiB0aGUgcmVjZW50IFJvY2tjaGlwIGRldmljZXMgZG8gbm90IGhhdmUgYSBHUkYgYXNzb2Np
YXRlZAo+IHdpdGggdGhlIHRzYWRjIElQLiBMZXQncyBhdm9pZCBwcmludGluZyBhIHdhcm5pbmcg
b24gdGhvc2UgZGV2aWNlcy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBTZWJhc3RpYW4gUmVpY2hlbCA8
c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KCnRoYW5rcyBhIGxvdCBmb3IgdHJhY2tp
bmcgZG93biB0aGUgR1JGIHVzYWdlIGZvciBhbGwgdGhlIHNvYyB2YXJpYW50cyA6LSkKCj4gLS0t
Cj4gIGRyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVybWFsLmMgfCA1MyArKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKystLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNDYgaW5zZXJ0aW9u
cygrKSwgNyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy90aGVybWFsL3Jv
Y2tjaGlwX3RoZXJtYWwuYyBiL2RyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVybWFsLmMKPiBp
bmRleCAzYmVmZjliNmZhYzNhYmU4OTQ4YjU2MTMyYjYxOGZmMWJlZDU3MjE3Li4xZTgwOTFjZWJk
NjY3M2FiMzlmYTBjNGRlZTgzNWM2OGFlYjdlOGI1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvdGhl
cm1hbC9yb2NrY2hpcF90aGVybWFsLmMKPiArKysgYi9kcml2ZXJzL3RoZXJtYWwvcm9ja2NoaXBf
dGhlcm1hbC5jCj4gQEAgLTEwOTksNiArMTExNCw4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgcm9j
a2NoaXBfdHNhZGNfY2hpcCBweDMwX3RzYWRjX2RhdGEgPSB7Cj4gIAkuY2huX29mZnNldCA9IDAs
Cj4gIAkuY2huX251bSA9IDIsIC8qIDIgY2hhbm5lbHMgZm9yIHRzYWRjICovCj4gIAo+ICsJLmdy
Zl9tb2RlID0gR1JGX01BTkRBVE9SWSwKPiArCj4gIAkudHNodXRfbW9kZSA9IFRTSFVUX01PREVf
Q1JVLCAvKiBkZWZhdWx0IFRTSFVUIHZpYSBDUlUgKi8KPiAgCS50c2h1dF90ZW1wID0gOTUwMDAs
Cj4gIAo+IEBAIC0xMTIzLDYgKzExNDAsOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHJvY2tjaGlw
X3RzYWRjX2NoaXAgcnYxMTA4X3RzYWRjX2RhdGEgPSB7Cj4gIAkuY2huX29mZnNldCA9IDAsCj4g
IAkuY2huX251bSA9IDEsIC8qIG9uZSBjaGFubmVsIGZvciB0c2FkYyAqLwo+ICAKPiArCS5ncmZf
bW9kZSA9IEdSRl9OT05FLAo+ICsKCm5pdDogSSBndWVzcyBpbnN0ZWFkIG9mIGFkZGluZyBhbiBl
bXB0eSBsaW5lLCB5b3UgY291bGQgYWxzbyBqdXN0IGRyb3AKdGhlIGVtcHR5IGxpbmUgYWJvdmUs
IHRvIGJyaW5nIHRoZSAib2xkZXIiIHZhcmlhbnRzIGludG8gdGhlIGZvcm0KcmszNTc2IGFuZCBy
azM1ODggdXNlLgoKCj4gIAkudHNodXRfbW9kZSA9IFRTSFVUX01PREVfR1BJTywgLyogZGVmYXVs
dCBUU0hVVCB2aWEgR1BJTyBnaXZlIFBNSUMgKi8KPiAgCS50c2h1dF9wb2xhcml0eSA9IFRTSFVU
X0xPV19BQ1RJVkUsIC8qIGRlZmF1bHQgVFNIVVQgTE9XIEFDVElWRSAqLwo+ICAJLnRzaHV0X3Rl
bXAgPSA5NTAwMCwKClsuLi5dCgo+IEBAIC0xMzIxLDYgKzEzNTQsNyBAQCBzdGF0aWMgY29uc3Qg
c3RydWN0IHJvY2tjaGlwX3RzYWRjX2NoaXAgcmszNTc2X3RzYWRjX2RhdGEgPSB7Cj4gIAkvKiB0
b3AsIGJpZ19jb3JlLCBsaXR0bGVfY29yZSwgZGRyLCBucHUsIGdwdSAqLwo+ICAJLmNobl9vZmZz
ZXQgPSAwLAo+ICAJLmNobl9udW0gPSA2LCAvKiBzaXggY2hhbm5lbHMgZm9yIHRzYWRjICovCj4g
KwkuZ3JmX21vZGUgPSBHUkZfTk9ORSwKPiAgCS50c2h1dF9tb2RlID0gVFNIVVRfTU9ERV9HUElP
LCAvKiBkZWZhdWx0IFRTSFVUIHZpYSBHUElPIGdpdmUgUE1JQyAqLwo+ICAJLnRzaHV0X3BvbGFy
aXR5ID0gVFNIVVRfTE9XX0FDVElWRSwgLyogZGVmYXVsdCBUU0hVVCBMT1cgQUNUSVZFICovCj4g
IAkudHNodXRfdGVtcCA9IDk1MDAwLAo+IEBAIC0xMzQ1LDYgKzEzNzksNyBAQCBzdGF0aWMgY29u
c3Qgc3RydWN0IHJvY2tjaGlwX3RzYWRjX2NoaXAgcmszNTg4X3RzYWRjX2RhdGEgPSB7Cj4gIAkv
KiB0b3AsIGJpZ19jb3JlMCwgYmlnX2NvcmUxLCBsaXR0bGVfY29yZSwgY2VudGVyLCBncHUsIG5w
dSAqLwo+ICAJLmNobl9vZmZzZXQgPSAwLAo+ICAJLmNobl9udW0gPSA3LCAvKiBzZXZlbiBjaGFu
bmVscyBmb3IgdHNhZGMgKi8KPiArCS5ncmZfbW9kZSA9IEdSRl9OT05FLAo+ICAJLnRzaHV0X21v
ZGUgPSBUU0hVVF9NT0RFX0dQSU8sIC8qIGRlZmF1bHQgVFNIVVQgdmlhIEdQSU8gZ2l2ZSBQTUlD
ICovCj4gIAkudHNodXRfcG9sYXJpdHkgPSBUU0hVVF9MT1dfQUNUSVZFLCAvKiBkZWZhdWx0IFRT
SFVUIExPVyBBQ1RJVkUgKi8KPiAgCS50c2h1dF90ZW1wID0gOTUwMDAsCgpbLi4uXQoKPiBAQCAt
MTYyMSwxMiArMTY1NiwxNiBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX2NvbmZpZ3VyZV9mcm9tX2R0
KHN0cnVjdCBkZXZpY2UgKmRldiwKPiAgCQlyZXR1cm4gLUVJTlZBTDsKPiAgCX0KPiAgCj4gLQkv
KiBUaGUgdHNhZGMgd29udCB0byBoYW5kbGUgdGhlIGVycm9yIGluIGhlcmUgc2luY2Ugc29tZSBT
b0NzIGRpZG4ndAo+IC0JICogbmVlZCB0aGlzIHByb3BlcnR5Lgo+IC0JICovCj4gLQl0aGVybWFs
LT5ncmYgPSBzeXNjb25fcmVnbWFwX2xvb2t1cF9ieV9waGFuZGxlKG5wLCAicm9ja2NoaXAsZ3Jm
Iik7Cj4gLQlpZiAoSVNfRVJSKHRoZXJtYWwtPmdyZikpCj4gLQkJZGV2X3dhcm4oZGV2LCAiTWlz
c2luZyByb2NrY2hpcCxncmYgcHJvcGVydHlcbiIpOwo+ICsJaWYgKHRoZXJtYWwtPmNoaXAtPmdy
Zl9tb2RlICE9IEdSRl9OT05FKSB7Cj4gKwkJdGhlcm1hbC0+Z3JmID0gc3lzY29uX3JlZ21hcF9s
b29rdXBfYnlfcGhhbmRsZShucCwgInJvY2tjaGlwLGdyZiIpOwo+ICsJCWlmIChJU19FUlIodGhl
cm1hbC0+Z3JmKSkgewo+ICsJCQlyZXQgPSBQVFJfRVJSKHRoZXJtYWwtPmdyZik7Cj4gKwkJCWlm
ICh0aGVybWFsLT5jaGlwLT5ncmZfbW9kZSA9PSBHUkZfT1BUSU9OQUwpCj4gKwkJCQlkZXZfd2Fy
bihkZXYsICJNaXNzaW5nIHJvY2tjaGlwLGdyZiBwcm9wZXJ0eVxuIik7CgpJIGd1ZXNzIGl0IG1p
Z2h0IG1ha2UgaXQgZWFzaWVyIGZvciBwZW9wbGUgc2VlaW5nIHRoZSBsb2csIGlmIHdlIGNvdWxk
Cmluc2VydCBhbiAib3B0aW9uYWwiIGludG8gdGhhdCBtZXNzYWdlIGZvciB0aGUgb3B0aW9uYWwg
dGllci4KCj4gKwkJCWVsc2UKPiArCQkJCXJldHVybiBkZXZfZXJyX3Byb2JlKGRldiwgcmV0LCAi
TWlzc2luZyByb2NrY2hpcCxncmYgcHJvcGVydHlcbiIpOwo+ICsJCX0KPiArCX0KPiAgCj4gIAly
b2NrY2hpcF9nZXRfdHJpbV9jb25maWd1cmF0aW9uKGRldiwgbnAsIHRoZXJtYWwpOwoKT3ZlcmFs
bCwgdGhvdWdoCgpSZXZpZXdlZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4K
CgpUaGFua3MKSGVpa28KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
