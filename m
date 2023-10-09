Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77FEDE95A8E
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Oct 2023 07:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sdemco1IsjdSd2C18ZT5qzg/+oHIoGeQ//jin5//3ZI=; b=TUxFuTVSaVcSsL
	oThQU7PUnbbaw17N9sZcQabL7pj16wip0v6yTB8TwPn+F8JxenUmswfVMQBKencXljeoqg9wOmD0O
	GpcwRWHYt/8mA7hlRVwosPYzcwXQR3/h6KmAp5+gkeZoXHHHvkcpqFG/1w+//Q4uhlswP7wySonao
	KiGjk9cTEmORrvJ6qnCPK9zigZ8z0Z0SQTMUUvmJFBw+k4WIuRf7pBT1hcObhaitmSAYZho2843SN
	sJ5b5Brdyu12DCO3uxOiErXodITGw4iUldLmCfgugh1Nr+lKyq0YWxgsF9JmmBALfvqOIuIEJCYKn
	ikEmshuBkhkJxOJcBGjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpkks-009u7k-0y;
	Mon, 09 Oct 2023 07:32:42 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpkko-009u6X-27
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Oct 2023 07:32:40 +0000
Received: from ideasonboard.com (93-61-96-190.ip145.fastwebnet.it [93.61.96.190])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 83DAC7E4;
	Mon,  9 Oct 2023 09:32:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1696836751;
	bh=3QK4iSojWRUpmqVExn0tXJeVZEiI3looQsXR+PrQlLY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tlKa28v7z6OEv7n8r6ksdbPCv6oMqJPKgM6vPAbl70l0oiX3GwbHxOfFGls+kNCmx
	 DlOrAqqVoDfkAXl+qqrbuA2yH+JUwSnpEmCq76AJssFOz2bOh/8FUAvzrA0GGcJNgA
	 +wXcHmD8dlefbCwgDACzsC+JCYUfJQvaZAXybX94=
Date: Mon, 9 Oct 2023 09:32:28 +0200
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
Cc: linux-rockchip@lists.infradead.org, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, Jacopo Mondi <jacopo.mondi@ideasonboard.com>, 
	Nicholas Roth <nicholas@rothemail.net>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	"open list:V4L2 CAMERA SENSOR DRIVERS" <linux-media@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] media: i2c: ov8858: Don't set fwnode in the driver
Message-ID: <3if2lurlnceoddef64qdahztus6ysyaz333x6ty3agzqqrugxo@sowcvbdf2tqe>
References: <20231007130004.942369-1-megi@xff.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231007130004.942369-1-megi@xff.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_003238_860652_9B73BEB5 
X-CRM114-Status: GOOD (  18.47  )
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

SGkgT25kxZllaiwKCk9uIFNhdCwgT2N0IDA3LCAyMDIzIGF0IDAzOjAwOjAwUE0gKzAyMDAsIE9u
ZMWZZWogSmlybWFuIHdyb3RlOgo+IEZyb206IE9uZHJlaiBKaXJtYW4gPG1lZ2lAeGZmLmN6Pgo+
Cj4gVGhpcyBtYWtlcyB0aGUgZHJpdmVyIHdvcmsgd2l0aCB0aGUgbmV3IGNoZWNrIGluCj4gdjRs
Ml9hc3luY19yZWdpc3Rlcl9zdWJkZXYoKSB0aGF0IHdhcyBpbnRyb2R1Y2VkIHJlY2VudGx5IGlu
IDYuNi1yYzEuCj4gV2l0aG91dCB0aGlzIGNoYW5nZSwgcHJvYmUgZmFpbHMgd2l0aDoKPgo+IG92
ODg1OCAxLTAwMzY6IERldGVjdGVkIE9WODg1OCBzZW5zb3IsIHJldmlzaW9uIDB4YjIKPiBvdjg4
NTggMS0wMDM2OiBzdWItZGV2aWNlIGZ3bm9kZSBpcyBhbiBlbmRwb2ludCEKPiBvdjg4NTggMS0w
MDM2OiB2NGwyIGFzeW5jIHJlZ2lzdGVyIHN1YmRldiBmYWlsZWQKPiBvdjg4NTg6IHByb2JlIG9m
IDEtMDAzNiBmYWlsZWQgd2l0aCBlcnJvciAtMjIKPgo+IFRoaXMgYWxzbyBzaW1wbGlmaWVzIHRo
ZSBkcml2ZXIgYSBiaXQuCj4KPiBTaWduZWQtb2ZmLWJ5OiBPbmRyZWogSmlybWFuIDxtZWdpQHhm
Zi5jej4KPiAtLS0KPiAgZHJpdmVycy9tZWRpYS9pMmMvb3Y4ODU4LmMgfCA3ICsrLS0tLS0KPiAg
MSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPgo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL21lZGlhL2kyYy9vdjg4NTguYyBiL2RyaXZlcnMvbWVkaWEvaTJjL292
ODg1OC5jCj4gaW5kZXggM2FmNjEyNWEyZWVlLi5iODYyZGM5NjA0Y2MgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9tZWRpYS9pMmMvb3Y4ODU4LmMKPiArKysgYi9kcml2ZXJzL21lZGlhL2kyYy9vdjg4
NTguYwo+IEBAIC0xODY4LDcgKzE4NjgsNyBAQCBzdGF0aWMgaW50IG92ODg1OF9wYXJzZV9vZihz
dHJ1Y3Qgb3Y4ODU4ICpvdjg4NTgpCj4gIAkJcmV0dXJuIC1FSU5WQUw7Cj4gIAl9Cj4KPiAtCW92
ODg1OC0+c3ViZGV2LmZ3bm9kZSA9IGVuZHBvaW50Owo+ICsJZndub2RlX2hhbmRsZV9wdXQoZW5k
cG9pbnQpOwoKb3Y4ODU4X3BhcnNlX29mKCkgY291bGQgYmUgZnVydGhlciBzaW1wbGlmaWVkIHdp
dGg6CgotLS0gYS9kcml2ZXJzL21lZGlhL2kyYy9vdjg4NTguYworKysgYi9kcml2ZXJzL21lZGlh
L2kyYy9vdjg4NTguYwpAQCAtMTg1MCw5ICsxODUwLDkgQEAgc3RhdGljIGludCBvdjg4NThfcGFy
c2Vfb2Yoc3RydWN0IG92ODg1OCAqb3Y4ODU4KQogICAgICAgIH0KCiAgICAgICAgcmV0ID0gdjRs
Ml9md25vZGVfZW5kcG9pbnRfcGFyc2UoZW5kcG9pbnQsICZ2ZXApOworICAgICAgIGZ3bm9kZV9o
YW5kbGVfcHV0KGVuZHBvaW50KTsKICAgICAgICBpZiAocmV0KSB7CiAgICAgICAgICAgICAgICBk
ZXZfZXJyKGRldiwgIkZhaWxlZCB0byBwYXJzZSBlbmRwb2ludDogJWRcbiIsIHJldCk7Ci0gICAg
ICAgICAgICAgICBmd25vZGVfaGFuZGxlX3B1dChlbmRwb2ludCk7CiAgICAgICAgICAgICAgICBy
ZXR1cm4gcmV0OwogICAgICAgIH0KCkBAIC0xODY0LDEyICsxODY0LDkgQEAgc3RhdGljIGludCBv
djg4NThfcGFyc2Vfb2Yoc3RydWN0IG92ODg1OCAqb3Y4ODU4KQogICAgICAgIGRlZmF1bHQ6CiAg
ICAgICAgICAgICAgICBkZXZfZXJyKGRldiwgIlVuc3VwcG9ydGVkIG51bWJlciBvZiBkYXRhIGxh
bmVzICV1XG4iLAogICAgICAgICAgICAgICAgICAgICAgICBvdjg4NTgtPm51bV9sYW5lcyk7Ci0g
ICAgICAgICAgICAgICBmd25vZGVfaGFuZGxlX3B1dChlbmRwb2ludCk7CiAgICAgICAgICAgICAg
ICByZXR1cm4gLUVJTlZBTDsKICAgICAgICB9CgotICAgICAgIG92ODg1OC0+c3ViZGV2LmZ3bm9k
ZSA9IGVuZHBvaW50OwotCiAgICAgICAgcmV0dXJuIDA7CiB9CgogRG8geW91IHRoaW5rIGl0J3Mg
d29ydGggZG9pbmcgc28gPwoKPgo+ICAJcmV0dXJuIDA7Cj4gIH0KPiBAQCAtMTkxMyw3ICsxOTEz
LDcgQEAgc3RhdGljIGludCBvdjg4NThfcHJvYmUoc3RydWN0IGkyY19jbGllbnQgKmNsaWVudCkK
Pgo+ICAJcmV0ID0gb3Y4ODU4X2luaXRfY3RybHMob3Y4ODU4KTsKPiAgCWlmIChyZXQpCj4gLQkJ
Z290byBlcnJfcHV0X2Z3bm9kZTsKPiArCQlyZXR1cm4gcmV0Owo+Cj4gIAlzZCA9ICZvdjg4NTgt
PnN1YmRldjsKPiAgCXNkLT5mbGFncyB8PSBWNEwyX1NVQkRFVl9GTF9IQVNfREVWTk9ERSB8IFY0
TDJfU1VCREVWX0ZMX0hBU19FVkVOVFM7Cj4gQEAgLTE5NjQsOCArMTk2NCw2IEBAIHN0YXRpYyBp
bnQgb3Y4ODU4X3Byb2JlKHN0cnVjdCBpMmNfY2xpZW50ICpjbGllbnQpCj4gIAltZWRpYV9lbnRp
dHlfY2xlYW51cCgmc2QtPmVudGl0eSk7Cj4gIGVycl9mcmVlX2hhbmRsZXI6Cj4gIAl2NGwyX2N0
cmxfaGFuZGxlcl9mcmVlKCZvdjg4NTgtPmN0cmxfaGFuZGxlcik7Cj4gLWVycl9wdXRfZndub2Rl
Ogo+IC0JZndub2RlX2hhbmRsZV9wdXQob3Y4ODU4LT5zdWJkZXYuZndub2RlKTsKPgo+ICAJcmV0
dXJuIHJldDsKPiAgfQo+IEBAIC0xOTc4LDcgKzE5NzYsNiBAQCBzdGF0aWMgdm9pZCBvdjg4NThf
cmVtb3ZlKHN0cnVjdCBpMmNfY2xpZW50ICpjbGllbnQpCj4gIAl2NGwyX2FzeW5jX3VucmVnaXN0
ZXJfc3ViZGV2KHNkKTsKPiAgCW1lZGlhX2VudGl0eV9jbGVhbnVwKCZzZC0+ZW50aXR5KTsKPiAg
CXY0bDJfY3RybF9oYW5kbGVyX2ZyZWUoJm92ODg1OC0+Y3RybF9oYW5kbGVyKTsKPiAtCWZ3bm9k
ZV9oYW5kbGVfcHV0KG92ODg1OC0+c3ViZGV2LmZ3bm9kZSk7Cj4KPiAgCXBtX3J1bnRpbWVfZGlz
YWJsZSgmY2xpZW50LT5kZXYpOwo+ICAJaWYgKCFwbV9ydW50aW1lX3N0YXR1c19zdXNwZW5kZWQo
JmNsaWVudC0+ZGV2KSkKClRoZSByZXN0IGxvb2tzIGdvb2QhCgpUaGFua3MKICBqCgo+IC0tCj4g
Mi40Mi4wCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
