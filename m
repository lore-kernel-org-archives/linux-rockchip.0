Return-Path: <SRS0=Kxb6=KA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F0D95C433B4
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 21:02:05 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0786561222
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 21:02:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0786561222
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:Cc:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sRzTQyxOmDsphOz+PqxTYUWNMIsivAjTZg7LKce1nSA=; b=HjvjJxSLG0jPzDCQdWy/9MwNC
	eCuLgFR/ufWzVG4w36f4AhCCNTHtbFLHvdoAwDItjy9ZVSbPSmqjSahySeRkD9RsEd45B40EpMZ0q
	cTW4lXHYRJyzZf8+Yq75BGgY6tLAAGJ0Hee0vNa9tkHH/QvjTh7+m0p5IAUPqrP3apwB9IkcBAHTV
	6jJ+OdfLotDy2uTTbKJN5fHUxw+zLiTyVq8fjv3BjGhYEyOf38zLAWoAOSU63A7Vn5ptWkWYoW1t7
	r1l5ibAOIXoiTJCo7FVYhUkb2yRFz9pjt33R7ebD44T7LZSnsnKk068iRJr597uwogffvmgdgkUSC
	dmllQvuJA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leOeZ-002KNz-EY; Wed, 05 May 2021 21:01:55 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leOeO-002KMt-O4; Wed, 05 May 2021 21:01:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description;
 bh=C9hfYTCfpdasjYKdX8qTGquKZMKPvGkmtuxoqq4EuTs=; b=NEKRfLVCO+Jc1HFIoCH8ZLUvOE
 DasPDW/WYrpE1SNQBBX7R/6+LTZHxF6WPdBhuVgJceBe0FE/pRyPjYQpbYmpMsB3eBLzJd/d+zSUq
 Yc3/kYMY2jjCHlfUYVkJl54ROLb4oDncXXHmY9gdUkoWGKVxZcnrghhm8HkqHd429GD9+T/mDBuTs
 dh15ezuoCJRt6qWOJhMcp+06nDJhHQgMtSjVG7BOLZGSNCWGYbcjR6yVenxjeunxoeIhKoQqXy956
 9rY6e+EbNha0FbDcqjyasBihFUPg3cXuWJ/t89aQZCxdlM/OJM/PX1tMiYEJOcjOPgLHpaJVhd54W
 FHVlNU1Q==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leOeL-005Gxy-MX; Wed, 05 May 2021 21:01:43 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id D21551F4322A
Message-ID: <f5d194db2bb70237c8b3b5072daac2d7ad404b84.camel@collabora.com>
Subject: Re: [PATCH v10 6/9] media: uapi: Add a control for HANTRO driver
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>, p.zabel@pengutronix.de,
 mchehab@kernel.org,  robh+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de,  festevam@gmail.com, lee.jones@linaro.org,
 gregkh@linuxfoundation.org,  mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org,  jernej.skrabec@siol.net,
 emil.l.velikov@gmail.com
Cc: kernel@pengutronix.de, linux-imx@nxp.com, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devel@driverdev.osuosl.org, kernel@collabora.com, cphealy@gmail.com
Date: Wed, 05 May 2021 18:01:25 -0300
In-Reply-To: <a7c9fe23-2900-ac90-7131-21380fbfc793@xs4all.nl>
References: <20210420121046.181889-1-benjamin.gaignard@collabora.com>
 <20210420121046.181889-7-benjamin.gaignard@collabora.com>
 <a7c9fe23-2900-ac90-7131-21380fbfc793@xs4all.nl>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_140141_888401_754F3243 
X-CRM114-Status: GOOD (  28.47  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

T24gV2VkLCAyMDIxLTA1LTA1IGF0IDE2OjU1ICswMjAwLCBIYW5zIFZlcmt1aWwgd3JvdGU6Cj4g
T24gMjAvMDQvMjAyMSAxNDoxMCwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4gPiBUaGUgSEVW
QyBIQU5UUk8gZHJpdmVyIG5lZWRzIHRvIGtub3cgdGhlIG51bWJlciBvZiBiaXRzIHRvIHNraXAg
YXQKPiA+IHRoZSBiZWdpbm5pbmcgb2YgdGhlIHNsaWNlIGhlYWRlci4KPiA+IFRoYXQgaXMgYSBo
YXJkd2FyZSBzcGVjaWZpYyByZXF1aXJlbWVudCBzbyBjcmVhdGUgYSBkZWRpY2F0ZWQgY29udHJv
bAo+ID4gZm9yIHRoaXMgcHVycG9zZS4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogQmVuamFtaW4g
R2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+Cj4gPiAtLS0KPiA+IMKg
Li4uL3VzZXJzcGFjZS1hcGkvbWVkaWEvZHJpdmVycy9oYW50cm8ucnN0wqDCoMKgIHwgMTkgKysr
KysrKysrKysrKysrKysrKwo+ID4gwqAuLi4vdXNlcnNwYWNlLWFwaS9tZWRpYS9kcml2ZXJzL2lu
ZGV4LnJzdMKgwqDCoMKgIHzCoCAxICsKPiA+IMKgaW5jbHVkZS9tZWRpYS9oZXZjLWN0cmxzLmjC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDEzICsrKysrKysrKysrKysK
PiA+IMKgMyBmaWxlcyBjaGFuZ2VkLCAzMyBpbnNlcnRpb25zKCspCj4gPiDCoGNyZWF0ZSBtb2Rl
IDEwMDY0NCBEb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvZHJpdmVycy9oYW50cm8u
cnN0Cj4gPiAKPiA+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVk
aWEvZHJpdmVycy9oYW50cm8ucnN0IGIvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL21lZGlh
L2RyaXZlcnMvaGFudHJvLnJzdAo+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiA+IGluZGV4IDAw
MDAwMDAwMDAwMC4uY2Q5NzU0YjRlMDA1Cj4gPiAtLS0gL2Rldi9udWxsCj4gPiArKysgYi9Eb2N1
bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvZHJpdmVycy9oYW50cm8ucnN0Cj4gPiBAQCAt
MCwwICsxLDE5IEBACj4gPiArLi4gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKPiA+
ICsKPiA+ICtIYW50cm8gdmlkZW8gZGVjb2RlciBkcml2ZXIKPiA+ICs9PT09PT09PT09PT09PT09
PT09PT09PT09PT0KPiA+ICsKPiA+ICtUaGUgSGFudHJvIHZpZGVvIGRlY29kZXIgZHJpdmVyIGlt
cGxlbWVudHMgdGhlIGZvbGxvd2luZyBkcml2ZXItc3BlY2lmaWMgY29udHJvbHM6Cj4gPiArCj4g
PiArYGBWNEwyX0NJRF9IQU5UUk9fSEVWQ19TTElDRV9IRUFERVJfU0tJUCAoaW50ZWdlcilgYAo+
ID4gK8KgwqDCoCBTcGVjaWZpZXMgdG8gSGFudHJvIEhFVkMgdmlkZW8gZGVjb2RlciBkcml2ZXIg
dGhlIG51bWJlciBvZiBkYXRhIChpbiBiaXRzKSB0bwo+ID4gK8KgwqDCoCBza2lwIGluIHRoZSBz
bGljZSBzZWdtZW50IGhlYWRlci4KPiA+ICvCoMKgwqAgSWYgbm9uLUlEUiwgdGhlIGJpdHMgdG8g
YmUgc2tpcHBlZCBnbyBmcm9tIHN5bnRheCBlbGVtZW50ICJwaWNfb3V0cHV0X2ZsYWciCj4gPiAr
wqDCoMKgIHRvIGJlZm9yZSBzeW50YXggZWxlbWVudCAic2xpY2VfdGVtcG9yYWxfbXZwX2VuYWJs
ZWRfZmxhZyIuCj4gPiArwqDCoMKgIElmIElEUiwgdGhlIHNraXBwZWQgYml0cyBhcmUganVzdCAi
cGljX291dHB1dF9mbGFnIgo+ID4gK8KgwqDCoCAoc2VwYXJhdGVfY29sb3VyX3BsYW5lX2ZsYWcg
aXMgbm90IHN1cHBvcnRlZCkuCj4gCj4gSSdtIG5vdCB2ZXJ5IGtlZW4gb24gdGhpcy4gV2l0aG91
dCB0aGlzIGluZm9ybWF0aW9uIHRoZSB2aWRlbyBkYXRhIGNhbm5vdCBiZQo+IGRlY29kZWQsIG9y
IHdpbGwgaXQganVzdCBiZSBzdWJvcHRpbWFsPwo+IAo+IFRoZSBwcm9ibGVtIGlzIHRoYXQgYSBn
ZW5lcmljIGRlY29kZXIgd291bGQgaGF2ZSB0byBrbm93IHRoYXQgdGhlIEhXIGlzIGEgaGFudHJv
LAoKQXBwbGljYXRpb25zIGNhbiBqdXN0IHF1ZXJ5IHdoaWNoIGNvbnRyb2xzIGFyZSBleHBvc2Vk
IGJ5IGEgdmlkZW8gZGV2aWNlLAphbmQgaWYgdGhpcyBjb250cm9sIGlzIGZvdW5kLCB0aGVuIGl0
IG1lYW5zIGl0IG5lZWRzIHRvIGJlIHNldC4KCj4gYW5kIHRoZW4gY2FsbCB0aGlzIGNvbnRyb2wu
IElmIHRoZXkgZG9uJ3QgKGFuZCBhcmUgdGVzdGluZyBvbiBub24taGFudHJvIEhXKSwgdGhlbgo+
IGl0IHdvbid0IHdvcmssIHRodXMgZGVmZWF0aW5nIHRoZSBwdXJwb3NlIG9mIHRoZSBIVyBpbmRl
cGVuZGVudCBkZWNvZGVyIEFQSS4KPiAKPiBTaW5jZSBoYW50cm8gaXMgd2lkZWx5IHVzZWQsIGFu
ZCBpZiB0aGVyZSBpcyBubyBvdGhlciB3YXkgdG8gZG8gdGhpcyBiZXNpZGUgZXhwbGl0ZWx5Cj4g
c2V0dGluZyB0aGlzIGNvbnRyb2wsIHRoZW4gcGVyaGFwcyB0aGlzIHNob3VsZCBiZSBwYXJ0IG9m
IHRoZSBzdGFuZGFyZCBIRVZDIEFQSS4KPiBOb24taGFudHJvIGRyaXZlcnMgdGhhdCBkbyBub3Qg
bmVlZCB0aGlzIGNhbiBqdXN0IHNraXAgaXQuCj4gCgpUaGUgZGVjaXNpb24gdG8gbW92ZSBpdCBv
dXQgb2YgdGhlIEhFVkMgQVBJIGlzIG5vdCByZWFsbHkgdG8gYXZvaWQgc2V0dGluZyBpdC4KSW4g
dGhlIGVuZCwgbW9zdC9hbGwgYXBwbGljYXRpb25zIHdpbGwgZW5kIHVwIHJlcXVpcmVkIHRvIHNl
dCB0aGlzIAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
