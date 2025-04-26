Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 068F2C369D1
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Apr 2025 16:37:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q3i8UC/cPfQQEzbFvVj7ORKpJQRUbckNwmJDJFVxnrQ=; b=XMMOlRKcDJ4q+G
	1Kgwmu0wOK/S01IQsdd+1ZR0qEa9cs+c6EwN4V8QwBK0eqixfBHKuyHMLdgQ2jcCDCCjpisCW40p6
	qC3ICbsQTMaNTHvhGy2oE79B6PDKWs8XtO9A7PpKY4H4VVg3xYZxBcVyiNSDme1Kn6yxIhXnY650Q
	T0Pugcxlwuq0xaC5cjagWjGPuIq7uULM+u4Kk5jyE0mJ11+OjtZqjR89C/Suo8JHDRTNfVrpT3V3r
	XuusumWwU+UWpyModHlBwH4WzlzMPOGBFXxDT4K/ONGAe5EjILpgkO+QwFWA4DxcHYSzh9jTn2rXe
	cMb9DRg68CTvbvmR/5pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8iX6-00000002IJR-1Qt7;
	Sat, 26 Apr 2025 16:37:40 +0000
Received: from m16.mail.163.com ([220.197.31.3])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8hLg-00000002Dr0-1G9M;
	Sat, 26 Apr 2025 15:21:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Message-ID:Date:MIME-Version:Subject:From:
	Content-Type; bh=vUM7vf0vXe7N2oH0oe3DEg8G2pM3KxBEYmjLGlpyeQI=;
	b=XykLgF22/iL6/iZpwTQ6uMB0pT5VlkDM8hPhc+/Hec6fOqHV/1C9/xveBE9CIU
	S7ZITsIp5u5cX2ute/9ADqyEhp6H5yR2epcbwdWq8/06amgxvZY5fK1fOj0+Abkv
	eE611yM3hVj/g2JXM2zmId9J3jmagbkF+/sGJF9BoIR/g=
Received: from [192.168.71.89] (unknown [])
	by gzga-smtp-mtada-g1-1 (Coremail) with SMTP id _____wCX+C2_+Qxo0RWfCg--.59461S2;
	Sat, 26 Apr 2025 23:20:33 +0800 (CST)
Message-ID: <4e5a60dc-fb0b-413e-9ed9-82f926abd023@163.com>
Date: Sat, 26 Apr 2025 23:20:32 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] PCI: Remove redundant MPS configuration
To: =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>
Cc: lpieralisi@kernel.org, kw@linux.com, bhelgaas@google.com,
 heiko@sntech.de, thomas.petazzoni@bootlin.com,
 manivannan.sadhasivam@linaro.org, yue.wang@Amlogic.com,
 neil.armstrong@linaro.org, robh@kernel.org, jingoohan1@gmail.com,
 khilman@baylibre.com, jbrunet@baylibre.com,
 martin.blumenstingl@googlemail.com, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20250425095708.32662-1-18255117159@163.com>
 <20250425095708.32662-3-18255117159@163.com>
 <20250425181345.bybgcht5tweyg43k@pali>
 <5e2844cc-8359-4b87-a8ce-eb5ebb85f8ff@163.com>
 <20250426150650.c63x62ugtnwx5nzy@pali>
Content-Language: en-US
From: Hans Zhang <18255117159@163.com>
In-Reply-To: <20250426150650.c63x62ugtnwx5nzy@pali>
X-CM-TRANSID: _____wCX+C2_+Qxo0RWfCg--.59461S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7Ary3JFW8ZF1kKr1xXw4UXFb_yoW8Kr1Upw
	45JFs3JF4qqF15uF1Iqa1vgr1ftasIyr15Wws8GrW7AasIq3srtFy2yr45CasrXwn7CF12
	va42qFWSyFsxtaUanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UPR6cUUUUU=
X-Originating-IP: [124.79.128.52]
X-CM-SenderInfo: rpryjkyvrrlimvzbiqqrwthudrp/1tbiWwo7o2gM8qeGtQABsK
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250426_082149_108194_DDA2B210 
X-CRM114-Status: GOOD (  15.62  )
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

CgpPbiAyMDI1LzQvMjYgMjM6MDYsIFBhbGkgUm9ow6FyIHdyb3RlOgo+IE9uIFNhdHVyZGF5IDI2
IEFwcmlsIDIwMjUgMjM6MDI6MDggSGFucyBaaGFuZyB3cm90ZToKPj4gT24gMjAyNS80LzI2IDAy
OjEzLCBQYWxpIFJvaMOhciB3cm90ZToKPj4+IE9uIEZyaWRheSAyNSBBcHJpbCAyMDI1IDE3OjU3
OjA4IEhhbnMgWmhhbmcgd3JvdGU6Cj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvcGNpLWFhcmR2YXJrLmMgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaS1hYXJkdmFy
ay5jCj4+Pj4gaW5kZXggYTI5Nzk2Y2NlNDIwLi5kODg1Mjg5Mjk5NGEgMTAwNjQ0Cj4+Pj4gLS0t
IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2ktYWFyZHZhcmsuYwo+Pj4+ICsrKyBiL2RyaXZl
cnMvcGNpL2NvbnRyb2xsZXIvcGNpLWFhcmR2YXJrLmMKPj4+PiBAQCAtNTQ5LDkgKzU0OSw3IEBA
IHN0YXRpYyB2b2lkIGFkdmtfcGNpZV9zZXR1cF9odyhzdHJ1Y3QgYWR2a19wY2llICpwY2llKQo+
Pj4+ICAgIAlyZWcgPSBhZHZrX3JlYWRsKHBjaWUsIFBDSUVfQ09SRV9QQ0lFWFBfQ0FQICsgUENJ
X0VYUF9ERVZDVEwpOwo+Pj4+ICAgIAlyZWcgJj0gflBDSV9FWFBfREVWQ1RMX1JFTEFYX0VOOwo+
Pj4+ICAgIAlyZWcgJj0gflBDSV9FWFBfREVWQ1RMX05PU05PT1BfRU47Cj4+Pj4gLQlyZWcgJj0g
flBDSV9FWFBfREVWQ1RMX1BBWUxPQUQ7Cj4+Pj4gICAgCXJlZyAmPSB+UENJX0VYUF9ERVZDVExf
UkVBRFJROwo+Pj4+IC0JcmVnIHw9IFBDSV9FWFBfREVWQ1RMX1BBWUxPQURfNTEyQjsKPj4+PiAg
ICAJcmVnIHw9IFBDSV9FWFBfREVWQ1RMX1JFQURSUV81MTJCOwo+Pj4+ICAgIAlhZHZrX3dyaXRl
bChwY2llLCByZWcsIFBDSUVfQ09SRV9QQ0lFWFBfQ0FQICsgUENJX0VYUF9ERVZDVEwpOwo+Pj4+
IC0tIAo+Pj4+IDIuMjUuMQo+Pj4+Cj4+Pgo+Pj4gUGxlYXNlIGRvIG5vdCByZW1vdmUgdGhpcyBj
b2RlLiBJdCBpcyByZXF1aXJlZCBwYXJ0IG9mIHRoZQo+Pj4gaW5pdGlhbGl6YXRpb24gb2YgdGhl
IGFhcmR2YXJrIFBDSSBjb250cm9sbGVyIGF0IHRoZSBzcGVjaWZpYyBwaGFzZSwKPj4+IGFzIGRl
ZmluZWQgaW4gdGhlIEFybWFkYSAzNzAwIEZ1bmN0aW9uYWwgU3BlY2lmaWNhdGlvbi4KPj4KPj4g
SGkgUGFsaSwKPj4KPj4gVGhpcyBzZXJpZXMgb2YgcGF0Y2hlcyBpcyBkaXNjdXNzaW5nIHRoZSBp
bml0aWFsaXphdGlvbiBvZiBEZXZDdGwuTVBTIGJ5IHRoZQo+PiBSb290IFBvcnQuIFBsZWFzZSBs
b29rIGF0IHRoZSBmaXJzdCBwYXRjaCBJIHN1Ym1pdHRlZC4gSWYgdGhlcmUgaXMgYQo+PiByZWFz
b25hYmxlIG1ldGhvZCBpbiB0aGUgZW5kLCBEZXZDdGwuTVBTIHdpbGwgYWxzbyBiZSBjb25maWd1
cmVkCj4+IHN1Y2Nlc3NmdWxseS4KPiAKPiBUaGlzIGRvZXMgbm90IG1hdHRlciB3aGF0IHdvdWxk
IGJlIGNvbmZpZ3VyZWQgaW4gRGV2Q3RsLk1QUyBhdCB0aGUgZW5kLgo+IAo+PiBUaGUgUENJZSBt
YWludGFpbmVyIHdpbGwgZ2l2ZSB0aGUgcmV2aWV3IG9waW5pb25zLiBQbGVhc2UgcmVzdAo+PiBh
c3N1cmVkIHRoYXQgaXQgd2lsbCBub3QgYWZmZWN0IHRoZSBmdW5jdGlvbnMgb2YgdGhlIGFhcmR2
YXJrIFBDSQo+PiBjb250cm9sbGVyLgo+IAo+IFRoaXMgcGF0Y2ggaXMgbW9kaWZ5aW5nIGluaXRp
YWxpemF0aW9uIG9mIHRoZSBhYXJkdmFyayBQQ0llIGNvbnRyb2xsZXIKPiBhbmQgaXMgcmVtb3Zp
bmcgdGhlIG1hbmRhdG9yeSBzdGVwIG9mIHRoZSBjb250cm9sbGVyIGNvbmZpZ3VyYXRpb24gYXMK
PiByZXF1aXJlZCBhbmQgZGVmaW5lZCBpbiB0aGUgQXJtYWRhIDM3MDAgRnVuY3Rpb25hbCBTcGVj
aWZpY2F0aW9uLgo+IEl0IHNheXMgZXhhY3RseSBpbiB3aGljaCBvcmRlciBhbmQgd2hpY2ggdmFs
dWVzIHRvIHdoaWNoIHJlZ2lzdGVycyBoYXMKPiB0byBiZSB3cml0dGVuLgoKSGkgUGFsaSwKCklz
IHRoZSBtYXhpbXVtIE1QUyBzdXBwb3J0ZWQgYnkgQXJtYWRhIDM3MDAgNTEyIGJ5dGVzPyBXaGF0
IGFyZSB0aGUgCmRlZmF1bHQgdmFsdWVzIG9mIERldkNhcC5NUFMgYW5kIERldkN0bC5NUFM/CgpC
ZWNhdXNlIHRoZSBkZWZhdWx0IHZhbHVlIG9mIERldkN0bC5NUFMgaXMgbm90IDUxMiBieXRlcywg
aXQgbmVlZHMgdG8gYmUgCmNvbmZpZ3VyZWQgaGVyZSwgcmlnaHQ/CgpJZiBpdCdzIG15IGd1ZXNz
LCBSSzM1ODggYWxzbyBoYXMgdGhlIHNhbWUgcmVxdWlyZW1lbnRzIGFzIHlvdSwganVzdCAKbGlr
ZSB0aGUgZmlyc3QgcGF0Y2ggSSBzdWJtaXR0ZWQuCgpCZXN0IHJlZ2FyZHMsCkhhbnMKCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
