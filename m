Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F270BC43217
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Oct 2022 18:46:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l4C4rq1pULUUbMztZmoAGdogWMB7KtXFyr0Q7hV6TEU=; b=015OaWVdEGuQsz
	R7+FIyBZHDbzDh0DEc2PdwscEc8GGHPtCRJwMPdWWVoxixcWtLVslqBkbK9qrBfjybC8EYIwmfLb2
	qprJJwmZnlhRPhzrsYgOtEhH8vLKhpBm7pp5pd+Zy1dTpfh2zYBCSjGR4ejkYd6qe8vNEm7R9bYwF
	NLPiMwXd6wa+O+G/5Ddqrtu3kCnImJZuwZzejD9+tu4XZAB3DCydrUFFm23J5lKKjd+mJdzO1K5pL
	7HoeYfAgYkZQNdQSU9+OlbNnAzxezCtO02d2e9bcQVV8jIiF6hh8+oVprszkLoqNETfc06WXCCWya
	sc7xtRrSaWoM6PJS9BNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oigkI-0091AR-Vq; Wed, 12 Oct 2022 18:46:23 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oigk5-00916t-Sf; Wed, 12 Oct 2022 18:46:12 +0000
Received: (Authenticated sender: miquel.raynal@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id C548760002;
	Wed, 12 Oct 2022 18:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1665600364;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vjroV19fBqrVrQU0CLeJKAqB9gBI/nfXkE660Q+OVoQ=;
	b=WYVkIYufTXY2i59Zs82duyRa6C4cpFF6jK4xzAXLthP2FSn8vweqjlValnPomLu6Em910/
	Fmay9vqO6+I9A+k4XDrbNhb15ys3bnk8Z5OfWXDAeZc8586HaDN9s3Vg/5KkBxRml/p8ov
	n9dzXpZHVsqWii4Mpo7192R8aN/A5fGB+gpkNQucFwNgXdUY0m1pBsaHT8AeNmaQiKWBRh
	dpUbGK9LfhI/3O9BM31a6G2QvLAh5HjuqPE1geV++DHDJr2QEJJb7FaRZgYFEqBOH8i55X
	2+pzbz5cwCJJqoGxfqUcD4h9cz7W6Jxw2eemwiGcasXMndNgevfwf4a/24ZQsA==
Date: Wed, 12 Oct 2022 20:45:56 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>
Cc: <linux-arm-kernel@lists.infradead.org>, <linux-iio@vger.kernel.org>,
 <linux-amlogic@lists.infradead.org>, <linux-rockchip@lists.infradead.org>,
 <linux-imx@nxp.com>, Chen-Yu Tsai <wens@csie.org>, Andriy Tryshnivskyy
 <andriy.tryshnivskyy@opensynergy.com>, Ciprian Regus
 <ciprian.regus@analog.com>, Vladimir Zapolskiy <vz@mleia.com>, Cixi Geng
 <cixi.geng1@unisoc.com>, Neil Armstrong <narmstrong@baylibre.com>, Sascha
 Hauer <s.hauer@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>, Fabio
 Estevam <festevam@gmail.com>, Jerome Brunet <jbrunet@baylibre.com>, Martin
 Blumenstingl <martin.blumenstingl@googlemail.com>, Pengutronix Kernel Team
 <kernel@pengutronix.de>, Baolin Wang <baolin.wang@linux.alibaba.com>, Hans
 de Goede <hdegoede@redhat.com>, Alexandru Ardelean <aardelean@deviqon.com>,
 Michael Hennerich <Michael.Hennerich@analog.com>, Haibo Chen
 <haibo.chen@nxp.com>, Lars-Peter Clausen <lars@metafoo.de>, Jyoti Bhayana
 <jbhayana@google.com>, Jonathan Cameron <jic23@kernel.org>, Andy Shevchenko
 <andy.shevchenko@gmail.com>, Florian Boor <florian.boor@kernelconcepts.de>,
 Chunyan Zhang <zhang.lyra@gmail.com>, Orson Zhai <orsonzhai@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, Kevin Hilman <khilman@baylibre.com>
Subject: Re: [PATCH v3 3/4] iio: health: max30102: do not use internal
 iio_dev lock
Message-ID: <20221012204556.7648df2e@xps-13>
In-Reply-To: <20221012151620.1725215-4-nuno.sa@analog.com>
References: <20221012151620.1725215-1-nuno.sa@analog.com>
	<20221012151620.1725215-4-nuno.sa@analog.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_114610_233007_EF5458EF 
X-CRM114-Status: GOOD (  25.44  )
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

SGkgTnVubywKCm51bm8uc2FAYW5hbG9nLmNvbSB3cm90ZSBvbiBXZWQsIDEyIE9jdCAyMDIyIDE3
OjE2OjE5ICswMjAwOgoKPiBUaGUgcGF0dGVybiB1c2VkIGluIHRoaXMgZGV2aWNlIGRvZXMgbm90
IHF1aXRlIGZpdCBpbiB0aGUKPiBpaW9fZGV2aWNlX2NsYWltX2RpcmVjdF9tb2RlKCkgdHlwaWNh
bCB1c2FnZS4gSW4gdGhpcyBjYXNlLCB3ZSB3YW50IHRvCj4ga25vdyBpZiB3ZSBhcmUgaW4gYnVm
ZmVyZWQgbW9kZSBvciBub3QgdG8ga25vdyBpZiB0aGUgZGV2aWNlIGlzIHBvd2VyZWQKPiAoYnVm
ZmVyIG1vZGUpIG9yIG5vdC4gQW5kIGRlcGVuZGluZyBvbiB0aGF0IG1heDMwMTAyX2dldF90ZW1w
KCkgd2lsbAo+IHBvd2VyIG9uIHRoZSBkZXZpY2UgaWYgbmVlZGVkLiBIZW5jZSwgaW4gb3JkZXIg
dG8ga2VlcCB0aGUgc2FtZQo+IGZ1bmN0aW9uYWxpdHksIHdlIHRyeSB0bzoKPiAKPiAxLiBDbGFp
bSBCdWZmZXJlZCBtb2RlOwo+IDI6IElmIDEpIHN1Y2NlZWRzIGNhbGwgbWF4MzAxMDJfZ2V0X3Rl
bXAoKSB3aXRob3V0IHBvd2VyaW5nIG9uIHRoZQo+ICAgIGRldmljZTsKPiAzOiBSZWxlYXNlIEJ1
ZmZlcmVkIG1vZGU7Cj4gNDogSWYgMSkgZmFpbHMsIENsYWltIERpcmVjdCBtb2RlOwo+IDU6IElm
IDQpIHN1Y2NlZWRzIGNhbGwgbWF4MzAxMDJfZ2V0X3RlbXAoKSB3aXRoIHBvd2VyaW5nIG9uIHRo
ZSBkZXZpY2U7Cj4gNjogUmVsZWFzZSBEaXJlY3QgbW9kZTsKPiA3OiBJZiA0KSBmYWlscywgZ290
byB0byAxKSBhbmQgdHJ5IGFnYWluLgo+IAo+IFRoaXMgZGFuY2UgYmV0d2VlbiBidWZmZXJlZCBh
bmQgZGlyZWN0IG1vZGUgaXMgbm90IHBhcnRpY3VsYXJseSBwcmV0dHkKPiAoYXMgd2VsbCBhcyB0
aGUgbG9vcCBpbnRyb2R1Y2VkIGJ5IHRoZSBnb3RvIHN0YXRlbWVudCkgYnV0IGl0IGRvZXMgYWxs
b3cKPiB1cyB0byBnZXQgcmlkIG9mIHRoZSBtbG9jayB1c2FnZSB3aGlsZSBrZWVwaW5nIHRoZSBz
YW1lIGJlaGF2aW9yLgoKV2hhdCBhYm91dCBhZGRpbmcgYSBUT0RPIGNvbW1lbnQgc2F5aW5nIHNv
bWV0aGluZyBsaWtlOiAidGhpcyBjb21lcwpmcm9tIHN0YXRpYyBhbmFseXNpcyBhbmQgaGVscGVk
IGRyb3BwaW5nIG1sb2NrIGFjY2VzcywgYnV0IHNvbWVvbmUgd2l0aAp0aGUgZGV2aWNlIG5lZWRz
IHRvIGZpZ3VyZSBvdXQgaWYgd2UgY2FuIHNpbXBsaWZ5IHRoaXMgZGFuY2UiPyBCZWNhdXNlCnRo
ZSByZWFzb24gYmVoaW5kIGFsbCB0aGlzIGlzIHRoYXQgd2UgZG9uJ3Qgd2FudCB0byByaXNrIGJy
ZWFraW5nIHRoZQpkcml2ZXIsIGJ1dCBwZXJoYXBzIGEgc2ltcGxlciBhcHByb2FjaCB3b3VsZCB3
b3JrLCByaWdodD8KCj4gCj4gU2lnbmVkLW9mZi1ieTogTnVubyBTw6EgPG51bm8uc2FAYW5hbG9n
LmNvbT4KPiAtLS0KPiAgZHJpdmVycy9paW8vaGVhbHRoL21heDMwMTAyLmMgfCAxOSArKysrKysr
KysrKysrKystLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCA0IGRlbGV0
aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lpby9oZWFsdGgvbWF4MzAxMDIuYwo+
IGIvZHJpdmVycy9paW8vaGVhbHRoL21heDMwMTAyLmMgaW5kZXggNDM3Mjk4YTI5ZjJkLi42NmRm
NGFhYTMxYTcKPiAxMDA2NDQgLS0tIGEvZHJpdmVycy9paW8vaGVhbHRoL21heDMwMTAyLmMKPiAr
KysgYi9kcml2ZXJzL2lpby9oZWFsdGgvbWF4MzAxMDIuYwo+IEBAIC00NzcsMTIgKzQ3NywyMyBA
QCBzdGF0aWMgaW50IG1heDMwMTAyX3JlYWRfcmF3KHN0cnVjdCBpaW9fZGV2Cj4gKmluZGlvX2Rl
diwKPiAgCQkgKiBUZW1wZXJhdHVyZSByZWFkaW5nIGNhbiBvbmx5IGJlIGFjcXVpcmVkIHdoZW4g
bm90Cj4gaW4KPiAgCQkgKiBzaHV0ZG93bjsgbGVhdmUgc2h1dGRvd24gYnJpZWZseSB3aGVuIGJ1
ZmZlciBub3QKPiBydW5uaW5nICovCj4gLQkJbXV0ZXhfbG9jaygmaW5kaW9fZGV2LT5tbG9jayk7
Cj4gLQkJaWYgKCFpaW9fYnVmZmVyX2VuYWJsZWQoaW5kaW9fZGV2KSkKPiArYW55X21vZGVfcmV0
cnk6Cj4gKwkJaWYgKGlpb19kZXZpY2VfY2xhaW1fYnVmZmVyX21vZGUoaW5kaW9fZGV2KSkgewo+
ICsJCQkvKgo+ICsJCQkgKiBUaGlzIG9uZSBpcyBhICpiaXQqIGhhY2t5LiBJZiB3ZSBjYW5ub3QK
PiBjbGFpbSBidWZmZXIKPiArCQkJICogbW9kZSwgdGhlbiB0cnkgZGlyZWN0IG1vZGUgc28gdGhh
dCB3ZQo+IG1ha2Ugc3VyZQo+ICsJCQkgKiB0aGluZ3MgY2Fubm90IGNvbmN1cnJlbnRseSBjaGFu
Z2UuIEFuZCB3ZQo+IGp1c3Qga2VlcAo+ICsJCQkgKiB0cnlpbmcgdW50aWwgd2UgZ2V0IG9uZSBv
ZiB0aGUgbW9kZXMuLi4KPiArCQkJICovCj4gKwkJCWlmIChpaW9fZGV2aWNlX2NsYWltX2RpcmVj
dF9tb2RlKGluZGlvX2RldikpCj4gKwkJCQlnb3RvIGFueV9tb2RlX3JldHJ5Owo+ICsKPiAgCQkJ
cmV0ID0gbWF4MzAxMDJfZ2V0X3RlbXAoZGF0YSwgdmFsLCB0cnVlKTsKPiAtCQllbHNlCj4gKwkJ
CWlpb19kZXZpY2VfcmVsZWFzZV9kaXJlY3RfbW9kZShpbmRpb19kZXYpOwo+ICsJCX0gZWxzZSB7
Cj4gIAkJCXJldCA9IG1heDMwMTAyX2dldF90ZW1wKGRhdGEsIHZhbCwgZmFsc2UpOwo+IC0JCW11
dGV4X3VubG9jaygmaW5kaW9fZGV2LT5tbG9jayk7Cj4gKwkJCWlpb19kZXZpY2VfcmVsZWFzZV9i
dWZmZXJfbW9kZShpbmRpb19kZXYpOwo+ICsJCX0KPiAgCQlpZiAocmV0KQo+ICAJCQlyZXR1cm4g
cmV0Owo+ICAKCgpUaGFua3MsCk1pcXXDqGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
