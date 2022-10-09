Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07513C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Oct 2022 11:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NXfEyuUUK1WhMJ25R0SGxyMXOCJfUoMZPXlSGTt89nQ=; b=SBVefAXJ/BHDEd
	uQvFJdEjb+BmbLQO8mdCfpLuFEyhnbVB6p9/3wMSrWIbijNhfoxWXnH9A/y3eC+vZDSQoRHdR9VM7
	W/2Mr1zvK2v3mMGffRpd6Uyts4guuHYjhNgCVojX2/94zsgLnJI8gcUbrCdpAWJTIwy/GqsGI+DF+
	8AjtN65ejNMiqWJULFChqpOjWD5uihpSmsdX7lhp1SBuXqx3tiKplsQW7dLh9DIMUvcc0UHuN3o6W
	4Iabi4cc8eupXjrUN4ZPthi5+ippJbI/0Y80wEC/xPKO9Q1/k7iiNoRljZR46v+uAGs1/SGKbt7yu
	0y5eI5kHhKRJmCsaHnKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohUxK-00FSs7-Un; Sun, 09 Oct 2022 11:58:54 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohUx7-00FSmw-55; Sun, 09 Oct 2022 11:58:42 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9042460BD6;
	Sun,  9 Oct 2022 11:58:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F6F7C433C1;
	Sun,  9 Oct 2022 11:58:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665316720;
	bh=yDoVUI424rlUKuHhs3ryyynC2XRAQsXx/3wlm/ahdzQ=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=MqJISgSowLyc3IJLVImSHoi97hOfTu4zZRIykvtDpq0qsihUBhz5xMGceDqdddrLt
	 uPp2hVITM7SMi4BlVclLhsMdfUlvraK377QxVnRqH9BC3e3MLyjyMtv1gj1mTbYVNn
	 Qk+I5xOvepOAEa7oLotMFyOWRDPnzaEdrxu6s95xXZ16hhtkAAg1w5YKCrGNRRIwJW
	 CP4UD/ZjSc22q+Bi7NYbfx0PfRAmjZC3lJmAMTXbC+P4RBwdW8jhoEFNQ+jWxoeoaj
	 Ij4JFDvZu4GQPfexv6GGdltxDI/0rTESeD/kcuz31f2HhIAoFhONaNofRL1231TViB
	 daefmqj/QA/rA==
Date: Sun, 9 Oct 2022 12:58:56 +0100
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
Subject: Re: [PATCH v2 05/16] iio: adc: ltc2947-core: do not use internal
 iio_dev lock
Message-ID: <20221009125856.2768db05@jic23-huawei>
In-Reply-To: <20221004134909.1692021-6-nuno.sa@analog.com>
References: <20221004134909.1692021-1-nuno.sa@analog.com>
	<20221004134909.1692021-6-nuno.sa@analog.com>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_045841_286548_13724CFE 
X-CRM114-Status: GOOD (  17.19  )
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

T24gVHVlLCA0IE9jdCAyMDIyIDE1OjQ4OjU4ICswMjAwCk51bm8gU8OhIDxudW5vLnNhQGFuYWxv
Zy5jb20+IHdyb3RlOgoKPiBUaGUgaWlvX2RldmljZSBsb2NrIGlzIG9ubHkgbWVhbnQgZm9yIGlu
dGVybmFsIHVzZS4gSGVuY2UgZGVmaW5lIGEKPiBkZXZpY2UgbG9jYWwgbG9jayB0byBwcm90ZWN0
IGFnYWluc3QgY29uY3VycmVudCBhY2Nlc3Nlcy4KPiAKPiBXaGlsZSBhdCBpdCwgcHJvcGVybHkg
aW5jbHVkZSAibXV0ZXguaCIgZm9yIG11dGV4IHJlbGF0ZWQgQVBJcy4KPiAKPiBTaWduZWQtb2Zm
LWJ5OiBOdW5vIFPDoSA8bnVuby5zYUBhbmFsb2cuY29tPgpBcHBsaWVkCgo+IC0tLQo+ICBkcml2
ZXJzL2lpby9hZGMvbHRjMjQ5Ny1jb3JlLmMgfCA3ICsrKysrLS0KPiAgZHJpdmVycy9paW8vYWRj
L2x0YzI0OTcuaCAgICAgIHwgMiArKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygr
KSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9paW8vYWRjL2x0YzI0
OTctY29yZS5jIGIvZHJpdmVycy9paW8vYWRjL2x0YzI0OTctY29yZS5jCj4gaW5kZXggZjUyZDM3
YWY0ZDFmLi45OTZmNmNiYmVkM2MgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9paW8vYWRjL2x0YzI0
OTctY29yZS5jCj4gKysrIGIvZHJpdmVycy9paW8vYWRjL2x0YzI0OTctY29yZS5jCj4gQEAgLTEw
LDYgKzEwLDcgQEAKPiAgI2luY2x1ZGUgPGxpbnV4L2lpby9paW8uaD4KPiAgI2luY2x1ZGUgPGxp
bnV4L2lpby9kcml2ZXIuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgo+ICsjaW5jbHVk
ZSA8bGludXgvbXV0ZXguaD4KPiAgI2luY2x1ZGUgPGxpbnV4L3JlZ3VsYXRvci9jb25zdW1lci5o
Pgo+ICAKPiAgI2luY2x1ZGUgImx0YzI0OTcuaCIKPiBAQCAtODEsOSArODIsOSBAQCBzdGF0aWMg
aW50IGx0YzI0OTdjb3JlX3JlYWRfcmF3KHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYsCj4gIAo+
ICAJc3dpdGNoIChtYXNrKSB7Cj4gIAljYXNlIElJT19DSEFOX0lORk9fUkFXOgo+IC0JCW11dGV4
X2xvY2soJmluZGlvX2Rldi0+bWxvY2spOwo+ICsJCW11dGV4X2xvY2soJmRkYXRhLT5sb2NrKTsK
PiAgCQlyZXQgPSBsdGMyNDk3Y29yZV9yZWFkKGRkYXRhLCBjaGFuLT5hZGRyZXNzLCB2YWwpOwo+
IC0JCW11dGV4X3VubG9jaygmaW5kaW9fZGV2LT5tbG9jayk7Cj4gKwkJbXV0ZXhfdW5sb2NrKCZk
ZGF0YS0+bG9jayk7Cj4gIAkJaWYgKHJldCA8IDApCj4gIAkJCXJldHVybiByZXQ7Cj4gIAo+IEBA
IC0yMTQsNiArMjE1LDggQEAgaW50IGx0YzI0OTdjb3JlX3Byb2JlKHN0cnVjdCBkZXZpY2UgKmRl
diwgc3RydWN0IGlpb19kZXYgKmluZGlvX2RldikKPiAgCWRkYXRhLT5hZGRyX3ByZXYgPSBMVEMy
NDk3X0NPTkZJR19ERUZBVUxUOwo+ICAJZGRhdGEtPnRpbWVfcHJldiA9IGt0aW1lX2dldCgpOwo+
ICAKPiArCW11dGV4X2luaXQoJmRkYXRhLT5sb2NrKTsKPiArCj4gIAlyZXQgPSBpaW9fZGV2aWNl
X3JlZ2lzdGVyKGluZGlvX2Rldik7Cj4gIAlpZiAocmV0IDwgMCkKPiAgCQlnb3RvIGVycl9hcnJh
eV91bnJlZ2lzdGVyOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lpby9hZGMvbHRjMjQ5Ny5oIGIv
ZHJpdmVycy9paW8vYWRjL2x0YzI0OTcuaAo+IGluZGV4IGUwMjNkZTBkODhjNC4uNzgxNTE5YjUy
NDc1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvaWlvL2FkYy9sdGMyNDk3LmgKPiArKysgYi9kcml2
ZXJzL2lpby9hZGMvbHRjMjQ5Ny5oCj4gQEAgLTEyLDYgKzEyLDggQEAgc3RydWN0IGx0YzI0OTdf
Y2hpcF9pbmZvIHsKPiAgc3RydWN0IGx0YzI0OTdjb3JlX2RyaXZlcmRhdGEgewo+ICAJc3RydWN0
IHJlZ3VsYXRvciAqcmVmOwo+ICAJa3RpbWVfdAl0aW1lX3ByZXY7Cj4gKwkvKiBsb2NrIHRvIHBy
b3RlY3QgYWdhaW5zdCBtdWx0aXBsZSBhY2Nlc3MgdG8gdGhlIGRldmljZSAqLwo+ICsJc3RydWN0
IG11dGV4IGxvY2s7Cj4gIAljb25zdCBzdHJ1Y3QgbHRjMjQ5N19jaGlwX2luZm8JKmNoaXBfaW5m
bzsKPiAgCXU4IGFkZHJfcHJldjsKPiAgCWludCAoKnJlc3VsdF9hbmRfbWVhc3VyZSkoc3RydWN0
IGx0YzI0OTdjb3JlX2RyaXZlcmRhdGEgKmRkYXRhLAoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
