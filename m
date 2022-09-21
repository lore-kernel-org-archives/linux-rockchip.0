Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FD98ECAAD8
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Sep 2022 09:10:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bGNFDl8eKtdOsvH9FAlNoT2BOulnFbPU8CSO55BuuQQ=; b=dK7lLP2+Q3QCCC
	kVlMi1SeTRegjlaHRj5/QAeOfr+i3FedB3VUrPVeOq6ESdLq3Kr+44Pnx0gyspRnSeClhXbN9Xfav
	ZW+bh2T0UE8EP77hdRAW+kr+7E50XF5LTjg51eaDw3c2/GDLQfYSv16iTSEiaZUAq3ubv0/fEbbLp
	EF1STvjzkh8LzAFGaUs0ROCgMmkf00YBtSXknPciEhiyGwgMWn+5QyeUY6qnJl601ze1IzIQstsDU
	vw9wT61hIEVOHh0rLIvLylnvISW6hMuU5tsgaUZM9REKG9MOTDfAWY+MeutkTMAoGS1KOIBSN/Az2
	OYzDarVZt0U6chKBWApA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oavkN-00AGTV-0a; Wed, 21 Sep 2022 09:10:23 +0000
Received: from mail-qk1-x734.google.com ([2607:f8b0:4864:20::734])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oavgj-00AENM-VR; Wed, 21 Sep 2022 09:06:39 +0000
Received: by mail-qk1-x734.google.com with SMTP id x18so3500311qkn.6;
        Wed, 21 Sep 2022 02:06:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date;
        bh=9yV4LRGhFt6LFezVpqUP0yfiNpoAntmY3wUwChWwW9U=;
        b=bGHmKdAYmokUvBZFszMEhy8CAuunlB33rKcKvqPQ5aT59FnJC0V3Koq5360OvzZy8S
         vwsVdqwDE0mUQHBbxEgdIa5h5MG4gqYRVHXRwO7EP3CvjGtqvoGt+kBG05skb953IjX0
         4OMU7wsjKRXvq5RvQShmO6VPyc0Nxrs8j78GYrtQLJCIDaDrPjdyYHCEkthIkG/9+yWb
         ANq3vYIyHIyhOWvC/NE3TNP5Myfa4FxLYcyaByyh6/4gmAAIO0c5T2SXFwAwN7sogjan
         JKEyoMgE+YfQmPEeuO4R9lVsi2zRPbm850gBoLNXNFC/69oo9PNswP56Xvu2HdcuLTsT
         hUHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date;
        bh=9yV4LRGhFt6LFezVpqUP0yfiNpoAntmY3wUwChWwW9U=;
        b=SppqKAg3BFYIizzDL1QvLx87Ru7nfqgJUI2aRaaGSm1/pgO+98qQiBM1IFThzY9WPh
         psGYgRlgu+DtvzG6fOT/EjEsxDUW3+742MqqxeNIXsxbD+hJ25q5QycxOF/zEBaG4sqH
         SwJeL5sbY2jqj61F6oMZnmP1m2Na0RBs7AffORDpP4P6oYj6RgVF+YBSL6L5TyehOZOL
         om1QL3Ji5SsGkbhMu0EvCmY98NQ2LKp+ExZb7TPy7I/niJt4u86je7RzsCbsbNltVJed
         Wnmof8xQOpg8KsDy50Dl9h4G9t+/3zUfJ0GeQ3OePPU2xSL9OnOStOwtkxuoNKqStoHF
         v6KA==
X-Gm-Message-State: ACrzQf0YbaAtDqDGjgjQWqQL0MVQQ56GRe9FNWkWYtEa9NVN4dQXZ2d1
	U5hYjGwMXuMnEZFgcyMVCPw=
X-Google-Smtp-Source: AMsMyM4dQV8egMsweegXJYpUsa6C3UbUT/6NomoUjurqa142TdTcGXBwyUnxuUmBXYVZPvh5vJVp4g==
X-Received: by 2002:a05:620a:ceb:b0:6cf:468f:ae66 with SMTP id c11-20020a05620a0ceb00b006cf468fae66mr3349088qkj.591.1663751196479;
        Wed, 21 Sep 2022 02:06:36 -0700 (PDT)
Received: from p200300f6ef036f005de6a4d0d791ed01.dip0.t-ipconnect.de (p200300f6ef036f005de6a4d0d791ed01.dip0.t-ipconnect.de. [2003:f6:ef03:6f00:5de6:a4d0:d791:ed01])
        by smtp.gmail.com with ESMTPSA id ay43-20020a05620a17ab00b006ce76811a07sm1553998qkb.75.2022.09.21.02.06.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Sep 2022 02:06:36 -0700 (PDT)
Message-ID: <c487df06699aa53292909ff6be2b07de324793f4.camel@gmail.com>
Subject: Re: [PATCH 03/15] iio: adc: axp288_adc: do not use internal iio_dev
 lock
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>, "Sa, Nuno"
 <Nuno.Sa@analog.com>
Cc: "linux-arm-kernel@lists.infradead.org"
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
 <hdegoede@redhat.com>,  Miquel Raynal <miquel.raynal@bootlin.com>, Jerome
 Brunet <jbrunet@baylibre.com>, Heiko Stuebner <heiko@sntech.de>, Florian
 Boor <florian.boor@kernelconcepts.de>, "Regus, Ciprian"
 <Ciprian.Regus@analog.com>, Lars-Peter Clausen <lars@metafoo.de>, Jonathan
 Cameron <jic23@kernel.org>, Neil Armstrong <narmstrong@baylibre.com>,
 Baolin Wang <baolin.wang@linux.alibaba.com>, Jyoti Bhayana
 <jbhayana@google.com>,  Chen-Yu Tsai <wens@csie.org>, Orson Zhai
 <orsonzhai@gmail.com>
Date: Wed, 21 Sep 2022 11:07:50 +0200
In-Reply-To: <CAHp75VdT0a2DevybjT4HN8xGFrKzrR0sPXA6P89xnBg1xcqbQA@mail.gmail.com>
References: <20220920112821.975359-1-nuno.sa@analog.com>
	 <20220920112821.975359-4-nuno.sa@analog.com>
	 <CAHp75VeA48FbKy2uUjW4T19=Vn-UEznT7prkXZq4sdZ4Q9o-YA@mail.gmail.com>
	 <SJ0PR03MB6778FFE254E9DDC103258FE8994C9@SJ0PR03MB6778.namprd03.prod.outlook.com>
	 <CAHp75VdVbkXCC1PpT4h-+4HHpZX-zK34xH9dVG8vGcpQhXaQHQ@mail.gmail.com>
	 <CAHp75VfdUOTd9tRXdTVq_prNf_T2=iQ4tEjusHC=gXDZvb3Qeg@mail.gmail.com>
	 <SJ0PR03MB6778EEF81693C026CE131B49994C9@SJ0PR03MB6778.namprd03.prod.outlook.com>
	 <CAHp75VdT0a2DevybjT4HN8xGFrKzrR0sPXA6P89xnBg1xcqbQA@mail.gmail.com>
User-Agent: Evolution 3.44.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_020638_173791_D5869DF7 
X-CRM114-Status: GOOD (  24.67  )
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

T24gVHVlLCAyMDIyLTA5LTIwIGF0IDE4OjEyICswMzAwLCBBbmR5IFNoZXZjaGVua28gd3JvdGU6
Cj4gT24gVHVlLCBTZXAgMjAsIDIwMjIgYXQgNDo0NiBQTSBTYSwgTnVubyA8TnVuby5TYUBhbmFs
b2cuY29tPiB3cm90ZToKPiA+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiA+ID4gRnJv
bTogQW5keSBTaGV2Y2hlbmtvIDxhbmR5LnNoZXZjaGVua29AZ21haWwuY29tPgo+ID4gPiBTZW50
OiBUdWVzZGF5LCBTZXB0ZW1iZXIgMjAsIDIwMjIgMzozOSBQTQo+ID4gPiBPbiBUdWUsIFNlcCAy
MCwgMjAyMiBhdCA0OjM3IFBNIEFuZHkgU2hldmNoZW5rbwo+ID4gPiA8YW5keS5zaGV2Y2hlbmtv
QGdtYWlsLmNvbT4gd3JvdGU6Cj4gPiA+ID4gT24gVHVlLCBTZXAgMjAsIDIwMjIgYXQgNDoxOCBQ
TSBTYSwgTnVubyA8TnVuby5TYUBhbmFsb2cuY29tPgo+ID4gPiA+IHdyb3RlOgo+ID4gPiA+ID4g
PiBPbiBUdWUsIFNlcCAyMCwgMjAyMiBhdCAyOjI4IFBNIE51bm8gU8OhCj4gPiA+ID4gPiA+IDxu
dW5vLnNhQGFuYWxvZy5jb20+Cj4gPiA+IHdyb3RlOgo+ID4gPiAKPiA+ID4gLi4uCj4gPiA+IAo+
ID4gPiA+ID4gPiA+IMKgwqDCoMKgwqDCoMKgIGluZm8gPSBpaW9fcHJpdihpbmRpb19kZXYpOwo+
ID4gPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqAgbXV0ZXhfaW5pdCgmaW5mby0+bG9jayk7Cj4gPiA+
ID4gPiA+ID4gwqDCoMKgwqDCoMKgwqAgaW5mby0+aXJxID0gcGxhdGZvcm1fZ2V0X2lycShwZGV2
LCAwKTsKPiA+ID4gPiA+ID4gPiDCoMKgwqDCoMKgwqDCoCBpZiAoaW5mby0+aXJxIDwgMCkKPiA+
ID4gPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIGluZm8tPmly
cTsKPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IENvbnNpZGVyIGluaXRpYWxpemluZyBpdCBhcyBs
YXRlIGFzIHBvc3NpYmxlLCBsaWtlIGFmdGVyCj4gPiA+ID4gPiA+IElSUSByZXRyaWV2YWwKPiA+
ID4gPiA+ID4gaW4gdGhpcyBjb250ZXh0IChtYXliZSBldmVuIGRlZXBlciwgYnV0IG5vIGNvbnRl
eHQKPiA+ID4gPiA+ID4gYXZhaWxhYmxlKS4gRGl0dG8KPiA+ID4gPiA+ID4gZm9yIHRoZSByZXN0
IG9mIHRoZSBzZXJpZXMuCj4gPiA+ID4gPiAKPiA+ID4gPiA+IEFueSBzcGVjaWFsIHJlYXNvbiBm
b3IgaXQgKG1heWJlIHJlbGF0ZWQgdG8gbG9ja2RlcAo+ID4gPiA+ID4gOndvbmRlcmluZzogKSA/
IEp1c3QKPiA+ID4gPiA+IGN1cmlvdXMgYXMgSSBuZXZlciBub3RpY2VkIHN1Y2ggYSBwYXR0ZXJu
IHdoZW4gaW5pdGlhbGl6aW5nCj4gPiA+ID4gPiBtdXRleGVzLgo+ID4gPiA+IAo+ID4gPiA+IFll
cy4gTWljcm8tb3B0aW1pemF0aW9uIGJhc2VkIG9uIHRoZSBydWxlICJkb24ndCBjcmVhdGUgYQo+
ID4gPiA+IHJlc291cmNlIGluCj4gPiA+ID4gY2FzZSBvZiBrbm93biBlcnJvciIuCj4gPiA+ID4g
Cj4gPiA+ID4gT1RPSCwgeW91IGhhdmUgdG8gYmUgc3VyZSB0aGF0IHRoZSBtdXRleCAoYW5kIGdl
bmVyYWxseQo+ID4gPiA+IHNwZWFraW5nIGEKPiA+ID4gPiBsb2NraW5nKSBzaG91bGQgYmUgaW5p
dGlhbGl6ZWQgZWFybHkgZW5vdWdoLgo+ID4gCj4gPiBUeXBpY2FsbHkgbm90IHJlYWxseSBuZWVk
ZWQgZHVyaW5nIHByb2JlLi4uCj4gCj4gQWN0dWFsbHkgYXMgbG9uZyBhcyB5b3UgZXhwb3NlIHRo
ZSBBQkkgdG8gdGhlIHVzZXIgYW55dGhpbmcgY2FuCj4gaGFwcGVuLCBtZWFucyB0aGF0IHlvdXIg
Y29kZSBzaG91bGQgYmUgcmVhZHkgdG8gcmVjZWl2ZSB0aGUgcmVxdWVzdHMKPiBpbiBhbnkgcG9z
c2libGUgY2FsbGJhY2tzIC8gZmlsZSBvcHMuIFNhbWUgYXBwbGllcyB0byB0aGUgSVJRCj4gaGFu
ZGxlci4KPiBTbyBpdCdzIHZlcnkgaW1wb3J0YW50IHRvIGluaXRpYWxpemUgbG9ja2luZyBqdXN0
IGluIHRpbWUuIEhlbmNlIEkKPiBjYW4KPiBzYXkgdGhhdCAidHlwaWNhbGx5IGl0IG5lZWRzIHRv
IGJlIGNhcmVmdWxseSBwbGFjZWQiLgo+IAoKWWVzLCBJJ20gYXdhcmUgb2YgdGhhdC4uLiBGb3Ig
c29tZSByZWFzb24gSSBqdXN0IHRob3VnaHQgYWJvdXQgY29kZQpwYXRocyBkaXJlY3RseSBvbiBw
cm9iZS4gQW55d2F5cywgaG9wZWZ1bGx5IHRoZXNlIGRyaXZlcnMgbW9zdGx5IGRvIHRoZQpyaWdo
dCB0aGluZyBhbmQgcmVnaXN0ZXIgdGhlIElJTyBkZXZpY2UgYXMgbGF0ZSBhcyBwb3NzaWJsZSAo
aWRlYWxseQp0aGUgbGFzdCB0aGluZyB0byBiZSBkb25lKS4gVGhlIHNhbWUgZ29lcyBmb3IgSVJR
cyBhbmQgZm9yIElJTywgd2hlbgp1c2VkIGFzIHBhcnQgb2YgdHJpZ2dlcmVkIGJ1ZmZlcmluZywg
dGhlIGxvY2sgaXMgb2Z0ZW4gb25seSB1c2VkIGluIHRoZQp0cmlnZ2VyIGhhbmRsZXIgd2hpY2gg
bWVhbnMgaXQncyBvbmx5IHJlYWNoYWJsZSBhZnRlciB0aGUgQUJJIGlzCmV4cG9zZWQuLi4gCgot
IE51bm8gU8OhCj4gPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
