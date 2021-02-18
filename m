Return-Path: <SRS0=3svJ=HU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EEE45C433E0
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Feb 2021 10:15:46 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8213864E68
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Feb 2021 10:15:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8213864E68
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9Yyz+/nNkEffaOLS215yKS4ckF7zmHsBhqeccW+pM9Y=; b=NAjTHc+3bOpyiqGg2IsgzrkGA
	6kPYGYbkOu34Zz7iLGYLGudvXNhwYvXI03MCSmugIYAYYJOld91/G1L/5Qqx+ZpCGWI1fVbOwmT7X
	Iw/P8Vf7CgNXN7rTRp7OEjEoX3XzEIUbws9RssVnx2Uu3Ivg/KSVSIzoewluL0q/R1VLBwWE3z4V1
	fiQy8oMm78UpZqpnsw8tqDIfzu01j5XkeDQ0eHlPx8Gql8y7oBJWl0UIM6kHoRqV+W5C0DKvyAlBE
	9zxJ5gpCTWfF/6DKcj6AJ51AoqLxfWsY/ed+JI7SC2bQgcLCYlVD6QyccY1DLMhGTdZPX06lMH/XY
	BgxieZi/g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lCgLU-0001dW-Rr; Thu, 18 Feb 2021 10:15:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lCgLR-0001ca-Oa
 for linux-rockchip@lists.infradead.org; Thu, 18 Feb 2021 10:15:38 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1lCgL8-0002zv-7T; Thu, 18 Feb 2021 11:15:18 +0100
Message-ID: <c029c980937ab50847bd0fcf86501e85bdb91fd3.camel@pengutronix.de>
Subject: Re: [PATCH v1 03/18] arm64: dts: imx8mq-evk: add reserve memory
 node for CMA region
From: Lucas Stach <l.stach@pengutronix.de>
To: Ezequiel Garcia <ezequiel@collabora.com>, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>, p.zabel@pengutronix.de,
 mchehab@kernel.org,  robh+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de,  kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com,  gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com,  wens@csie.org, jernej.skrabec@siol.net,
 krzk@kernel.org, shengjiu.wang@nxp.com,  adrian.ratiu@collabora.com,
 aisheng.dong@nxp.com, peng.fan@nxp.com,  Anson.Huang@nxp.com,
 hverkuil-cisco@xs4all.nl
Date: Thu, 18 Feb 2021 11:15:13 +0100
In-Reply-To: <ab14f5a0bde2bdcd4bb0128f76e5a3ba8e7b0894.camel@collabora.com>
References: <20210217080306.157876-1-benjamin.gaignard@collabora.com>
 <20210217080306.157876-4-benjamin.gaignard@collabora.com>
 <ab14f5a0bde2bdcd4bb0128f76e5a3ba8e7b0894.camel@collabora.com>
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210218_051537_811407_0046AAD1 
X-CRM114-Status: GOOD (  22.40  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gTWl0dHdvY2gsIGRlbSAxNy4wMi4yMDIxIHVtIDE2OjM5IC0wMzAwIHNjaHJpZWIgRXplcXVp
ZWwgR2FyY2lhOgo+IEhpIEJlbmphbWluLAo+IAo+IE9uIFdlZCwgMjAyMS0wMi0xNyBhdCAwOTow
MiArMDEwMCwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4gPiBEZWZpbmUgYWxsb2NhdGlvbiBy
YW5nZSBmb3IgdGhlIGRlZmF1bHQgQ01BIHJlZ2lvbi4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTog
QmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+Cj4gPiBT
aWduZWQtb2ZmLWJ5OiBFemVxdWllbCBHYXJjaWEgPGV6ZXF1aWVsQGNvbGxhYm9yYS5jb20+Cj4g
Cj4gRGVzcGl0ZSBpdCBzZWVtcyBsaWtlIEkgc2lnbmVkLW9mZiB0aGlzIG9uZS4uLgo+IAo+ID4g
U2lnbmVkLW9mZi1ieTogQWRyaWFuIFJhdGl1IDxhZHJpYW4ucmF0aXVAY29sbGFib3JhLmNvbT4K
PiA+IC0tLQo+ID4gwqBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEtZXZrLmR0
cyB8IDE1ICsrKysrKysrKysrKysrKwo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMTUgaW5zZXJ0aW9u
cygrKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUv
aW14OG1xLWV2ay5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEtZXZr
LmR0cwo+ID4gaW5kZXggODViMDQ1MjUzYTBlLi4wNDdkZmQ0YTFmZmQgMTAwNjQ0Cj4gPiAtLS0g
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEtZXZrLmR0cwo+ID4gKysrIGIv
YXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLWV2ay5kdHMKPiA+IEBAIC0yMSw2
ICsyMSwyMSBAQCBtZW1vcnlANDAwMDAwMDAgewo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqByZWcgPSA8MHgwMDAwMDAwMCAweDQwMDAwMDAwIDAgMHhjMDAwMDAwMD47Cj4gPiDC
oMKgwqDCoMKgwqDCoMKgfTsKPiA+IAo+ID4gwqAKPiA+ICvCoMKgwqDCoMKgwqDCoHJlc21lbTog
cmVzZXJ2ZWQtbWVtb3J5IHsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAjYWRk
cmVzcy1jZWxscyA9IDwyPjsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAjc2l6
ZS1jZWxscyA9IDwyPjsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByYW5nZXM7
Cj4gPiArCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgLyogZ2xvYmFsIGF1dG9j
b25maWd1cmVkIHJlZ2lvbiBmb3IgY29udGlndW91cyBhbGxvY2F0aW9ucyAqLwo+ID4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGxpbnV4LGNtYSB7Cj4gPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNvbXBhdGlibGUgPSAic2hhcmVkLWRtYS1w
b29sIjsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
cmV1c2FibGU7Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoHNpemUgPSA8MCAweDNjMDAwMDAwPjsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgYWxsb2MtcmFuZ2VzID0gPDAgMHg0MDAwMDAwMCAwIDB4NDAw
MDAwMDA+Owo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBsaW51eCxjbWEtZGVmYXVsdDsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9
Owo+IAo+IC4uLiBJJ20gbm90IGEgZmFuIG9mIHRoZSBjaGFuZ2UgOikKPiAKPiBIb3BlZnVsbHkg
c29tZW9uZSBmcm9tIE5YUCBjYW4gcHJvdmlkZSBzb21lIGluc2lnaHQgaGVyZT8KPiAKPiBJZiBp
dCdzIGFic29sdXRlbHkgbmVlZGVkIGZvciB0aGUgVlBVLCB0aGVuIEkgZ3Vlc3MgaXQgc2hvdWxk
Cj4gYmUgMSkgdmVyeSB3ZWxsIGRvY3VtZW50ZWQgYW5kIDIpIG1vdmVkIHRvIHRoZSB0b3AtbG92
ZWwgZHRzaS4KPiAKPiBCdXQgaWYgd2UgY2FuIGRyb3AgaXQsIHRoYXQnZCBiZSBuaWNlci4KCldo
YXQncyB0aGUganVzdGlmaWNhdGlvbiBmb3IgdGhpcyBDTUEgYXJlYT8KCkkgY291bGQgb25seSBp
bWFnaW5lIHRoZSBETUEgYWRkcmVzc2luZyByZXN0cmljdGlvbnMgb24gdGhlIHBsYXRmb3JtLgpE
TUEgbWFzdGVycyBvbiB0aGUgaS5NWDhNUSBjYW4gbm90IGFjY2VzcyBtZW1vcnkgYmV5b25kIHRo
ZSA0R0IgbWFyawphbmQgMUdCIG9mIGFkZHJlc3Mgc3BhY2UgaXMgcmVzZXJ2ZWQgZm9yIE1NSU8s
IHNvIGlmIHlvdSBoYXZlIDRHQgppbnN0YWxsZWQgdGhlIHVwcGVyIDFHQiBvZiBEUkFNIGlzIG9u
bHkgYWNjZXNzaWJsZSB0byB0aGUgQ1BVLiBCdXQgdGhpcwpyZXN0cmljdGlvbiBpcyBhbHJlYWR5
IHByb3Blcmx5IGNvbW11bmljYXRlZCB0byB0aGUgTGludXggRE1BIGZyYW1ld29yawpieSB0aGUg
ZG1hLXJhbmdlcyBpbiB0aGUgdG9wIGxldmVsIFNvQyBidXMgbm9kZSBpbiB0aGUgRFQsIHNvIEkg
ZG9uJ3QKdGhpbmsgdGhpcyBDTUEgc2V0dXAgaXMgbmVjZXNzYXJ5LgoKUmVnYXJkcywKTHVjYXMK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
