Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25B7FCF8549
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Oct 2024 00:18:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FrX3GgMYl0NGOEDvRgKr9nY6p/JJ9BQFKV247yaM55Y=; b=4SR5EbfGR1eMfZ
	sTMbITv0kLvF33+2JjKFxMy4F2C2TtIib3aan07RbVCyGcNIRlEXUMaPmUGr5AvIpfAWicr2qWP28
	tM83d/rA3MVRle3Pecf/JVdLvDvBEprxv7ILxfvet4SOt6StweWzg94tlFfRIfIBNkqM3OoLawwxb
	kqeHOQpCX1REQDHdQrjrjIzbUfdsXqsladOBAA8KzZWy9cZ3+btSDuX1nWNnDIW8+6d0o7p1V/LIE
	nbpVPPl9KSX8unCa/2i69H5qJ7yJOXsEo4BCjgMmfkC/vTeJHglYGvXo5YRwFR6OqO3g6jm1+i6yw
	mvp24FTI0xSoaQsBpKNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sw9Xu-00000007qnS-27BV;
	Thu, 03 Oct 2024 00:18:18 +0000
Received: from mgamail.intel.com ([198.175.65.12])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sw9We-00000007qZO-1eOb;
	Thu, 03 Oct 2024 00:17:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1727914620; x=1759450620;
  h=message-id:subject:from:to:cc:date:in-reply-to:
   references:content-transfer-encoding:mime-version;
  bh=t783UiUjich5X9sa7ujzAR59XVGTzDqvLbn/mKTpiX0=;
  b=CZTkEc1+FLAC2tx0gAkKrNv970CEm88f/8gQ48WlT5XQpzPuwiuMbNND
   9LBe4YQICEMy3K4xhRt+RycFcbliPWPjkijMU4zSKp6KoAm5tBzsqAPBH
   EGhpjLubvhIi8j0tn5BCfSSGUWNDKNzSH2M5k/mGdZBGUB81i+kvcZ7Ly
   vd+iTc9pfHn0GyrtOCe8EE+66RjSXE2OL/IOe/8SPJ/iAu+sXTlW2koXa
   jSxJBlBIWOxuNkt/rkPP8A8LbZRtUcYcvN0HBSakxiZKeZjiqJfDbhOlR
   SnOe32q/ZtDkRFFwREi/7sXfPOotO6R/yIWW1K7Gf+gi0LaRGQcpQOXmL
   w==;
X-CSE-ConnectionGUID: sTLKdo9PTcS3wo8FHCeOTQ==
X-CSE-MsgGUID: vqUrWrfiQwCcfuYkRHXMoA==
X-IronPort-AV: E=McAfee;i="6700,10204,11213"; a="38483214"
X-IronPort-AV: E=Sophos;i="6.11,173,1725346800"; 
   d="scan'208";a="38483214"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Oct 2024 17:16:57 -0700
X-CSE-ConnectionGUID: Uj2jFyvbQ+Og+6tBwNr1TA==
X-CSE-MsgGUID: 5JQtABJwRCq2sp64ZE4utQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,173,1725346800"; 
   d="scan'208";a="74419035"
Received: from spandruv-desk1.amr.corp.intel.com ([10.125.109.106])
  by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Oct 2024 17:16:57 -0700
Message-ID: <edd074ed88830180527417aa45ff222cbb71c1f2.camel@linux.intel.com>
Subject: Re: [PATCH v8 1/9] HID: hid-sensor-hub: don't use stale
 platform-data on remove
From: srinivas pandruvada <srinivas.pandruvada@linux.intel.com>
To: Heiko Stuebner <heiko@sntech.de>, lee@kernel.org, jikos@kernel.org, 
	jic23@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 jdelvare@suse.com,  linux@roeck-us.net, bentiss@kernel.org,
 dmitry.torokhov@gmail.com, pavel@ucw.cz,  ukleinek@debian.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-hwmon@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-input@vger.kernel.org, 
 linux-iio@vger.kernel.org, linux-leds@vger.kernel.org
Date: Wed, 02 Oct 2024 17:16:56 -0700
In-Reply-To: <20240908210803.3339919-2-heiko@sntech.de>
References: <20240908210803.3339919-1-heiko@sntech.de>
	 <20240908210803.3339919-2-heiko@sntech.de>
Autocrypt: addr=srinivas.pandruvada@linux.intel.com; prefer-encrypt=mutual;
 keydata=mQGNBGYHNAsBDAC7tv5u9cIsSDvdgBBEDG0/a/nTaC1GXOx5MFNEDL0LWia2p8Asl7igx
 YrB68fyfPNLSIgtCmps0EbRUkPtoN5/HTbAEZeJUTL8Xdoe6sTywf8/6/DMheEUzprE4Qyjt0HheW
 y1JGvdOA0f1lkxCnPXeiiDY4FUqQHr3U6X4FPqfrfGlrMmGvntpKzOTutlQl8eSAprtgZ+zm0Jiwq
 NSiSBOt2SlbkGu9bBYx7mTsrGv+x7x4Ca6/BO9o5dIvwJOcfK/cXC/yxEkr1ajbIUYZFEzQyZQXrT
 GUGn8j3/cXQgVvMYxrh3pGCq9Q0Q6PAwQYhm97ipXa86GcTpP5B2ip9xclPtDW99sihiL8euTWRfS
 TUsEI+1YzCyz5DU32w3WiXr3ITicaMV090tMg9phIZsjfFbnR8hY03n0kRNWWFXi/ch2MsZCCqXIB
 oY/SruNH9Y6mnFKW8HSH762C7On8GXBYJzH6giLGeSsbvis2ZmV/r+LmswwZ6ACcOKLlvvIukAEQE
 AAbQ5U3Jpbml2YXMgUGFuZHJ1dmFkYSA8c3Jpbml2YXMucGFuZHJ1dmFkYUBsaW51eC5pbnRlbC5j
 b20+iQHRBBMBCAA7FiEEdki2SeUi0wlk2xcjOqtdDMJyisMFAmYHNAsCGwMFCwkIBwICIgIGFQoJC
 AsCBBYCAwECHgcCF4AACgkQOqtdDMJyisMobAv+LLYUSKNuWhRN3wS7WocRPCi3tWeBml+qivCwyv
 oZbmE2LcxYFnkcj6YNoS4N1CHJCr7vwefWTzoKTTDYqz3Ma0D0SbR1p/dH0nDgN34y41HpIHf0tx0
 UxGMgOWJAInq3A7/mNkoLQQ3D5siG39X3bh9Ecg0LhMpYwP/AYsd8X1ypCWgo8SE0J/6XX/HXop2a
 ivimve15VklMhyuu2dNWDIyF2cWz6urHV4jmxT/wUGBdq5j87vrJhLXeosueRjGJb8/xzl34iYv08
 wOB0fP+Ox5m0t9N5yZCbcaQug3hSlgp9hittYRgIK4GwZtNO11bOzeCEMk+xFYUoa5V8JWK9/vxrx
 NZEn58vMJ/nxoJzkb++iV7KBtsqErbs5iDwFln/TRJAQDYrtHJKLLFB9BGUDuaBOmFummR70Rbo55
 J9fvUHc2O70qteKOt5A0zv7G8uUdIaaUHrT+VOS7o+MrbPQcSk+bl81L2R7TfWViCmKQ60sD3M90Y
 oOfCQxricddC
User-Agent: Evolution 3.52.4 (3.52.4-1.fc40) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241002_171700_501128_487F4F42 
X-CRM114-Status: GOOD (  23.60  )
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

T24gU3VuLCAyMDI0LTA5LTA4IGF0IDIzOjA3ICswMjAwLCBIZWlrbyBTdHVlYm5lciB3cm90ZToK
PiBUaGUgaGlkLXNlbnNvci1odWIgY3JlYXRlcyB0aGUgaW5kaXZpZHVhbCBkZXZpY2Ugc3RydWN0
cyBhbmQKPiB0cmFuc2ZlcnMgdGhlbQo+IHRvIHRoZSBjcmVhdGVkIG1mZCBwbGF0Zm9ybS1kZXZp
Y2VzIHZpYSB0aGUgcGxhdGZvcm1fZGF0YSBpbiB0aGUKPiBtZmRfY2VsbC4KPiAKPiBCZWZvcmUg
Y29tbWl0IGU2NTFhMWRhNDQyYSAoIkhJRDogaGlkLXNlbnNvci1odWI6IEFsbG93IHBhcmFsbGVs
Cj4gc3luY2hyb25vdXMgcmVhZHMiKQo+IHRoZSBzZW5zb3ItaHViIHdhcyBtYW5hZ2luZyBhY2Nl
c3MgY2VudHJhbGx5LCB3aXRoIG9uZSAiY29tcGxldGlvbiIKPiBpbiB0aGUKPiBodWIncyBkYXRh
IHN0cnVjdHVyZSwgd2hpY2ggbmVlZGVkIHRvIGJlIGZpbmlzaGVkIG9uIHJlbW92YWwgYXQgdGhl
Cj4gbGF0ZXN0Lgo+IAo+IFRoZSBtZW50aW9uZWQgY29tbWl0IHRoZW4gbW92ZWQgdGhpcyBjZW50
cmFsIG1hbmFnZW1lbnQgdG8gZWFjaCBoaWQKPiBzZW5zb3IKPiBkZXZpY2UsIHJlc3VsdGluZyBv
biBhIGNvbXBsZXRpb24gaW4gZWFjaCBzdHJ1Y3QKPiBoaWRfc2Vuc29yX2h1Yl9kZXZpY2UuCj4g
VGhlIHJlbW92ZSBwcm9jZWR1cmUgd2FzIGFkYXB0ZWQgdG8gZ28gdGhyb3VnaCBhbGwgc2Vuc29y
IGRldmljZXMgYW5kCj4gZmluaXNoIGFueSBwZW5kaW5nICJjb21wbGV0aW9uIi4KPiAKPiBXaGF0
IHRoaXMgZGlkbid0IHRha2UgaW50byBhY2NvdW50IHdhcywgcGxhdGZvcm1fZGV2aWNlX2FkZF9k
YXRhKCkKPiB0aGF0IGlzCj4gdXNlZCBieSBtZmRfYWRke19ob3RwbHVnfV9kZXZpY2VzKCkgZG9l
cyBhIGttZW1kdXAgb24gdGhlIHN1Ym1pdHRlZAo+IHBsYXRmb3JtLWRhdGEuIFNvIHRoZSBkYXRh
IHRoZSBwbGF0Zm9ybS1kZXZpY2UgZ2V0cyBpcyBhIGNvcHkgb2YgdGhlCj4gb3JpZ2luYWwgZGF0
YSwgbWVhbmluZyB0aGF0IHRoZSBkZXZpY2Ugd29ya2VkIG9uIGEgZGlmZmVyZW50Cj4gY29tcGxl
dGlvbgo+IHRoYW4gd2hhdCBzZW5zb3JfaHViX3JlbW92ZSgpIGN1cnJlbnRseSB3YW50cyB0byBh
Y2Nlc3MuCj4gCj4gVG8gZml4IHRoYXQsIHVzZSBkZXZpY2VfZm9yX2VhY2hfY2hpbGQoKSB0byBn
byB0aHJvdWdoIGVhY2ggY2hpbGQtCj4gZGV2aWNlCj4gc2ltaWxhciB0byBob3cgbWZkX3JlbW92
ZV9kZXZpY2VzKCkgdW5yZWdpc3RlcnMgdGhlIGRldmljZXMgbGF0ZXIgYW5kCj4gd2l0aCB0aGF0
IGdldCB0aGUgbGl2ZSBwbGF0Zm9ybV9kYXRhIHRvIGZpbmFsaXplIHRoZSBjb3JyZWN0Cj4gY29t
cGxldGlvbi4KPiAKPiBGaXhlczogZTY1MWExZGE0NDJhICgiSElEOiBoaWQtc2Vuc29yLWh1Yjog
QWxsb3cgcGFyYWxsZWwgc3luY2hyb25vdXMKPiByZWFkcyIpCj4gU2lnbmVkLW9mZi1ieTogSGVp
a28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KQWNrZWQtYnk6IFNyaW5pdmFzIFBhbmRydXZh
ZGEgPHNyaW5pdmFzLnBhbmRydXZhZGFAbGludXguaW50ZWwuY29tPgoKPiAtLS0KPiDCoGRyaXZl
cnMvaGlkL2hpZC1zZW5zb3ItaHViLmMgfCAyMSArKysrKysrKysrKysrKy0tLS0tLS0KPiDCoDEg
ZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2hpZC9oaWQtc2Vuc29yLWh1Yi5jIGIvZHJpdmVycy9oaWQvaGlkLXNl
bnNvci0KPiBodWIuYwo+IGluZGV4IDI2ZTkzYTMzMWE1MS4uM2NkMDBhZmE0NTNhIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvaGlkL2hpZC1zZW5zb3ItaHViLmMKPiArKysgYi9kcml2ZXJzL2hpZC9o
aWQtc2Vuc29yLWh1Yi5jCj4gQEAgLTczMCwyMyArNzMwLDMwIEBAIHN0YXRpYyBpbnQgc2Vuc29y
X2h1Yl9wcm9iZShzdHJ1Y3QgaGlkX2RldmljZQo+ICpoZGV2LAo+IMKgCXJldHVybiByZXQ7Cj4g
wqB9Cj4gwqAKPiArc3RhdGljIGludCBzZW5zb3JfaHViX2ZpbmFsaXplX3BlbmRpbmdfZm4oc3Ry
dWN0IGRldmljZSAqZGV2LCB2b2lkCj4gKmRhdGEpCj4gK3sKPiArCXN0cnVjdCBoaWRfc2Vuc29y
X2h1Yl9kZXZpY2UgKmhzZGV2ID0gZGV2LT5wbGF0Zm9ybV9kYXRhOwo+ICsKPiArCWlmIChoc2Rl
di0+cGVuZGluZy5zdGF0dXMpCj4gKwkJY29tcGxldGUoJmhzZGV2LT5wZW5kaW5nLnJlYWR5KTsK
PiArCj4gKwlyZXR1cm4gMDsKPiArfQo+ICsKPiDCoHN0YXRpYyB2b2lkIHNlbnNvcl9odWJfcmVt
b3ZlKHN0cnVjdCBoaWRfZGV2aWNlICpoZGV2KQo+IMKgewo+IMKgCXN0cnVjdCBzZW5zb3JfaHVi
X2RhdGEgKmRhdGEgPSBoaWRfZ2V0X2RydmRhdGEoaGRldik7Cj4gwqAJdW5zaWduZWQgbG9uZyBm
bGFnczsKPiAtCWludCBpOwo+IMKgCj4gwqAJaGlkX2RiZyhoZGV2LCAiIGhhcmR3YXJlIHJlbW92
ZWRcbiIpOwo+IMKgCWhpZF9od19jbG9zZShoZGV2KTsKPiDCoAloaWRfaHdfc3RvcChoZGV2KTsK
PiArCj4gwqAJc3Bpbl9sb2NrX2lycXNhdmUoJmRhdGEtPmxvY2ssIGZsYWdzKTsKPiAtCWZvciAo
aSA9IDA7IGkgPCBkYXRhLT5oaWRfc2Vuc29yX2NsaWVudF9jbnQ7ICsraSkgewo+IC0JCXN0cnVj
dCBoaWRfc2Vuc29yX2h1Yl9kZXZpY2UgKmhzZGV2ID0KPiAtCQkJZGF0YS0KPiA+aGlkX3NlbnNv
cl9odWJfY2xpZW50X2RldnNbaV0ucGxhdGZvcm1fZGF0YTsKPiAtCQlpZiAoaHNkZXYtPnBlbmRp
bmcuc3RhdHVzKQo+IC0JCQljb21wbGV0ZSgmaHNkZXYtPnBlbmRpbmcucmVhZHkpOwo+IC0JfQo+
ICsJZGV2aWNlX2Zvcl9lYWNoX2NoaWxkKCZoZGV2LT5kZXYsIE5VTEwsCj4gKwkJCcKgwqDCoMKg
wqAgc2Vuc29yX2h1Yl9maW5hbGl6ZV9wZW5kaW5nX2ZuKTsKPiDCoAlzcGluX3VubG9ja19pcnFy
ZXN0b3JlKCZkYXRhLT5sb2NrLCBmbGFncyk7Cj4gKwo+IMKgCW1mZF9yZW1vdmVfZGV2aWNlcygm
aGRldi0+ZGV2KTsKPiDCoAltdXRleF9kZXN0cm95KCZkYXRhLT5tdXRleCk7Cj4gwqB9CgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
