Return-Path: <SRS0=89Gv=LM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 095DCC48BE8
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jun 2021 18:59:18 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C3A0460232
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jun 2021 18:59:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C3A0460232
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YjXMVOL3M1rzfAabr2Uqb8s8YNFH9RnhJcjxLTAuFT4=; b=Fr1jtuUjUEDGxD
	4SiyqEC6NAl3BNIwUpTO2tZ4ISZHqCdUD8NwwW1WUlL966sV7AKYx3taj936Voo6DmTPrGiuvSAFa
	hYBvhWFvAQBOkdG4tfL9kGqP2i4iGu2cVKb1ZSJf2N0/FWVjbq+ud8oTWGjb9jSH4R9fel4dbRFag
	P4cpJxrPkaFrxbcdkPui3PAyjwMRC1c5yPTKY1p9jmhv91v+LyheV9t2WC/Sax4KWFM/fqUfaDfXt
	dbSKz/pWzijP3zWurnM8V7jhj3xYBh43P5syEpMPvAfZC2xTZ0NuPfogbzDj8k7sWBOZZo9FlVxsH
	kx6l6k4eZOgT87MtRSKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luJhy-00FDtZ-QW; Fri, 18 Jun 2021 18:59:14 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luJhm-00FDr6-K1; Fri, 18 Jun 2021 18:59:04 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id C099B1F44BE3
Message-ID: <418311dac48d3a29b4fe9e363f7d4e82c360f586.camel@collabora.com>
Subject: Re: [PATCH v3 1/8] media: hantro: Trace hevc hw cycles performance
 register
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, hverkuil@xs4all.nl,
 p.zabel@pengutronix.de, mchehab@kernel.org, shawnguo@kernel.org, 
 s.hauer@pengutronix.de, festevam@gmail.com, gregkh@linuxfoundation.org, 
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org, 
 jernej.skrabec@siol.net, emil.l.velikov@gmail.com, andrzej.p@collabora.com,
 jc@kynesim.co.uk, jernej.skrabec@gmail.com, nicolas@ndufresne.ca
Cc: kernel@pengutronix.de, linux-imx@nxp.com, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
Date: Fri, 18 Jun 2021 15:58:46 -0300
In-Reply-To: <20210618131526.566762-2-benjamin.gaignard@collabora.com>
References: <20210618131526.566762-1-benjamin.gaignard@collabora.com>
 <20210618131526.566762-2-benjamin.gaignard@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_115902_819914_5F7FF5BE 
X-CRM114-Status: GOOD (  14.58  )
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

SGkgQmVuamFtaW4sCgpPbiBGcmksIDIwMjEtMDYtMTggYXQgMTU6MTUgKzAyMDAsIEJlbmphbWlu
IEdhaWduYXJkIHdyb3RlOgo+IEFmdGVyIGVhY2ggaGV2YyBkZWNvZGVkIGZyYW1lIHRyYWNlIHRo
ZSBoYXJkd2FyZSBwZXJmb3JtYW5jZS4KPiBJdCBwcm92aWRlcyB0aGUgbnVtYmVyIG9mIGh3IGN5
Y2xlcyBzcGVuZCBwZXIgZGVjb2RlZCBtYWNyb2Jsb2NrLgo+IAoKUGxlYXNlIGFkZCBzb21lIGRv
Y3VtZW50YXRpb24gYWJvdXQgaG93IHRoZXNlIGFyZSBzdXBwb3NlZAp0byBiZSB1c2VkLiBJdCB3
aWxsIGJlIGVhc2llciB0byBkaXNjdXNzIGFmdGVyIHNlZWluZwp0aGluZ3MgaW4gYWN0aWlvbi4K
CkEgZ29vZCBwbGFjZSBmb3IgdGhlIGRvY3VtZW50YXRpb24gd291bGQgYmU6CgpodHRwczovL3d3
dy5rZXJuZWwub3JnL2RvYy9odG1sL2xhdGVzdC9hZG1pbi1ndWlkZS9tZWRpYS92NGwtZHJpdmVy
cy5odG1sCgpbLi5dCj4gQEAgLTIyLDYgKzIzLDIxIEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBoYW50
cm9fd3JpdGVfYWRkcihzdHJ1Y3QgaGFudHJvX2RldiAqdnB1LAo+IMKgwqDCoMKgwqDCoMKgwqB2
ZHB1X3dyaXRlKHZwdSwgYWRkciAmIDB4ZmZmZmZmZmYsIG9mZnNldCk7Cj4gwqB9Cj4gwqAKPiAr
dm9pZCBoYW50cm9fZzJfaGV2Y19kZWNfZG9uZShzdHJ1Y3QgaGFudHJvX2N0eCAqY3R4KQoKSSdt
IHdvcnJpZWQgYWJvdXQgdGhlIHJ1bnRpbWUgY29zdCB0aGlzIHdvdWxkIGhhdmUuCgpJIHNlZSBv
dGhlciBkcml2ZXJzIChpOTE1LCBwYW5mcm9zdCkgc2VlbSB0byBoYXZlIGFuIGlvY3RsCnRvIGVu
YWJsZSB0aGUgcGVyZiBjb3VudGVycy4KClBlcmhhcHMgd2UgZG9uJ3QgbmVlZCBhbiBpb2N0bCwg
YnV0IGEgbW9kdWxlIHBhcmFtIHdvdWxkIGJlIGVub3VnaApmb3Igbm93LgoKPiArewo+ICvCoMKg
wqDCoMKgwqDCoGNvbnN0IHN0cnVjdCBoYW50cm9faGV2Y19kZWNfY3RybHMgKmN0cmxzID0gJmN0
eC0+aGV2Y19kZWMuY3RybHM7Cj4gK8KgwqDCoMKgwqDCoMKgY29uc3Qgc3RydWN0IHY0bDJfY3Ry
bF9oZXZjX3NwcyAqc3BzID0gY3RybHMtPnNwczsKPiArwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaGFu
dHJvX2RldiAqdnB1ID0gY3R4LT5kZXY7Cj4gK8KgwqDCoMKgwqDCoMKgdTMyIGh3X2N5Y2xlcyA9
IDA7Cj4gK8KgwqDCoMKgwqDCoMKgdTMyIG1icyA9IChzcHMtPnBpY193aWR0aF9pbl9sdW1hX3Nh
bXBsZXMgKgo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNwcy0+cGljX2hl
aWdodF9pbl9sdW1hX3NhbXBsZXMpID4+IDg7Cj4gKwo+ICvCoMKgwqDCoMKgwqDCoGlmIChtYnMp
Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGh3X2N5Y2xlcyA9IHZkcHVfcmVhZCh2
cHUsIEcyX0hXX1BFUkZPUk1BTkNFKSAvIG1iczsKPiArCj4gK8KgwqDCoMKgwqDCoMKgdHJhY2Vf
aGFudHJvX2hldmNfcGVyZihjdHgsIGh3X2N5Y2xlcyk7Cj4gK30KPiArCj4gClsuLl0KPiArCj4g
K1RSQUNFX0VWRU5UKGhhbnRyb19oZXZjX3BlcmYsCj4gK8KgwqDCoMKgwqDCoMKgVFBfUFJPVE8o
c3RydWN0IGhhbnRyb19jdHggKmN0eCwgdTMyIGh3X2N5Y2xlcyksCj4gKwo+ICvCoMKgwqDCoMKg
wqDCoFRQX0FSR1MoY3R4LCBod19jeWNsZXMpLAo+ICsKPiArwqDCoMKgwqDCoMKgwqBUUF9TVFJV
Q1RfX2VudHJ5KAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBfX2ZpZWxkKGludCwg
bWlub3IpCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoF9fZmllbGQodTMyLCBod19j
eWNsZXMpCj4gK8KgwqDCoMKgwqDCoMKgKSwKPiArCj4gK8KgwqDCoMKgwqDCoMKgVFBfZmFzdF9h
c3NpZ24oCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoF9fZW50cnktPm1pbm9yID0g
Y3R4LT5maC52ZGV2LT5taW5vcjsKClRyYWNraW5nIHBlcmZvcm1hbmNlIHBlciBtaW5vciBkb2Vz
bid0IHNlZW0gdXNlZnVsLAp3ZSdkIGxpa2UgdG8gdHJhY2sgcGVyLWZkIChpLmUuIHBlciBjb250
ZXh0KS4KClRoYW5rcywKRXplcXVpZWwKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
