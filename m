Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 708C0C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Oct 2022 11:55:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uMeJQIf98d6kuwk/19yc7g7NS+jJuePizTpsIvFOBIM=; b=Yryhua+BOQWtiY
	Keh05UXsbDZ6nYHLi3+n7YLU7LKwfaZzo9iVSt8jter5VHkJptSc6XObxoWLLcLOL88N2kFu33y2f
	ruXR/lXgx2Hhc140qF8zQ5EPIkhMH3SgJtyJE9zHfiisoCUsVA+bCeTU0IG4ljh9D2Pylob94ZiBp
	0mvnb0px6HxkdZm0jjrwBJ6NXuhzlNkNXls+WaF+iYWo/RarxmNaekJrJMOt+xpkehUC3lgm9+WwZ
	wmy8oBQH3HMxsei/VWS6eaCqDHAT+aRQG+/Aw2ifbiZu4Tc0kBhhD72UzhSSKnrPAc+k8frvI2DrL
	AkVoefReFK1nmHD/jC9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohUtv-00FRqf-Uj; Sun, 09 Oct 2022 11:55:23 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohUtk-00FRnZ-7h; Sun, 09 Oct 2022 11:55:13 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A7DB160BC1;
	Sun,  9 Oct 2022 11:55:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5EB5C433C1;
	Sun,  9 Oct 2022 11:55:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665316510;
	bh=7G8FudK/SnVT+WU1Sm0q/dyYpMvSStBHIg7BMBTU6TQ=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=UR19577n625itCGGwah2zEcsVrK7GXWXYh418H6KABhox1F2ZyJ79MKrtay4RxlI8
	 gMIyVaz8FLIXQ2ZpVD5qziGkxHxwOQnUtTdBfAInr3wywprFiVh66BgsZoB5Rym1JI
	 6MaX0DK1Dj43Ao20Eg0wcsNOvF3KII6wm7mrs3J3mDqXsziqOCe9nf364lm3r45+P4
	 Yptnu+u8ccQwQnBTIy5PgBywzylk89JULJBUmmq6SHctduUApQBoAelArjllHOoN/l
	 gusA6WO6msitCWzg3s8fpkFjYOcQ19aIclvWdh/D/H+KmU9KHIXVPu9oxESxxiQTog
	 hvgcUQBkBpe8g==
Date: Sun, 9 Oct 2022 12:55:26 +0100
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
Subject: Re: [PATCH v2 02/16] iio: adc: axp288_adc: do not use internal
 iio_dev lock
Message-ID: <20221009125526.0358bce6@jic23-huawei>
In-Reply-To: <20221004134909.1692021-3-nuno.sa@analog.com>
References: <20221004134909.1692021-1-nuno.sa@analog.com>
	<20221004134909.1692021-3-nuno.sa@analog.com>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_045512_374337_98EB8B66 
X-CRM114-Status: GOOD (  19.12  )
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

T24gVHVlLCA0IE9jdCAyMDIyIDE1OjQ4OjU1ICswMjAwCk51bm8gU8OhIDxudW5vLnNhQGFuYWxv
Zy5jb20+IHdyb3RlOgoKPiBUaGUgaWlvX2RldmljZSBsb2NrIGlzIG9ubHkgbWVhbnQgZm9yIGlu
dGVybmFsIHVzZS4gSGVuY2UgZGVmaW5lIGEKPiBkZXZpY2UgbG9jYWwgbG9jayB0byBwcm90ZWN0
IGFnYWluc3QgY29uY3VycmVudCBhY2Nlc3Nlcy4KPiAKPiBXaGlsZSBhdCBpdCwgcHJvcGVybHkg
aW5jbHVkZSAibXV0ZXguaCIgZm9yIG11dGV4IHJlbGF0ZWQgQVBJcy4KPiAKPiBTaWduZWQtb2Zm
LWJ5OiBOdW5vIFPDoSA8bnVuby5zYUBhbmFsb2cuY29tPgpBcHBsaWVkIHdpdGggdGlueSB0d2Vh
ayB0byBkcm9wIHRoZSB1bnJlbGF0ZWQgd2hpdGUgc3BhY2UgY2hhbmdlLgoKQXBwbGllZCB0byB0
aGUgdG9ncmVnIGJyYW5jaCBvZiBpaW8uZ2l0IHdoaWNoIGlzIG9ubHkgcHVzaGVkIG91dAphcyB0
ZXN0aW5nIHVudGlsIGFmdGVyIGEgcmViYXNlIG9uIHJjMS4KClRoYW5rcywKCkpvbmF0aGFuCgo+
IC0tLQo+ICBkcml2ZXJzL2lpby9hZGMvYXhwMjg4X2FkYy5jIHwgMTAgKysrKysrKystLQo+ICAx
IGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2lpby9hZGMvYXhwMjg4X2FkYy5jIGIvZHJpdmVycy9paW8vYWRjL2F4
cDI4OF9hZGMuYwo+IGluZGV4IDU4MDM2MWJkOTg0OS4uNTM3ODEwMTBmNzg5IDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvaWlvL2FkYy9heHAyODhfYWRjLmMKPiArKysgYi9kcml2ZXJzL2lpby9hZGMv
YXhwMjg4X2FkYy5jCj4gQEAgLTksNiArOSw3IEBACj4gIAo+ICAjaW5jbHVkZSA8bGludXgvZG1p
Lmg+Cj4gICNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4KPiArI2luY2x1ZGUgPGxpbnV4L211dGV4
Lmg+Cj4gICNpbmNsdWRlIDxsaW51eC9rZXJuZWwuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L2Rldmlj
ZS5oPgo+ICAjaW5jbHVkZSA8bGludXgvcmVnbWFwLmg+Cj4gQEAgLTUwLDYgKzUxLDggQEAgZW51
bSBheHAyODhfYWRjX2lkIHsKPiAgc3RydWN0IGF4cDI4OF9hZGNfaW5mbyB7Cj4gIAlpbnQgaXJx
Owo+ICAJc3RydWN0IHJlZ21hcCAqcmVnbWFwOwo+ICsJLyogbG9jayB0byBwcm90ZWN0IGFnYWlu
c3QgbXVsdGlwbGUgYWNjZXNzIHRvIHRoZSBkZXZpY2UgKi8KPiArCXN0cnVjdCBtdXRleCBsb2Nr
Owo+ICAJYm9vbCB0c19lbmFibGVkOwo+ICB9Owo+ICAKPiBAQCAtMTYxLDcgKzE2NCw3IEBAIHN0
YXRpYyBpbnQgYXhwMjg4X2FkY19yZWFkX3JhdyhzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2LAo+
ICAJaW50IHJldDsKPiAgCXN0cnVjdCBheHAyODhfYWRjX2luZm8gKmluZm8gPSBpaW9fcHJpdihp
bmRpb19kZXYpOwo+ICAKPiAtCW11dGV4X2xvY2soJmluZGlvX2Rldi0+bWxvY2spOwo+ICsJbXV0
ZXhfbG9jaygmaW5mby0+bG9jayk7Cj4gIAlzd2l0Y2ggKG1hc2spIHsKPiAgCWNhc2UgSUlPX0NI
QU5fSU5GT19SQVc6Cj4gIAkJaWYgKGF4cDI4OF9hZGNfc2V0X3RzKGluZm8sIEFYUDI4OF9BRENf
VFNfQ1VSUkVOVF9PTl9PTkRFTUFORCwKPiBAQCAtMTc4LDcgKzE4MSw3IEBAIHN0YXRpYyBpbnQg
YXhwMjg4X2FkY19yZWFkX3JhdyhzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2LAo+ICAJZGVmYXVs
dDoKPiAgCQlyZXQgPSAtRUlOVkFMOwo+ICAJfQo+IC0JbXV0ZXhfdW5sb2NrKCZpbmRpb19kZXYt
Pm1sb2NrKTsKPiArCW11dGV4X3VubG9jaygmaW5mby0+bG9jayk7Cj4gIAo+ICAJcmV0dXJuIHJl
dDsKPiAgfQo+IEBAIC0yNjQsNiArMjY3LDcgQEAgc3RhdGljIGludCBheHAyODhfYWRjX3Byb2Jl
KHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAkJcmV0dXJuIC1FTk9NRU07Cj4gIAo+
ICAJaW5mbyA9IGlpb19wcml2KGluZGlvX2Rldik7Cj4gKwo+ICAJaW5mby0+aXJxID0gcGxhdGZv
cm1fZ2V0X2lycShwZGV2LCAwKTsKPiAgCWlmIChpbmZvLT5pcnEgPCAwKQo+ICAJCXJldHVybiBp
bmZvLT5pcnE7Cj4gQEAgLTI4OSw2ICsyOTMsOCBAQCBzdGF0aWMgaW50IGF4cDI4OF9hZGNfcHJv
YmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgCWlmIChyZXQgPCAwKQo+ICAJCXJl
dHVybiByZXQ7Cj4gIAo+ICsJbXV0ZXhfaW5pdCgmaW5mby0+bG9jayk7Cj4gKwo+ICAJcmV0dXJu
IGRldm1faWlvX2RldmljZV9yZWdpc3RlcigmcGRldi0+ZGV2LCBpbmRpb19kZXYpOwo+ICB9Cj4g
IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
