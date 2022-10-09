Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C600C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Oct 2022 11:58:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wVPzOeyR+3eo/py60QxeTOrXb8RaVlamEIHLVyiK6NE=; b=cCF6aFvjadn9El
	j4DdKmYA/lUtaTzmYv7oMG0tu+VvNR1uZbl8gajSjK4HfL/dhPFPBkWYqmrkY8eEtPemBFgEVvgR0
	7HD3qMQfWnFUaSSrTdWgBn1Yds+KEnO6ONwrfA2Yr0S9iV2hrBWo0VcH83BbjVjjRL221A8Wqwc8E
	ebdaGumfqIv8xGB/A6qFHXZ3Sch1EfttJ9ABjzQXR/YElvYEgGNTIajK2HSscJ56yW8C3d6ouKg2o
	CtrEcRwSGqPuHd4Gg0lZqELUZCwkFT6+zrKT+vqkV1bOyjELMaKEWqFwcCWenw+jaW7Oo0A/5A1uw
	2B9ae0f8U41HM9w+N3Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohUwQ-00FSVE-Kg; Sun, 09 Oct 2022 11:57:58 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohUwC-00FSQF-NZ; Sun, 09 Oct 2022 11:57:46 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 3E8C5B80C69;
	Sun,  9 Oct 2022 11:57:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D84EC433D6;
	Sun,  9 Oct 2022 11:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665316662;
	bh=n9FVRwbXSzvED7AdqW64tqTXRRb8tZLaditVYDqI4sQ=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=jIfX6Ern8PHcfvI8f6zmSL1YKcbOhFMYtC3vT+u8ebG6l8usNIAZ4tpHaE5jeM6+q
	 5cTsjpRu8lLQym5HkmUqknill+CrXTRc1bY+e0eFqLl9s/Wh9llDa1bWgrNkRb5N7M
	 ifvSbH7IrgcORWKMpclCYybHv20Vw0dEDxaa+LErIIFRWGswzgJbSIsPwE4aps6v8C
	 09Gx73mpr1hkJ6NnsjjpWv7FAHjTH0D1TAecUwYrnZPGY3JU9qTKDW9oNmclfl2toN
	 Glw+gFFFt0Sl1jrYsY5B8Z4dgkjTViKhy0DadJJ6T93bJ74/uZdgaiegsJWvq4WLOX
	 sMRxluUgJSTeA==
Date: Sun, 9 Oct 2022 12:57:58 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>
Cc: <linux-amlogic@lists.infradead.org>, <linux-imx@nxp.com>,
 <linux-iio@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, Heiko Stuebner <heiko@sntech.de>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Neil Armstrong
 <narmstrong@baylibre.com>, Shawn Guo <shawnguo@kernel.org>, "Lars-Peter
 Clausen" <lars@metafoo.de>, Jyoti Bhayana <jbhayana@google.com>, Hans de
 Goede <hdegoede@redhat.com>, Andriy Tryshnivskyy
 <andriy.tryshnivskyy@opensynergy.com>, Pengutronix Kernel Team
 <kernel@pengutronix.de>, Miquel Raynal <miquel.raynal@bootlin.com>, Cixi
 Geng <cixi.geng1@unisoc.com>, Baolin Wang <baolin.wang@linux.alibaba.com>,
 "Ciprian Regus" <ciprian.regus@analog.com>, Fabio Estevam
 <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>, Alexandru
 Ardelean <aardelean@deviqon.com>, "Florian Boor"
 <florian.boor@kernelconcepts.de>, Michael Hennerich
 <Michael.Hennerich@analog.com>, Orson Zhai <orsonzhai@gmail.com>, "Chen-Yu
 Tsai" <wens@csie.org>, Chunyan Zhang <zhang.lyra@gmail.com>, "Vladimir
 Zapolskiy" <vz@mleia.com>, Andy Shevchenko <andy.shevchenko@gmail.com>,
 "Jerome Brunet" <jbrunet@baylibre.com>, Haibo Chen <haibo.chen@nxp.com>,
 Kevin Hilman <khilman@baylibre.com>
Subject: Re: [PATCH v2 04/16] iio: adc: lpc32xx_adc: do not use internal
 iio_dev lock
Message-ID: <20221009125758.77bf84c2@jic23-huawei>
In-Reply-To: <20221004134909.1692021-5-nuno.sa@analog.com>
References: <20221004134909.1692021-1-nuno.sa@analog.com>
	<20221004134909.1692021-5-nuno.sa@analog.com>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_045745_068828_EE8DF468 
X-CRM114-Status: GOOD (  18.92  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVHVlLCA0IE9jdCAyMDIyIDE1OjQ4OjU3ICswMjAwCk51bm8gU8OhIDxudW5vLnNhQGFuYWxv
Zy5jb20+IHdyb3RlOgoKPiBUaGUgaWlvX2RldmljZSBsb2NrIGlzIG9ubHkgbWVhbnQgZm9yIGlu
dGVybmFsIHVzZS4gSGVuY2UgZGVmaW5lIGEKPiBkZXZpY2UgbG9jYWwgbG9jayB0byBwcm90ZWN0
IGFnYWluc3QgY29uY3VycmVudCBhY2Nlc3Nlcy4KPiAKPiBXaGlsZSBhdCBpdCwgcHJvcGVybHkg
aW5jbHVkZSAibXV0ZXguaCIgZm9yIG11dGV4IHJlbGF0ZWQgQVBJcy4KPiAKPiBTaWduZWQtb2Zm
LWJ5OiBOdW5vIFPDoSA8bnVuby5zYUBhbmFsb2cuY29tPgpBcHBsaWVkLgoKVGhhbmtzLAoKSgoK
PiAtLS0KPiAgZHJpdmVycy9paW8vYWRjL2xwYzMyeHhfYWRjLmMgfCAxMSArKysrKysrKy0tLQo+
ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+IAo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2lpby9hZGMvbHBjMzJ4eF9hZGMuYyBiL2RyaXZlcnMvaWlvL2Fk
Yy9scGMzMnh4X2FkYy5jCj4gaW5kZXggYjU2Y2UxNTI1NWNmLi43MzJjOTI0YTk3NmQgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9paW8vYWRjL2xwYzMyeHhfYWRjLmMKPiArKysgYi9kcml2ZXJzL2lp
by9hZGMvbHBjMzJ4eF9hZGMuYwo+IEBAIC0xNSw2ICsxNSw3IEBACj4gICNpbmNsdWRlIDxsaW51
eC9pby5oPgo+ICAjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9t
b2RfZGV2aWNldGFibGUuaD4KPiArI2luY2x1ZGUgPGxpbnV4L211dGV4Lmg+Cj4gICNpbmNsdWRl
IDxsaW51eC9wbGF0Zm9ybV9kZXZpY2UuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L3JlZ3VsYXRvci9j
b25zdW1lci5oPgo+ICAKPiBAQCAtNDksNiArNTAsOCBAQCBzdHJ1Y3QgbHBjMzJ4eF9hZGNfc3Rh
dGUgewo+ICAJc3RydWN0IGNsayAqY2xrOwo+ICAJc3RydWN0IGNvbXBsZXRpb24gY29tcGxldGlv
bjsKPiAgCXN0cnVjdCByZWd1bGF0b3IgKnZyZWY7Cj4gKwkvKiBsb2NrIHRvIHByb3RlY3QgYWdh
aW5zdCBtdWx0aXBsZSBhY2Nlc3MgdG8gdGhlIGRldmljZSAqLwo+ICsJc3RydWN0IG11dGV4IGxv
Y2s7Cj4gIAo+ICAJdTMyIHZhbHVlOwo+ICB9Owo+IEBAIC02NCwxMCArNjcsMTAgQEAgc3RhdGlj
IGludCBscGMzMnh4X3JlYWRfcmF3KHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYsCj4gIAo+ICAJ
c3dpdGNoIChtYXNrKSB7Cj4gIAljYXNlIElJT19DSEFOX0lORk9fUkFXOgo+IC0JCW11dGV4X2xv
Y2soJmluZGlvX2Rldi0+bWxvY2spOwo+ICsJCW11dGV4X2xvY2soJnN0LT5sb2NrKTsKPiAgCQly
ZXQgPSBjbGtfcHJlcGFyZV9lbmFibGUoc3QtPmNsayk7Cj4gIAkJaWYgKHJldCkgewo+IC0JCQlt
dXRleF91bmxvY2soJmluZGlvX2Rldi0+bWxvY2spOwo+ICsJCQltdXRleF91bmxvY2soJnN0LT5s
b2NrKTsKPiAgCQkJcmV0dXJuIHJldDsKPiAgCQl9Cj4gIAkJLyogTWVhc3VyZW1lbnQgc2V0dXAg
Ki8KPiBAQCAtODAsNyArODMsNyBAQCBzdGF0aWMgaW50IGxwYzMyeHhfcmVhZF9yYXcoc3RydWN0
IGlpb19kZXYgKmluZGlvX2RldiwKPiAgCQl3YWl0X2Zvcl9jb21wbGV0aW9uKCZzdC0+Y29tcGxl
dGlvbik7IC8qIHNldCBieSBJU1IgKi8KPiAgCQljbGtfZGlzYWJsZV91bnByZXBhcmUoc3QtPmNs
ayk7Cj4gIAkJKnZhbCA9IHN0LT52YWx1ZTsKPiAtCQltdXRleF91bmxvY2soJmluZGlvX2Rldi0+
bWxvY2spOwo+ICsJCW11dGV4X3VubG9jaygmc3QtPmxvY2spOwo+ICAKPiAgCQlyZXR1cm4gSUlP
X1ZBTF9JTlQ7Cj4gIAo+IEBAIC0yMDEsNiArMjA0LDggQEAgc3RhdGljIGludCBscGMzMnh4X2Fk
Y19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAJaW9kZXYtPm1vZGVzID0g
SU5ESU9fRElSRUNUX01PREU7Cj4gIAlpb2Rldi0+bnVtX2NoYW5uZWxzID0gQVJSQVlfU0laRShs
cGMzMnh4X2FkY19paW9fY2hhbm5lbHMpOwo+ICAKPiArCW11dGV4X2luaXQoJnN0LT5sb2NrKTsK
PiArCj4gIAlyZXR2YWwgPSBkZXZtX2lpb19kZXZpY2VfcmVnaXN0ZXIoJnBkZXYtPmRldiwgaW9k
ZXYpOwo+ICAJaWYgKHJldHZhbCkKPiAgCQlyZXR1cm4gcmV0dmFsOwoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
