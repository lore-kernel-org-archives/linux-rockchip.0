Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03272C433FE
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Oct 2022 12:01:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lt/L/vjcIvtRIRzDIoOw/rRk4aoK4OVuY6AlwLabeqA=; b=nOxsQSlF+nzNvc
	ndTBaucjtwlla/PvKeOLG36fRRswp95kUqNV8YhVZTX5kAwqdxQ+M6gsgDwCi/RRcsHMWl2JkRa6h
	vU8bOSjTs6VwBjxA+oig1IJvD2d/CjDR7F6MLSRT7upZRAdihl0LQ6IG3Je3/Si4SvEHqJF6nHFzb
	N0rh1otsAJCgsD8Se0sxRmSFxNewIgR3X+HrF/fR8ZHYVp0mpwIvS7LsUtQQ5NRQXG+fWDaaZtLQj
	qMmRA7aa8xb5cB8iP6B6f5x3KVt61KwVC5FtAHDsTIXfan2wqsF/0fegrJFKivepSXK5QgcwddXHd
	PKfcZOWzBEluc6wk4gRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohUzR-00FTU3-UA; Sun, 09 Oct 2022 12:01:05 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohUzF-00FTQR-5d; Sun, 09 Oct 2022 12:00:54 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 6043B60BD6;
	Sun,  9 Oct 2022 12:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57488C433C1;
	Sun,  9 Oct 2022 12:00:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665316851;
	bh=sN+kF6C+YhnLb6iLjckXMy96iv0cGNwR/siab64Qy1U=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=Zdqx9QUOcjLyeatSrxTPUMWh5MJCz+kTvmeqh4MpJsygUr0csiVw6iaHHNGtE2nKk
	 OcGoE7BX87kK9RvH5ghLJLNmlQvNZsas8hxC+0utnlLa9M864ZBgJ0Jv31zTQk54fx
	 kJdA0E9y9ZHNOpBTLN8VRnf7XNfIqYC1Y1C0AIyj6MbANffJZsU7pgr++Zj6MWn9Bq
	 43mVqCHtQ5BSRrAbBSyrFmnB6bFT2DTSCVeHsVGdCn4+LN//r749/IT15aYDBKoAo7
	 ge/WQwdw5NFDOJUaOz5olBDiayo5gQzC5jdASudXwFOn7Xr8OGinSplaR0gRS2CY0D
	 0rqq9PZiVi7Mg==
Date: Sun, 9 Oct 2022 13:01:08 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>
Cc: <linux-amlogic@lists.infradead.org>, <linux-imx@nxp.com>,
 <linux-iio@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, Heiko Stuebner <heiko@sntech.de>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Neil Armstrong
 <narmstrong@baylibre.com>, Shawn Guo <shawnguo@kernel.org>, Lars-Peter
 Clausen <lars@metafoo.de>, Jyoti Bhayana <jbhayana@google.com>, Hans de
 Goede <hdegoede@redhat.com>, Andriy Tryshnivskyy
 <andriy.tryshnivskyy@opensynergy.com>, Pengutronix Kernel Team
 <kernel@pengutronix.de>, Miquel Raynal <miquel.raynal@bootlin.com>, Cixi
 Geng <cixi.geng1@unisoc.com>, Baolin Wang <baolin.wang@linux.alibaba.com>,
 Ciprian Regus <ciprian.regus@analog.com>, Fabio Estevam
 <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>, Alexandru
 Ardelean <aardelean@deviqon.com>, Florian Boor
 <florian.boor@kernelconcepts.de>, Michael Hennerich
 <Michael.Hennerich@analog.com>, Orson Zhai <orsonzhai@gmail.com>, Chen-Yu
 Tsai <wens@csie.org>, Chunyan Zhang <zhang.lyra@gmail.com>, Vladimir
 Zapolskiy <vz@mleia.com>, Andy Shevchenko <andy.shevchenko@gmail.com>,
 Jerome Brunet <jbrunet@baylibre.com>, Haibo Chen <haibo.chen@nxp.com>,
 Kevin Hilman <khilman@baylibre.com>
Subject: Re: [PATCH v2 06/16] iio: adc: meson_saradc: do not use internal
 iio_dev lock
Message-ID: <20221009130108.0d8b412c@jic23-huawei>
In-Reply-To: <20221004134909.1692021-7-nuno.sa@analog.com>
References: <20221004134909.1692021-1-nuno.sa@analog.com>
	<20221004134909.1692021-7-nuno.sa@analog.com>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_050053_312034_13050797 
X-CRM114-Status: GOOD (  20.62  )
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

T24gVHVlLCA0IE9jdCAyMDIyIDE1OjQ4OjU5ICswMjAwCk51bm8gU8OhIDxudW5vLnNhQGFuYWxv
Zy5jb20+IHdyb3RlOgoKPiBUaGUgaWlvX2RldmljZSBsb2NrIGlzIG9ubHkgbWVhbnQgZm9yIGlu
dGVybmFsIHVzZS4gSGVuY2UgZGVmaW5lIGEKPiBkZXZpY2UgbG9jYWwgbG9jayB0byBwcm90ZWN0
IGFnYWluc3QgY29uY3VycmVudCBhY2Nlc3Nlcy4KPiAKPiBXaGlsZSBhdCBpdCwgcHJvcGVybHkg
aW5jbHVkZSAibXV0ZXguaCIgZm9yIG11dGV4IHJlbGF0ZWQgQVBJcy4KPiAKPiBTaWduZWQtb2Zm
LWJ5OiBOdW5vIFPDoSA8bnVuby5zYUBhbmFsb2cuY29tPgo+IFJldmlld2VkLWJ5OiBNYXJ0aW4g
Qmx1bWVuc3RpbmdsIDxtYXJ0aW4uYmx1bWVuc3RpbmdsQGdvb2dsZW1haWwuY29tPgpBcHBsaWVk
IHRvIHRoZSB0b2dyZWcgYnJhbmNoIG9mIGlpby5naXQgYW5kIHB1c2hlZCBvdXQgKHNob3J0bHkp
IGFzIHRlc3RpbmcKZm9yIDAtZGF5IGV0YyB0byB0YWtlIGEgbG9vay4KCk5vdGUgSSdsbCBiZSBy
ZWJhc2luZyBvbiByYzEgb25jZSBpdCdzIG91dC4KClRoYW5rcywKCkpvbmF0aGFuCgo+IC0tLQo+
ICBkcml2ZXJzL2lpby9hZGMvbWVzb25fc2FyYWRjLmMgfCAxMSArKysrKysrKy0tLQo+ICAxIGZp
bGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2lpby9hZGMvbWVzb25fc2FyYWRjLmMgYi9kcml2ZXJzL2lpby9hZGMvbWVz
b25fc2FyYWRjLmMKPiBpbmRleCAxYTY4YjA5OWQzMjMuLjg1YjY4MjZjYzEwYyAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2lpby9hZGMvbWVzb25fc2FyYWRjLmMKPiArKysgYi9kcml2ZXJzL2lpby9h
ZGMvbWVzb25fc2FyYWRjLmMKPiBAQCAtMTIsNiArMTIsNyBAQAo+ICAjaW5jbHVkZSA8bGludXgv
aW8uaD4KPiAgI2luY2x1ZGUgPGxpbnV4L2lpby9paW8uaD4KPiAgI2luY2x1ZGUgPGxpbnV4L21v
ZHVsZS5oPgo+ICsjaW5jbHVkZSA8bGludXgvbXV0ZXguaD4KPiAgI2luY2x1ZGUgPGxpbnV4L252
bWVtLWNvbnN1bWVyLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9pbnRlcnJ1cHQuaD4KPiAgI2luY2x1
ZGUgPGxpbnV4L29mLmg+Cj4gQEAgLTI3Niw2ICsyNzcsOCBAQCBzdHJ1Y3QgbWVzb25fc2FyX2Fk
Y19wcml2IHsKPiAgCXN0cnVjdCBjbGsJCQkJKmFkY19kaXZfY2xrOwo+ICAJc3RydWN0IGNsa19k
aXZpZGVyCQkJY2xrX2RpdjsKPiAgCXN0cnVjdCBjb21wbGV0aW9uCQkJZG9uZTsKPiArCS8qIGxv
Y2sgdG8gcHJvdGVjdCBhZ2FpbnN0IG11bHRpcGxlIGFjY2VzcyB0byB0aGUgZGV2aWNlICovCj4g
KwlzdHJ1Y3QgbXV0ZXgJCQkJbG9jazsKPiAgCWludAkJCQkJY2FsaWJiaWFzOwo+ICAJaW50CQkJ
CQljYWxpYnNjYWxlOwo+ICAJc3RydWN0IHJlZ21hcAkJCQkqdHNjX3JlZ21hcDsKPiBAQCAtNDg2
LDcgKzQ4OSw3IEBAIHN0YXRpYyBpbnQgbWVzb25fc2FyX2FkY19sb2NrKHN0cnVjdCBpaW9fZGV2
ICppbmRpb19kZXYpCj4gIAlzdHJ1Y3QgbWVzb25fc2FyX2FkY19wcml2ICpwcml2ID0gaWlvX3By
aXYoaW5kaW9fZGV2KTsKPiAgCWludCB2YWwsIHJldDsKPiAgCj4gLQltdXRleF9sb2NrKCZpbmRp
b19kZXYtPm1sb2NrKTsKPiArCW11dGV4X2xvY2soJnByaXYtPmxvY2spOwo+ICAKPiAgCWlmIChw
cml2LT5wYXJhbS0+aGFzX2JsMzBfaW50ZWdyYXRpb24pIHsKPiAgCQkvKiBwcmV2ZW50IEJMMzAg
ZnJvbSB1c2luZyB0aGUgU0FSIEFEQyB3aGlsZSB3ZSBhcmUgdXNpbmcgaXQgKi8KPiBAQCAtNTA0
LDcgKzUwNyw3IEBAIHN0YXRpYyBpbnQgbWVzb25fc2FyX2FkY19sb2NrKHN0cnVjdCBpaW9fZGV2
ICppbmRpb19kZXYpCj4gIAkJCQkJCSAgICAgICEodmFsICYgTUVTT05fU0FSX0FEQ19ERUxBWV9C
TDMwX0JVU1kpLAo+ICAJCQkJCQkgICAgICAxLCAxMDAwMCk7Cj4gIAkJaWYgKHJldCkgewo+IC0J
CQltdXRleF91bmxvY2soJmluZGlvX2Rldi0+bWxvY2spOwo+ICsJCQltdXRleF91bmxvY2soJnBy
aXYtPmxvY2spOwo+ICAJCQlyZXR1cm4gcmV0Owo+ICAJCX0KPiAgCX0KPiBAQCAtNTIxLDcgKzUy
NCw3IEBAIHN0YXRpYyB2b2lkIG1lc29uX3Nhcl9hZGNfdW5sb2NrKHN0cnVjdCBpaW9fZGV2ICpp
bmRpb19kZXYpCj4gIAkJcmVnbWFwX3VwZGF0ZV9iaXRzKHByaXYtPnJlZ21hcCwgTUVTT05fU0FS
X0FEQ19ERUxBWSwKPiAgCQkJCSAgIE1FU09OX1NBUl9BRENfREVMQVlfS0VSTkVMX0JVU1ksIDAp
Owo+ICAKPiAtCW11dGV4X3VubG9jaygmaW5kaW9fZGV2LT5tbG9jayk7Cj4gKwltdXRleF91bmxv
Y2soJnByaXYtPmxvY2spOwo+ICB9Cj4gIAo+ICBzdGF0aWMgdm9pZCBtZXNvbl9zYXJfYWRjX2Ns
ZWFyX2ZpZm8oc3RydWN0IGlpb19kZXYgKmluZGlvX2RldikKPiBAQCAtMTI1MCw2ICsxMjUzLDgg
QEAgc3RhdGljIGludCBtZXNvbl9zYXJfYWRjX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2Ug
KnBkZXYpCj4gIAlpZiAocmV0KQo+ICAJCWdvdG8gZXJyOwo+ICAKPiArCW11dGV4X2luaXQoJnBy
aXYtPmxvY2spOwo+ICsKPiAgCXJldCA9IG1lc29uX3Nhcl9hZGNfaHdfZW5hYmxlKGluZGlvX2Rl
dik7Cj4gIAlpZiAocmV0KQo+ICAJCWdvdG8gZXJyOwoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
