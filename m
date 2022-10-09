Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6578C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Oct 2022 12:09:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=83N///Bl8uUiWISJ4NP5k3uEt0utcGO108bOzu3gtIU=; b=jDEmmkA9wp+Yik
	b3n/dvf2V8bz4h4JtDxZJEV34hYXWijrQQTTj49+XOmGwz1VaQKeRdL1xDF0HL9dfsTQORz90CBBp
	V1rT2wjTvZCrGeMCEYzWUZrcGhRB8R0oBXpFfcjBe4cVVN+WW0oaY+Ix7NcU2Y4bG7yn4pSEWMFGb
	pQiI2cG0IZxBUDzI6TbvLCuARXfmsYTHakbpcJSpRO5qPkW91y2dDvT32pe6DSiaQD7JG7Kc/qQ9v
	4NSw/lliS0QAyBCf8l63RLsNidf457ppEhswl/k+lcqobNAKJGoS2hAiAaSEp5SOJrYFRfeNzdZ19
	j9yPxHYI/FvR39SdrDLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohV7a-00FVdE-74; Sun, 09 Oct 2022 12:09:30 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohV7M-00FVYy-S5; Sun, 09 Oct 2022 12:09:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 625E260AE2;
	Sun,  9 Oct 2022 12:09:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 29734C433D6;
	Sun,  9 Oct 2022 12:09:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665317355;
	bh=a+ioslH5ZrFK62x3g8Zoc7k7bQyq+RGCbyE28/jS2Ko=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=O0XWmv1077JxkBtJhkhNyENj58OE4zSAaaJ8o1YThoYLJBqLSNvKC053z+U9OA/vW
	 WTJUaKKJMj7O3TqaOZO05Czdi5q8fSmMo+3sj+SC0siazhzsl2E4YEqL97oIN8EQ48
	 EfuOlqTGvfbnOCaIvbz/C7he6W12UaTlZQEz1yMHk45oOe4hQtDtipTWPxyTNaMVfM
	 7O1EyGem14SCzn8C/OEMu9PAdZ4mBSdJWbljQZZSYjW6k/7WZRxTnM/0E6nsN/BmLd
	 qsctI4powagQi0P/Ra5ooVJgQXOniq2CMkzW1eo3fsUCk8wF1PTpoOb6HK8bdXycnB
	 zCERq8Q9QRF1Q==
Date: Sun, 9 Oct 2022 13:09:31 +0100
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
Subject: Re: [PATCH v2 11/16] iio: common: scmi_iio: do not use internal
 iio_dev lock
Message-ID: <20221009130931.0fdd3fc9@jic23-huawei>
In-Reply-To: <20221004134909.1692021-12-nuno.sa@analog.com>
References: <20221004134909.1692021-1-nuno.sa@analog.com>
	<20221004134909.1692021-12-nuno.sa@analog.com>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_050917_011116_2745DA37 
X-CRM114-Status: GOOD (  17.98  )
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

T24gVHVlLCA0IE9jdCAyMDIyIDE1OjQ5OjA0ICswMjAwCk51bm8gU8OhIDxudW5vLnNhQGFuYWxv
Zy5jb20+IHdyb3RlOgoKPiBUaGUgaWlvX2RldmljZSBsb2NrIGlzIG9ubHkgbWVhbnQgZm9yIGlu
dGVybmFsIHVzZS4gSGVuY2UgZGVmaW5lIGEKPiBkZXZpY2UgbG9jYWwgbG9jayB0byBwcm90ZWN0
IGFnYWluc3QgY29uY3VycmVudCBhY2Nlc3Nlcy4KPiAKPiBXaGlsZSBhdCBpdCwgcHJvcGVybHkg
aW5jbHVkZSAibXV0ZXguaCIgZm9yIG11dGV4IHJlbGF0ZWQgQVBJcy4KPiAKPiBTaWduZWQtb2Zm
LWJ5OiBOdW5vIFPDoSA8bnVuby5zYUBhbmFsb2cuY29tPgpBcHBsaWVkIHRvIHRoZSB0b2dyZWcg
YnJhbmNoIG9mIGlpby5naXQsIGJ1dCBmb3Igbm93IG9ubHkgcHVzaGVkIG91dCBhcyB0ZXN0aW5n
CmFzIEknbGwgYmUgcmViYXNpbmcgb24gcmMxIG9uY2UgYXZhaWxhYmxlLgoKVGhhbmtzLAoKSm9u
YXRoYW4KCj4gLS0tCj4gIGRyaXZlcnMvaWlvL2NvbW1vbi9zY21pX3NlbnNvcnMvc2NtaV9paW8u
YyB8IDkgKysrKysrKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDIgZGVs
ZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaWlvL2NvbW1vbi9zY21pX3NlbnNv
cnMvc2NtaV9paW8uYyBiL2RyaXZlcnMvaWlvL2NvbW1vbi9zY21pX3NlbnNvcnMvc2NtaV9paW8u
Ywo+IGluZGV4IDU0Y2NmMTlhYjJiYi4uZDkyZjdmNjUxZjdiIDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvaWlvL2NvbW1vbi9zY21pX3NlbnNvcnMvc2NtaV9paW8uYwo+ICsrKyBiL2RyaXZlcnMvaWlv
L2NvbW1vbi9zY21pX3NlbnNvcnMvc2NtaV9paW8uYwo+IEBAIC0xNSw2ICsxNSw3IEBACj4gICNp
bmNsdWRlIDxsaW51eC9rZXJuZWwuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L2t0aHJlYWQuaD4KPiAg
I2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgo+ICsjaW5jbHVkZSA8bGludXgvbXV0ZXguaD4KPiAg
I2luY2x1ZGUgPGxpbnV4L3NjbWlfcHJvdG9jb2wuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L3RpbWUu
aD4KPiAgI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+Cj4gQEAgLTI3LDYgKzI4LDggQEAgc3RydWN0
IHNjbWlfaWlvX3ByaXYgewo+ICAJc3RydWN0IHNjbWlfcHJvdG9jb2xfaGFuZGxlICpwaDsKPiAg
CWNvbnN0IHN0cnVjdCBzY21pX3NlbnNvcl9pbmZvICpzZW5zb3JfaW5mbzsKPiAgCXN0cnVjdCBp
aW9fZGV2ICppbmRpb19kZXY7Cj4gKwkvKiBsb2NrIHRvIHByb3RlY3QgYWdhaW5zdCBtdWx0aXBs
ZSBhY2Nlc3MgdG8gdGhlIGRldmljZSAqLwo+ICsJc3RydWN0IG11dGV4IGxvY2s7Cj4gIAkvKiBh
ZGRpbmcgb25lIGFkZGl0aW9uYWwgY2hhbm5lbCBmb3IgdGltZXN0YW1wICovCj4gIAlzNjQgaWlv
X2J1ZltTQ01JX0lJT19OVU1fT0ZfQVhJUyArIDFdOwo+ICAJc3RydWN0IG5vdGlmaWVyX2Jsb2Nr
IHNlbnNvcl91cGRhdGVfbmI7Cj4gQEAgLTE5OCwxMyArMjAxLDE0IEBAIHN0YXRpYyBpbnQgc2Nt
aV9paW9fd3JpdGVfcmF3KHN0cnVjdCBpaW9fZGV2ICppaW9fZGV2LAo+ICAJCQkgICAgICBzdHJ1
Y3QgaWlvX2NoYW5fc3BlYyBjb25zdCAqY2hhbiwgaW50IHZhbCwKPiAgCQkJICAgICAgaW50IHZh
bDIsIGxvbmcgbWFzaykKPiAgewo+ICsJc3RydWN0IHNjbWlfaWlvX3ByaXYgKnNlbnNvciA9IGlp
b19wcml2KGlpb19kZXYpOwo+ICAJaW50IGVycjsKPiAgCj4gIAlzd2l0Y2ggKG1hc2spIHsKPiAg
CWNhc2UgSUlPX0NIQU5fSU5GT19TQU1QX0ZSRVE6Cj4gLQkJbXV0ZXhfbG9jaygmaWlvX2Rldi0+
bWxvY2spOwo+ICsJCW11dGV4X2xvY2soJnNlbnNvci0+bG9jayk7Cj4gIAkJZXJyID0gc2NtaV9p
aW9fc2V0X29kcl92YWwoaWlvX2RldiwgdmFsLCB2YWwyKTsKPiAtCQltdXRleF91bmxvY2soJmlp
b19kZXYtPm1sb2NrKTsKPiArCQltdXRleF91bmxvY2soJnNlbnNvci0+bG9jayk7Cj4gIAkJcmV0
dXJuIGVycjsKPiAgCWRlZmF1bHQ6Cj4gIAkJcmV0dXJuIC1FSU5WQUw7Cj4gQEAgLTU4Niw2ICs1
OTAsNyBAQCBzY21pX2FsbG9jX2lpb2RldihzdHJ1Y3Qgc2NtaV9kZXZpY2UgKnNkZXYsCj4gIAlz
ZW5zb3ItPnNlbnNvcl9pbmZvID0gc2Vuc29yX2luZm87Cj4gIAlzZW5zb3ItPnNlbnNvcl91cGRh
dGVfbmIubm90aWZpZXJfY2FsbCA9IHNjbWlfaWlvX3NlbnNvcl91cGRhdGVfY2I7Cj4gIAlzZW5z
b3ItPmluZGlvX2RldiA9IGlpb2RldjsKPiArCW11dGV4X2luaXQoJnNlbnNvci0+bG9jayk7Cj4g
IAo+ICAJLyogYWRkaW5nIG9uZSBhZGRpdGlvbmFsIGNoYW5uZWwgZm9yIHRpbWVzdGFtcCAqLwo+
ICAJaWlvZGV2LT5udW1fY2hhbm5lbHMgPSBzZW5zb3JfaW5mby0+bnVtX2F4aXMgKyAxOwoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
