Return-Path: <SRS0=WkAD=KL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB61AC433ED
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 May 2021 23:04:44 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 29AF06113C
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 May 2021 23:04:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 29AF06113C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:Cc:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JYbjmnLHHh3F0oto2L1bT7tzjYg1oNeugMqu+Aou1iU=; b=FqeHHWA3Gx79TIO1IxlMj3RCV
	nGmE6659GgcO6Vob6nm8m+c3/kYRNj+8/klMK6mGt4eyrfScV/C95GA2ojAjWAt2cZfGe7qiHq7+a
	sV8AzmoS3T2OCk7xFIFmx+04AnpP6UiG3dPUdG1OHAp1vnXRiv+w4sy4mw8gz+yJFh3ooG/XAXsPV
	MHLoJCpBZVupgVxnAV3zeFviVrk+ge+OLshNi7YA6ZJ/cXVfvlWm1zGFsH1MxLvmelg50ZeWp0wi9
	pkJssJxalyXuevps8/jhF6W6qIv7yO5oWbzlSPpKDonx0UDIXOcGkJQyLJZ/CewefbieIJTJNBtkL
	aa00F733w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liPoK-00D7Sl-Fa; Sun, 16 May 2021 23:04:36 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liPo7-00D7S5-6h; Sun, 16 May 2021 23:04:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description;
 bh=Mop8VArlmqSWZNL/vireSKstJkBai9BSzTjstpvj53A=; b=3Ttn3txqmsZDMqgMN+u+NHWIhA
 Lfz0ipIsYNhikE86oBhgQki/4mIonzAbHGsBRVPudlc+4zqiSd4EedqZlIT1hzSqefIcAuecPiO8m
 TBMyDJtq46UWVee5Kg7vNDn8x4Z1vmVe7UaxctAfHuLv3m9SzI/QVXp/0v+jQpKCb30lTb3mEqbyO
 4oiecuHOFA/zLHkF58uHYykTy9I38MkhEkKM8bxDIoAkkNLefSHnUPg+zZeOAxLRV66W4XYrK5Tzc
 WRr+h//DC8SejKHxDIBlEaIlIA0dlYo9ARidmtL/cawhw66ngXxPPWku2ziOzxpZsVvzflK24W736
 kduYFUtA==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liPo4-00DKV9-5S; Sun, 16 May 2021 23:04:21 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id D03971F40F2E
Message-ID: <f46b9c889914360348f218b45f10a06bd1bd8595.camel@collabora.com>
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
Date: Sun, 16 May 2021 20:04:05 -0300
In-Reply-To: <815a4bd6-599b-cfb8-9ddc-efa4b7092c23@xs4all.nl>
References: <20210420121046.181889-1-benjamin.gaignard@collabora.com>
 <20210420121046.181889-7-benjamin.gaignard@collabora.com>
 <a7c9fe23-2900-ac90-7131-21380fbfc793@xs4all.nl>
 <1cf94540-7f4d-0179-dd1e-0b82ee30f6d2@collabora.com>
 <815a4bd6-599b-cfb8-9ddc-efa4b7092c23@xs4all.nl>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210516_160420_489638_62434953 
X-CRM114-Status: GOOD (  41.81  )
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

SGkgSGFucywKCk9uIFRodSwgMjAyMS0wNS0wNiBhdCAxNDo1MCArMDIwMCwgSGFucyBWZXJrdWls
IHdyb3RlOgo+IE9uIDA1LzA1LzIwMjEgMTc6MjAsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+
ID4gCj4gPiBMZSAwNS8wNS8yMDIxIMOgIDE2OjU1LCBIYW5zIFZlcmt1aWwgYSDDqWNyaXTCoDoK
PiA+ID4gT24gMjAvMDQvMjAyMSAxNDoxMCwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4gPiA+
ID4gVGhlIEhFVkMgSEFOVFJPIGRyaXZlciBuZWVkcyB0byBrbm93IHRoZSBudW1iZXIgb2YgYml0
cyB0byBza2lwIGF0Cj4gPiA+ID4gdGhlIGJlZ2lubmluZyBvZiB0aGUgc2xpY2UgaGVhZGVyLgo+
ID4gPiA+IFRoYXQgaXMgYSBoYXJkd2FyZSBzcGVjaWZpYyByZXF1aXJlbWVudCBzbyBjcmVhdGUg
YSBkZWRpY2F0ZWQgY29udHJvbAo+ID4gPiA+IGZvciB0aGlzIHB1cnBvc2UuCj4gPiA+ID4gCj4g
PiA+ID4gU2lnbmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJk
QGNvbGxhYm9yYS5jb20+Cj4gPiA+ID4gLS0tCj4gPiA+ID4gwqAgLi4uL3VzZXJzcGFjZS1hcGkv
bWVkaWEvZHJpdmVycy9oYW50cm8ucnN0wqDCoMKgIHwgMTkgKysrKysrKysrKysrKysrKysrKwo+
ID4gPiA+IMKgIC4uLi91c2Vyc3BhY2UtYXBpL21lZGlhL2RyaXZlcnMvaW5kZXgucnN0wqDCoMKg
wqAgfMKgIDEgKwo+ID4gPiA+IMKgIGluY2x1ZGUvbWVkaWEvaGV2Yy1jdHJscy5owqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAxMyArKysrKysrKysrKysrCj4gPiA+ID4g
wqAgMyBmaWxlcyBjaGFuZ2VkLCAzMyBpbnNlcnRpb25zKCspCj4gPiA+ID4gwqAgY3JlYXRlIG1v
ZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS9kcml2ZXJzL2hhbnRy
by5yc3QKPiA+ID4gPiAKPiA+ID4gPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi91c2Vyc3Bh
Y2UtYXBpL21lZGlhL2RyaXZlcnMvaGFudHJvLnJzdCBiL0RvY3VtZW50YXRpb24vdXNlcnNwYWNl
LWFwaS9tZWRpYS9kcml2ZXJzL2hhbnRyby5yc3QKPiA+ID4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0
NAo+ID4gPiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uY2Q5NzU0YjRlMDA1Cj4gPiA+ID4gLS0tIC9k
ZXYvbnVsbAo+ID4gPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS9k
cml2ZXJzL2hhbnRyby5yc3QKPiA+ID4gPiBAQCAtMCwwICsxLDE5IEBACj4gPiA+ID4gKy4uIFNQ
RFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCj4gPiA+ID4gKwo+ID4gPiA+ICtIYW50cm8g
dmlkZW8gZGVjb2RlciBkcml2ZXIKPiA+ID4gPiArPT09PT09PT09PT09PT09PT09PT09PT09PT09
Cj4gPiA+ID4gKwo+ID4gPiA+ICtUaGUgSGFudHJvIHZpZGVvIGRlY29kZXIgZHJpdmVyIGltcGxl
bWVudHMgdGhlIGZvbGxvd2luZyBkcml2ZXItc3BlY2lmaWMgY29udHJvbHM6Cj4gPiA+ID4gKwo+
ID4gPiA+ICtgYFY0TDJfQ0lEX0hBTlRST19IRVZDX1NMSUNFX0hFQURFUl9TS0lQIChpbnRlZ2Vy
KWBgCj4gPiA+ID4gK8KgwqDCoCBTcGVjaWZpZXMgdG8gSGFudHJvIEhFVkMgdmlkZW8gZGVjb2Rl
ciBkcml2ZXIgdGhlIG51bWJlciBvZiBkYXRhIChpbiBiaXRzKSB0bwo+ID4gPiA+ICvCoMKgwqAg
c2tpcCBpbiB0aGUgc2xpY2Ugc2VnbWVudCBoZWFkZXIuCj4gPiA+ID4gK8KgwqDCoCBJZiBub24t
SURSLCB0aGUgYml0cyB0byBiZSBza2lwcGVkIGdvIGZyb20gc3ludGF4IGVsZW1lbnQgInBpY19v
dXRwdXRfZmxhZyIKPiA+ID4gPiArwqDCoMKgIHRvIGJlZm9yZSBzeW50YXggZWxlbWVudCAic2xp
Y2VfdGVtcG9yYWxfbXZwX2VuYWJsZWRfZmxhZyIuCj4gPiA+ID4gK8KgwqDCoCBJZiBJRFIsIHRo
ZSBza2lwcGVkIGJpdHMgYXJlIGp1c3QgInBpY19vdXRwdXRfZmxhZyIKPiA+ID4gPiArwqDCoMKg
IChzZXBhcmF0ZV9jb2xvdXJfcGxhbmVfZmxhZyBpcyBub3Qgc3VwcG9ydGVkKS4KPiA+ID4gSSdt
IG5vdCB2ZXJ5IGtlZW4gb24gdGhpcy4gV2l0aG91dCB0aGlzIGluZm9ybWF0aW9uIHRoZSB2aWRl
byBkYXRhIGNhbm5vdCBiZQo+ID4gPiBkZWNvZGVkLCBvciB3aWxsIGl0IGp1c3QgYmUgc3Vib3B0
aW1hbD8KPiA+IAo+ID4gV2l0aG91dCB0aGF0IGluZm9ybWF0aW9uIHRoZSB2aWRlbyBjYW4ndCBi
ZSBkZWNvZGVkLgo+ID4gCj4gPiA+IAo+ID4gPiBUaGUgcHJvYmxlbSBpcyB0aGF0IGEgZ2VuZXJp
YyBkZWNvZGVyIHdvdWxkIGhhdmUgdG8ga25vdyB0aGF0IHRoZSBIVyBpcyBhIGhhbnRybywKPiA+
ID4gYW5kIHRoZW4gY2FsbCB0aGlzIGNvbnRyb2wuIElmIHRoZXkgZG9uJ3QgKGFuZCBhcmUgdGVz
dGluZyBvbiBub24taGFudHJvIEhXKSwgdGhlbgo+ID4gPiBpdCB3b24ndCB3b3JrLCB0aHVzIGRl
ZmVhdGluZyB0aGUgcHVycG9zZSBvZiB0aGUgSFcgaW5kZXBlbmRlbnQgZGVjb2RlciBBUEkuCj4g
PiA+IAo+ID4gPiBTaW5jZSBoYW50cm8gaXMgd2lkZWx5IHVzZWQsIGFuZCBpZiB0aGVyZSBpcyBu
byBvdGhlciB3YXkgdG8gZG8gdGhpcyBiZXNpZGUgZXhwbGl0ZWx5Cj4gPiA+IHNldHRpbmcgdGhp
cyBjb250cm9sLCB0aGVuIHBlcmhhcHMgdGhpcyBzaG91bGQgYmUgcGFydCBvZiB0aGUgc3RhbmRh
cmQgSEVWQyBBUEkuCj4gPiA+IE5vbi1oYW50cm8gZHJpdmVycyB0aGF0IGRvIG5vdCBuZWVkIHRo
aXMgY2FuIGp1c3Qgc2tpcCBpdC4KPiA+IAo+ID4gRXZlbiBpZiBJIHB1dCB0aGlzIHBhcmFtZXRl
ciBpbiBkZWNvZGVfcGFyYW1zIHN0cnVjdHVyZSB0aGF0IHdvdWxkIG1lYW5zIHRoYXQgYSBnZW5l
cmljCj4gPiB1c2VybGFuZCBkZWNvZGVyIHdpbGwgaGF2ZSB0byBrbm93IGhvdyB0aGUgY29tcHV0
ZSB0aGlzIHZhbHVlIGZvciBoYW50cm8gSFcgc2luY2UgaXQKPiA+IGlzbid0IHNvbWV0aGluZyB0
aGF0IGNvdWxkIGJlIGRvbmUgb24ga2VybmVsIHNpZGUuCj4gCj4gQnV0IHNpbmNlIGhhbnRybyBp
cyB2ZXJ5IGNvbW1vbiwgYW55IHVzZXJsYW5kIGRlY29kZXIgd2lsbCBuZWVkIHRvIGNhbGN1bGF0
ZSB0aGlzIGFueXdheS4KPiBTbyBwZXJoYXBzIGl0IGlzIGJldHRlciB0byBoYXZlIHRoaXMgYXMg
cGFydCBvZiB0aGUgZGVjb2RlX3BhcmFtcz8KPiAKPiBJJ2QgbGlrZSB0byBrbm93IHdoYXQgb3Ro
ZXJzIHRoaW5rIGFib3V0IHRoaXMuCj4gCgpBcyB5b3Uga25vdywgSSdtIG5vdCBhIGZhbiBvZiBj
YXJyeWluZyB0aGVzZSAidW5zdGFibGUiIEFQSXMgYXJvdW5kLgpJIGtub3cgaXQncyBiZXR0ZXIg
dGhhbiBub3RoaW5nLCBidXQgSSBmZWVsIHRoZXkgY3JlYXRlIHRoZSBpbGx1c2lvbgpvZiB0aGUg
aW50ZXJmYWNlIGJlaW5nIHN1cHBvcnRlZCBpbiBtYWlubGluZS4gU2luY2UgaXQncyB1bnN0YWJs
ZSwKaXQncyBkaWZmaWN1bHQgZm9yIGFwcGxpY2F0aW9ucyB0byBhZG9wdCB0aGVtLgoKQXMgTmlj
b2xhcyBtZW50aW9uZWQsIHRoaXMgbWVhbnMgbmVpdGhlciBGRm1wZWcgbm9yIEdTdHJlYW1lciB3
aWxsIGFkb3B0CnRoZXNlIEFQSXMsIHdoaWNoIHdvcnJpZXMgbWUsIGFzIHRoYXQgbWVhbnMgd2Ug
bG9zZSB0d28gbWFqb3IgdXNlciBiYXNlcy4KCk15IHBlcnNvbmFsIHRha2UgZnJvbSB0aGlzLCBp
cyB0aGF0IHdlIG5lZWQgdG8gZmluZCB3YXlzIHRvIHN0YWJpbGl6ZQpvdXIgc3RhdGVsZXNzIGNv
ZGVjIEFQSXMgaW4gbGVzcyB0aW1lIGFuZCBwZXJoYXBzIHdpdGggbGVzcyBlZmZvcnQuCgpJTU8s
IGEgbGVzcyBzdGlmZiBpbnRlcmZhY2UgY291bGQgaGVscCB1cyBoZXJlLCBhbmQgdGhhdCdzIHdo
eSBJIHRoaW5rCmhhdmluZyBoYXJkd2FyZS1zcGVjaWZpYyBjb250cm9scyBjYW4gYmUgdXNlZnVs
LiBIYXJkd2FyZSBkZXNpZ25lcnMKY2FuIGJlIHNvIGNyZWF0aXZlIDopCgpJJ20gbm90IGFnYWlu
c3QgaW50cm9kdWNpbmcgdGhpcyBzcGVjaWZpYyBwYXJhbWV0ZXIgaW4KdjRsMl9jdHJsX2hldmNf
Y29kZWNfcGFyYW1zLCBhcmd1aW5nIHRoYXQgSGFudHJvIGlzIHdpZGVseSB1c2VkLApidXQgSSdk
IGxpa2UgdXMgdG8gYmUgb3BlbiB0byBoYXJkd2FyZS1zcGVjaWZpYyBjb250cm9scyBhcyBhIHdh
eQp0byBleHRlbmQgdGhlIEFQSXMgc2VhbWxlc3NseS4KCkFwcGxpY2F0aW9ucyB3b24ndCBoYXZl
IHRvIF9rbm93XyB3aGF0IGhhcmR3YXJlIHRoZXkgYXJlIHJ1bm5pbmcgb24sCnRoZXkgY2FuIGp1
c3QgdXNlIFZJRElPQ19RVUVSWUNUUkwgdG8gZmluZCBvdXQgd2hpY2ggY29udHJvbHMgYXJlIG5l
ZWRlZC4KClRoYW5rcywKRXplcXVpZWwKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
