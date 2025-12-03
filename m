Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA9D3D1BDDD
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Dec 2025 21:21:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mSRmzYdEJlqBN6phViWwhpq7Gulh2j9z3rKLcSA4+nU=; b=dTkhHfzvO8/V0i
	2NNKMNw/4qp70inUMLs1iWaPcG9LVsPeIndnk+lALWR+Lm2HOX5lfwf72Syxp1Ddo6gaIv2ka1PJe
	6JL7NtNqUwHFVhs77jRoDjOZ48R47zUblpQIQxPRoBpLUyykVc+n/VIkoHAuyTxwHsJeh0/2PgT8X
	G+CCbhE4mb5FIe3rMqzgYNvACzucocVPpjnpF/fUSZ1Hzxe5byP5C1gKZQROOxslDare4FxjizaMy
	k+hqVR1Qoqn3pizeZZTGyonYtbGxcUt6U09b3xg5XvwSadtgUr+zbYOb37rvVO1DeQh8LFEBR1TBa
	/SnRDrE7FMf4yHEjfR+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQuHy-000000077ks-1Sy6;
	Wed, 03 Dec 2025 21:21:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQuHv-000000077ex-3KYd
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Dec 2025 21:21:29 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1vQuHg-0000gJ-5X; Wed, 03 Dec 2025 22:21:12 +0100
Message-ID: <1db3a9ee-ae09-431f-93ac-680bac088f79@pengutronix.de>
Date: Wed, 3 Dec 2025 22:21:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 01/22] media: dt-bindings: media: rockchip-rga: add
 rockchip,rk3588-rga3
To: Krzysztof Kozlowski <krzk@kernel.org>, Jacob Chen
 <jacob-chen@iotwrt.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de
References: <20251203-spu-rga3-v2-0-989a67947f71@pengutronix.de>
 <20251203-spu-rga3-v2-1-989a67947f71@pengutronix.de>
 <81593c42-fcc2-47ad-8d0f-69a2d17664a6@kernel.org>
Content-Language: en-US
From: =?UTF-8?Q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
In-Reply-To: <81593c42-fcc2-47ad-8d0f-69a2d17664a6@kernel.org>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_132127_838722_CC5E0612 
X-CRM114-Status: GOOD (  15.85  )
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

SGnCoEtyenlzenRvZiwKCk9uIDEyLzMvMjUgOToyOCBQTSwgS3J6eXN6dG9mIEtvemxvd3NraSB3
cm90ZToKPiBPbiAwMy8xMi8yMDI1IDE2OjUyLCBTdmVuIFDDvHNjaGVsIHdyb3RlOgo+PiBBZGQg
YSBuZXcgY29tcGF0aWJsZSBmb3IgdGhlIFJHQTMgKFJhc3RlciBHcmFwaGljIEFjY2VsZXJhdGlv
biAzKQo+PiBwZXJpcGhlcmFsIGZvdW5kIG9uIHRoZSBSSzM1ODggU29DLgo+Pgo+PiBUaGUgZXhp
c3RpbmcgcmdhIG5vZGUgcmVmZXJzIHRvIHRoZSBSR0EyIHBlcmlwaGVyYWwuIFRoZSBSSzM1ODgK
PiBXaGF0IGlzICJleGlzdGluZyByZ2Egbm9kZSI/IFRoZXJlIGlzIG5vIG5vZGUgaGVyZS4gVGhp
cyBpcyBhIHBhdGNoIGZvcgo+IGJpbmRpbmdzLCBzbyB5b3Ugc2F5IHdoaWNoIGhhcmR3YXJlIGV4
aXN0aW5nIGJpbmRpbmcgZGVzY3JpYmVzIGFuZCB3aGF0Cj4gYXJlIHRoZSBkaWZmZXJlbmNlcyBh
Z2FpbnN0IHRoYXQgb2xkZXIgaGFyZHdhcmUuClllYWggdGhhdCBpcyBtaXNsZWFkaW5nLiBJIHJl
ZmVyIHRvIHRoZSBleGlzdGluZyBiaW5kaW5nL2NvbXBhdGlibGUgCnZhbHVlcyBvZiByb2NrY2hp
cC1yazN4eHgtcmdhIHdoaWNoIGRlc2NyaWJlIHRoZSBoYXJkd2FyZSBuYW1lZCBSR0EyIGluIAp0
aGUgcmszNTg4IFRSTS4KPgo+PiBjb250YWlucyBvbmUgUkdBMiBjb3JlIGFuZCB0d28gUkdBMyBj
b3Jlcy4gQm90aCBmZWF0dXJlIGEgc2ltaWxhcgo+PiBmdW5jdGlvbmFsaXR5IG9mIHNjYWxpbmcs
IGNyb3BwaW5nIGFuZCByb3RhdGluZyBvZiB1cCB0byB0d28gaW5wdXQKPj4gaW1hZ2VzIGludG8g
b25lIG91dHB1dCBpbWFnZS4gS2V5IGRpZmZlcmVuY2VzIG9mIHRoZSBSR0EzIGFyZToKPj4KPj4g
LSBzdXBwb3J0cyAxMGJpdCBZVVYgb3V0cHV0IGZvcm1hdHMKPj4gLSBzdXBwb3J0cyA4eDggdGls
ZXMgYW5kIEZCQ0QgYXMgaW5wdXRzIGFuZCBvdXRwdXRzCj4+IC0gc3VwcG9ydHMgQlQyMDIwIGNv
bG9yIHNwYWNlIGNvbnZlcnNpb24KPj4gLSBtYXggb3V0cHV0IHJlc29sdXRpb24gb2YgKDgxOTIt
NjQpeCg4MTkyLTY0KQo+PiAtIE1NVSBjYW4gbWFwIHVwIHRvIDMyRyBERFIgUkFNCj4+IC0gZnVs
bHkgcGxhbmFyIGZvcm1hdHMgKDMgcGxhbmVzKSBhcmUgbm90IHN1cHBvcnRlZAo+PiAtIG1heCBz
Y2FsZSB1cC9kb3duIGZhY3RvciBvZiA4Cj4gImRpZmZlcmVuY2VzIiBpbiBtZWFuaW5nIG5vdGhp
bmcgYWJvdmUgaXMgc3VwcG9ydGVkIGJ5IFJHQTI/CgpleGNlcHQgdGhlIGxhc3QgdHdvIHBvaW50
cyB5ZXMuIFRoZSBSR0EyIHN1cHBvcnRzIGZ1bGx5IHBsYW5hciBmb3JtYXRzIAp3aXRoIDMgcGxh
bmVzIGFuZCBjYW4gc2NhbGUgdXAgdG8gYSBmYWN0b3Igb2YgMTYuIEZvciB0aGUgc2NhbGluZyBJ
IGNhbiAKYWRkIGEgbm90ZSB0byBtYWtlIGl0IG1vcmUgb2J2aW91cyB0aGF0IHRoZSBSR0EzIGlz
IHdvcnNlIGluIHRoaXMgcmVnYXJkLgoKU2luY2VyZWx5CiDCoCDCoCBTdmVuCgo+Cj4+IFNpZ25l
ZC1vZmYtYnk6IFN2ZW4gUMO8c2NoZWwgPHMucHVlc2NoZWxAcGVuZ3V0cm9uaXguZGU+Cj4+IC0t
LQo+IEFja2VkLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQG9z
cy5xdWFsY29tbS5jb20+Cj4KPgo+IEJlc3QgcmVnYXJkcywKPiBLcnp5c3p0b2YKPgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
