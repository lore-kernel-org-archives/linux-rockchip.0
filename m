Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4FA1C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Oct 2022 07:57:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jWX6UKJ5ds5Se2holx3j+An48r8jbwKF1KOyqdkl1QE=; b=WGXHaHMFDlR/Ym
	zXYWzHPQT0UY4N95JD/C1lqPk7Z82+/P/dqqOTnGg0tQiD3u08dmbZFz3I/y0O8RK17bnSgwfRU45
	G0yBChH0uyojB2osWD7AbAKxBs1KDNu59mfzXXtNAsra1qQVxiA38RfIHaEO8m7Vpw9iqOXIxXnUA
	iIfDrzeqJNH1aw3juBFnI/iMxe5ij4r0RW+ly5fRTFRPdvdnNnVGA3oxkEDDW61YTO1bxu8CABbmd
	P2/k3GfCnpK3JO0ueaVjCPgU48f5w2CKyBee+EEbQTln2elbxvT3dpjoBUXGILGCud4ikFPGZ71Wq
	WFI6nVj1GXMXzR/kbOKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofcnW-008qE2-TY; Tue, 04 Oct 2022 07:57:02 +0000
Received: from mail-qv1-xf2d.google.com ([2607:f8b0:4864:20::f2d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofcnD-008q6D-7z; Tue, 04 Oct 2022 07:56:45 +0000
Received: by mail-qv1-xf2d.google.com with SMTP id mx8so1915373qvb.8;
        Tue, 04 Oct 2022 00:56:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date;
        bh=HW3pXV9AoGtOCcczfQGsv6Gj1OZsXuyRGgZ9uArzuUs=;
        b=XASNVM/wbT2yPGCGxYbh/Y8F6U5JzAjDNhK88QyTUlrr950/cJ6SQyul8TNNPCuV3w
         /IrmWwA4O98PtRNI+6lHt5vXx2uguq/3D0FRRrFOUi9oqVHq2UhnyvvuP2oSTRAD4Svp
         qdiP3l4JjzlKksMTqq24naUkeNZjBw7bEnXzGzYgBPsJtan8rH9/snXuNtnsOOWxTZkt
         7Y4nmBaph6qTiIaSDHTwtorTReGqwLWyRtU3YdS/HLYbv8oIW8GYWfnU7h0C7hQcI+mi
         5w6cyndbdEfHhA7giFJBrBqtQmqmpqImeu7v3dKgU/Hy9g9AJ2qrQ6k04dppLeeg9L7G
         Xbzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date;
        bh=HW3pXV9AoGtOCcczfQGsv6Gj1OZsXuyRGgZ9uArzuUs=;
        b=ot9Q50cJGYu+su4bBZeam3J2N4fT3YusfuMMbD7ZTkSNrvk3bm+IKQDsOvTajpa4ZW
         HcJta2sPMQc9poXmt7NmNZbJYqSymPpgPImBGJ6+PdUYVfYDLTyglBQ9z49SVg0QNXWr
         OYGiNsqWbk7LKDGyIlUPhLs35ISfJZs15DZY2iP0QYaiZN9yqUHToke/o8u1CJMqlma0
         FZeQFlVkzNlgpk/Sx/Rnlmx3rU78eSB9b3CQvJ6OWMiQOhJIEciwc0hHSfA6H8By3HaF
         h06FKAteKJKxhE2QDxpKj0m22CZFzerTs/yBS6t03fSf0omss5bno/b65tBZ6bDZIYuC
         dMZA==
X-Gm-Message-State: ACrzQf02rW7uQfJpKkRjjzrKzkAlgx5QkWfW1XzrZ5EHMvpyPu1Geh3f
	Fw94aYnxjMo4O1F17Te+uoA=
X-Google-Smtp-Source: AMsMyM529APgqGNFGmfFPUmzEk+9GtMORRZ8hoc2gqKgPzCIBT8Epimr0+fMS2cqhIsYDJWd1MnqlQ==
X-Received: by 2002:a05:6214:260a:b0:4b1:8b7d:8e78 with SMTP id gu10-20020a056214260a00b004b18b7d8e78mr6607487qvb.5.1664870202256;
        Tue, 04 Oct 2022 00:56:42 -0700 (PDT)
Received: from p200300f6ef036f005de6a4d0d791ed01.dip0.t-ipconnect.de (p200300f6ef036f005de6a4d0d791ed01.dip0.t-ipconnect.de. [2003:f6:ef03:6f00:5de6:a4d0:d791:ed01])
        by smtp.gmail.com with ESMTPSA id g9-20020a05620a40c900b006bbe6e89bdcsm14109267qko.31.2022.10.04.00.56.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Oct 2022 00:56:41 -0700 (PDT)
Message-ID: <3fd3e2116ef355c8136ab3a5d5beaea577e01c19.camel@gmail.com>
Subject: Re: [PATCH 13/15] iio: health: max30100: do not use internal
 iio_dev lock
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>, "Sa, Nuno"
 <Nuno.Sa@analog.com>,  "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "linux-amlogic@lists.infradead.org" <linux-amlogic@lists.infradead.org>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,  "linux-iio@vger.kernel.org"
 <linux-iio@vger.kernel.org>, Chunyan Zhang <zhang.lyra@gmail.com>, 
 "Hennerich, Michael" <Michael.Hennerich@analog.com>, Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>, Sascha Hauer
 <s.hauer@pengutronix.de>, Cixi Geng <cixi.geng1@unisoc.com>, Kevin Hilman
 <khilman@baylibre.com>, Vladimir Zapolskiy <vz@mleia.com>, Pengutronix
 Kernel Team <kernel@pengutronix.de>, Alexandru Ardelean
 <aardelean@deviqon.com>, Fabio Estevam <festevam@gmail.com>, Andriy
 Tryshnivskyy <andriy.tryshnivskyy@opensynergy.com>,  Haibo Chen
 <haibo.chen@nxp.com>, Shawn Guo <shawnguo@kernel.org>, Hans de Goede
 <hdegoede@redhat.com>,  Jerome Brunet <jbrunet@baylibre.com>, Heiko
 Stuebner <heiko@sntech.de>, Florian Boor <florian.boor@kernelconcepts.de>,
 "Regus, Ciprian" <Ciprian.Regus@analog.com>,  Lars-Peter Clausen
 <lars@metafoo.de>, Andy Shevchenko <andy.shevchenko@gmail.com>, Neil
 Armstrong <narmstrong@baylibre.com>, Baolin Wang
 <baolin.wang@linux.alibaba.com>,  Jyoti Bhayana <jbhayana@google.com>,
 Chen-Yu Tsai <wens@csie.org>, Orson Zhai <orsonzhai@gmail.com>
Date: Tue, 04 Oct 2022 09:57:57 +0200
In-Reply-To: <20221002120322.3eba3f24@jic23-huawei>
References: <20220920112821.975359-1-nuno.sa@analog.com>
	 <20220920112821.975359-14-nuno.sa@analog.com>
	 <20220920142319.61557023@xps-13>
	 <SJ0PR03MB6778FC7FD469F7C2BC7FB9DB994C9@SJ0PR03MB6778.namprd03.prod.outlook.com>
	 <20220920145534.0bdd4e69@xps-13>
	 <SJ0PR03MB6778761640C55A5022F40822994C9@SJ0PR03MB6778.namprd03.prod.outlook.com>
	 <20220920155305.395dad08@xps-13>
	 <1684ca38960d035a0fedd077ed149f524c58f7ff.camel@gmail.com>
	 <20220920171033.2f9d6d1f@xps-13> <20220924165318.0cf4403e@jic23-huawei>
	 <92a9947072e57194fea22ba3551f7ab097b961da.camel@gmail.com>
	 <20221002120322.3eba3f24@jic23-huawei>
User-Agent: Evolution 3.44.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_005643_340305_F4FBEFE4 
X-CRM114-Status: GOOD (  37.76  )
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

T24gU3VuLCAyMDIyLTEwLTAyIGF0IDEyOjAzICswMTAwLCBKb25hdGhhbiBDYW1lcm9uIHdyb3Rl
Ogo+IE9uIE1vbiwgMjYgU2VwIDIwMjIgMTI6MDY6MTMgKzAyMDAKPiBOdW5vIFPDoSA8bm9uYW1l
Lm51bm9AZ21haWwuY29tPiB3cm90ZToKPiAKPiA+IE9uIFNhdCwgMjAyMi0wOS0yNCBhdCAxNjo1
MyArMDEwMCwgSm9uYXRoYW4gQ2FtZXJvbiB3cm90ZToKPiA+ID4gT24gVHVlLCAyMCBTZXAgMjAy
MiAxNzoxMDozMyArMDIwMAo+ID4gPiBNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJvb3Rs
aW4uY29tPiB3cm90ZToKPiA+ID4gwqAgCj4gPiA+ID4gSGkgTnVubywKPiA+ID4gPiAKPiA+ID4g
PiBub25hbWUubnVub0BnbWFpbC5jb23CoHdyb3RlIG9uIFR1ZSwgMjAgU2VwIDIwMjIgMTY6NTY6
MDEgKzAyMDA6Cj4gPiA+ID4gwqAgCj4gPiA+ID4gPiBPbiBUdWUsIDIwMjItMDktMjAgYXQgMTU6
NTMgKzAyMDAsIE1pcXVlbCBSYXluYWwgd3JvdGU6wqDCoMKgIAo+ID4gPiA+ID4gPiBIaSBOdW5v
LAo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gTnVuby5TYUBhbmFsb2cuY29twqB3cm90ZSBvbiBU
dWUsIDIwIFNlcCAyMDIyIDEzOjE1OjMyCj4gPiA+ID4gPiA+ICswMDAwOgo+ID4gPiA+ID4gPiDC
oMKgwqDCoMKgIAo+ID4gPiA+ID4gPiA+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiA+
ID4gPiA+ID4gPiA+IEZyb206IE1pcXVlbCBSYXluYWwgPG1pcXVlbC5yYXluYWxAYm9vdGxpbi5j
b20+Cj4gPiA+ID4gPiA+ID4gPiBTZW50OiBUdWVzZGF5LCBTZXB0ZW1iZXIgMjAsIDIwMjIgMjo1
NiBQTQo+ID4gPiA+ID4gPiA+ID4gVG86IFNhLCBOdW5vIDxOdW5vLlNhQGFuYWxvZy5jb20+Cj4g
PiA+ID4gPiA+ID4gPiBDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOwo+
ID4gPiA+ID4gPiA+ID4gbGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZzsKPiA+ID4g
PiA+ID4gPiA+IGxpbnV4LWFtbG9naWNAbGlzdHMuaW5mcmFkZWFkLm9yZzsgbGludXgtaW14QG54
cC5jb207Cj4gPiA+ID4gPiA+ID4gPiBsaW51eC0KPiA+ID4gPiA+ID4gPiA+IGlpb0B2Z2VyLmtl
cm5lbC5vcmc7IENodW55YW4gWmhhbmcKPiA+ID4gPiA+ID4gPiA+IDx6aGFuZy5seXJhQGdtYWls
LmNvbT47Cj4gPiA+ID4gPiA+ID4gPiBIZW5uZXJpY2gsCj4gPiA+ID4gPiA+ID4gPiBNaWNoYWVs
IDxNaWNoYWVsLkhlbm5lcmljaEBhbmFsb2cuY29tPjsgTWFydGluCj4gPiA+ID4gPiA+ID4gPiBC
bHVtZW5zdGluZ2wKPiA+ID4gPiA+ID4gPiA+IDxtYXJ0aW4uYmx1bWVuc3RpbmdsQGdvb2dsZW1h
aWwuY29tPjsgU2FzY2hhIEhhdWVyCj4gPiA+ID4gPiA+ID4gPiA8cy5oYXVlckBwZW5ndXRyb25p
eC5kZT47IENpeGkgR2VuZwo+ID4gPiA+ID4gPiA+ID4gPGNpeGkuZ2VuZzFAdW5pc29jLmNvbT47
Cj4gPiA+ID4gPiA+ID4gPiBLZXZpbgo+ID4gPiA+ID4gPiA+ID4gSGlsbWFuIDxraGlsbWFuQGJh
eWxpYnJlLmNvbT47IFZsYWRpbWlyIFphcG9sc2tpeQo+ID4gPiA+ID4gPiA+ID4gPHZ6QG1sZWlh
LmNvbT47Cj4gPiA+ID4gPiA+ID4gPiBQZW5ndXRyb25peCBLZXJuZWwgVGVhbSA8a2VybmVsQHBl
bmd1dHJvbml4LmRlPjsKPiA+ID4gPiA+ID4gPiA+IEFsZXhhbmRydQo+ID4gPiA+ID4gPiA+ID4g
QXJkZWxlYW4KPiA+ID4gPiA+ID4gPiA+IDxhYXJkZWxlYW5AZGV2aXFvbi5jb20+OyBGYWJpbyBF
c3RldmFtCj4gPiA+ID4gPiA+ID4gPiA8ZmVzdGV2YW1AZ21haWwuY29tPjsKPiA+ID4gPiA+ID4g
PiA+IEFuZHJpeQo+ID4gPiA+ID4gPiA+ID4gVHJ5c2huaXZza3l5IDxhbmRyaXkudHJ5c2huaXZz
a3l5QG9wZW5zeW5lcmd5LmNvbT47Cj4gPiA+ID4gPiA+ID4gPiBIYWlibwo+ID4gPiA+ID4gPiA+
ID4gQ2hlbgo+ID4gPiA+ID4gPiA+ID4gPGhhaWJvLmNoZW5AbnhwLmNvbT47IFNoYXduIEd1byA8
c2hhd25ndW9Aa2VybmVsLm9yZz47Cj4gPiA+ID4gPiA+ID4gPiBIYW5zCj4gPiA+ID4gPiA+ID4g
PiBkZQo+ID4gPiA+ID4gPiA+ID4gR29lZGUgPGhkZWdvZWRlQHJlZGhhdC5jb20+OyBKZXJvbWUg
QnJ1bmV0Cj4gPiA+ID4gPiA+ID4gPiA8amJydW5ldEBiYXlsaWJyZS5jb20+Owo+ID4gPiA+ID4g
PiA+ID4gSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT47IEZsb3JpYW4gQm9vcgo+ID4g
PiA+ID4gPiA+ID4gPGZsb3JpYW4uYm9vckBrZXJuZWxjb25jZXB0cy5kZT47IFJlZ3VzLCBDaXBy
aWFuCj4gPiA+ID4gPiA+ID4gPiA8Q2lwcmlhbi5SZWd1c0BhbmFsb2cuY29tPjsgTGFycy1QZXRl
ciBDbGF1c2VuCj4gPiA+ID4gPiA+ID4gPiA8bGFyc0BtZXRhZm9vLmRlPjsKPiA+ID4gPiA+ID4g
PiA+IEFuZHkKPiA+ID4gPiA+ID4gPiA+IFNoZXZjaGVua28gPGFuZHkuc2hldmNoZW5rb0BnbWFp
bC5jb20+OyBKb25hdGhhbgo+ID4gPiA+ID4gPiA+ID4gQ2FtZXJvbgo+ID4gPiA+ID4gPiA+ID4g
PGppYzIzQGtlcm5lbC5vcmc+OyBOZWlsIEFybXN0cm9uZwo+ID4gPiA+ID4gPiA+ID4gPG5hcm1z
dHJvbmdAYmF5bGlicmUuY29tPjsKPiA+ID4gPiA+ID4gPiA+IEJhb2xpbgo+ID4gPiA+ID4gPiA+
ID4gV2FuZyA8YmFvbGluLndhbmdAbGludXguYWxpYmFiYS5jb20+OyBKeW90aSBCaGF5YW5hCj4g
PiA+ID4gPiA+ID4gPiA8amJoYXlhbmFAZ29vZ2xlLmNvbT47IENoZW4tWXUgVHNhaSA8d2Vuc0Bj
c2llLm9yZz47Cj4gPiA+ID4gPiA+ID4gPiBPcnNvbgo+ID4gPiA+ID4gPiA+ID4gWmhhaQo+ID4g
PiA+ID4gPiA+ID4gPG9yc29uemhhaUBnbWFpbC5jb20+Cj4gPiA+ID4gPiA+ID4gPiBTdWJqZWN0
OiBSZTogW1BBVENIIDEzLzE1XSBpaW86IGhlYWx0aDogbWF4MzAxMDA6IGRvCj4gPiA+ID4gPiA+
ID4gPiBub3QKPiA+ID4gPiA+ID4gPiA+IHVzZQo+ID4gPiA+ID4gPiA+ID4gaW50ZXJuYWwgaWlv
X2Rldgo+ID4gPiA+ID4gPiA+ID4gbG9jawo+ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4g
PiBbRXh0ZXJuYWxdCj4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+IEhpIE51bm8sCj4g
PiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+IE51bm8uU2FAYW5hbG9nLmNvbcKgd3JvdGUg
b24gVHVlLCAyMCBTZXAgMjAyMiAxMjo0NDowOAo+ID4gPiA+ID4gPiA+ID4gKzAwMDA6Cj4gPiA+
ID4gPiA+ID4gPiDCoMKgwqDCoMKgwqDCoCAKPiA+ID4gPiA+ID4gPiA+ID4gPiAtLS0tLU9yaWdp
bmFsIE1lc3NhZ2UtLS0tLQo+ID4gPiA+ID4gPiA+ID4gPiA+IEZyb206IE1pcXVlbCBSYXluYWwg
PG1pcXVlbC5yYXluYWxAYm9vdGxpbi5jb20+Cj4gPiA+ID4gPiA+ID4gPiA+ID4gU2VudDogVHVl
c2RheSwgU2VwdGVtYmVyIDIwLCAyMDIyIDI6MjMgUE0KPiA+ID4gPiA+ID4gPiA+ID4gPiBUbzog
U2EsIE51bm8gPE51bm8uU2FAYW5hbG9nLmNvbT4KPiA+ID4gPiA+ID4gPiA+ID4gPiBDYzogbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBsaW51eC0KPiA+ID4gPiA+ID4gPiA+
ID4gPiDCoMKgwqDCoMKgwqDCoCAKPiA+ID4gPiA+ID4gPiA+IHJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmc7wqDCoMKgwqDCoMKgwqAgCj4gPiA+ID4gPiA+ID4gPiA+ID4gbGludXgtYW1sb2dp
Y0BsaXN0cy5pbmZyYWRlYWQub3JnOwo+ID4gPiA+ID4gPiA+ID4gPiA+IGxpbnV4LWlteEBueHAu
Y29tOwo+ID4gPiA+ID4gPiA+ID4gPiA+IGxpbnV4LQo+ID4gPiA+ID4gPiA+ID4gPiA+IGlpb0B2
Z2VyLmtlcm5lbC5vcmc7IENodW55YW4gWmhhbmcKPiA+ID4gPiA+ID4gPiA+ID4gPiA8emhhbmcu
bHlyYUBnbWFpbC5jb20+O8KgwqDCoMKgwqDCoMKgIAo+ID4gPiA+ID4gPiA+ID4gSGVubmVyaWNo
LMKgwqDCoMKgwqDCoMKgIAo+ID4gPiA+ID4gPiA+ID4gPiA+IE1pY2hhZWwgPE1pY2hhZWwuSGVu
bmVyaWNoQGFuYWxvZy5jb20+OyBNYXJ0aW4KPiA+ID4gPiA+ID4gPiA+ID4gPiBCbHVtZW5zdGlu
Z2wKPiA+ID4gPiA+ID4gPiA+ID4gPiA8bWFydGluLmJsdW1lbnN0aW5nbEBnb29nbGVtYWlsLmNv
bT47IFNhc2NoYSBIYXVlcgo+ID4gPiA+ID4gPiA+ID4gPiA+IDxzLmhhdWVyQHBlbmd1dHJvbml4
LmRlPjsgQ2l4aSBHZW5nCj4gPiA+ID4gPiA+ID4gPiA+ID4gPGNpeGkuZ2VuZzFAdW5pc29jLmNv
bT47Cj4gPiA+ID4gPiA+ID4gPiA+ID4gS2V2aW4KPiA+ID4gPiA+ID4gPiA+ID4gPiBIaWxtYW4g
PGtoaWxtYW5AYmF5bGlicmUuY29tPjsgVmxhZGltaXIgWmFwb2xza2l5Cj4gPiA+ID4gPiA+ID4g
PiA+ID4gPHZ6QG1sZWlhLmNvbT47Cj4gPiA+ID4gPiA+ID4gPiA+ID4gUGVuZ3V0cm9uaXggS2Vy
bmVsIFRlYW0gPGtlcm5lbEBwZW5ndXRyb25peC5kZT47Cj4gPiA+ID4gPiA+ID4gPiA+ID4gQWxl
eGFuZHJ1wqDCoMKgwqDCoMKgwqAgCj4gPiA+ID4gPiA+ID4gPiBBcmRlbGVhbsKgwqDCoMKgwqDC
oMKgIAo+ID4gPiA+ID4gPiA+ID4gPiA+IDxhYXJkZWxlYW5AZGV2aXFvbi5jb20+OyBGYWJpbyBF
c3RldmFtCj4gPiA+ID4gPiA+ID4gPiA+ID4gPGZlc3RldmFtQGdtYWlsLmNvbT47wqDCoMKgwqDC
oMKgIAo+ID4gPiA+ID4gPiA+ID4gQW5kcml5wqDCoMKgwqDCoMKgwqAgCj4gPiA+ID4gPiA+ID4g
PiA+ID4gVHJ5c2huaXZza3l5IDxhbmRyaXkudHJ5c2huaXZza3l5QG9wZW5zeW5lcmd5LmNvbT47
Cj4gPiA+ID4gPiA+ID4gPiA+ID4gSGFpYm8KPiA+ID4gPiA+ID4gPiA+ID4gPiBDaGVuCj4gPiA+
ID4gPiA+ID4gPiA+ID4gPGhhaWJvLmNoZW5AbnhwLmNvbT47IFNoYXduIEd1bwo+ID4gPiA+ID4g
PiA+ID4gPiA+IDxzaGF3bmd1b0BrZXJuZWwub3JnPjsKPiA+ID4gPiA+ID4gPiA+ID4gPiBIYW5z
Cj4gPiA+ID4gPiA+ID4gPiA+ID4gZGUKPiA+ID4gPiA+ID4gPiA+ID4gPiBHb2VkZSA8aGRlZ29l
ZGVAcmVkaGF0LmNvbT47IEplcm9tZSBCcnVuZXTCoMKgwqDCoMKgwqDCoCAKPiA+ID4gPiA+ID4g
PiA+IDxqYnJ1bmV0QGJheWxpYnJlLmNvbT47wqDCoMKgwqDCoMKgwqAgCj4gPiA+ID4gPiA+ID4g
PiA+ID4gSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT47IEZsb3JpYW4gQm9vcgo+ID4g
PiA+ID4gPiA+ID4gPiA+IDxmbG9yaWFuLmJvb3JAa2VybmVsY29uY2VwdHMuZGU+OyBSZWd1cywg
Q2lwcmlhbgo+ID4gPiA+ID4gPiA+ID4gPiA+IDxDaXByaWFuLlJlZ3VzQGFuYWxvZy5jb20+OyBM
YXJzLVBldGVyIENsYXVzZW4KPiA+ID4gPiA+ID4gPiA+ID4gPiA8bGFyc0BtZXRhZm9vLmRlPjvC
oMKgwqDCoMKgwqDCoCAKPiA+ID4gPiA+ID4gPiA+IEFuZHnCoMKgwqDCoMKgwqDCoCAKPiA+ID4g
PiA+ID4gPiA+ID4gPiBTaGV2Y2hlbmtvIDxhbmR5LnNoZXZjaGVua29AZ21haWwuY29tPjsgSm9u
YXRoYW4KPiA+ID4gPiA+ID4gPiA+ID4gPiBDYW1lcm9uCj4gPiA+ID4gPiA+ID4gPiA+ID4gPGpp
YzIzQGtlcm5lbC5vcmc+OyBOZWlsIEFybXN0cm9uZwo+ID4gPiA+ID4gPiA+ID4gPiA+IDxuYXJt
c3Ryb25nQGJheWxpYnJlLmNvbT47Cj4gPiA+ID4gPiA+ID4gPiA+ID4gQmFvbGluCj4gPiA+ID4g
PiA+ID4gPiA+ID4gV2FuZyA8YmFvbGluLndhbmdAbGludXguYWxpYmFiYS5jb20+OyBKeW90aSBC
aGF5YW5hCj4gPiA+ID4gPiA+ID4gPiA+ID4gPGpiaGF5YW5hQGdvb2dsZS5jb20+OyBDaGVuLVl1
IFRzYWkKPiA+ID4gPiA+ID4gPiA+ID4gPiA8d2Vuc0Bjc2llLm9yZz47Cj4gPiA+ID4gPiA+ID4g
PiA+ID4gT3Jzb24KPiA+ID4gPiA+ID4gPiA+ID4gPiBaaGFpCj4gPiA+ID4gPiA+ID4gPiA+ID4g
PG9yc29uemhhaUBnbWFpbC5jb20+Cj4gPiA+ID4gPiA+ID4gPiA+ID4gU3ViamVjdDogUmU6IFtQ
QVRDSCAxMy8xNV0gaWlvOiBoZWFsdGg6IG1heDMwMTAwOgo+ID4gPiA+ID4gPiA+ID4gPiA+IGRv
Cj4gPiA+ID4gPiA+ID4gPiA+ID4gbm90IHVzZQo+ID4gPiA+ID4gPiA+ID4gPiA+IGludGVybmFs
wqDCoMKgwqDCoMKgwqAgCj4gPiA+ID4gPiA+ID4gPiBpaW9fZGV2wqDCoMKgwqDCoMKgwqAgCj4g
PiA+ID4gPiA+ID4gPiA+ID4gbG9jawo+ID4gPiA+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+
ID4gPiA+IFtFeHRlcm5hbF0KPiA+ID4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+ID4g
PiBIaSBOdW5vLAo+ID4gPiA+ID4gPiA+ID4gPiA+IMKgwqDCoMKgwqDCoCAKPiA+ID4gPiA+ID4g
PiA+ID4gCj4gPiA+ID4gPiA+ID4gPiA+IEhpIE1pcXVlbCwKPiA+ID4gPiA+ID4gPiA+ID4gCj4g
PiA+ID4gPiA+ID4gPiA+IFRoYW5rcyBmb3IgcmV2aWV3aW5nLi4uCj4gPiA+ID4gPiA+ID4gPiA+
IMKgwqDCoMKgwqDCoCAKPiA+ID4gPiA+ID4gPiA+ID4gPiBudW5vLnNhQGFuYWxvZy5jb23CoHdy
b3RlIG9uIFR1ZSwgMjAgU2VwIDIwMjIKPiA+ID4gPiA+ID4gPiA+ID4gPiAxMzoyODoxOQo+ID4g
PiA+ID4gPiA+ID4gPiA+ICswMjAwOgo+ID4gPiA+ID4gPiA+ID4gPiA+IMKgwqDCoMKgwqDCoCAK
PiA+ID4gPiA+ID4gPiA+ID4gPiA+IFRoZSBwYXR0ZXJuIHVzZWQgaW4gdGhpcyBkZXZpY2UgZG9l
cyBub3QgcXVpdGUKPiA+ID4gPiA+ID4gPiA+ID4gPiA+IGZpdCBpbgo+ID4gPiA+ID4gPiA+ID4g
PiA+ID4gdGhlCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiBpaW9fZGV2aWNlX2NsYWltX2RpcmVjdF9t
b2RlKCkgdHlwaWNhbCB1c2FnZS4gSW4KPiA+ID4gPiA+ID4gPiA+ID4gPiA+IHRoaXMKPiA+ID4g
PiA+ID4gPiA+ID4gPiA+IGNhc2UsCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiBpaW9fYnVmZmVyX2Vu
YWJsZWQoKSB3YXMgYmVpbmcgdXNlZCBub3QgdG8KPiA+ID4gPiA+ID4gPiA+ID4gPiA+IHByZXZl
bnQKPiA+ID4gPiA+ID4gPiA+ID4gPiA+IHRoZSByYXcKPiA+ID4gPiA+ID4gPiA+ID4gPiA+IGFj
Y2VzcyBidXTCoMKgwqDCoMKgwqDCoCAKPiA+ID4gPiA+ID4gPiA+IHRvwqDCoMKgwqDCoMKgwqAg
Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiBhbGxvdyBpdC4gSGVuY2UgdG8gZ2V0IHJpZCBvZiB0aGUg
J21sb2NrJyB3ZSBuZWVkCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiB0bzoKPiA+ID4gPiA+ID4gPiA+
ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gMS4gVXNlIGlpb19kZXZpY2VfY2xhaW1fZGly
ZWN0X21vZGUoKSB0byBjaGVjayBpZgo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gZGlyZWN0Cj4gPiA+
ID4gPiA+ID4gPiA+ID4gPiBtb2RlIGNhbiBiZQo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gY2xhaW1l
ZCBhbmQgaWYgd2UgY2FuIHJldHVybiAtRUlOVkFMIChhcyB0aGUKPiA+ID4gPiA+ID4gPiA+ID4g
PiA+IG9yaWdpbmFsCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiBjb2RlKTsKPiA+ID4gPiA+ID4gPiA+
ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gMi4gTWFrZSBzdXJlIHRoYXQgYnVmZmVyaW5n
IGlzIG5vdCBkaXNhYmxlZCB3aGlsZQo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gZG9pbmcgYQo+ID4g
PiA+ID4gPiA+ID4gPiA+ID4gcmF3IHJlYWQuIEZvcgo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gdGhh
dCwgd2UgY2FuIG1ha2UgdXNlIG9mIHRoZSBsb2NhbCBsb2NrIHRoYXQKPiA+ID4gPiA+ID4gPiA+
ID4gPiA+IGFscmVhZHkKPiA+ID4gPiA+ID4gPiA+ID4gPiA+IGV4aXN0cy4KPiA+ID4gPiA+ID4g
PiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gV2hpbGUgYXQgaXQsIGZpeGVkIGEgbWlu
b3IgY29kaW5nIHN0eWxlCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiBjb21wbGFpbi4uLgo+ID4gPiA+
ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBOdW5v
IFPDoSA8bnVuby5zYUBhbmFsb2cuY29tPgo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gLS0tCj4gPiA+
ID4gPiA+ID4gPiA+ID4gPiDCoGRyaXZlcnMvaWlvL2hlYWx0aC9tYXgzMDEwMC5jIHwgMjQKPiA+
ID4gPiA+ID4gPiA+ID4gPiA+ICsrKysrKysrKysrKysrKysrLS0tLS0tCj4gPiA+ID4gPiA+ID4g
PiA+ID4gPiAtCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiDCoDEgZmlsZSBjaGFuZ2VkLCAxNyBpbnNl
cnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4g
PiA+ID4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9paW8vaGVhbHRoL21heDMwMTAwLmPC
oMKgwqDCoMKgwqDCoAo+ID4gPiA+ID4gPiA+ID4gYi9kcml2ZXJzL2lpby9oZWFsdGgvbWF4MzAx
MDAuY8KgwqDCoMKgwqDCoMKgIAo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gaW5kZXggYWQ1NzE3OTY1
MjIzLi5hYTQ5NGNhZDVkZjAgMTAwNjQ0Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiAtLS0gYS9kcml2
ZXJzL2lpby9oZWFsdGgvbWF4MzAxMDAuYwo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gKysrIGIvZHJp
dmVycy9paW8vaGVhbHRoL21heDMwMTAwLmMKPiA+ID4gPiA+ID4gPiA+ID4gPiA+IEBAIC0xODUs
OCArMTg1LDE5IEBAIHN0YXRpYyBpbnQKPiA+ID4gPiA+ID4gPiA+ID4gPiA+IG1heDMwMTAwX2J1
ZmZlcl9wb3N0ZW5hYmxlKHN0cnVjdMKgwqDCoMKgwqDCoMKgIAo+ID4gPiA+ID4gPiA+ID4gPiA+
IGlpb19kZXYgKmluZGlvX2RldinCoMKgwqDCoMKgwqDCoCAKPiA+ID4gPiA+ID4gPiA+ID4gPiA+
IMKgc3RhdGljIGludCBtYXgzMDEwMF9idWZmZXJfcHJlZGlzYWJsZShzdHJ1Y3QKPiA+ID4gPiA+
ID4gPiA+ID4gPiA+IGlpb19kZXYKPiA+ID4gPiA+ID4gPiA+ID4gPiA+ICppbmRpb19kZXYpCj4g
PiA+ID4gPiA+ID4gPiA+ID4gPiDCoHsKPiA+ID4gPiA+ID4gPiA+ID4gPiA+IMKgwqDCoMKgwqDC
oMKgwqBzdHJ1Y3QgbWF4MzAxMDBfZGF0YSAqZGF0YSA9Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiBp
aW9fcHJpdihpbmRpb19kZXYpOwo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKg
aW50IHJldDsKPiA+ID4gPiA+ID4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4gPiA+ID4gPiA+ICvC
oMKgwqDCoMKgwqDCoC8qCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiArwqDCoMKgwqDCoMKgwqAgKiBB
cyBzdGF0ZWQgaW4gdGhlIGNvbW1lbnQgaW4gdGhlCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiByZWFk
X3JhdygpCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiBmdW5jdGlvbiwgdGVtcGVyYXR1cmUKPiA+ID4g
PiA+ID4gPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoCAqIGNhbiBvbmx5IGJlIGFjcXVpcmVkIGlm
IHRoZSBlbmdpbmUgaXMKPiA+ID4gPiA+ID4gPiA+ID4gPiA+IHJ1bm5pbmcuCj4gPiA+ID4gPiA+
ID4gPiA+ID4gPiBBcyBzdWNoIHRoZSBtdXRleAo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gK8KgwqDC
oMKgwqDCoMKgICogaXMgdXNlZCB0byBtYWtlIHN1cmUgd2UgZG8gbm90IHBvd2VyCj4gPiA+ID4g
PiA+ID4gPiA+ID4gPiBkb3duCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiB3aGlsZQo+ID4gPiA+ID4g
PiA+ID4gPiA+ID4gZG9pbmcgYcKgwqDCoMKgwqDCoMKgIAo+ID4gPiA+ID4gPiA+ID4gPiA+IHRl
bXBlcmF0dXJlwqDCoMKgwqDCoMKgwqAgCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiArwqDCoMKgwqDC
oMKgwqAgKiByZWFkaW5nLgo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgICov
Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiArwqDCoMKgwqDCoMKgwqBtdXRleF9sb2NrKCZkYXRhLT5s
b2NrKTsKPiA+ID4gPiA+ID4gPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoHJldCA9IG1heDMwMTAw
X3NldF9wb3dlcm1vZGUoZGF0YSwKPiA+ID4gPiA+ID4gPiA+ID4gPiA+IGZhbHNlKTsKPiA+ID4g
PiA+ID4gPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoG11dGV4X3VubG9jaygmZGF0YS0+bG9jayk7
Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+ID4gPiA+IC3CoMKgwqDCoMKg
wqDCoHJldHVybiBtYXgzMDEwMF9zZXRfcG93ZXJtb2RlKGRhdGEsCj4gPiA+ID4gPiA+ID4gPiA+
ID4gPiBmYWxzZSk7Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiArwqDCoMKgwqDCoMKgwqByZXR1cm4g
cmV0Owo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gwqB9Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiAKPiA+
ID4gPiA+ID4gPiA+ID4gPiA+IMKgc3RhdGljIGNvbnN0IHN0cnVjdCBpaW9fYnVmZmVyX3NldHVw
X29wcwo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gbWF4MzAxMDBfYnVmZmVyX3NldHVwX29wc8KgwqDC
oMKgwqDCoMKgIAo+ID4gPiA+ID4gPiA+ID4gPSB7wqDCoMKgwqDCoMKgwqAgCj4gPiA+ID4gPiA+
ID4gPiA+ID4gPiBAQCAtMzg3LDE4ICszOTgsMTcgQEAgc3RhdGljIGludAo+ID4gPiA+ID4gPiA+
ID4gPiA+ID4gbWF4MzAxMDBfcmVhZF9yYXcoc3RydWN0Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiBp
aW9fZGV2wqDCoMKgwqDCoMKgwqAgCj4gPiA+ID4gPiA+ID4gPiA+ID4gKmluZGlvX2RldizCoMKg
wqDCoMKgwqDCoCAKPiA+ID4gPiA+ID4gPiA+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgICogVGVtcGVyYXR1cmUgcmVhZGluZyBjYW4gb25seQo+ID4gPiA+ID4gPiA+ID4g
PiA+ID4gYmUKPiA+ID4gPiA+ID4gPiA+ID4gPiA+IGFjcXVpcmVkCj4gPiA+ID4gPiA+ID4gPiA+
ID4gPiB3aGlsZSBlbmdpbmUKPiA+ID4gPiA+ID4gPiA+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgICogaXMgcnVubmluZwo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKi8KPiA+ID4gPiA+ID4gPiA+ID4gPiA+IC3CoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBtdXRleF9sb2NrKCZpbmRpb19kZXYtPm1sb2NrKTsK
PiA+ID4gPiA+ID4gPiA+ID4gPiA+IC0KPiA+ID4gPiA+ID4gPiA+ID4gPiA+IC3CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBpZgo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gKCFpaW9fYnVmZmVy
X2VuYWJsZWQoaW5kaW9fZGV2KSkKPiA+ID4gPiA+ID4gPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBpZgo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gKCFpaW9fZGV2aWNlX2Ns
YWltX2RpcmVjdF9tb2RlKGluZGlvX2RldikpCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiB7wqDCoMKg
wqDCoMKgwqAgCj4gPiA+ID4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gPiA+ID4gSSB3b25k
ZXIgaWYgdGhpcyBsaW5lIGNoYW5nZSBoZXJlIGlzIHJlYWxseSBuZWVkZWQuCj4gPiA+ID4gPiA+
ID4gPiA+ID4gSQo+ID4gPiA+ID4gPiA+ID4gPiA+IGFncmVlCj4gPiA+ID4gPiA+ID4gPiA+ID4g
dGhlIHdob2xlCj4gPiA+ID4gPiA+ID4gPiA+ID4gY29uc3RydWN0aW9uIGxvb2tzIGxpa2Ugd2hh
dAo+ID4gPiA+ID4gPiA+ID4gPiA+IGlpb19kZXZpY2VfY2xhaW1fZGlyZWN0X21vZGUoKQo+ID4g
PiA+ID4gPiA+ID4gPiA+IGRvZXMgYnV0IGluCj4gPiA+ID4gPiA+ID4gPiA+ID4gcHJhY3RpY2Ug
SSBkb24ndCBzZWUgdGhlIHBvaW50IG9mIGFjcXVpcmluZyBhbnkKPiA+ID4gPiA+ID4gPiA+ID4g
PiBsb2NrCj4gPiA+ID4gPiA+ID4gPiA+ID4gaGVyZSBpZgo+ID4gPiA+ID4gPiA+ID4gPiA+IHdl
IGp1c3QKPiA+ID4gPiA+ID4gPiA+ID4gPiByZWxlYXNlIGl0IG5vIG1hdHRlciB3aGF0IGhhcHBl
bnMgcmlnaHQgYWZ0ZXIuCj4gPiA+ID4gPiA+ID4gPiA+ID4gwqDCoMKgwqDCoMKgIAo+ID4gPiA+
ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+ID4gSSBjYW4gc2VlIHRoYXQgdGhpcyBpcyBvZGQg
KGF0IHRoZSB2ZXJ5IGxlYXN0KSBidXQKPiA+ID4gPiA+ID4gPiA+ID4gQUZBSUssCj4gPiA+ID4g
PiA+ID4gPiA+IHRoaXMKPiA+ID4gPiA+ID4gPiA+ID4gaXMgdGhlIG9ubHkgd2F5Cj4gPiA+ID4g
PiA+ID4gPiA+IHRvIHNhZmVseSBpbmZlciBpZiBidWZmZXJpbmcgaXMgZW5hYmxlZCBvciBub3Qu
Cj4gPiA+ID4gPiA+ID4gPiA+IGlpb19idWZmZXJfZW5hYmxlZCgpIGhhcyBubwo+ID4gPiA+ID4g
PiA+ID4gPiBwcm90ZWN0aW9uIGFnYWluc3Qgc29tZW9uZSBjb25jdXJyZW50bHkKPiA+ID4gPiA+
ID4gPiA+ID4gZW5hYmxpbmcvZGlzYWJsaW5nIHRoZQo+ID4gPiA+ID4gPiA+ID4gPiBidWZmZXIu
wqDCoMKgwqDCoMKgwqAgCj4gPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiA+IFllcywgYnV0
IHRoaXMgaXMgb25seSByZWxldmFudCBpZiB5b3Ugd2FudCB0byBpbmZlcgo+ID4gPiA+ID4gPiA+
ID4gdGhhdAo+ID4gPiA+ID4gPiA+ID4gdGhlCj4gPiA+ID4gPiA+ID4gPiAiYnVmZmVycwo+ID4g
PiA+ID4gPiA+ID4gYXJlIGVuYWJsZWQiIGFuZCBiZSBzdXJlIHRoYXQgaXQgY2Fubm90IGJlIG90
aGVyd2lzZQo+ID4gPiA+ID4gPiA+ID4gZHVyaW5nCj4gPiA+ID4gPiA+ID4gPiB0aGUKPiA+ID4g
PiA+ID4gPiA+IG5leHQKPiA+ID4gPiA+ID4gPiA+IGxpbmVzIHVudGlsIHlvdSByZWxlYXNlIHRo
ZSBsb2NrLiBBY3F1aXJpbmcgYSBsb2NrLAo+ID4gPiA+ID4gPiA+ID4gZG9pbmcKPiA+ID4gPiA+
ID4gPiA+IHRoZSBpZgo+ID4gPiA+ID4gPiA+ID4gYW5kCj4gPiA+ID4gPiA+ID4gPiB0aGVuIHVu
Y29uZGl0aW9uYWxseSByZWxlYXNpbmcgdGhlIGxvY2ssIElNSE8sIGRvZXMgbm90Cj4gPiA+ID4g
PiA+ID4gPiBtYWtlIGFueQo+ID4gPiA+ID4gPiA+ID4gc2Vuc2UKPiA+ID4gPiA+ID4gPiA+IChi
dXQgSSdtIG5vdCBhIGxvY2tpbmcgZ3VydSkgYmVjYXVzZSB3aGVuIHlvdSBlbnRlciB0aGUKPiA+
ID4gPiA+ID4gPiA+IGVsc2UKPiA+ID4gPiA+ID4gPiA+IGNsYXVzZSwKPiA+ID4gPiA+ID4gPiA+
IHlvdSBhcmUgbm90IHByb3RlY3RlZCBhbnl3YXksIHNvIGluIGJvdGggY2FzZXMgYWxsIHRoaXMK
PiA+ID4gPiA+ID4gPiA+IGlzCj4gPiA+ID4gPiA+ID4gPiBjb21wbGV0ZWx5Cj4gPiA+ID4gPiA+
ID4gPiByYWN5Lgo+ID4gPiA+ID4gPiA+ID4gwqDCoMKgwqDCoMKgwqAgCj4gPiA+ID4gPiA+ID4g
Cj4gPiA+ID4gPiA+ID4gQWhoIGNyYXAsIHllcyB5b3UgYXJlIHJpZ2h0Li4uIEl0IGlzIHN0aWxs
IHJhY3kgc2luY2Ugd2UKPiA+ID4gPiA+ID4gPiBjYW4KPiA+ID4gPiA+ID4gPiBzdGlsbAo+ID4g
PiA+ID4gPiA+IHRyeSB0byByZWFkCj4gPiA+ID4gPiA+ID4gdGhlIHRlbXBlcmF0dXJlIHdpdGgg
dGhlIGRldmljZSBwb3dlcmVkIG9mZi4gSSdtIG5vdAo+ID4gPiA+ID4gPiA+IHJlYWxseQo+ID4g
PiA+ID4gPiA+IHN1cmUKPiA+ID4gPiA+ID4gPiBob3cgdG8KPiA+ID4gPiA+ID4gPiBhZGRyZXNz
IHRoaXMuIE9uZSB3YXkgY291bGQgYmUgdG8ganVzdCB1c2UgYW4gaW50ZXJuYWwKPiA+ID4gPiA+
ID4gPiBjb250cm9sCj4gPiA+ID4gPiA+ID4gdmFyaWFibGUKPiA+ID4gPiA+ID4gPiB0byByZWZs
ZWN0IHRoZSBkZXZpY2UgcG93ZXIgc3RhdGUgKHNldC9jbGVhciBvbiB0aGUKPiA+ID4gPiA+ID4g
PiBidWZmZXIKPiA+ID4gPiA+ID4gPiBjYWxsYmFja3MpIGFuZAo+ID4gPiA+ID4gPiA+IG9ubHkg
dXNlIHRoZSBsb2NhbCBsb2NrIChjb21wbGV0ZWx5IGRpdGNoaW5nIHRoZSBjYWxsIHRvCj4gPiA+
ID4gPiA+ID4gaWlvX2RldmljZV9jbGFpbV9kaXJlY3RfbW9kZSgpKS4uLsKgwqDCoMKgwqAgCj4g
PiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBJIHRlbmQgdG8gcHJlZmVyIHRoaXMgb3B0aW9uIHRoYW4g
dGhlIG9uZSBiZWxvdy4KPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IEkgZ3Vlc3MgeW91ciBpbXBs
ZW1lbnRhdGlvbiBhbHJlYWR5IHByZXZlbnRzCj4gPiA+ID4gPiA+IGJ1ZmZlcl9wcmVkaXNhYmxl
KCkgdG8KPiA+ID4gPiA+ID4gcnVuCj4gPiA+ID4gPiA+IHRoYW5rcyB0byB0aGUgbG9jYWwgbG9j
ayBiZWluZyBoZWxkIGR1cmluZyB0aGUgb3BlcmF0aW9uLgo+ID4gPiA+ID4gPiBNYXliZQo+ID4g
PiA+ID4gPiB3ZQo+ID4gPiA+ID4gPiBzaG91bGQganVzdCB2ZXJpZnkgdGhhdCBidWZmZXJzIGFy
ZSBlbmFibGVkIGZyb20gd2l0aGluIHRoZQo+ID4gPiA+ID4gPiBsb2NhbAo+ID4gPiA+ID4gPiBs
b2NrCj4gPiA+ID4gPiA+IGJlaW5nIGhlbGQgaW5zdGVhZCBvZiBqdXN0IGFjcXVpcmluZyBpdCBm
b3IgdGhlIGdldF90ZW1wKCkKPiA+ID4gPiA+ID4gbWVhc3VyZS4KPiA+ID4gPiA+ID4gSXQKPiA+
ID4gPiA+ID4gd291bGQgcHJvYmFibHkgc29sdmUgdGhlIHNpdHVhdGlvbiBoZXJlLsKgwqDCoMKg
wqAgCj4gPiA+ID4gPiA+ID4gwqDCoMKgwqDCoCAKPiA+ID4gPiA+IE5vdCBzdXJlIGlmIEkgdW5k
ZXJzdG9vZC4uLiBZb3UgbWVhbiBzb21ldGhpbmcgbGlrZToKPiA+ID4gPiA+IAo+ID4gPiA+ID4g
bXV0ZXhfbG9jaygmZGF0YS0+bG9jayk7Cj4gPiA+ID4gPiBpZiAoIWlpb19idWZmZXJfZW5hYmxl
ZChpbmRpb19kZXYpKSB7Cj4gPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgcmV0ID0gLUVJTlZBTDsK
PiA+ID4gPiA+IH0gZWxzZSB7Cj4gPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgcmV0ID0gbWF4MzAx
MDBfZ2V0X3RlbXAoZGF0YSwgdmFsKTsKPiA+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAoIXJl
dCkKPiA+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0ID0gSUlPX1ZB
TF9JTlQ7Cj4gPiA+ID4gPiAKPiA+ID4gPiA+IH0KPiA+ID4gPiA+IG11dGV4X3VubG9jaygmZGF0
YS0+bG9jayk7Cj4gPiA+ID4gPiAKPiA+ID4gPiA+IElmIHNvLCBJIHRoaW5rIHRoaXMgaXMgc3Rp
bGwgcmFjeSBzaW5jZSB3ZSByZWxlYXNlIHRoZSBsb2NrCj4gPiA+ID4gPiBhZnRlcgo+ID4gPiA+
ID4gdGhlCj4gPiA+ID4gPiBwcmVkaXNhYmxlIHdoaWNoIG1lYW5zIHdlIGNvdWxkIHN0aWxsIGRl
dGVjdCB0aGUgYnVmZmVycyBhcwo+ID4gPiA+ID4gZW5hYmxlZCAoaW4KPiA+ID4gPiA+IHRoZSBh
Ym92ZSBibG9jaykgYW5kIHRyeSB0byBnZXRfdGVtcCBvbiBhIHBvd2VyZWQgZG93bgo+ID4gPiA+
ID4gZGV2aWNlLsKgwqDCoCAKPiA+ID4gPiAKPiA+ID4gPiBUcnVlLgo+ID4gPiA+IMKgIAo+ID4g
PiA+ID4gCj4gPiA+ID4gPiBTaW5jZSB3ZSBwcmV0dHkgbXVjaCBvbmx5IGNhcmUgYWJvdXQgdGhl
IHBvd2VyIHN0YXRlIG9mIHRoZQo+ID4gPiA+ID4gZGV2aWNlIChhbmQKPiA+ID4gPiA+IHdlIGFy
ZSB1c2luZyB0aGUgYnVmZmVyaW5nIHN0YXRlIHRvIGluZmVyIHRoYXQgQUZBSVUpLCBJIHdhcwo+
ID4gPiA+ID4gdGhpbmtpbmcKPiA+ID4gPiA+IGluIHNvbWV0aGluZyBsaWtlOgo+ID4gPiA+ID4g
Cj4gPiA+ID4gPiAKPiA+ID4gPiA+IG11dGV4X2xvY2soJmRhdGEtPmxvY2spOwo+ID4gPiA+ID4g
aWYgKCFkYXRhLT5wb3dlcmVkKSB7Cj4gPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgcmV0ID0gLUVJ
TlZBTDsKPiA+ID4gPiA+IH0gZWxzZSB7Cj4gPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgcmV0ID0g
bWF4MzAxMDBfZ2V0X3RlbXAoZGF0YSwgdmFsKTsKPiA+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqBp
ZiAoIXJldCkKPiA+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0ID0g
SUlPX1ZBTF9JTlQ7Cj4gPiA+ID4gPiAKPiA+ID4gPiA+IH0KPiA+ID4gPiA+IG11dGV4X3VubG9j
aygmZGF0YS0+bG9jayk7wqDCoMKgIAo+ID4gPiA+IAo+ID4gPiA+IExHVE0uwqAgCj4gPiA+IAo+
ID4gPiBBIHJlZmVyZW5jZSBjb3VudGVkIHBvd2VyIHVwIGZsYWcgd291bGQgcHJvYmFibHkgd29y
ayBhcyB3ZSdkCj4gPiA+IHdhbnQgdG8KPiA+ID4gZGlzYWJsZQo+ID4gPiBwb3dlciBvbmx5IHdo
ZW4gdGhlIHJlZmVyZW5jZSBjb3VudCBnb2VzIHRvIDAuwqAgTm90ZSBhbGwgY2hlY2tzCj4gPiA+
IG9mCj4gPiA+IHRoYXQgZmxhZwo+ID4gPiB3b3VsZCBuZWVkIHRvIGJlIGRvbmUgdW5kZXIgdGhl
IGxvY2sgYXMgd2VsbC4KPiA+ID4gwqAgCj4gPiAKPiA+IElzIHRoZXJlIGFueSB3YXkgdG8gZW5h
YmxlIGEgYnVmZmVyIG1vcmUgdGhhbiBvbmNlPyBPdGhlcndpc2UgSSdtCj4gPiBub3QKPiA+IHN1
cmUgd2UgcmVhbGx5IG5lZWQgYSByZWZjb3VudC4uLiBBbnkgd2F5cywgeW91ciBiZWxvdyBhcHBy
b2FjaAo+ID4gbG9va3MKPiA+IGdvb2QgdG8gbWUgYW5kIHN1cmVseSBlYXNpZXIuCj4gCj4gSW5k
ZWVkIGNhbiBvbmx5IGhhdmUgdGhlIGJ1ZmZlciBlbmFibGVkIG9uY2UsIGJ1dCB0aGVyZSBtYXkg
YmUgYSByYWNlCj4gd2l0aCB0aGUgZGlzYWJsZSBvZiB0aGUgYnVmZmVyIGFuZCB0aGlzIHBhdGgu
IEhlbmNlIG5lZWQgYSByZWYgY291bnQKPiB0byBkZXRlY3Qgd2hlbiB0aGUgY291bnQgZ29lcyB0
byB6ZXJvLCB3aGF0IGV2ZXIgdGhlIHJlYXNvbi4KPiBBIGZsYWcgb25seSBjb3ZlcnMgb25lIHNp
ZGUgb2YgdGhlIHJhY2UuCj4gCj4gPiA+IApTdXJlLCBidXQgSSB3b3VsZCAic2VjdXJlIiBpdCB3
aXRoIHRoZSBzYW1lIGxvY2sgb24gJ2RhdGEtPmxvY2snIGFuZAp0aGUgZmxhZyBzZXR0aW5nIHdv
dWxkIGJlIG9idmlvdXNseSB1bmRlciB0aGF0IGxvY2sgKHNhbWUgb24gdGhlCnBvc3RlbmFibGUg
c2lkZSBvZiB0aGluZ3MpLiBJTU8sIEkgZG9uJ3QgdGhpbmsgd2UgbmVlZCB0byB0aGF0IGZhciBh
cwp1c2luZyByZWZjb3VudHMgaW4gaGVyZS4gQW55d2F5cywgSSB3aWxsIGdpdmUgYSB0cnkgdG8g
dGhlIHN1Z2dlc3Rpb24KeW91IG1hZGUgaW4gdGhlIG90aGVyIHBhdGNoLgoKLSBOdW5vIFPDoQo+
ID4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
