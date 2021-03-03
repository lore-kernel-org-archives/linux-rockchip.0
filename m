Return-Path: <SRS0=qEJD=IB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED993C433E0
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Mar 2021 23:24:14 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7EE7364F0D
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Mar 2021 23:24:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7EE7364F0D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:Cc:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2wUTMmTo+Z/T/QILgdqvkCO3Yymeg49yXpI/iSiIkKI=; b=mg1qOjrYcX7xhYT0GyOcc6IvA
	t5y9VqhEOuu3FkmhNLeJzLRGWImoel+C6hR28ovWxfirLPoBk9gp4Dxc9P2NWOro59J2vfvIUHMvN
	NPVCDxmm4KPf0lyspsEHe/rssNxAN3pH7W8CWaRVmAlrQvOJaWUW3f4OnTeASwpIV4SdP6XIJyidz
	z22HQ6RXvAWMf/8XQgBIdxIaFr/mbqYWsWia+EAjaKLMrnvwZb8WkGwcNOGUed8eJdDuA6sf2HiLE
	29KX25WP+K+1YzwnMeoaimAE0M2jvwIa3Vb0wEft/rp1IoNizlj0SFuqZpii3k9XabSR+mcanYGc3
	ZdDTkb4hA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHaqc-006wMN-T4; Wed, 03 Mar 2021 23:24:07 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHUJe-005aro-SD
 for linux-rockchip@desiato.infradead.org; Wed, 03 Mar 2021 16:25:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=MIME-Version:Content-Transfer-Encoding:
 Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=1ajbgzX/9QdvxSP/pOLPhysFBv/eof0DG+Vtqsui+4o=; b=gsHGKD5LN4V2a/wTbfsN9V4wiL
 xkPXPJ8fE3i0smpBT/BQJVHMcCKjcpsX87AdsFuF/X8hbmmfK6GPBloIE5O4BdWve4DikdBnvhFbz
 YeV0v7WKYrpx02ra3NbjGNQ+g5MZRMbRu31u8xcmNRsqHWMHGpiETJbJ6E7rtNPvlXTH2vL3k9drj
 BvUkxZ3zCvF5Glw71PGg/5AEWm1q2TAkLh/o/X7Ya/DE5V4dcoeKDlF9S9q7dxStXHLbLb1raQCL9
 TERhiV9DFKodgANfLltD6rKzz07nshQnIkJzCwi/i4vMfPqrDmUBz57nuS4bguV1q/1CYj5jSyZlD
 q5lUQ+vQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHUJT-003Nf9-QH
 for linux-rockchip@lists.infradead.org; Wed, 03 Mar 2021 16:25:32 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1lHUJL-00017T-6G; Wed, 03 Mar 2021 17:25:19 +0100
Received: from pza by lupine with local (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1lHUJK-0003MJ-Ef; Wed, 03 Mar 2021 17:25:18 +0100
Message-ID: <c12d84b955b0265dbcf89f2d7fc4d5c28bc74756.camel@pengutronix.de>
Subject: Re: [PATCH v3 0/5] Reset driver for IMX8MQ VPU hardware block
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com, 
 ezequiel@collabora.com, mchehab@kernel.org, gregkh@linuxfoundation.org
Cc: kernel@pengutronix.de, linux-imx@nxp.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 devel@driverdev.osuosl.org, kernel@collabora.com
Date: Wed, 03 Mar 2021 17:25:18 +0100
In-Reply-To: <2d55ad69-9b93-ab0e-04af-cd775cc9248b@collabora.com>
References: <20210301151754.104749-1-benjamin.gaignard@collabora.com>
 <e6f8537d2a1f34d0a424b68e056c0ae556c93efd.camel@pengutronix.de>
 <2d55ad69-9b93-ab0e-04af-cd775cc9248b@collabora.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210303_162532_347928_F3B21CBD 
X-CRM114-Status: GOOD (  26.04  )
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

T24gV2VkLCAyMDIxLTAzLTAzIGF0IDE2OjIwICswMTAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90
ZToKPiBMZSAwMy8wMy8yMDIxIMOgIDE1OjE3LCBQaGlsaXBwIFphYmVsIGEgw6ljcml0IDoKPiA+
IEhpIEJlbmphbWluLAo+ID4gCj4gPiBPbiBNb24sIDIwMjEtMDMtMDEgYXQgMTY6MTcgKzAxMDAs
IEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+ID4gPiBUaGUgdHdvIFZQVXMgaW5zaWRlIElNWDhN
USBzaGFyZSB0aGUgc2FtZSBjb250cm9sIGJsb2NrIHdoaWNoIGNhbiBiZSBzZWUKPiA+ID4gYXMg
YSByZXNldCBoYXJkd2FyZSBibG9jay4KPiA+IFRoaXMgaXNuJ3QgYSByZXNldCBjb250cm9sbGVy
IHRob3VnaC4gVGhlIGNvbnRyb2wgYmxvY2sgYWxzbyBjb250YWlucwo+ID4gY2xvY2sgZ2F0ZXMg
b2Ygc29tZSBzb3J0IGFuZCBhIGZpbHRlciByZWdpc3RlciBmb3IgdGhlIGZlYXR1cmVzZXQgZnVz
ZXMuCj4gPiBUaG9zZSBzaG91bGRuJ3QgYmUgbWFuaXB1bGF0ZWQgdmlhIHRoZSByZXNldCBBUEku
Cj4gCj4gVGhleSBhcmUgYWxsIHBhcnQgb2YgdGhlIGNvbnRyb2wgYmxvY2sgYW5kIG9mIHRoZSBy
ZXNldCBwcm9jZXNzIGZvciB0aGlzCj4gaGFyZHdhcmUgdGhhdCB3aHkgSSBwdXQgdGhlbSBoZXJl
LiBJIGd1ZXNzIGl0IGlzIGJvcmRlciBsaW5lIDotKQoKSSdtIHB1c2hpbmcgYmFjayB0byBrZWVw
IHRoZSByZXNldCBjb250cm9sIGZyYW1ld29yayBmb2N1c2VkIG9uCmNvbnRyb2xsaW5nIHJlc2V0
IGxpbmVzLiBFdmVyeSBzaWRlIGVmZmVjdCAoc3VjaCBhcyB0aGUgYXN5bW1ldHJpYyBjbG9jawp1
bmdhdGluZykgaW4gYSByYW5kb20gZHJpdmVyIG1ha2VzIGl0IGhhcmRlciB0byByZWFzb24gYWJv
dXQgYmVoYXZpb3VyCmF0IHRoZSBBUEkgbGV2ZWwsIGFuZCB0byByZXZpZXcgcGF0Y2hlcyBmb3Ig
aGFyZHdhcmUgSSBhbSBub3QgZmFtaWxpYXIKd2l0aC4KCj4gPiA+IEluIG9yZGVyIHRvIGJlIGFi
bGUgdG8gYWRkIHRoZSBzZWNvbmQgVlBVIChmb3IgSEVDViBkZWNvZGluZykgaXQgd2lsbCBiZQo+
ID4gPiBtb3JlIGhhbmR5IGlmIHRoZSBib3RoIFZQVSBkcml2ZXJzIGluc3RhbmNlIGRvbid0IGhh
dmUgdG8gc2hhcmUgdGhlCj4gPiA+IGNvbnRyb2wgYmxvY2sgcmVnaXN0ZXJzLiBUaGlzIGxlYWQg
dG8gaW1wbGVtZW50IGl0IGFzIGFuIGluZGVwZW5kIHJlc2V0Cj4gPiA+IGRyaXZlciBhbmQgdG8g
Y2hhbmdlIHRoZSBWUFUgZHJpdmVyIHRvIHVzZSBpdC4KPiA+IFdoeSBub3Qgc3dpdGNoIHRvIGEg
c3lzY29uIHJlZ21hcCBmb3IgdGhlIGNvbnRyb2wgYmxvY2s/IFRoYXQgc2hvdWxkCj4gPiBhbHNv
IGFsbG93IHRvIGtlZXAgYmFja3dhcmRzIGNvbXBhdGliaWxpdHkgd2l0aCB0aGUgb2xkIGJpbmRp
bmcgd2l0aAo+ID4gbWluaW1hbCBlZmZvcnQuCj4gCj4gSSB3aWxsIGdpdmUgYSB0cnkgaW4gdGhp
cyBkaXJlY3Rpb24uCgpUaGFuayB5b3UuCgo+ID4gPiBQbGVhc2Ugbm90ZSB0aGF0IHRoaXMgc2Vy
aWVzIGJyZWFrIHRoZSBjb21wYXRpYmlsaXR5IGJldHdlZW4gdGhlIERUQiBhbmQKPiA+ID4ga2Vy
bmVsLiBUaGlzIGJyZWFrIGlzIGxpbWl0ZWQgdG8gSU1YOE1RIFNvQyBhbmQgaXMgZG9uZSB3aGVu
IHRoZSBkcml2ZXIKPiA+ID4gaXMgc3RpbGwgaW4gc3RhZ2luZyBkaXJlY3RvcnkuCj4gPiBJIGtu
b3cgaW4gdGhpcyBjYXNlIHdlIGFyZSBwcmV0dHkgc3VyZSB0aGVyZSBhcmUgbm8gdXNlcnMgb2Yg
dGhpcwo+ID4gYmluZGluZyBleGNlcHQgZm9yIGEgc3RhZ2luZyBkcml2ZXIsIGJ1dCBpdCB3b3Vs
ZCBzdGlsbCBiZSBuaWNlIHRvIGtlZXAKPiA+IHN1cHBvcnQgZm9yIHRoZSBkZXByZWNhdGVkIGJp
bmRpbmcsIHRvIGF2b2lkIHRoZSByZXF1aXJlbWVudCBvZiB1cGRhdGluZwo+ID4ga2VybmVsIGFu
ZCBEVCBpbiBsb2NrLXN0ZXAuCj4gCj4gSWYgSSB3YW50IHRvIHVzZSBhIHN5c2NvbiAob3IgYSBy
ZXNldCkgdGhlIGRyaXZlciBtdXN0IG5vdCBpb3JlbWFwIHRoZSAiY3RybCIKPiByZWdpc3RlcnMu
IEl0IG1lYW5zIHRoYXQgImN0cmwiIGhhcyB0byBiZSByZW1vdmVkIGZyb20gdGhlIGRyaXZlciBy
ZXF1ZXN0ZWQKPiByZWctbmFtZXMgKGlteDhtcV9yZWdfbmFtZXNbXSkuIERvaW5nIHRoYXQgYnJl
YWsgdGhlIGtlcm5lbC9EVCBjb21wYXRpYmlsaXR5Lgo+IFNvbWVob3cgc3lzY29uIGFuZCAiY3Ry
bCIgYXJlIGV4Y2x1c2l2ZS4KClRoZSB3YXkgdGhlIGRyaXZlciBpcyBzZXQgdXAgY3VycmVudGx5
LCB5ZXMuIFlvdSBjb3VsZCBhZGQgYSBiaXQgb2YKcGxhdGZvcm0gc3BlY2lmaWMgcHJvYmUgY29k
ZSwgdGhvdWdoLCB0aGF0IHdvdWxkIHNldCB1cCB0aGUgcmVnbWFwCmVpdGhlciBieSBjYWxsaW5n
CglzeXNjb25fcmVnbWFwX2xvb2t1cF9ieV9waGFuZGxlKCk7CmZvciB0aGUgbmV3IGJpbmRpbmcs
IG9yLCBpZiB0aGUgcGhhbmRsZSBpcyBub3QgYXZhaWxhYmxlLCBmYWxsIGJhY2sgdG8KCXBsYXRm
b3JtX2dldF9yZXNvdXJjZV9ieW5hbWUoLi4uLCAiY3RybCIpOwoJZGV2bV9pb3JlbWFwX3Jlc291
cmNlKCk7CglkZXZtX3JlZ21hcF9pbml0X21taW8oKTsKZm9yIHRoZSBvbGQgYmluZGluZy4KVGhl
IGFjdHVhbCBjb2RlYyAucmVzZXQgYW5kIHZhcmlhbnQgLnJ1bnRpbWVfcmVzdW1lIG9wcyBjb3Vs
ZCBiZQppZGVudGljYWwgdGhlbi4KCnJlZ2FyZHMKUGhpbGlwcAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
