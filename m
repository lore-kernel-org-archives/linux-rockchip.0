Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8B2AC433FE
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Oct 2022 10:57:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RwzgE/Ejx11en7KZJbmr0rtJD1mqTK2+8sl2DTS9Ta0=; b=bYbpqu8jWkPG3q
	C1KSV6CPPwTOY3gDISMjM4vj5vOvDCS5Y0mV5NzMHgfp7VjL+PHBL/KCZLHO5w0FYKGq//uiV16P8
	/mwyUo/Dgw0CH6mr0ic41HU+AeQWuZvxYRHN46+L1i8JeH5zQ4soelz/RhaN4DgLJqyi4YVdS6SJd
	jKDg+O2YgLqsSr0KNPeMBrcamvasgKtxJj8wj66nLrpocBtPJATdclPnnraiaiT63UlejM2bT16TT
	FetOI8wVxF/SidTFDrP3xpncFbWhM1/V8ofdSW/0KuPp2CYZztmascpta89fzuvHQ5AouS60erJp3
	B2hqAsWS6C9OhbpPeMEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omYf9-00Ezp4-MB; Sun, 23 Oct 2022 10:57:03 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omYey-00EzmU-Gb; Sun, 23 Oct 2022 10:56:53 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 7876460B7F;
	Sun, 23 Oct 2022 10:56:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5E38C433B5;
	Sun, 23 Oct 2022 10:56:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666522604;
	bh=XvKzoMHh4PNdjJ9hDiliOIBvfwstr1bqWxtmtudN56g=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=D1we2jfn52Xe7d3LHisWwS1q8OHc8X4Dh054eRs3XJLDYc/W4zVhESsGaJmBH0ivY
	 ajrjc9T0uY2tVD/VL0mNSL/8eVrUWYdB/gS8hChuk5pY9PoCmvRdagaZ8NSdlNYn43
	 ajDNMyCHmpxhXRkjoJ4scHHBVQKzEiRfOjxDU+qbrKv4bpaGTwmpKx47KpGmfGIKBq
	 pLs4NWhv2crPrTtJ7D7Rwc1/y0G2fx7mOUGSLzXWella2IqW05qsXAK7S85LGuwq9V
	 Qo8ePISUgwRm+orWqtjsg2hDBKihY7jjlbRwn1Ez0EiCENpEBAqwnr1EoiaOPep6V5
	 il3BM9b3kamTg==
Date: Sat, 24 Sep 2022 16:43:07 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>
Cc: <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-amlogic@lists.infradead.org>,
 <linux-imx@nxp.com>, <linux-iio@vger.kernel.org>, Chunyan Zhang
 <zhang.lyra@gmail.com>, Michael Hennerich <Michael.Hennerich@analog.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Sascha Hauer
 <s.hauer@pengutronix.de>, Cixi Geng <cixi.geng1@unisoc.com>, Kevin Hilman
 <khilman@baylibre.com>, Vladimir Zapolskiy <vz@mleia.com>, Pengutronix
 Kernel Team <kernel@pengutronix.de>, Alexandru Ardelean
 <aardelean@deviqon.com>, "Fabio Estevam" <festevam@gmail.com>, Andriy
 Tryshnivskyy <andriy.tryshnivskyy@opensynergy.com>, Haibo Chen
 <haibo.chen@nxp.com>, "Shawn Guo" <shawnguo@kernel.org>, Hans de Goede
 <hdegoede@redhat.com>, Miquel Raynal <miquel.raynal@bootlin.com>, Jerome
 Brunet <jbrunet@baylibre.com>, "Heiko Stuebner" <heiko@sntech.de>, Florian
 Boor <florian.boor@kernelconcepts.de>, Ciprian Regus
 <ciprian.regus@analog.com>, Lars-Peter Clausen <lars@metafoo.de>, Andy
 Shevchenko <andy.shevchenko@gmail.com>, Neil Armstrong
 <narmstrong@baylibre.com>, "Baolin Wang" <baolin.wang@linux.alibaba.com>,
 Jyoti Bhayana <jbhayana@google.com>, Chen-Yu Tsai <wens@csie.org>, Orson
 Zhai <orsonzhai@gmail.com>
Subject: Re: [PATCH 12/15] iio: fyro: itg3200_core: do not use internal
 iio_dev lock
Message-ID: <20220924164307.7c821708@jic23-huawei>
In-Reply-To: <20220920112821.975359-13-nuno.sa@analog.com>
References: <20220920112821.975359-1-nuno.sa@analog.com>
	<20220920112821.975359-13-nuno.sa@analog.com>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221023_035652_667836_BCB3230C 
X-CRM114-Status: GOOD (  17.51  )
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

T24gVHVlLCAyMCBTZXAgMjAyMiAxMzoyODoxOCArMDIwMApOdW5vIFPDoSA8bnVuby5zYUBhbmFs
b2cuY29tPiB3cm90ZToKCj4gVGhlIGlpb19kZXZpY2UgbG9jayBpcyBvbmx5IG1lYW50IGZvciBp
bnRlcm5hbCB1c2UuIEhlbmNlIGRlZmluZSBhCj4gZGV2aWNlIGxvY2FsIGxvY2sgdG8gcHJvdGVj
dCBhZ2FpbnN0IGNvbmN1cnJlbnQgYWNjZXNzZXMuCj4gCj4gU2lnbmVkLW9mZi1ieTogTnVubyBT
w6EgPG51bm8uc2FAYW5hbG9nLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9paW8vZ3lyby9pdGczMjAw
X2NvcmUuYyAgfCA5ICsrKysrKy0tLQo+ICBpbmNsdWRlL2xpbnV4L2lpby9neXJvL2l0ZzMyMDAu
aCB8IDIgKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25z
KC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaWlvL2d5cm8vaXRnMzIwMF9jb3JlLmMgYi9k
cml2ZXJzL2lpby9neXJvL2l0ZzMyMDBfY29yZS5jCj4gaW5kZXggMDQ5MWM2NGUxYjMyLi4zNThh
YThhYzBjNmIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9paW8vZ3lyby9pdGczMjAwX2NvcmUuYwo+
ICsrKyBiL2RyaXZlcnMvaWlvL2d5cm8vaXRnMzIwMF9jb3JlLmMKPiBAQCAtMTgsNiArMTgsNyBA
QAo+ICAjaW5jbHVkZSA8bGludXgvc2xhYi5oPgo+ICAjaW5jbHVkZSA8bGludXgvc3RhdC5oPgo+
ICAjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9tdXRleC5oPgo+
ICAjaW5jbHVkZSA8bGludXgvZGVsYXkuaD4KPiAgCj4gICNpbmNsdWRlIDxsaW51eC9paW8vaWlv
Lmg+Cj4gQEAgLTEzMSw2ICsxMzIsNyBAQCBzdGF0aWMgaW50IGl0ZzMyMDBfd3JpdGVfcmF3KHN0
cnVjdCBpaW9fZGV2ICppbmRpb19kZXYsCj4gIAkJCSAgICAgaW50IHZhbDIsCj4gIAkJCSAgICAg
bG9uZyBtYXNrKQo+ICB7Cj4gKwlzdHJ1Y3QgaXRnMzIwMCAqc3QgPSBpaW9fcHJpdihpbmRpb19k
ZXYpOwo+ICAJaW50IHJldDsKPiAgCXU4IHQ7Cj4gIAo+IEBAIC0xMzksMTEgKzE0MSwxMSBAQCBz
dGF0aWMgaW50IGl0ZzMyMDBfd3JpdGVfcmF3KHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYsCj4g
IAkJaWYgKHZhbCA9PSAwIHx8IHZhbDIgIT0gMCkKPiAgCQkJcmV0dXJuIC1FSU5WQUw7Cj4gIAo+
IC0JCW11dGV4X2xvY2soJmluZGlvX2Rldi0+bWxvY2spOwo+ICsJCW11dGV4X2xvY2soJnN0LT5s
b2NrKTsKPiAgCj4gIAkJcmV0ID0gaXRnMzIwMF9yZWFkX3JlZ184KGluZGlvX2RldiwgSVRHMzIw
MF9SRUdfRExQRiwgJnQpOwo+ICAJCWlmIChyZXQpIHsKPiAtCQkJbXV0ZXhfdW5sb2NrKCZpbmRp
b19kZXYtPm1sb2NrKTsKPiArCQkJbXV0ZXhfdW5sb2NrKCZzdC0+bG9jayk7Cj4gIAkJCXJldHVy
biByZXQ7Cj4gIAkJfQo+ICAJCXQgPSAoKHQgJiBJVEczMjAwX0RMUEZfQ0ZHX01BU0spID8gMTAw
MHUgOiA4MDAwdSkgLyB2YWwgLSAxOwo+IEBAIC0xNTIsNyArMTU0LDcgQEAgc3RhdGljIGludCBp
dGczMjAwX3dyaXRlX3JhdyhzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2LAo+ICAJCQkJCSAgSVRH
MzIwMF9SRUdfU0FNUExFX1JBVEVfRElWLAo+ICAJCQkJCSAgdCk7Cj4gIAo+IC0JCW11dGV4X3Vu
bG9jaygmaW5kaW9fZGV2LT5tbG9jayk7Cj4gKwkJbXV0ZXhfdW5sb2NrKCZzdC0+bG9jayk7Cj4g
IAkJcmV0dXJuIHJldDsKPiAgCj4gIAlkZWZhdWx0Ogo+IEBAIC0zMDcsNiArMzA5LDcgQEAgc3Rh
dGljIGludCBpdGczMjAwX3Byb2JlKHN0cnVjdCBpMmNfY2xpZW50ICpjbGllbnQsCj4gIAkJcmV0
dXJuIC1FTk9NRU07Cj4gIAo+ICAJc3QgPSBpaW9fcHJpdihpbmRpb19kZXYpOwo+ICsJbXV0ZXhf
aW5pdCgmc3QtPmxvY2spOwo+ICAKPiAgCXJldCA9IGlpb19yZWFkX21vdW50X21hdHJpeCgmY2xp
ZW50LT5kZXYsICZzdC0+b3JpZW50YXRpb24pOwo+ICAJaWYgKHJldCkKPiBkaWZmIC0tZ2l0IGEv
aW5jbHVkZS9saW51eC9paW8vZ3lyby9pdGczMjAwLmggYi9pbmNsdWRlL2xpbnV4L2lpby9neXJv
L2l0ZzMyMDAuaAo+IGluZGV4IGE2MDJmZTdiODRmYS4uNzRiNmQxY2FkYzg2IDEwMDY0NAo+IC0t
LSBhL2luY2x1ZGUvbGludXgvaWlvL2d5cm8vaXRnMzIwMC5oCj4gKysrIGIvaW5jbHVkZS9saW51
eC9paW8vZ3lyby9pdGczMjAwLmgKPiBAQCAtMTAyLDYgKzEwMiw4IEBAIHN0cnVjdCBpdGczMjAw
IHsKPiAgCXN0cnVjdCBpMmNfY2xpZW50CSppMmM7Cj4gIAlzdHJ1Y3QgaWlvX3RyaWdnZXIJKnRy
aWc7Cj4gIAlzdHJ1Y3QgaWlvX21vdW50X21hdHJpeCBvcmllbnRhdGlvbjsKPiArCS8qIGxvY2sg
dG8gcHJvdGVjdCBhZ2FpbnN0IG11bHRpcGxlIGFjY2VzcyB0byB0aGUgZGV2aWNlICovCj4gKwlz
dHJ1Y3QgbXV0ZXgJCWxvY2s7Cj4gIH07Cj4gIAo+ICBlbnVtIElURzMyMDBfU0NBTl9JTkRFWCB7
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
