Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D55CCC07E9D
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Sep 2022 15:54:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1VXbapDUzw9tZxx4SuSMyEhRZtK4B/HGTgqXgFCsozM=; b=L/4oVU2TKJfsWa
	MSU5+9Irf1mTmE5JrRuDMfekc30pPBR1gtph1SgdhRGY5xit79bHSuePX0vn5Yf1UkIDBZHIZaGRZ
	5Z7/xia9Q4w9RsZEjpY5PvUQDiYSqxrUFCefYYeHrD9rBm97wnSpNXof8/Ne8CziMJSslv0aA0PG+
	gmUQ23NOh5VvgArktTCzetgm6+tMd2i2NFqrCEd+EVxCS+WM5jW9OyNb7GbqTJj7lZtQGz351tCOO
	/jlEyQRUMTDv4ZU1WbsY50bwRmd2ZVQPfd+weY6QMcvuH6z3sRJRyQXXYMKjQT1GZgjejDdrCIVtZ
	vmM72g0ZaGASzHjkUVlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oc7UG-007pFt-Gb; Sat, 24 Sep 2022 15:54:40 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oc7Tu-007p56-Ig; Sat, 24 Sep 2022 15:54:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id DBC4FB80DF5;
	Sat, 24 Sep 2022 15:54:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35240C433C1;
	Sat, 24 Sep 2022 15:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664034855;
	bh=4Q+zv1OTwlHNnGbpSzBP+qJyET/kJyeReqevWtuVea0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=vNWIsBFw53OuatO7HkfDmlq2gj0TTPiz/Dexq+L+U429yEnSbSUcVLjAVrdEiXbLJ
	 hp4vUqmv3lc7M6BAyrpGT5n00AdB8NeIXkGK5DHjnCDPwEeCtvPOEGVkP8RUeTCk6G
	 KkKqmQ8g+68dgZUldfG0wFJl2GbhVTDzPD0ux9J54Z/R30OTmYZgnSu+BKg23u80qp
	 SeY9KcCV4uJHyN5lbAEtAm0Ip9K6vqMoNBoEXpCtehW/NjsejAskcZYBlh5XRPSa9d
	 siuFlRIf+hDEZSsar8xD6qVnSxmPCeXZ1sAghT7EuGUVF5MS+YWLYNuyFu2AlwCiho
	 PpPejzYi4sgaA==
Date: Sat, 24 Sep 2022 16:54:17 +0100
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
 <aardelean@deviqon.com>, Fabio Estevam <festevam@gmail.com>, Andriy
 Tryshnivskyy <andriy.tryshnivskyy@opensynergy.com>, Haibo Chen
 <haibo.chen@nxp.com>, Shawn Guo <shawnguo@kernel.org>, Hans de Goede
 <hdegoede@redhat.com>, Miquel Raynal <miquel.raynal@bootlin.com>, Jerome
 Brunet <jbrunet@baylibre.com>, Heiko Stuebner <heiko@sntech.de>, Florian
 Boor <florian.boor@kernelconcepts.de>, Ciprian Regus
 <ciprian.regus@analog.com>, Lars-Peter Clausen <lars@metafoo.de>, Andy
 Shevchenko <andy.shevchenko@gmail.com>, Neil Armstrong
 <narmstrong@baylibre.com>, Baolin Wang <baolin.wang@linux.alibaba.com>,
 Jyoti Bhayana <jbhayana@google.com>, Chen-Yu Tsai <wens@csie.org>, Orson
 Zhai <orsonzhai@gmail.com>
Subject: Re: [PATCH 14/15] iio: health: max30102: do not use internal
 iio_dev lock
Message-ID: <20220924165417.46a1fc44@jic23-huawei>
In-Reply-To: <20220920112821.975359-15-nuno.sa@analog.com>
References: <20220920112821.975359-1-nuno.sa@analog.com>
	<20220920112821.975359-15-nuno.sa@analog.com>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220924_085418_949786_4870B647 
X-CRM114-Status: GOOD (  31.91  )
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

T24gVHVlLCAyMCBTZXAgMjAyMiAxMzoyODoyMCArMDIwMApOdW5vIFPDoSA8bnVuby5zYUBhbmFs
b2cuY29tPiB3cm90ZToKCj4gVGhlIHBhdHRlcm4gdXNlZCBpbiB0aGlzIGRldmljZSBkb2VzIG5v
dCBxdWl0ZSBmaXQgaW4gdGhlCj4gaWlvX2RldmljZV9jbGFpbV9kaXJlY3RfbW9kZSgpIHR5cGlj
YWwgdXNhZ2UuIEluIHRoaXMgY2FzZSwKPiBpaW9fYnVmZmVyX2VuYWJsZWQoKSB3YXMgYmVpbmcg
dXNlZCBub3QgdG8gcHJldmVudCB0aGUgcmF3IGFjY2Vzcwo+IGJ1dCB0byBkZWNpZGUgd2hldGhl
ciBvciBub3QgdGhlIGRldmljZSBuZWVkcyB0byBiZSBwb3dlcmVkIG9uIGJlZm9yZS4KPiBJZiBi
dWZmZXJpbmcsIHRoZW4gdGhlIGRldmljZSBpcyBhbHJlYWR5IG9uLiBUbyBndWFyYW50ZWUgdGhl
IHNhbWUKPiBiZWhhdmlvciwgYSBjb21iaW5hdGlvbiBvZiBsb2NrcyBpcyBiZWluZyB1c2VkOgo+
IAo+IDEuIFVzZSBpaW9fZGV2aWNlX2NsYWltX2RpcmVjdF9tb2RlKCkgdG8gY2hlY2sgaWYgZGly
ZWN0IG1vZGUgY2FuIGJlCj4gY2xhaW1lZCBhbmQgaWYgd2UgY2FuLCB0aGVuIHdlIGtlZXAgaXQg
dW50aWwgdGhlIHJlYWRpbmcgaXMgZG9uZSAod2hpY2gKPiBhbHNvIG1lYW5zIHRoZSBkZXZpY2Ug
d2lsbCBiZSBwb3dlcmVkIG9uIGFuZCBvZmYpOwo+IDIuIElmIGFscmVhZHkgYnVmZmVyaW5nLCB3
ZSBuZWVkIHRvIG1ha2Ugc3VyZSB0aGF0IGJ1ZmZlcmluZyBpcyBub3QKPiBkaXNhYmxlZCAoYW5k
IGhlbmNlLCBwb3dlcmluZyBvZmYgdGhlIGRldmljZSkgd2hpbGUgZG9pbmcgYSByYXcgcmVhZC4g
Rm9yCj4gdGhhdCwgd2UgY2FuIG1ha2UgdXNlIG9mIHRoZSBsb2NhbCBsb2NrIHRoYXQgYWxyZWFk
eSBleGlzdHMuCj4gCj4gU2lnbmVkLW9mZi1ieTogTnVubyBTw6EgPG51bm8uc2FAYW5hbG9nLmNv
bT4KT2J2aW91c2x5IHNhbWUgZGFuY2UgaW4gaGVyZSBhcyB0aGUgcmVsYXRlZCBwcmV2aW91cyBw
YXRjaC4gU28gc2FtZSBzb2x1dGlvbgpuZWVkcyBhZG9wdGluZy4gIEkganVzdCB0aG91Z2h0IEkn
ZCByZXBseSB0byBtYWtlIHN1cmUgd2UgZGlkbid0IGZvcmdldCB0bwpjb3ZlciB0aGVtIGJvdGgg
OikKCkpvbmF0aGFuCgoKPiAtLS0KPiAgZHJpdmVycy9paW8vaGVhbHRoL21heDMwMTAyLmMgfCAy
NSArKysrKysrKysrKysrKysrKysrLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRp
b25zKCspLCA2IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lpby9oZWFs
dGgvbWF4MzAxMDIuYyBiL2RyaXZlcnMvaWlvL2hlYWx0aC9tYXgzMDEwMi5jCj4gaW5kZXggYWJi
Y2VmNTYzODA3Li5lOTg0Yzc4Yjk5ZjYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9paW8vaGVhbHRo
L21heDMwMTAyLmMKPiArKysgYi9kcml2ZXJzL2lpby9oZWFsdGgvbWF4MzAxMDIuYwo+IEBAIC0y
MjcsOSArMjI3LDIwIEBAIHN0YXRpYyBpbnQgbWF4MzAxMDJfYnVmZmVyX3Bvc3RlbmFibGUoc3Ry
dWN0IGlpb19kZXYgKmluZGlvX2RldikKPiAgc3RhdGljIGludCBtYXgzMDEwMl9idWZmZXJfcHJl
ZGlzYWJsZShzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2KQo+ICB7Cj4gIAlzdHJ1Y3QgbWF4MzAx
MDJfZGF0YSAqZGF0YSA9IGlpb19wcml2KGluZGlvX2Rldik7Cj4gKwlpbnQgcmV0Owo+ICsKPiAr
CS8qCj4gKwkgKiBBcyBzdGF0ZWQgaW4gdGhlIGNvbW1lbnQgaW4gdGhlIHJlYWRfcmF3KCkgZnVu
Y3Rpb24sIHRlbXBlcmF0dXJlCj4gKwkgKiBjYW4gb25seSBiZSBhY3F1aXJlZCBpZiB0aGUgZW5n
aW5lIGlzIHJ1bm5pbmcuIEFzIHN1Y2ggdGhlIG11dGV4Cj4gKwkgKiBpcyB1c2VkIHRvIG1ha2Ug
c3VyZSB3ZSBkbyBub3QgcG93ZXIgZG93biB3aGlsZSBkb2luZyBhIHRlbXBlcmF0dXJlCj4gKwkg
KiByZWFkaW5nLgo+ICsJICovCj4gKwltdXRleF9sb2NrKCZkYXRhLT5sb2NrKTsKPiArCXJldCA9
IG1heDMwMTAyX3NldF9wb3dlcm1vZGUoZGF0YSwgTUFYMzAxMDJfUkVHX01PREVfQ09ORklHX01P
REVfTk9ORSwKPiArCQkJCSAgICAgZmFsc2UpOwo+ICsJbXV0ZXhfdW5sb2NrKCZkYXRhLT5sb2Nr
KTsKPiAgCj4gLQlyZXR1cm4gbWF4MzAxMDJfc2V0X3Bvd2VybW9kZShkYXRhLCBNQVgzMDEwMl9S
RUdfTU9ERV9DT05GSUdfTU9ERV9OT05FLAo+IC0JCQkJICAgICAgZmFsc2UpOwo+ICsJcmV0dXJu
IHJldDsKPiAgfQo+ICAKPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBpaW9fYnVmZmVyX3NldHVwX29w
cyBtYXgzMDEwMl9idWZmZXJfc2V0dXBfb3BzID0gewo+IEBAIC00NzcsMTIgKzQ4OCwxNCBAQCBz
dGF0aWMgaW50IG1heDMwMTAyX3JlYWRfcmF3KHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYsCj4g
IAkJICogVGVtcGVyYXR1cmUgcmVhZGluZyBjYW4gb25seSBiZSBhY3F1aXJlZCB3aGVuIG5vdCBp
bgo+ICAJCSAqIHNodXRkb3duOyBsZWF2ZSBzaHV0ZG93biBicmllZmx5IHdoZW4gYnVmZmVyIG5v
dCBydW5uaW5nCj4gIAkJICovCj4gLQkJbXV0ZXhfbG9jaygmaW5kaW9fZGV2LT5tbG9jayk7Cj4g
LQkJaWYgKCFpaW9fYnVmZmVyX2VuYWJsZWQoaW5kaW9fZGV2KSkKPiArCQlpZiAoIWlpb19kZXZp
Y2VfY2xhaW1fZGlyZWN0X21vZGUoaW5kaW9fZGV2KSkgewo+ICAJCQlyZXQgPSBtYXgzMDEwMl9n
ZXRfdGVtcChkYXRhLCB2YWwsIHRydWUpOwo+IC0JCWVsc2UKPiArCQkJaWlvX2RldmljZV9yZWxl
YXNlX2RpcmVjdF9tb2RlKGluZGlvX2Rldik7Cj4gKwkJfSBlbHNlIHsKPiArCQkJbXV0ZXhfbG9j
aygmZGF0YS0+bG9jayk7Cj4gIAkJCXJldCA9IG1heDMwMTAyX2dldF90ZW1wKGRhdGEsIHZhbCwg
ZmFsc2UpOwo+IC0JCW11dGV4X3VubG9jaygmaW5kaW9fZGV2LT5tbG9jayk7Cj4gKwkJCW11dGV4
X3VubG9jaygmZGF0YS0+bG9jayk7Cj4gKwkJfQo+ICAJCWlmIChyZXQpCj4gIAkJCXJldHVybiBy
ZXQ7Cj4gIAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
