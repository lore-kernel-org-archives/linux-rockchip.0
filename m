Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4756C433FE
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Oct 2022 12:14:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UUq2kxCD7QWSePQvPr6wPJlIPxCjZiKLeO/BIPGlq3o=; b=Whg9cfSyyTDeic
	uXO63XSgtjJUYrgA1RLLKO4w6WXjf23F6Fx/SmRicSZM4n7j7/YHRCaNBo3A3iDnt+8qo/OtgPV8u
	w7ugPp34wnae6qO7KRpD34XF27HIe69l0TuLw8tjUaUmrFElYkxB24Mp8zLdvhIH77p90hiAQ1IZ+
	rF02oHeqf6AFtwE9TNKm9v8H0WUhrUu6KOda2mKkDpGcYp82BF6FKpIwkIPg5mX7GF1s+Wysw4f1T
	RBt/IS0hpeXUr1k+w3oTqPvz9mgKDYX45v68ecbe++aDBk54nyUfvXDgQmVA+ECO0S+hlo/2yxXBa
	M9FLhFb5jdHlNcM0vglA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohVCJ-00FWlS-GY; Sun, 09 Oct 2022 12:14:23 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohVC7-00FWjB-Ta; Sun, 09 Oct 2022 12:14:13 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2BEEA60BC7;
	Sun,  9 Oct 2022 12:14:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32D8BC433C1;
	Sun,  9 Oct 2022 12:14:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665317650;
	bh=xR/Gp7PyBo7b3uBk2sbadg7hX39s/vl2ucN0GSLqPxE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=A9c0L3QXW/L78kLL4XQj9+faQbQXJqXinFWYtp16nO8DMWuWIlhQgqWT52v/2uTZQ
	 lbKFciJ0lkIBcnzW0/s3qdPe5RIH4n/ICPi4MFBVbmpJ6WmuiyswwSbXYK7H1iwdvE
	 xxveysjo0uag6C/e06S1pzPQ/iVneXFgCjNDNbmw3qp+oHBJiDrpD0zfh5Q8w3yxhE
	 dfStRqqiiRISQgB2YYR1q4uOO+jvlVT/Thvo+LQfXicRJBAwTSKKoTiRugjlxudRSk
	 7J9EmFOeZ6eP3l+96Eh2E3LY2178AsgkrjwMOguKP3pWewUUl1Tsx0griMAUVsKeAG
	 PwXB5c6wZNsLA==
Date: Sun, 9 Oct 2022 13:14:26 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Nuno =?UTF-8?B?U8Oh?= <noname.nuno@gmail.com>
Cc: Andy Shevchenko <andy.shevchenko@gmail.com>, Nuno =?UTF-8?B?U8Oh?= 
 <nuno.sa@analog.com>, linux-amlogic@lists.infradead.org, linux-imx@nxp.com,
 linux-iio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
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
 Zapolskiy <vz@mleia.com>, Jerome Brunet <jbrunet@baylibre.com>, Haibo Chen
 <haibo.chen@nxp.com>, Kevin Hilman <khilman@baylibre.com>
Subject: Re: [PATCH v2 14/16] iio: health: max30100: do not use internal
 iio_dev lock
Message-ID: <20221009131426.77f4697f@jic23-huawei>
In-Reply-To: <0bad9d1ef45d0a85b7d25a4ee50914ea93936bb2.camel@gmail.com>
References: <20221004134909.1692021-1-nuno.sa@analog.com>
	<20221004134909.1692021-15-nuno.sa@analog.com>
	<CAHp75Vfv4BntoDPOo_MXZ33dVEKYj1KW_Ocd5QL_Ez06HJ33iw@mail.gmail.com>
	<0bad9d1ef45d0a85b7d25a4ee50914ea93936bb2.camel@gmail.com>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_051412_052189_509DAA12 
X-CRM114-Status: GOOD (  24.89  )
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

T24gV2VkLCAwNSBPY3QgMjAyMiAxMDowOToyOSArMDIwMApOdW5vIFPDoSA8bm9uYW1lLm51bm9A
Z21haWwuY29tPiB3cm90ZToKCj4gT24gVHVlLCAyMDIyLTEwLTA0IGF0IDE3OjEzICswMzAwLCBB
bmR5IFNoZXZjaGVua28gd3JvdGU6Cj4gPiBPbiBUdWUsIE9jdCA0LCAyMDIyIGF0IDQ6NDkgUE0g
TnVubyBTw6EgPG51bm8uc2FAYW5hbG9nLmNvbT4gd3JvdGU6ICAKPiA+ID4gCj4gPiA+IFRoZSBw
YXR0ZXJuIHVzZWQgaW4gdGhpcyBkZXZpY2UgZG9lcyBub3QgcXVpdGUgZml0IGluIHRoZQo+ID4g
PiBpaW9fZGV2aWNlX2NsYWltX2RpcmVjdF9tb2RlKCkgdHlwaWNhbCB1c2FnZS4gSW4gdGhpcyBj
YXNlLAo+ID4gPiBpaW9fYnVmZmVyX2VuYWJsZWQoKSB3YXMgYmVpbmcgdXNlZCBub3QgdG8gcHJl
dmVudCB0aGUgcmF3IGFjY2Vzcwo+ID4gPiBidXQgdG8KPiA+ID4gYWxsb3cgaXQuIEhlbmNlLCBs
ZXQncyBtYWtlIHVzZSBvZiB0aGUgbmV3Cj4gPiA+IGlpb19kZXZpY2VfY2xhaW1fYnVmZmVyX21v
ZGUoKSBBUEkgdG8gbWFrZSBzdXJlIHdlIHN0YXkgaW4gYnVmZmVyZWQKPiA+ID4gbW9kZQo+ID4g
PiBkdXJpbmcgdGhlIGNvbXBsZXRlIHJlYWQuICAKPiA+IAo+ID4gLi4uCj4gPiAgIAo+ID4gPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoaWlvX2RldmljZV9jbGFpbV9idWZmZXJf
bW9kZShpbmRpb19kZXYpKSB7Cj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgcmV0ID0gLUVBR0FJTjsgIAo+ID4gCj4gPiBXaHkgaXMgdGhlIGVycm9y
IGNvZGUgc2hhZG93ZWQ/IElzbid0IGl0IGJldHRlciB0byByZXR1cm4gZXhhY3RseSB0aGUKPiA+
IG9uZSB5b3UgcmVzZW5kIHRvIHRoZSB1cHBlciBjYWxsZXIocyk/IEVhY2ggdW5jbGVhciBlcnJv
ciBjb2RlCj4gPiBzaGFkb3dpbmcgc2hvdWxkIGJlIGF0IGxlYXN0IGV4cGxhaW5lZC4gIAo+ID4g
PiDCoMKgwqDCoMKgwqDCoMKgwqAgfSAgCj4gCj4gSSdtIGtlZXBpbmcgdGhlIHNhbWUgZXJyb3Ig
dGhhdCB3YXMgcmV0dXJuZWQgYmVmb3JlLiBDaGFuZ2luZyB0aGUgZXJyb3IKPiBjb2RlIHJldHVy
bmVkIHRvIHVzZXJzcGFjZSBjYW4gYnJlYWsgc29tZSBhcHBzIHJlbHlpbmcgb24gaXQuIEJ1dCBp
Zgo+IGV2ZXJ5b25lIGlzIG9rIHdpdGggYXNzdW1pbmcgdGhlIHJpc2sgYW5kIGNoYW5naW5nIGl0
LCBmaW5lIGJ5IG1lLgoKSG1tLiBGb3IgbW9zdCBkcml2ZXJzIEknZCBzYXkgY2hhbmdlIGl0LCBi
dXQgdGhlc2Ugd2VpcmQgaGVhbHRoIHBhcnRzCnVzZSBhIGhpZ2hseSBjdXN0b20gdXNlcnNwYWNl
IHNvIGl0J3MganVzdCBwb3NzaWJsZSB3ZSdkIGJyZWFrIGl0CmJ5IGNoYW5naW5nIHRoZSByZXR1
cm4gY29kZS4gIFVuZm9ydHVuYXRlbHkgSSBkb24ndCBrbm93IG9mIGFueW9uZSB3aXRoIGN1cnJl
bnQKYWNjZXNzIHRvIHRoZSBjb2RlIG9mIHRoYXQgc29mdHdhcmUgc3RhY2sgdG8gY2hlY2sgdGhp
cyBmb3IgdXMgYXMKdGhlcmUgaGF2ZSBiZWVuIGEgbG90IG9mIGNoYW5nZXMgYXQgVEkgaW4gcmVj
ZW50IHllYXJzLgoKU28gcHJvYmFibHkgYmVzdCB0byBsZWF2ZSBpdCBhbG9uZSwgYnV0IGFkZCBh
IGNvbW1lbnQgdG8gdGhlIHBhdGNoIGRlc2NyaXB0aW9uCnRvIGdpdmUgcmVhc29uaW5nLgoKVGhh
bmtzLAoKSm9uYXRoYW4KCj4gCj4gCj4gLSBOdW5vIFPDoQoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
