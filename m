Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD005C54EE9
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Sep 2022 11:55:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qeSbAjVcKeMFBi1eBtHC4y+Y3A9c7HIr408b/yx/TxE=; b=ZwuUpsVVaCvW+K
	4/mw2hqog7KOV/qWO46mW2/rD5bhEV4e/pel+hR02Bj/tIWmO/A413EDMtPBRkwkOSYMGH6kihQDS
	pB8YzUfjoFqXzoD8e/muSHGNkqdk4uNMOdU7cW9FrFyqR4eTOBf3cy4ft588NJ19lGJc4IxHn90qE
	3FQNvFTwLHecfoHxZPj2YDufAE27XbEqEDi7u5xeocVhTm0zlyqBr/FEcKik9Hdb+k1Fz2fZ1lS1T
	4IAZ+fBr09Kqr4jKxl9Pcg10uhDVNafSwJkT9L8hv4KJW+3OihK+kk35JAfvXYlUFVQZaA/RLKame
	CAWQYSGuOTlk9f3Gf5EQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oabq3-003WCK-HE; Tue, 20 Sep 2022 11:54:55 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oabpk-003W0t-GI; Tue, 20 Sep 2022 11:54:38 +0000
Received: (Authenticated sender: miquel.raynal@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 5C20940008;
	Tue, 20 Sep 2022 11:54:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1663674871;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=KSWeYDSeaNehrW42i+XUhWc85tvVrOVAkEEt46DeViM=;
	b=a9Ssla+1spKJ6l7OVaPulJN3hTbI/jtsww5lV2x078/vloTj4E7q0ZvAJTzboMquYaFrOL
	OFasJ54otRKtPTuvJ1zt5mXCO/6PccV8VIpuuUn2hbkw2fSWJhSjEQHFkmqwiOiukzfxvI
	N/Ca4xZXa6fr97ju7+aBYdOej+u0/MpSpOLlK2sy7aHGVmHm0xv79PR/3dt+8XQfgnLk3M
	eoqu2tqf31B7HuEhlBizJNOQWX0+uPF4p5VicrH6Drcz+IK21JM723YJ9XVExul9OIKh0c
	/2+UkecXyMO9Z2k/93nniOv0UA6ksx/2GlCRPtzCGFSIkJMizk9hhgeLTLm3Fg==
Date: Tue, 20 Sep 2022 13:54:10 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
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
 <hdegoede@redhat.com>, Jerome Brunet <jbrunet@baylibre.com>, "Heiko
 Stuebner" <heiko@sntech.de>, Florian Boor <florian.boor@kernelconcepts.de>,
 Ciprian Regus <ciprian.regus@analog.com>, Lars-Peter Clausen
 <lars@metafoo.de>, Andy Shevchenko <andy.shevchenko@gmail.com>, "Jonathan
 Cameron" <jic23@kernel.org>, Neil Armstrong <narmstrong@baylibre.com>,
 "Baolin Wang" <baolin.wang@linux.alibaba.com>, Jyoti Bhayana
 <jbhayana@google.com>, Chen-Yu Tsai <wens@csie.org>, Orson Zhai
 <orsonzhai@gmail.com>
Subject: Re: [PATCH 01/15] iio: adc: ad_sigma_delta: do not use internal
 iio_dev lock
Message-ID: <20220920135410.4429694c@xps-13>
In-Reply-To: <20220920112821.975359-2-nuno.sa@analog.com>
References: <20220920112821.975359-1-nuno.sa@analog.com>
	<20220920112821.975359-2-nuno.sa@analog.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_045437_040108_9E292314 
X-CRM114-Status: GOOD (  16.45  )
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

SGkgTnVubywKCm51bm8uc2FAYW5hbG9nLmNvbSB3cm90ZSBvbiBUdWUsIDIwIFNlcCAyMDIyIDEz
OjI4OjA3ICswMjAwOgoKPiBEcm9wICdtbG9jaycgdXNhZ2UgYnkgbWFraW5nIHVzZSBvZiBpaW9f
ZGV2aWNlX2NsYWltX2RpcmVjdF9tb2RlKCkuCj4gVGhpcyBjaGFuZ2UgYWN0dWFsbHkgbWFrZXMg
c3VyZSB3ZSBjYW5ub3QgZG8gYSBzaW5nbGUgY29udmVyc2lvbiB3aGlsZQo+IGJ1ZmZlcmluZyBp
cyBlbmFibGUuIE5vdGUgdGhlcmUgd2FzIGEgcG90ZW50aWFsIHJhY2UgaW4gdGhlIHByZXZpb3Vz
Cj4gY29kZSBzaW5jZSB3ZSB3ZXJlIG9ubHkgYWNxdWlyaW5nIHRoZSBsb2NrIGFmdGVyIGNoZWNr
aW5nIGlmIHRoZSBidXMgaXMKPiBlbmFibGVkLgo+IAo+IEZpeGVzOiBhZjMwMDg0ODVlYTAgKCJp
aW86YWRjOiBBZGQgY29tbW9uIGNvZGUgZm9yIEFESSBTaWdtYSBEZWx0YWRldmljZXMiKQoKVG8g
YW5zd2VyIHlvdXIgcXVlc3Rpb24gaW4gdGhlIGNvdmVyIGxldHRlciwgSSBmZWVsIGxpa2UgdGhp
cyBGaXhlczoKdGFnIGlzIGRlc2VydmVkLgoKUmV2aWV3ZWQtYnk6IE1pcXVlbCBSYXluYWwgPG1p
cXVlbC5yYXluYWxAYm9vdGxpbi5jb20+Cgo+IFNpZ25lZC1vZmYtYnk6IE51bm8gU8OhIDxudW5v
LnNhQGFuYWxvZy5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvaWlvL2FkYy9hZF9zaWdtYV9kZWx0YS5j
IHwgOCArKysrLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0
aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lpby9hZGMvYWRfc2lnbWFfZGVsdGEu
YyBiL2RyaXZlcnMvaWlvL2FkYy9hZF9zaWdtYV9kZWx0YS5jCj4gaW5kZXggMjYxYTlhNmI0NWUx
Li5kODU3MGY2MjA3ODUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9paW8vYWRjL2FkX3NpZ21hX2Rl
bHRhLmMKPiArKysgYi9kcml2ZXJzL2lpby9hZGMvYWRfc2lnbWFfZGVsdGEuYwo+IEBAIC0yODEs
MTAgKzI4MSwxMCBAQCBpbnQgYWRfc2lnbWFfZGVsdGFfc2luZ2xlX2NvbnZlcnNpb24oc3RydWN0
IGlpb19kZXYgKmluZGlvX2RldiwKPiAgCXVuc2lnbmVkIGludCBkYXRhX3JlZzsKPiAgCWludCBy
ZXQgPSAwOwo+ICAKPiAtCWlmIChpaW9fYnVmZmVyX2VuYWJsZWQoaW5kaW9fZGV2KSkKPiAtCQly
ZXR1cm4gLUVCVVNZOwo+ICsJcmV0ID0gaWlvX2RldmljZV9jbGFpbV9kaXJlY3RfbW9kZShpbmRp
b19kZXYpOwo+ICsJaWYgKHJldCkKPiArCQlyZXR1cm4gcmV0Owo+ICAKPiAtCW11dGV4X2xvY2so
JmluZGlvX2Rldi0+bWxvY2spOwo+ICAJYWRfc2lnbWFfZGVsdGFfc2V0X2NoYW5uZWwoc2lnbWFf
ZGVsdGEsIGNoYW4tPmFkZHJlc3MpOwo+ICAKPiAgCXNwaV9idXNfbG9jayhzaWdtYV9kZWx0YS0+
c3BpLT5tYXN0ZXIpOwo+IEBAIC0zMjMsNyArMzIzLDcgQEAgaW50IGFkX3NpZ21hX2RlbHRhX3Np
bmdsZV9jb252ZXJzaW9uKHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYsCj4gIAlhZF9zaWdtYV9k
ZWx0YV9zZXRfbW9kZShzaWdtYV9kZWx0YSwgQURfU0RfTU9ERV9JRExFKTsKPiAgCXNpZ21hX2Rl
bHRhLT5idXNfbG9ja2VkID0gZmFsc2U7Cj4gIAlzcGlfYnVzX3VubG9jayhzaWdtYV9kZWx0YS0+
c3BpLT5tYXN0ZXIpOwo+IC0JbXV0ZXhfdW5sb2NrKCZpbmRpb19kZXYtPm1sb2NrKTsKPiArCWlp
b19kZXZpY2VfcmVsZWFzZV9kaXJlY3RfbW9kZShpbmRpb19kZXYpOwo+ICAKPiAgCWlmIChyZXQp
Cj4gIAkJcmV0dXJuIHJldDsKCgpUaGFua3MsCk1pcXXDqGwKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
