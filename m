Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2D72ECAAD8
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Sep 2022 12:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kv7s1ikKKPztzq5++qOmy6TPtvOLaN49ohGO4a8W7sY=; b=hk9q437zFokU2D
	KTYufSjszooeipmYBab5ZAwaaXVeVPVogBffRv9jwlP2ZnHx3bsbjBtiasG8mfPgjcEeBj6Kxxdsp
	R7GnYQeQ7WP1hXoZ2SBt1LZCW3Y8e/MJzMXBJ/vd+LB1dE34xTswxo3v/3WHbhUM2cfG9WkRg+p3J
	lWgZ/sXrVKHr70CPTFrqUejFXKldSb7kzijq6SiDeME10qOS7m6gzHcPevoutr4Epj7mDJBMq3B2j
	LK3QPtqLY3UC035HYu7xZLrEL/IyXf/MMXo+ijyL59TzAkI4c67aFaZTjfNb/5SYiuforEkTyfznt
	ulNsJntkJF31ju6zsU9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oacHw-003fRe-Vp; Tue, 20 Sep 2022 12:23:44 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oacHh-003fFS-Oo; Tue, 20 Sep 2022 12:23:33 +0000
Received: (Authenticated sender: miquel.raynal@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id BBBD7E0002;
	Tue, 20 Sep 2022 12:23:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1663676604;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Vz0KRHaaPiDEBjGr8/ckv9ogXsBMrTGfzxP3dzkZwIw=;
	b=LwPPtConsnc+c5dCJx2IhS0s2fHBrs/wIoKWabd9XGCni0bxCopV79zkpczxbhx9JY/mB2
	fiHYVJetjuADN9fFGdfKXVpr6rekzURcobAkPu69cDLNwpRGwqLjyX0s8EYIaBv0lL0lzo
	y/MuRzTr7FEfBo0R/pHwtAA1cSTXbCHX2IIMDPzecsg4Lv3pCDyqIRzNOLoiavhS0NyTeJ
	lkK3hCRipD6dsNiGH5w+Mfa1Oeodk0lizfsyZSpAliWYlqZDE7jMlwNeaUICkTFJTzqy7v
	WBH0xZHWfBZMHj4xB+2yPzqwC6wLICVVh+oRpEwM84rgDNkRbDOR17qr3G6F2g==
Date: Tue, 20 Sep 2022 14:23:19 +0200
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
Subject: Re: [PATCH 13/15] iio: health: max30100: do not use internal
 iio_dev lock
Message-ID: <20220920142319.61557023@xps-13>
In-Reply-To: <20220920112821.975359-14-nuno.sa@analog.com>
References: <20220920112821.975359-1-nuno.sa@analog.com>
	<20220920112821.975359-14-nuno.sa@analog.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_052330_154577_ADA71033 
X-CRM114-Status: GOOD (  28.95  )
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
OjI4OjE5ICswMjAwOgoKPiBUaGUgcGF0dGVybiB1c2VkIGluIHRoaXMgZGV2aWNlIGRvZXMgbm90
IHF1aXRlIGZpdCBpbiB0aGUKPiBpaW9fZGV2aWNlX2NsYWltX2RpcmVjdF9tb2RlKCkgdHlwaWNh
bCB1c2FnZS4gSW4gdGhpcyBjYXNlLAo+IGlpb19idWZmZXJfZW5hYmxlZCgpIHdhcyBiZWluZyB1
c2VkIG5vdCB0byBwcmV2ZW50IHRoZSByYXcgYWNjZXNzIGJ1dCB0bwo+IGFsbG93IGl0LiBIZW5j
ZSB0byBnZXQgcmlkIG9mIHRoZSAnbWxvY2snIHdlIG5lZWQgdG86Cj4gCj4gMS4gVXNlIGlpb19k
ZXZpY2VfY2xhaW1fZGlyZWN0X21vZGUoKSB0byBjaGVjayBpZiBkaXJlY3QgbW9kZSBjYW4gYmUK
PiBjbGFpbWVkIGFuZCBpZiB3ZSBjYW4gcmV0dXJuIC1FSU5WQUwgKGFzIHRoZSBvcmlnaW5hbCBj
b2RlKTsKPgo+IDIuIE1ha2Ugc3VyZSB0aGF0IGJ1ZmZlcmluZyBpcyBub3QgZGlzYWJsZWQgd2hp
bGUgZG9pbmcgYSByYXcgcmVhZC4gRm9yCj4gdGhhdCwgd2UgY2FuIG1ha2UgdXNlIG9mIHRoZSBs
b2NhbCBsb2NrIHRoYXQgYWxyZWFkeSBleGlzdHMuCj4gCj4gV2hpbGUgYXQgaXQsIGZpeGVkIGEg
bWlub3IgY29kaW5nIHN0eWxlIGNvbXBsYWluLi4uCj4gCj4gU2lnbmVkLW9mZi1ieTogTnVubyBT
w6EgPG51bm8uc2FAYW5hbG9nLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9paW8vaGVhbHRoL21heDMw
MTAwLmMgfCAyNCArKysrKysrKysrKysrKysrKy0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDE3
IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
aWlvL2hlYWx0aC9tYXgzMDEwMC5jIGIvZHJpdmVycy9paW8vaGVhbHRoL21heDMwMTAwLmMKPiBp
bmRleCBhZDU3MTc5NjUyMjMuLmFhNDk0Y2FkNWRmMCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2lp
by9oZWFsdGgvbWF4MzAxMDAuYwo+ICsrKyBiL2RyaXZlcnMvaWlvL2hlYWx0aC9tYXgzMDEwMC5j
Cj4gQEAgLTE4NSw4ICsxODUsMTkgQEAgc3RhdGljIGludCBtYXgzMDEwMF9idWZmZXJfcG9zdGVu
YWJsZShzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2KQo+ICBzdGF0aWMgaW50IG1heDMwMTAwX2J1
ZmZlcl9wcmVkaXNhYmxlKHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYpCj4gIHsKPiAgCXN0cnVj
dCBtYXgzMDEwMF9kYXRhICpkYXRhID0gaWlvX3ByaXYoaW5kaW9fZGV2KTsKPiArCWludCByZXQ7
Cj4gKwo+ICsJLyoKPiArCSAqIEFzIHN0YXRlZCBpbiB0aGUgY29tbWVudCBpbiB0aGUgcmVhZF9y
YXcoKSBmdW5jdGlvbiwgdGVtcGVyYXR1cmUKPiArCSAqIGNhbiBvbmx5IGJlIGFjcXVpcmVkIGlm
IHRoZSBlbmdpbmUgaXMgcnVubmluZy4gQXMgc3VjaCB0aGUgbXV0ZXgKPiArCSAqIGlzIHVzZWQg
dG8gbWFrZSBzdXJlIHdlIGRvIG5vdCBwb3dlciBkb3duIHdoaWxlIGRvaW5nIGEgdGVtcGVyYXR1
cmUKPiArCSAqIHJlYWRpbmcuCj4gKwkgKi8KPiArCW11dGV4X2xvY2soJmRhdGEtPmxvY2spOwo+
ICsJcmV0ID0gbWF4MzAxMDBfc2V0X3Bvd2VybW9kZShkYXRhLCBmYWxzZSk7Cj4gKwltdXRleF91
bmxvY2soJmRhdGEtPmxvY2spOwo+ICAKPiAtCXJldHVybiBtYXgzMDEwMF9zZXRfcG93ZXJtb2Rl
KGRhdGEsIGZhbHNlKTsKPiArCXJldHVybiByZXQ7Cj4gIH0KPiAgCj4gIHN0YXRpYyBjb25zdCBz
dHJ1Y3QgaWlvX2J1ZmZlcl9zZXR1cF9vcHMgbWF4MzAxMDBfYnVmZmVyX3NldHVwX29wcyA9IHsK
PiBAQCAtMzg3LDE4ICszOTgsMTcgQEAgc3RhdGljIGludCBtYXgzMDEwMF9yZWFkX3JhdyhzdHJ1
Y3QgaWlvX2RldiAqaW5kaW9fZGV2LAo+ICAJCSAqIFRlbXBlcmF0dXJlIHJlYWRpbmcgY2FuIG9u
bHkgYmUgYWNxdWlyZWQgd2hpbGUgZW5naW5lCj4gIAkJICogaXMgcnVubmluZwo+ICAJCSAqLwo+
IC0JCW11dGV4X2xvY2soJmluZGlvX2Rldi0+bWxvY2spOwo+IC0KPiAtCQlpZiAoIWlpb19idWZm
ZXJfZW5hYmxlZChpbmRpb19kZXYpKQo+ICsJCWlmICghaWlvX2RldmljZV9jbGFpbV9kaXJlY3Rf
bW9kZShpbmRpb19kZXYpKSB7CgpJIHdvbmRlciBpZiB0aGlzIGxpbmUgY2hhbmdlIGhlcmUgaXMg
cmVhbGx5IG5lZWRlZC4gSSBhZ3JlZSB0aGUgd2hvbGUKY29uc3RydWN0aW9uIGxvb2tzIGxpa2Ug
d2hhdCBpaW9fZGV2aWNlX2NsYWltX2RpcmVjdF9tb2RlKCkgZG9lcyBidXQgaW4KcHJhY3RpY2Ug
SSBkb24ndCBzZWUgdGhlIHBvaW50IG9mIGFjcXVpcmluZyBhbnkgbG9jayBoZXJlIGlmIHdlIGp1
c3QKcmVsZWFzZSBpdCBubyBtYXR0ZXIgd2hhdCBoYXBwZW5zIHJpZ2h0IGFmdGVyLgoKVW5sZXNz
IG9mIGNvdXJzZSBpZiB0aGVyZSBpcyBhIGhpZGRlbiBnb2FsIGxpa2UgInN0b3AgZXhwb3J0aW5n
Cmlpb19idWZmZXJfZW5hYmxlZCgpIiBvciBzb21ldGhpbmcgbGlrZSB0aGF0LgoKQXQgbGVhc3Qg
SSB3b3VsZCBzZXBhcmF0ZSB0aGlzIGZyb20gdGhlIG1haW4gY2hhbmdlIHdoaWNoIHRhcmdldHMg
dGhlCnJlbW92YWwgb2YgbWxvY2sgYmVjYXVzZSBJIGRvbid0IHNlZSBob3cgaXQgaXMgZGlyZWN0
bHkgcmVsYXRlZC4KCj4gIAkJCXJldCA9IC1FQUdBSU47Cj4gLQkJZWxzZSB7Cj4gKwkJCWlpb19k
ZXZpY2VfcmVsZWFzZV9kaXJlY3RfbW9kZShpbmRpb19kZXYpOwo+ICsJCX0gZWxzZSB7Cj4gKwkJ
CW11dGV4X2xvY2soJmRhdGEtPmxvY2spOwo+ICAJCQlyZXQgPSBtYXgzMDEwMF9nZXRfdGVtcChk
YXRhLCB2YWwpOwo+ICAJCQlpZiAoIXJldCkKPiAgCQkJCXJldCA9IElJT19WQUxfSU5UOwo+IC0K
PiArCQkJbXV0ZXhfdW5sb2NrKCZkYXRhLT5sb2NrKTsKPiAgCQl9Cj4gIAo+IC0JCW11dGV4X3Vu
bG9jaygmaW5kaW9fZGV2LT5tbG9jayk7Cj4gIAkJYnJlYWs7Cj4gIAljYXNlIElJT19DSEFOX0lO
Rk9fU0NBTEU6Cj4gIAkJKnZhbCA9IDE7ICAvKiAwLjA2MjUgKi8KCkluIGFueSBjYXNlLCBuaWNl
IHNlcmllcywgdGhhbmtzIGZvciB3cml0aW5nIGl0IQoKVGhhbmtzLApNaXF1w6hsCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
