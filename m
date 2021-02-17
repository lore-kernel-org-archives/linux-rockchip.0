Return-Path: <SRS0=wec+=HT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBC73C433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Feb 2021 20:14:09 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7C9F964E63
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Feb 2021 20:14:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7C9F964E63
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EaN/v1UjbaWMzuFROy1C+K6XdbQDwf/luIjGYn9bEhM=; b=tkAQ8DkCGmmUQPY/frrKhAzjL
	vNmzb1btk+YWesTLPae239oxLOV1+7VwOHrOOG1NOWY+/NfHV7Ttd314+x4lDxzfVWt577tscyFzZ
	DU9B6LcvtPpspix2myKkqKaAyxnlEokHE3w4EyehZNgKlU9IqpSk7oGH3GCsT+ayrBYW7PknlOO9Q
	8D4SocoLCDgUFaC4Q1Y1bhOejAG1c186PWx/sjs76LLgBSC7WF7FZsdB1OEwx8cmSvgKiCk4XcUqT
	aOcq9ipK7DPwZ8UOOBc2LbMY1v4kP6h1Meq7lE2ul9ZiRQKBgWPhLwHC9/SMtIEhysBxGPiCCoCdE
	2CJ+lAojA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lCTD5-0007sH-4a; Wed, 17 Feb 2021 20:14:07 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lCTD0-0007rI-LW; Wed, 17 Feb 2021 20:14:03 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 56F9C1F40F2C
Message-ID: <022df43285f6b6dd6c6a5dfd4e80ac7694a5582e.camel@collabora.com>
Subject: Re: [PATCH v1 15/18] media: hantro: handle V4L2_PIX_FMT_HEVC_SLICE
 control
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 p.zabel@pengutronix.de, mchehab@kernel.org, robh+dt@kernel.org, 
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
 festevam@gmail.com, linux-imx@nxp.com, gregkh@linuxfoundation.org, 
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org, 
 jernej.skrabec@siol.net, krzk@kernel.org, shengjiu.wang@nxp.com, 
 adrian.ratiu@collabora.com, aisheng.dong@nxp.com, peng.fan@nxp.com, 
 Anson.Huang@nxp.com, hverkuil-cisco@xs4all.nl
Date: Wed, 17 Feb 2021 17:13:48 -0300
In-Reply-To: <20210217080306.157876-16-benjamin.gaignard@collabora.com>
References: <20210217080306.157876-1-benjamin.gaignard@collabora.com>
 <20210217080306.157876-16-benjamin.gaignard@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210217_151402_833782_483B1060 
X-CRM114-Status: GOOD (  14.35  )
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

T24gV2VkLCAyMDIxLTAyLTE3IGF0IDA5OjAzICswMTAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90
ZToKPiBNYWtlIHN1cmUgdGhhdCBWNEwyX1BJWF9GTVRfSEVWQ19TTElDRSBpcyBjb3JyZWN0bHkg
aGFuZGxlIGJ5IHY0bDIKPiBvZiB0aGUgZHJpdmVyLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEJlbmph
bWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+IFNpZ25lZC1v
ZmYtYnk6IEV6ZXF1aWVsIEdhcmNpYSA8ZXplcXVpZWxAY29sbGFib3JhLmNvbT4KPiBTaWduZWQt
b2ZmLWJ5OiBBZHJpYW4gUmF0aXUgPGFkcmlhbi5yYXRpdUBjb2xsYWJvcmEuY29tPgo+IC0tLQo+
IMKgZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fdjRsMi5jIHwgMyArKy0KPiDC
oDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fdjRsMi5jIGIvZHJp
dmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fdjRsMi5jCj4gaW5kZXggMWJjMTE4ZTM3
NWExLi4xNjA4YTNmNzhlYWEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hh
bnRyby9oYW50cm9fdjRsMi5jCj4gKysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9o
YW50cm9fdjRsMi5jCj4gQEAgLTIzMiw3ICsyMzIsNyBAQCBzdGF0aWMgaW50IHZpZGlvY19nX2Zt
dF9jYXBfbXBsYW5lKHN0cnVjdCBmaWxlICpmaWxlLCB2b2lkICpwcml2LAo+IMKgwqDCoMKgwqDC
oMKgwqByZXR1cm4gMDsKPiDCoH0KPiDCoAo+IC1zdGF0aWMgaW50IGhhbnRyb190cnlfZm10KGNv
bnN0IHN0cnVjdCBoYW50cm9fY3R4ICpjdHgsCj4gK3N0YXRpYyBpbnQgaGFudHJvX3RyeV9mbXQo
c3RydWN0IGhhbnRyb19jdHggKmN0eCwKClNwdXJpb3VzIGNoYW5nZT8KCj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IHY0bDJfcGl4X2Zv
cm1hdF9tcGxhbmUgKnBpeF9tcCwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBlbnVtIHY0bDJfYnVmX3R5cGUgdHlwZSkKPiDCoHsKPiBAQCAtMzkw
LDYgKzM5MCw3IEBAIGhhbnRyb191cGRhdGVfcmVxdWlyZXNfcmVxdWVzdChzdHJ1Y3QgaGFudHJv
X2N0eCAqY3R4LCB1MzIgZm91cmNjKQo+IMKgwqDCoMKgwqDCoMKgwqBjYXNlIFY0TDJfUElYX0ZN
VF9NUEVHMl9TTElDRToKPiDCoMKgwqDCoMKgwqDCoMKgY2FzZSBWNEwyX1BJWF9GTVRfVlA4X0ZS
QU1FOgo+IMKgwqDCoMKgwqDCoMKgwqBjYXNlIFY0TDJfUElYX0ZNVF9IMjY0X1NMSUNFOgo+ICvC
oMKgwqDCoMKgwqDCoGNhc2UgVjRMMl9QSVhfRk1UX0hFVkNfU0xJQ0U6Cj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBjdHgtPmZoLm0ybV9jdHgtPm91dF9xX2N0eC5xLnJlcXVpcmVz
X3JlcXVlc3RzID0gdHJ1ZTsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGJyZWFr
Owo+IMKgwqDCoMKgwqDCoMKgwqBkZWZhdWx0OgoKT3RoZXJ3aXNlIGxvb2tzIGdvb2QuCgpUaGFu
a3MsCkV6ZXF1aWVsCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
