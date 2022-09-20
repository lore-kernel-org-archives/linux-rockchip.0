Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3368AC54EE9
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Sep 2022 12:58:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Pgv4hio+wEthjeq91QRCa2HjWHOOv2VRfg/cswPFfQ=; b=G4pwwmAyOiUBjl
	t+T9fte7AvW8VhtsuBpAPypE7jI+IpI9XfditULzw1fCDbrrtnqk32inf+FKJGz4pva2uktLgtAdY
	f5/2O7jDjl3Jb+JiJRl2jEwY/0rZ3Rfs4jxQ00x7buFc6Y7I4w86rzZkn6djeVY9fYBGCH3piGuI4
	Rbxe2m3PXQ4NYesLaeALt983wF8qONoPoBpWSe2FacibDP+PYfSNDt71BQvUZqhi5g2fbuWTtIRQt
	Tr9QxLpmsjFPSQXuFuT7pQizpEAeJwZd65v5DEucF1TV9s5pPZU3QrVdzeVgssK2ggysaJ29PoqLP
	9oac6LJ+lOWIVGQhzdgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oacpN-003soF-So; Tue, 20 Sep 2022 12:58:17 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oacmy-003rNK-6G; Tue, 20 Sep 2022 12:55:50 +0000
Received: (Authenticated sender: miquel.raynal@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id E2A8524000B;
	Tue, 20 Sep 2022 12:55:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1663678542;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IvP2VnaVeAmv7X3q0XnLZdYYvccTNDrdUp8IpW6a02Q=;
	b=T1Sa9Wln1x+MhKCvfwM4dJ17lIiQ+b+OJkYYehng/7fDBc5KNeDP+phVj7MPEcFCD6Ysk9
	qodSEKVByB7yXFL05wE0ZcMvwOJUR7rx9yBgRYL+DWuS6B+BeDLUdzNV+QoYmUF47N6Wzj
	IwWDTq2UwIQX6A7to2eiUHD+U1lcDbbQSN6BmFKEiywuclk+0J8SOtdXY3YIwa17BZT8a3
	0cAWriLPEJWZ7VFzE6BXXGWLMiYWfGkKW6G5bZ5d58jYTs6rRA07OQOYhAhLiB2GAMKpDG
	4KbbSoiMS22ITEbZBEgmno1WO+nMwOSg2cqqDLfHhB62glWkS+herj8RzC5dRw==
Date: Tue, 20 Sep 2022 14:55:34 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: "Sa, Nuno" <Nuno.Sa@analog.com>
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "linux-amlogic@lists.infradead.org" <linux-amlogic@lists.infradead.org>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>, "linux-iio@vger.kernel.org"
 <linux-iio@vger.kernel.org>, Chunyan Zhang <zhang.lyra@gmail.com>,
 "Hennerich, Michael" <Michael.Hennerich@analog.com>, Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>, Sascha Hauer
 <s.hauer@pengutronix.de>, Cixi Geng <cixi.geng1@unisoc.com>, Kevin Hilman
 <khilman@baylibre.com>, Vladimir Zapolskiy <vz@mleia.com>, Pengutronix
 Kernel Team <kernel@pengutronix.de>, Alexandru Ardelean
 <aardelean@deviqon.com>, Fabio Estevam <festevam@gmail.com>, Andriy
 Tryshnivskyy <andriy.tryshnivskyy@opensynergy.com>, Haibo Chen
 <haibo.chen@nxp.com>, Shawn Guo <shawnguo@kernel.org>, Hans de Goede
 <hdegoede@redhat.com>, Jerome Brunet <jbrunet@baylibre.com>, Heiko Stuebner
 <heiko@sntech.de>, Florian Boor <florian.boor@kernelconcepts.de>, "Regus,
 Ciprian" <Ciprian.Regus@analog.com>, Lars-Peter Clausen <lars@metafoo.de>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Jonathan Cameron
 <jic23@kernel.org>, Neil Armstrong <narmstrong@baylibre.com>, Baolin Wang
 <baolin.wang@linux.alibaba.com>, Jyoti Bhayana <jbhayana@google.com>,
 Chen-Yu Tsai <wens@csie.org>, Orson Zhai <orsonzhai@gmail.com>
Subject: Re: [PATCH 13/15] iio: health: max30100: do not use internal
 iio_dev lock
Message-ID: <20220920145534.0bdd4e69@xps-13>
In-Reply-To: <SJ0PR03MB6778FC7FD469F7C2BC7FB9DB994C9@SJ0PR03MB6778.namprd03.prod.outlook.com>
References: <20220920112821.975359-1-nuno.sa@analog.com>
	<20220920112821.975359-14-nuno.sa@analog.com>
	<20220920142319.61557023@xps-13>
	<SJ0PR03MB6778FC7FD469F7C2BC7FB9DB994C9@SJ0PR03MB6778.namprd03.prod.outlook.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_055548_730864_F59672BA 
X-CRM114-Status: GOOD (  45.33  )
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

SGkgTnVubywKCk51bm8uU2FAYW5hbG9nLmNvbSB3cm90ZSBvbiBUdWUsIDIwIFNlcCAyMDIyIDEy
OjQ0OjA4ICswMDAwOgoKPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gPiBGcm9tOiBN
aXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPgo+ID4gU2VudDogVHVlc2Rh
eSwgU2VwdGVtYmVyIDIwLCAyMDIyIDI6MjMgUE0KPiA+IFRvOiBTYSwgTnVubyA8TnVuby5TYUBh
bmFsb2cuY29tPgo+ID4gQ2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsg
bGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZzsKPiA+IGxpbnV4LWFtbG9naWNAbGlz
dHMuaW5mcmFkZWFkLm9yZzsgbGludXgtaW14QG54cC5jb207IGxpbnV4LQo+ID4gaWlvQHZnZXIu
a2VybmVsLm9yZzsgQ2h1bnlhbiBaaGFuZyA8emhhbmcubHlyYUBnbWFpbC5jb20+OyBIZW5uZXJp
Y2gsCj4gPiBNaWNoYWVsIDxNaWNoYWVsLkhlbm5lcmljaEBhbmFsb2cuY29tPjsgTWFydGluIEJs
dW1lbnN0aW5nbAo+ID4gPG1hcnRpbi5ibHVtZW5zdGluZ2xAZ29vZ2xlbWFpbC5jb20+OyBTYXNj
aGEgSGF1ZXIKPiA+IDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPjsgQ2l4aSBHZW5nIDxjaXhpLmdl
bmcxQHVuaXNvYy5jb20+OyBLZXZpbgo+ID4gSGlsbWFuIDxraGlsbWFuQGJheWxpYnJlLmNvbT47
IFZsYWRpbWlyIFphcG9sc2tpeSA8dnpAbWxlaWEuY29tPjsKPiA+IFBlbmd1dHJvbml4IEtlcm5l
bCBUZWFtIDxrZXJuZWxAcGVuZ3V0cm9uaXguZGU+OyBBbGV4YW5kcnUgQXJkZWxlYW4KPiA+IDxh
YXJkZWxlYW5AZGV2aXFvbi5jb20+OyBGYWJpbyBFc3RldmFtIDxmZXN0ZXZhbUBnbWFpbC5jb20+
OyBBbmRyaXkKPiA+IFRyeXNobml2c2t5eSA8YW5kcml5LnRyeXNobml2c2t5eUBvcGVuc3luZXJn
eS5jb20+OyBIYWlibyBDaGVuCj4gPiA8aGFpYm8uY2hlbkBueHAuY29tPjsgU2hhd24gR3VvIDxz
aGF3bmd1b0BrZXJuZWwub3JnPjsgSGFucyBkZQo+ID4gR29lZGUgPGhkZWdvZWRlQHJlZGhhdC5j
b20+OyBKZXJvbWUgQnJ1bmV0IDxqYnJ1bmV0QGJheWxpYnJlLmNvbT47Cj4gPiBIZWlrbyBTdHVl
Ym5lciA8aGVpa29Ac250ZWNoLmRlPjsgRmxvcmlhbiBCb29yCj4gPiA8Zmxvcmlhbi5ib29yQGtl
cm5lbGNvbmNlcHRzLmRlPjsgUmVndXMsIENpcHJpYW4KPiA+IDxDaXByaWFuLlJlZ3VzQGFuYWxv
Zy5jb20+OyBMYXJzLVBldGVyIENsYXVzZW4gPGxhcnNAbWV0YWZvby5kZT47IEFuZHkKPiA+IFNo
ZXZjaGVua28gPGFuZHkuc2hldmNoZW5rb0BnbWFpbC5jb20+OyBKb25hdGhhbiBDYW1lcm9uCj4g
PiA8amljMjNAa2VybmVsLm9yZz47IE5laWwgQXJtc3Ryb25nIDxuYXJtc3Ryb25nQGJheWxpYnJl
LmNvbT47IEJhb2xpbgo+ID4gV2FuZyA8YmFvbGluLndhbmdAbGludXguYWxpYmFiYS5jb20+OyBK
eW90aSBCaGF5YW5hCj4gPiA8amJoYXlhbmFAZ29vZ2xlLmNvbT47IENoZW4tWXUgVHNhaSA8d2Vu
c0Bjc2llLm9yZz47IE9yc29uIFpoYWkKPiA+IDxvcnNvbnpoYWlAZ21haWwuY29tPgo+ID4gU3Vi
amVjdDogUmU6IFtQQVRDSCAxMy8xNV0gaWlvOiBoZWFsdGg6IG1heDMwMTAwOiBkbyBub3QgdXNl
IGludGVybmFsIGlpb19kZXYKPiA+IGxvY2sKPiA+IAo+ID4gW0V4dGVybmFsXQo+ID4gCj4gPiBI
aSBOdW5vLAo+ID4gICAKPiAKPiBIaSBNaXF1ZWwsCj4gCj4gVGhhbmtzIGZvciByZXZpZXdpbmcu
Li4KPiAKPiA+IG51bm8uc2FAYW5hbG9nLmNvbSB3cm90ZSBvbiBUdWUsIDIwIFNlcCAyMDIyIDEz
OjI4OjE5ICswMjAwOgo+ID4gICAKPiA+ID4gVGhlIHBhdHRlcm4gdXNlZCBpbiB0aGlzIGRldmlj
ZSBkb2VzIG5vdCBxdWl0ZSBmaXQgaW4gdGhlCj4gPiA+IGlpb19kZXZpY2VfY2xhaW1fZGlyZWN0
X21vZGUoKSB0eXBpY2FsIHVzYWdlLiBJbiB0aGlzIGNhc2UsCj4gPiA+IGlpb19idWZmZXJfZW5h
YmxlZCgpIHdhcyBiZWluZyB1c2VkIG5vdCB0byBwcmV2ZW50IHRoZSByYXcgYWNjZXNzIGJ1dCB0
bwo+ID4gPiBhbGxvdyBpdC4gSGVuY2UgdG8gZ2V0IHJpZCBvZiB0aGUgJ21sb2NrJyB3ZSBuZWVk
IHRvOgo+ID4gPgo+ID4gPiAxLiBVc2UgaWlvX2RldmljZV9jbGFpbV9kaXJlY3RfbW9kZSgpIHRv
IGNoZWNrIGlmIGRpcmVjdCBtb2RlIGNhbiBiZQo+ID4gPiBjbGFpbWVkIGFuZCBpZiB3ZSBjYW4g
cmV0dXJuIC1FSU5WQUwgKGFzIHRoZSBvcmlnaW5hbCBjb2RlKTsKPiA+ID4KPiA+ID4gMi4gTWFr
ZSBzdXJlIHRoYXQgYnVmZmVyaW5nIGlzIG5vdCBkaXNhYmxlZCB3aGlsZSBkb2luZyBhIHJhdyBy
ZWFkLiBGb3IKPiA+ID4gdGhhdCwgd2UgY2FuIG1ha2UgdXNlIG9mIHRoZSBsb2NhbCBsb2NrIHRo
YXQgYWxyZWFkeSBleGlzdHMuCj4gPiA+Cj4gPiA+IFdoaWxlIGF0IGl0LCBmaXhlZCBhIG1pbm9y
IGNvZGluZyBzdHlsZSBjb21wbGFpbi4uLgo+ID4gPgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBOdW5v
IFPDoSA8bnVuby5zYUBhbmFsb2cuY29tPgo+ID4gPiAtLS0KPiA+ID4gIGRyaXZlcnMvaWlvL2hl
YWx0aC9tYXgzMDEwMC5jIHwgMjQgKysrKysrKysrKysrKysrKystLS0tLS0tCj4gPiA+ICAxIGZp
bGUgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKPiA+ID4KPiA+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvaWlvL2hlYWx0aC9tYXgzMDEwMC5jIGIvZHJpdmVycy9paW8v
aGVhbHRoL21heDMwMTAwLmMKPiA+ID4gaW5kZXggYWQ1NzE3OTY1MjIzLi5hYTQ5NGNhZDVkZjAg
MTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvaWlvL2hlYWx0aC9tYXgzMDEwMC5jCj4gPiA+ICsr
KyBiL2RyaXZlcnMvaWlvL2hlYWx0aC9tYXgzMDEwMC5jCj4gPiA+IEBAIC0xODUsOCArMTg1LDE5
IEBAIHN0YXRpYyBpbnQgbWF4MzAxMDBfYnVmZmVyX3Bvc3RlbmFibGUoc3RydWN0ICAKPiA+IGlp
b19kZXYgKmluZGlvX2RldikgIAo+ID4gPiAgc3RhdGljIGludCBtYXgzMDEwMF9idWZmZXJfcHJl
ZGlzYWJsZShzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2KQo+ID4gPiAgewo+ID4gPiAgCXN0cnVj
dCBtYXgzMDEwMF9kYXRhICpkYXRhID0gaWlvX3ByaXYoaW5kaW9fZGV2KTsKPiA+ID4gKwlpbnQg
cmV0Owo+ID4gPiArCj4gPiA+ICsJLyoKPiA+ID4gKwkgKiBBcyBzdGF0ZWQgaW4gdGhlIGNvbW1l
bnQgaW4gdGhlIHJlYWRfcmF3KCkgZnVuY3Rpb24sIHRlbXBlcmF0dXJlCj4gPiA+ICsJICogY2Fu
IG9ubHkgYmUgYWNxdWlyZWQgaWYgdGhlIGVuZ2luZSBpcyBydW5uaW5nLiBBcyBzdWNoIHRoZSBt
dXRleAo+ID4gPiArCSAqIGlzIHVzZWQgdG8gbWFrZSBzdXJlIHdlIGRvIG5vdCBwb3dlciBkb3du
IHdoaWxlIGRvaW5nIGEgIAo+ID4gdGVtcGVyYXR1cmUgIAo+ID4gPiArCSAqIHJlYWRpbmcuCj4g
PiA+ICsJICovCj4gPiA+ICsJbXV0ZXhfbG9jaygmZGF0YS0+bG9jayk7Cj4gPiA+ICsJcmV0ID0g
bWF4MzAxMDBfc2V0X3Bvd2VybW9kZShkYXRhLCBmYWxzZSk7Cj4gPiA+ICsJbXV0ZXhfdW5sb2Nr
KCZkYXRhLT5sb2NrKTsKPiA+ID4KPiA+ID4gLQlyZXR1cm4gbWF4MzAxMDBfc2V0X3Bvd2VybW9k
ZShkYXRhLCBmYWxzZSk7Cj4gPiA+ICsJcmV0dXJuIHJldDsKPiA+ID4gIH0KPiA+ID4KPiA+ID4g
IHN0YXRpYyBjb25zdCBzdHJ1Y3QgaWlvX2J1ZmZlcl9zZXR1cF9vcHMgbWF4MzAxMDBfYnVmZmVy
X3NldHVwX29wcyA9IHsKPiA+ID4gQEAgLTM4NywxOCArMzk4LDE3IEBAIHN0YXRpYyBpbnQgbWF4
MzAxMDBfcmVhZF9yYXcoc3RydWN0IGlpb19kZXYgIAo+ID4gKmluZGlvX2RldiwgIAo+ID4gPiAg
CQkgKiBUZW1wZXJhdHVyZSByZWFkaW5nIGNhbiBvbmx5IGJlIGFjcXVpcmVkIHdoaWxlIGVuZ2lu
ZQo+ID4gPiAgCQkgKiBpcyBydW5uaW5nCj4gPiA+ICAJCSAqLwo+ID4gPiAtCQltdXRleF9sb2Nr
KCZpbmRpb19kZXYtPm1sb2NrKTsKPiA+ID4gLQo+ID4gPiAtCQlpZiAoIWlpb19idWZmZXJfZW5h
YmxlZChpbmRpb19kZXYpKQo+ID4gPiArCQlpZiAoIWlpb19kZXZpY2VfY2xhaW1fZGlyZWN0X21v
ZGUoaW5kaW9fZGV2KSkgeyAgCj4gPiAKPiA+IEkgd29uZGVyIGlmIHRoaXMgbGluZSBjaGFuZ2Ug
aGVyZSBpcyByZWFsbHkgbmVlZGVkLiBJIGFncmVlIHRoZSB3aG9sZQo+ID4gY29uc3RydWN0aW9u
IGxvb2tzIGxpa2Ugd2hhdCBpaW9fZGV2aWNlX2NsYWltX2RpcmVjdF9tb2RlKCkgZG9lcyBidXQg
aW4KPiA+IHByYWN0aWNlIEkgZG9uJ3Qgc2VlIHRoZSBwb2ludCBvZiBhY3F1aXJpbmcgYW55IGxv
Y2sgaGVyZSBpZiB3ZSBqdXN0Cj4gPiByZWxlYXNlIGl0IG5vIG1hdHRlciB3aGF0IGhhcHBlbnMg
cmlnaHQgYWZ0ZXIuCj4gPiAgIAo+IAo+IEkgY2FuIHNlZSB0aGF0IHRoaXMgaXMgb2RkIChhdCB0
aGUgdmVyeSBsZWFzdCkgYnV0IEFGQUlLLCB0aGlzIGlzIHRoZSBvbmx5IHdheQo+IHRvIHNhZmVs
eSBpbmZlciBpZiBidWZmZXJpbmcgaXMgZW5hYmxlZCBvciBub3QuIGlpb19idWZmZXJfZW5hYmxl
ZCgpIGhhcyBubwo+IHByb3RlY3Rpb24gYWdhaW5zdCBzb21lb25lIGNvbmN1cnJlbnRseSBlbmFi
bGluZy9kaXNhYmxpbmcgdGhlIGJ1ZmZlci4KClllcywgYnV0IHRoaXMgaXMgb25seSByZWxldmFu
dCBpZiB5b3Ugd2FudCB0byBpbmZlciB0aGF0IHRoZSAiYnVmZmVycwphcmUgZW5hYmxlZCIgYW5k
IGJlIHN1cmUgdGhhdCBpdCBjYW5ub3QgYmUgb3RoZXJ3aXNlIGR1cmluZyB0aGUgbmV4dApsaW5l
cyB1bnRpbCB5b3UgcmVsZWFzZSB0aGUgbG9jay4gQWNxdWlyaW5nIGEgbG9jaywgZG9pbmcgdGhl
IGlmIGFuZAp0aGVuIHVuY29uZGl0aW9uYWxseSByZWxlYXNpbmcgdGhlIGxvY2ssIElNSE8sIGRv
ZXMgbm90IG1ha2UgYW55IHNlbnNlCihidXQgSSdtIG5vdCBhIGxvY2tpbmcgZ3VydSkgYmVjYXVz
ZSB3aGVuIHlvdSBlbnRlciB0aGUgZWxzZSBjbGF1c2UsCnlvdSBhcmUgbm90IHByb3RlY3RlZCBh
bnl3YXksIHNvIGluIGJvdGggY2FzZXMgYWxsIHRoaXMgaXMgY29tcGxldGVseQpyYWN5LgoKPiBT
byB0aGUgY2FsbCBpcyBuZWVkZWQgdG8gbWFrZSBzdXJlICdtbG9jaycgaXMgaW50ZXJuYWxseSBn
cmFiYmVkIGJlZm9yZQo+IGNhbGxpbmcgaWlvX2J1ZmZlcl9lbmFibGVkKCkuCj4gCj4gPiBVbmxl
c3Mgb2YgY291cnNlIGlmIHRoZXJlIGlzIGEgaGlkZGVuIGdvYWwgbGlrZSAic3RvcCBleHBvcnRp
bmcKPiA+IGlpb19idWZmZXJfZW5hYmxlZCgpIiBvciBzb21ldGhpbmcgbGlrZSB0aGF0Lgo+ID4g
Cj4gPiBBdCBsZWFzdCBJIHdvdWxkIHNlcGFyYXRlIHRoaXMgZnJvbSB0aGUgbWFpbiBjaGFuZ2Ug
d2hpY2ggdGFyZ2V0cyB0aGUKPiA+IHJlbW92YWwgb2YgbWxvY2sgYmVjYXVzZSBJIGRvbid0IHNl
ZSBob3cgaXQgaXMgZGlyZWN0bHkgcmVsYXRlZC4gIAo+IAo+IEluIGEgc2Vuc2UgYm90aCBjaGFu
Z2VzIGFyZSBuZWVkZWQgdG8gdWx0aW1hdGVseSBnZXQgcmlkIG9mIG1sb2NrLiBJJ20gCj4gYWxz
byBub3Qgc3VyZSBob3cgY291bGQgSSBkbyB0aGUgc2VwYXJhdGlvbi4uLiBEbyB5b3UgaGF2ZSBz
b21ldGhpbmcKPiBpbiBtaW5kPwo+IAo+IC0gTnVubyBTw6EKCgpUaGFua3MsCk1pcXXDqGwKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
