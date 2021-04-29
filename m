Return-Path: <SRS0=DwMt=J2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9273BC433ED
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Apr 2021 13:44:04 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DE09B6143A
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Apr 2021 13:44:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DE09B6143A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:Cc:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ysSvS7bNGHJppV12dcIhr4kkn2C+Wj+aXDwSSSP+xdE=; b=eyuURIjhs5xf9Wv98ptC8VHeB
	PMlYIsn1kI4J1g/ul4/k2Al+GrbWUfKsTHnLW4IVPyI8IbIBxEeIflyjGBkU0jiT88yqI4avFysP0
	x2bCsHuc2odWpiBLYk3QikE7UmHxM0/gTgnkHPi6PI/2y1GRh5MhGQ52D7bBMHvoyj6DmOeVTXkWR
	FTU/w6WiVnSgkCeA2/6TOCGqqiukXU4+5Do8tIyj5s/+Y+Ce2qUDOJgyJiyOpitYGdg5fT/CThQXY
	alRVf2uJ+Tb7oMkMF+uNEIY1mhPP0+objHaBN1wSybohskx8GlfgCdGD9LARsp9uQhdb5HvUjiTCM
	qgfLSmCjg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lc6xT-005ini-7J; Thu, 29 Apr 2021 13:43:59 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lc6xC-005img-P5; Thu, 29 Apr 2021 13:43:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description;
 bh=AtitL3NiBjRg2VHMWolZDP46I22Mld+mCMtbyI0Te+w=; b=Bqoai6X03BWypu+cC2KwMI1th9
 Nxq64lifAcACkBDsvxPMwjyIk45gXYxue1mv4DEz65vjjK7uHbEIyT9EqmKNFjRGR4mGz434aOz8a
 G854r1+crXNmsrf3lkRLhjhLG9j8JAs91ha1hnWkToin0AmBhs/K6Y7KozF9DahlZgcNpmlK3/0a6
 MFq8+FgVk+EvsklCDQC7ife0/LoLsdiWpc397ED/HmbCBL0i7D+SlTuDGU9/QU7RaM6ynXnEP1eI9
 /l/HMFOIeG/CPz6kRRhGUIRpu9Ki7ntBNYAjoxRn6R1iQvrl18vLEya0OeQxaSUKHUfaO4dos5KkW
 zFC/iR5Q==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lc6x9-000ewe-Sw; Thu, 29 Apr 2021 13:43:41 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 0147E1F434AA
Message-ID: <47800413ff99225e39f46c841bfb8061aee6d1b6.camel@collabora.com>
Subject: Re: [PATCH v10 6/9] media: uapi: Add a control for HANTRO driver
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 p.zabel@pengutronix.de, mchehab@kernel.org, robh+dt@kernel.org, 
 shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com, 
 lee.jones@linaro.org, gregkh@linuxfoundation.org, mripard@kernel.org, 
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net, 
 hverkuil-cisco@xs4all.nl, emil.l.velikov@gmail.com
Cc: kernel@pengutronix.de, linux-imx@nxp.com, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devel@driverdev.osuosl.org, kernel@collabora.com, cphealy@gmail.com
Date: Thu, 29 Apr 2021 10:43:25 -0300
In-Reply-To: <20210420121046.181889-7-benjamin.gaignard@collabora.com>
References: <20210420121046.181889-1-benjamin.gaignard@collabora.com>
 <20210420121046.181889-7-benjamin.gaignard@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210429_064340_085036_90525DB3 
X-CRM114-Status: GOOD (  24.19  )
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

T24gVHVlLCAyMDIxLTA0LTIwIGF0IDE0OjEwICswMjAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90
ZToKPiBUaGUgSEVWQyBIQU5UUk8gZHJpdmVyIG5lZWRzIHRvIGtub3cgdGhlIG51bWJlciBvZiBi
aXRzIHRvIHNraXAgYXQKPiB0aGUgYmVnaW5uaW5nIG9mIHRoZSBzbGljZSBoZWFkZXIuCj4gVGhh
dCBpcyBhIGhhcmR3YXJlIHNwZWNpZmljIHJlcXVpcmVtZW50IHNvIGNyZWF0ZSBhIGRlZGljYXRl
ZCBjb250cm9sCj4gZm9yIHRoaXMgcHVycG9zZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1p
biBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4KClJldmlld2VkLWJ5
OiBFemVxdWllbCBHYXJjaWEgPGV6ZXF1aWVsQGNvbGxhYm9yYS5jb20+Cgo+IC0tLQo+IMKgLi4u
L3VzZXJzcGFjZS1hcGkvbWVkaWEvZHJpdmVycy9oYW50cm8ucnN0wqDCoMKgIHwgMTkgKysrKysr
KysrKysrKysrKysrKwo+IMKgLi4uL3VzZXJzcGFjZS1hcGkvbWVkaWEvZHJpdmVycy9pbmRleC5y
c3TCoMKgwqDCoCB8wqAgMSArCj4gwqBpbmNsdWRlL21lZGlhL2hldmMtY3RybHMuaMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgMTMgKysrKysrKysrKysrKwo+IMKgMyBm
aWxlcyBjaGFuZ2VkLCAzMyBpbnNlcnRpb25zKCspCj4gwqBjcmVhdGUgbW9kZSAxMDA2NDQgRG9j
dW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL21lZGlhL2RyaXZlcnMvaGFudHJvLnJzdAo+IAo+IGRp
ZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvZHJpdmVycy9oYW50
cm8ucnN0IGIvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL21lZGlhL2RyaXZlcnMvaGFudHJv
LnJzdAo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi5jZDk3NTRi
NGUwMDUKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBp
L21lZGlhL2RyaXZlcnMvaGFudHJvLnJzdAo+IEBAIC0wLDAgKzEsMTkgQEAKPiArLi4gU1BEWC1M
aWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKPiArCj4gK0hhbnRybyB2aWRlbyBkZWNvZGVyIGRy
aXZlcgo+ICs9PT09PT09PT09PT09PT09PT09PT09PT09PT0KPiArCj4gK1RoZSBIYW50cm8gdmlk
ZW8gZGVjb2RlciBkcml2ZXIgaW1wbGVtZW50cyB0aGUgZm9sbG93aW5nIGRyaXZlci1zcGVjaWZp
YyBjb250cm9sczoKPiArCj4gK2BgVjRMMl9DSURfSEFOVFJPX0hFVkNfU0xJQ0VfSEVBREVSX1NL
SVAgKGludGVnZXIpYGAKPiArwqDCoMKgIFNwZWNpZmllcyB0byBIYW50cm8gSEVWQyB2aWRlbyBk
ZWNvZGVyIGRyaXZlciB0aGUgbnVtYmVyIG9mIGRhdGEgKGluIGJpdHMpIHRvCj4gK8KgwqDCoCBz
a2lwIGluIHRoZSBzbGljZSBzZWdtZW50IGhlYWRlci4KPiArwqDCoMKgIElmIG5vbi1JRFIsIHRo
ZSBiaXRzIHRvIGJlIHNraXBwZWQgZ28gZnJvbSBzeW50YXggZWxlbWVudCAicGljX291dHB1dF9m
bGFnIgo+ICvCoMKgwqAgdG8gYmVmb3JlIHN5bnRheCBlbGVtZW50ICJzbGljZV90ZW1wb3JhbF9t
dnBfZW5hYmxlZF9mbGFnIi4KPiArwqDCoMKgIElmIElEUiwgdGhlIHNraXBwZWQgYml0cyBhcmUg
anVzdCAicGljX291dHB1dF9mbGFnIgo+ICvCoMKgwqAgKHNlcGFyYXRlX2NvbG91cl9wbGFuZV9m
bGFnIGlzIG5vdCBzdXBwb3J0ZWQpLgo+ICsKPiArLi4gbm90ZTo6Cj4gKwo+ICvCoMKgwqDCoMKg
wqDCoCBUaGlzIGNvbnRyb2wgaXMgbm90IHlldCBwYXJ0IG9mIHRoZSBwdWJsaWMga2VybmVsIEFQ
SSBhbmQKPiArwqDCoMKgwqDCoMKgwqAgaXQgaXMgZXhwZWN0ZWQgdG8gY2hhbmdlLgo+IGRpZmYg
LS1naXQgYS9Eb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvZHJpdmVycy9pbmRleC5y
c3QgYi9Eb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvZHJpdmVycy9pbmRleC5yc3QK
PiBpbmRleCAxYTkwMzhmNWY5ZmEuLjEyZTNjNTEyZDcxOCAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVu
dGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvZHJpdmVycy9pbmRleC5yc3QKPiArKysgYi9Eb2N1
bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvZHJpdmVycy9pbmRleC5yc3QKPiBAQCAtMzMs
NiArMzMsNyBAQCBGb3IgbW9yZSBkZXRhaWxzIHNlZSB0aGUgZmlsZSBDT1BZSU5HIGluIHRoZSBz
b3VyY2UgZGlzdHJpYnV0aW9uIG9mIExpbnV4Lgo+IMKgCj4gwqDCoMKgwqDCoMKgwqDCoGNjcwo+
IMKgwqDCoMKgwqDCoMKgwqBjeDIzNDF4LXVhcGkKPiArwqDCoMKgwqDCoMKgwqAgaGFudHJvCj4g
wqDCoMKgwqDCoMKgwqDCoGlteC11YXBpCj4gwqDCoMKgwqDCoMKgwqDCoG1heDIxNzUKPiDCoMKg
wqDCoMKgwqDCoMKgbWV5ZS11YXBpCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbWVkaWEvaGV2Yy1j
dHJscy5oIGIvaW5jbHVkZS9tZWRpYS9oZXZjLWN0cmxzLmgKPiBpbmRleCA4ZTAxMDllZWE0NTQu
LmI3MTNlZWVkMTkxNSAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL21lZGlhL2hldmMtY3RybHMuaAo+
ICsrKyBiL2luY2x1ZGUvbWVkaWEvaGV2Yy1jdHJscy5oCj4gQEAgLTIyNCw0ICsyMjQsMTcgQEAg
c3RydWN0IHY0bDJfY3RybF9oZXZjX2RlY29kZV9wYXJhbXMgewo+IMKgwqDCoMKgwqDCoMKgwqBf
X3U2NMKgwqDCoGZsYWdzOwo+IMKgfTsKPiDCoAo+ICsvKsKgIE1QRUctY2xhc3MgY29udHJvbCBJ
RHMgc3BlY2lmaWMgdG8gdGhlIEhhbnRybyBkcml2ZXIgYXMgZGVmaW5lZCBieSBWNEwyICovCj4g
KyNkZWZpbmUgVjRMMl9DSURfQ09ERUNfSEFOVFJPX0JBU0XCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgKFY0TDJfQ1RSTF9DTEFTU19DT0RF
QyB8IDB4MTIwMCkKPiArLyoKPiArICogVjRMMl9DSURfSEFOVFJPX0hFVkNfU0xJQ0VfSEVBREVS
X1NLSVAgLQo+ICsgKiB0aGUgbnVtYmVyIG9mIGRhdGEgKGluIGJpdHMpIHRvIHNraXAgaW4gdGhl
Cj4gKyAqIHNsaWNlIHNlZ21lbnQgaGVhZGVyLgo+ICsgKiBJZiBub24tSURSLCB0aGUgYml0cyB0
byBiZSBza2lwcGVkIGdvIGZyb20gc3ludGF4IGVsZW1lbnQgInBpY19vdXRwdXRfZmxhZyIKPiAr
ICogdG8gYmVmb3JlIHN5bnRheCBlbGVtZW50ICJzbGljZV90ZW1wb3JhbF9tdnBfZW5hYmxlZF9m
bGFnIi4KPiArICogSWYgSURSLCB0aGUgc2tpcHBlZCBiaXRzIGFyZSBqdXN0ICJwaWNfb3V0cHV0
X2ZsYWciCj4gKyAqIChzZXBhcmF0ZV9jb2xvdXJfcGxhbmVfZmxhZyBpcyBub3Qgc3VwcG9ydGVk
KS4KPiArICovCj4gKyNkZWZpbmUgVjRMMl9DSURfSEFOVFJPX0hFVkNfU0xJQ0VfSEVBREVSX1NL
SVDCoChWNEwyX0NJRF9DT0RFQ19IQU5UUk9fQkFTRSArIDApCj4gKwo+IMKgI2VuZGlmCgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
