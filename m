Return-Path: <SRS0=mpbD=JY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E133EC433B4
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Apr 2021 15:18:54 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3AF166101B
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Apr 2021 15:18:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3AF166101B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:Cc:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AaW1x+eCg5SoSGgIuRV/7pKNpx1+Z87w26bGN471V7M=; b=gaaOo9AublILV9eQQOVAO0Bqr
	jZyMFTkAysRu7imZb49K/7PJ99hrOA9giHSrn3d11Yf74SYJlDLStBK8lBNa1zIinLS981MS5LHg5
	+rw/paIFCbH0hxPdJg43bjE4uz4NhcdJa43YOIWpPBr+S6A1CUOe6gu/ooxxWYGszxwIBcMIOoXMk
	cIGFoahpPI+9HqkXv6F8ufWJLNBmhmlr7Pd7kZrA4FV1oJBkEf8U9W7WPZZoSL7AltyeirsS7+6OB
	kAWHnQxEeYDYH8u8hJnWh47Rd9qyVuQhYQXM6b3XmXDbckVA88T1NzyyD0tIq3TMh+QHG/kI+0kpX
	wb6KQxoWA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbPU7-001owb-Q6; Tue, 27 Apr 2021 15:18:47 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbPU6-001owR-Px
 for linux-rockchip@desiato.infradead.org; Tue, 27 Apr 2021 15:18:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description;
 bh=iHfg3yVZ7AhWVLfOVFkUbz7LdBKiNWz8L4+/cRaj88o=; b=ITTtYukRKZSE/CZZKhlYHxi6x2
 437FkrlFp9LbTYceWfLm3dFfJsvKXsw/KXqdw8JTO1jaiOJFkFskwE4Jkdpnjf+MUwFT3yBYr1G6R
 zxo3B4a7I9SH1l35Bh9m8+EyOx5d3PknY9nmmeinPmDeaCE2YuzMZkzJMxAMRXiHgV6zakW8USO8X
 Zum+2oqiTjZp4lDRTg9zfwm2yW6eaPA/SAUkXHIjT4boBOpaPig9B5iCMc/9FQWTyCZcrjvtDwMob
 7AGJPodWP483bPcGsDYGioAvB0X9chRsg0Uw4aA2IWIGjF9o9XWCqqt88BM+gWeaB7GmXVnOibA9M
 JcvUGZlQ==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbPU4-00Gohf-2k
 for linux-rockchip@lists.infradead.org; Tue, 27 Apr 2021 15:18:45 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 132381F4265E
Message-ID: <95ea572e201545b27ff9f48313f7aaea157d4764.camel@collabora.com>
Subject: Re: [PATCH v3 79/79] media: hantro: document the usage of
 pm_runtime_get_sync()
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Robin Murphy <robin.murphy@arm.com>, Mauro Carvalho Chehab
 <mchehab+huawei@kernel.org>
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org,  linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Date: Tue, 27 Apr 2021 12:18:32 -0300
In-Reply-To: <02948673-9572-a570-d28e-03a7208f39e1@arm.com>
References: <cover.1619519080.git.mchehab+huawei@kernel.org>
 <230f22170db7fa57b49cff4570cef15bf11b2ad5.1619519080.git.mchehab+huawei@kernel.org>
 <02948673-9572-a570-d28e-03a7208f39e1@arm.com>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210427_081844_269842_781D529C 
X-CRM114-Status: GOOD (  21.59  )
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

T24gVHVlLCAyMDIxLTA0LTI3IGF0IDE2OjA4ICswMTAwLCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4g
T24gMjAyMS0wNC0yNyAxMToyNywgTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIHdyb3RlOgo+ID4gRGVz
cGl0ZSBvdGhlciAqX2dldCgpLypfcHV0KCkgZnVuY3Rpb25zLCB3aGVyZSB1c2FnZSBjb3VudCBp
cwo+ID4gaW5jcmVtZW50ZWQgb25seSBpZiBub3QgZXJyb3JzLCB0aGUgcG1fcnVudGltZV9nZXRf
c3luYygpIGhhcwo+ID4gYSBkaWZmZXJlbnQgYmVoYXZpb3IsIGluY3JlbWVudGluZyB0aGUgY291
bnRlciAqZXZlbiogb24KPiA+IGVycm9ycy4KPiA+IAo+ID4gVGhhdCdzIGFuIGVycm9yIHByb25l
IGJlaGF2aW9yLCBhcyBwZW9wbGUgb2Z0ZW4gZm9yZ2V0IHRvCj4gPiBkZWNyZW1lbnQgdGhlIHVz
YWdlIGNvdW50ZXIuCj4gPiAKPiA+IEhvd2V2ZXIsIHRoZSBoYW50cm8gZHJpdmVyIGRlcGVuZHMg
b24gdGhpcyBiZWhhdmlvciwgYXMgaXQKPiA+IHdpbGwgZGVjcmVtZW50IHRoZSB1c2FnZV9jb3Vu
dCB1bmNvbmRpdGlvbmFsbHkgYXQgdGhlIG0ybQo+ID4gam9iIGZpbmlzaCB0aW1lLCB3aGljaCBt
YWtlcyBzZW5zZS4KPiA+IAo+ID4gU28sIGludGVhZCBvZiB1c2luZyB0aGUgcG1fcnVudGltZV9y
ZXN1bWVfYW5kX2dldCgpIHRoYXQKPiA+IHdvdWxkIGRlY3JlbWVudCB0aGUgY291bnRlciBvbiBl
cnJvciwga2VlcCB0aGUgY3VycmVudAo+ID4gQVBJLCBidXQgYWRkIGEgZG9jdW1lbnRhdGlvbiBl
eHBsYWluaW5nIHRoZSByYXRpb25hbGUgZm9yCj4gPiBrZWVwIHVzaW5nIHBtX3J1bnRpbWVfZ2V0
X3N5bmMoKS4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIDxt
Y2hlaGFiK2h1YXdlaUBrZXJuZWwub3JnPgo+ID4gLS0tCj4gPiDCoCBkcml2ZXJzL3N0YWdpbmcv
bWVkaWEvaGFudHJvL2hhbnRyb19kcnYuYyB8IDcgKysrKysrKwo+ID4gwqAgMSBmaWxlIGNoYW5n
ZWQsIDcgaW5zZXJ0aW9ucygrKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5n
L21lZGlhL2hhbnRyby9oYW50cm9fZHJ2LmMgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJv
L2hhbnRyb19kcnYuYwo+ID4gaW5kZXggNTk1ZTgyYTgyNzI4Li45NmY5NDBjMWM4NWMgMTAwNjQ0
Cj4gPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYuYwo+ID4g
KysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZHJ2LmMKPiA+IEBAIC0x
NTUsNiArMTU1LDEzIEBAIHN0YXRpYyB2b2lkIGRldmljZV9ydW4odm9pZCAqcHJpdikKPiA+IMKg
wqDCoMKgwqDCoMKgwqByZXQgPSBjbGtfYnVsa19lbmFibGUoY3R4LT5kZXYtPnZhcmlhbnQtPm51
bV9jbG9ja3MsIGN0eC0+ZGV2LT5jbG9ja3MpOwo+ID4gwqDCoMKgwqDCoMKgwqDCoGlmIChyZXQp
Cj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGdvdG8gZXJyX2NhbmNlbF9qb2I7
Cj4gCj4gLi5leGNlcHQgdGhpcyBjYW4gYWxzbyBjYXVzZSB0aGUgc2FtZSBwbV9ydW50aW1lX3B1
dF9hdXRvc3VzcGVuZCgpIGNhbGwgCj4gd2l0aG91dCBldmVuIHJlYWNoaW5nIHRoZSAibWF0Y2hp
bmciIGdldCBiZWxvdywgc28gcmF0aGVyIHRoYW4gc29tZSBraW5kIAo+IG9mIGNsZXZlcm5lc3Mg
aXQgc2VlbXMgbW9yZSBsaWtlIGl0J3MganVzdCBicm9rZW4gOi8KPiAKCkluZGVlZCwgSSB3YXMg
dHJ5aW5nIHRvIGZpbmQgdGltZSB0byBjb29rIGEgcXVpY2sgcGF0Y2gsIGJ1dCBrZXB0CmdldHRp
bmcgcHJlZW1wdGVkLgoKRmVlbCBmcmVlIHRvIHN1Ym1pdCBhIGZpeCBmb3IgdGhpcywgb3RoZXJ3
aXNlLCBJJ2xsIHRyeSB0byBmaW5kCnRpbWUgbGF0ZXIgdGhpcyB3ZWVrLgoKVGhhbmtzLApFemVx
dWllbAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
