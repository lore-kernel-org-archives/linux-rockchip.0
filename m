Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26699C32771
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Sep 2022 11:23:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SyIWO50PyMlqjiiNMS62cyKDkxx/BH69Q9uLNyLHv7c=; b=QYyjTJ5uhKRuqy
	7BsY6Cl7I7GOooBmkMSCW7N8Ml7WVV7WRq3059ZGd0hGc42d1344HQLu1wzE210KE9Ic1zVPKaj7u
	gki3kS8CRDaojXOAKpoQOzDBFWNnrSazb3d0RUQ1fIu3mrT0STYNQ00NYVB3U4nSysKmRPqUimy7F
	GRJLcUQSKKYc+P/CSbftlj6J8JmmTdGWz5u/gXzD7v6YxLx0YR2IwSF2l5kLAZNADZiO1uah07Jm0
	aU/Dvae7x9VuRHJ8jOpIEtDgjQ+u8RBbKzPVqAU0Wogq9W6tEmBIHdPL0rfaUwofB52nY7QKU7k+c
	N/xH5p7iKB5MjmqWkQ0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocmCJ-004WKC-97; Mon, 26 Sep 2022 11:22:51 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocmC6-004WGZ-Kp; Mon, 26 Sep 2022 11:22:40 +0000
Received: by mail-wr1-x435.google.com with SMTP id bq9so9721780wrb.4;
        Mon, 26 Sep 2022 04:22:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date;
        bh=r9jbf2t4S9tfURAjz1LmPK9yTlvdF5XEAfpfFLoq91g=;
        b=YfWWB6jwsa146FgEmiw1LAreVICf7pG/LuZYNZyO8Yeqx9TvglWFBtstO4fVCzIm+S
         gT+nqamb/MOOovo+1Vrhg+FJOjO1N+TiyYMhvQ0D6ssy9DiQ6oCGwUurquJbn548m5bT
         ZmRHU0m2znfxn2L1F+cSb/Ry5KCuZOLQZt0JUwAwN5PaISAN5DHFEZFv77LaLlgzlKMh
         jY/LQregakItbUefyKj3joTpnep7r8XKRIErxVu5JHHT/iprq/rc5g/VrlSsdxwASg21
         3uRWxmuoxUOlEWcabQss1ltdyT6BNqhUcBSFKdolG+ItRRaO1oT+TZj50xtJHMBps7en
         66DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date;
        bh=r9jbf2t4S9tfURAjz1LmPK9yTlvdF5XEAfpfFLoq91g=;
        b=KgaMzMSWXht3RGPqxYhrwZvDUWN/q0HlmwLFYigHzRyPr2ddI7LlGtaFxsrOppALF3
         a4ZU+jeVyXasm/1sAAWlzzJqPKPxa5SPp0cdMz9n6lPtwAxTryHpojq0bnh2RJTxOSXO
         4ZKphcOukwNE7X83nu1x7uZd6EiLIUdMLwQK7fokl94GjTs26jqhVZMOweaIg+kuYEvw
         9Nb1bkCFC3Waahw1NtgmctBBCZMuYY5ZtppHF/+WY2z3eb2uDczOs0DfUBXVGBEMZQL/
         lGXA/gZBKedLlM1uLlYN85dZbKdmhXVKcxKxA6x7GGcRDFx2mX8mvIerttHJK7nywjN3
         gwZA==
X-Gm-Message-State: ACrzQf0ZrxoXJh0L/GIYD+wy+JQXfloXSkdfKdnUw8/WwfScsEWTGwWV
	3pPAyQYBdCZETxJp79IPjkw=
X-Google-Smtp-Source: AMsMyM40HEGZmtkeEurcW22ynbOfybXevUnsfX8YnESjzb7cH3kjC5R5+hHsmLEsw2JrV8GryQWJhQ==
X-Received: by 2002:a5d:59a7:0:b0:22a:47e3:a1b with SMTP id p7-20020a5d59a7000000b0022a47e30a1bmr12882406wrr.319.1664191355750;
        Mon, 26 Sep 2022 04:22:35 -0700 (PDT)
Received: from ?IPv6:2001:a61:2b2f:601:e80a:12c:dd2e:47c1? ([2001:a61:2b2f:601:e80a:12c:dd2e:47c1])
        by smtp.gmail.com with ESMTPSA id f13-20020a05600c4e8d00b003b33de17577sm12471327wmq.13.2022.09.26.04.22.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Sep 2022 04:22:35 -0700 (PDT)
Message-ID: <571f1608ebbe23d7223ce168872d1df4a3b79ad3.camel@gmail.com>
Subject: Re: [PATCH 02/15] iio: adc: ad799x: do not use internal iio_dev lock
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>, Nuno =?ISO-8859-1?Q?S=E1?=
	 <nuno.sa@analog.com>
Cc: linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,  linux-amlogic@lists.infradead.org,
 linux-imx@nxp.com, linux-iio@vger.kernel.org,  Chunyan Zhang
 <zhang.lyra@gmail.com>, Michael Hennerich <Michael.Hennerich@analog.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Sascha Hauer
 <s.hauer@pengutronix.de>,  Cixi Geng <cixi.geng1@unisoc.com>, Kevin Hilman
 <khilman@baylibre.com>, Vladimir Zapolskiy <vz@mleia.com>, Pengutronix
 Kernel Team <kernel@pengutronix.de>, Alexandru Ardelean
 <aardelean@deviqon.com>, Fabio Estevam <festevam@gmail.com>, Andriy
 Tryshnivskyy <andriy.tryshnivskyy@opensynergy.com>, Haibo Chen
 <haibo.chen@nxp.com>,  Shawn Guo <shawnguo@kernel.org>, Hans de Goede
 <hdegoede@redhat.com>, Miquel Raynal <miquel.raynal@bootlin.com>, Jerome
 Brunet <jbrunet@baylibre.com>, Heiko Stuebner <heiko@sntech.de>, Florian
 Boor <florian.boor@kernelconcepts.de>, Ciprian Regus
 <ciprian.regus@analog.com>, Lars-Peter Clausen <lars@metafoo.de>, Andy
 Shevchenko <andy.shevchenko@gmail.com>, Neil Armstrong
 <narmstrong@baylibre.com>, Baolin Wang <baolin.wang@linux.alibaba.com>,
 Jyoti Bhayana <jbhayana@google.com>,  Chen-Yu Tsai <wens@csie.org>, Orson
 Zhai <orsonzhai@gmail.com>
Date: Mon, 26 Sep 2022 13:22:33 +0200
In-Reply-To: <20220924154517.6672e964@jic23-huawei>
References: <20220920112821.975359-1-nuno.sa@analog.com>
	 <20220920112821.975359-3-nuno.sa@analog.com>
	 <20220924154517.6672e964@jic23-huawei>
User-Agent: Evolution 3.42.4 (3.42.4-2.fc35) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_042238_703968_5C0661A7 
X-CRM114-Status: GOOD (  33.28  )
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

T24gU2F0LCAyMDIyLTA5LTI0IGF0IDE1OjQ1ICswMTAwLCBKb25hdGhhbiBDYW1lcm9uIHdyb3Rl
Ogo+IE9uIFR1ZSwgMjAgU2VwIDIwMjIgMTM6Mjg6MDggKzAyMDAKPiBOdW5vIFPDoSA8bnVuby5z
YUBhbmFsb2cuY29tPiB3cm90ZToKPiAKPiA+ICdtbG9jaycgd2FzIGJlaW5nIGdyYWJiZWQgd2hl
biBzZXR0aW5nIHRoZSBkZXZpY2UgZnJlcXVlbmN5LiBJbgo+ID4gb3JkZXIgdG8KPiA+IG5vdCBp
bnRyb2R1Y2UgYW55IGZ1bmN0aW9uYWwgY2hhbmdlIGEgbmV3IGxvY2sgaXMgYWRkZWQuIFdpdGgg
dGhhdAo+ID4gaW4KPiA+IG1pbmQsIHRoZSBsb2NrIGFsc28gbmVlZHMgdG8gYmUgZ3JhYmJlZCBp
biB0aGUgcGxhY2VzIHdoZXJlICdtbG9jaycKPiA+IGlzLgo+IAo+IFRoZSB1c2FnZSBpbiBoZXJl
IGlzIGFuIGV4YW1wbGUgb2Ygd2h5IHdlIG9yaWdpbmFsbHkgZGVjaWRlZCB0byB0YWtlCj4gbWxv
Y2sKPiBwcml2YXRlLi4uwqAgQW5ub3lpbmcgaGFyZCB0byByZWFzb24gYWJvdXQuwqAgT25lIGtl
eSB0aGluZyB0aGlzCj4gZGVzY3JpcHRpb24KPiBkb2Vzbid0IG1lbnRpb24gaXMgcHJvdGVjdGlv
biBvZiBzdC0+Y29uZmlnIHZzIGRldmljZSBzdGF0ZSBhbmQgSQo+IHRoaW5rCj4gdGhlIG9yaWdp
bmFsIHVzYWdlIG9mIG1sb2NrIGlzIHBhcnRseSBpbnRlbmRlZCB0byBwcm90ZWN0IHRoYXQuCj4g
Cj4gVXBzaG90IGlzIEknbSBub3QgY29uZmlkZW50IGVub3VnaCBvbiB0aGlzIG9uZSB0byBiZSBo
YXBweSB0YWtpbmcgaXQKPiB3aXRob3V0Cj4gbW9yZSBoZWFkIHNjcmF0Y2hpbmcgb3Igc29tZSBy
ZXZpZXcgZnJvbSBvdGhlcnMhCj4gCgpZZWFoLCB0aGlzIG9uZSBpcyBvZGQgZW5vdWdoLi4uCgo+
ID4gCj4gPiBPbiB0aGUgb3RoZXIgcGxhY2VzIHRoZSBsb2NrIHdhcyBiZWluZyB1c2VkLCB3ZSBj
YW4ganVzdCBkcm9wCj4gPiBpdCBzaW5jZSB3ZSBhcmUgb25seSBkb2luZyBvbmUgaTJjIGJ1cyBy
ZWFkL3dyaXRlIHdoaWNoIGlzIGFscmVhZHkKPiA+IHNhZmUuCj4gPiAKPiA+IFNpZ25lZC1vZmYt
Ynk6IE51bm8gU8OhIDxudW5vLnNhQGFuYWxvZy5jb20+Cj4gCj4gPiAtLS0KPiA+IMKgZHJpdmVy
cy9paW8vYWRjL2FkNzk5eC5jIHwgMTggKysrKysrKysrKysrLS0tLS0tCj4gPiDCoDEgZmlsZSBj
aGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9paW8vYWRjL2FkNzk5eC5jIGIvZHJpdmVycy9paW8vYWRjL2FkNzk5eC5j
Cj4gPiBpbmRleCAyNjJiZDc2NjViMzMuLjgzOGJhOGU3N2RlMSAxMDA2NDQKPiA+IC0tLSBhL2Ry
aXZlcnMvaWlvL2FkYy9hZDc5OXguYwo+ID4gKysrIGIvZHJpdmVycy9paW8vYWRjL2FkNzk5eC5j
Cj4gPiBAQCAtMjgsNiArMjgsNyBAQAo+ID4gwqAjaW5jbHVkZSA8bGludXgvdHlwZXMuaD4KPiA+
IMKgI2luY2x1ZGUgPGxpbnV4L2Vyci5oPgo+ID4gwqAjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+
Cj4gPiArI2luY2x1ZGUgPGxpbnV4L211dGV4Lmg+Cj4gPiDCoCNpbmNsdWRlIDxsaW51eC9iaXRv
cHMuaD4KPiA+IMKgCj4gPiDCoCNpbmNsdWRlIDxsaW51eC9paW8vaWlvLmg+Cj4gPiBAQCAtMTI1
LDYgKzEyNiw4IEBAIHN0cnVjdCBhZDc5OXhfc3RhdGUgewo+ID4gwqDCoMKgwqDCoMKgwqDCoGNv
bnN0IHN0cnVjdCBhZDc5OXhfY2hpcF9jb25maWfCoCpjaGlwX2NvbmZpZzsKPiA+IMKgwqDCoMKg
wqDCoMKgwqBzdHJ1Y3QgcmVndWxhdG9ywqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAq
cmVnOwo+ID4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCByZWd1bGF0b3LCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCp2cmVmOwo+ID4gK8KgwqDCoMKgwqDCoMKgLyogbG9jayB0byBwcm90
ZWN0IGFnYWluc3QgbXVsdGlwbGUgYWNjZXNzIHRvIHRoZSBkZXZpY2UgKi8KPiA+ICvCoMKgwqDC
oMKgwqDCoHN0cnVjdCBtdXRleMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBsb2NrOwo+ID4gwqDCoMKgwqDCoMKgwqDCoHVuc2lnbmVkwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWQ7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgdTE2wqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNv
bmZpZzsKPiA+IMKgCj4gPiBAQCAtMjkwLDcgKzI5Myw5IEBAIHN0YXRpYyBpbnQgYWQ3OTl4X3Jl
YWRfcmF3KHN0cnVjdCBpaW9fZGV2Cj4gPiAqaW5kaW9fZGV2LAo+ID4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqByZXQgPSBpaW9fZGV2aWNlX2NsYWltX2RpcmVjdF9tb2RlKGluZGlv
X2Rldik7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmIChyZXQpCj4gPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gcmV0
Owo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoG11dGV4X2xvY2soJnN0LT5sb2Nr
KTsKPiAKPiBJZiB3ZSBjbGFpbSBkaXJlY3QgbW9kZSBmb3IgdGhlIGZyZXF1ZW5jeSB3cml0aW5n
IHdlJ2xsIGF2b2lkIHJhY2luZwo+IHdpdGgKPiBidWZmZXJzIGJlaW5nIGVuYWJsZWQgb3Igb3Ro
ZXIgc3lzZnMgYWNjZXNzZXMgdGhhdCBhcmUgY2xhaW1pbmcKPiBkaXJlY3QgbW9kZS4KPiAKCkFz
IHlvdSBzdGF0ZWQgaW4gc29tZSBvdGhlciBwYXRjaCwgY2hhbmdpbmcgdGhlIGZyZXF1ZW5jeSB3
aGlsZQpidWZmZXJpbmcgaXMgcHJvYmFibHkgbm90IGEgZ29vZCBpZGVhIChwb3NzaWJsZSBpbiBz
b21lIGRldmljZXMgdGhvdWdoKQpidXQgdGhlIG1haW4gcmVhc29uIEkgaGF2ZW4ndCB1c2VkIHRo
ZSBjbGFpbSBkaXJlY3QgYXBwcm9hY2ggd2FzCmJlY2F1c2UgaXQgd291bGQgY2hhbmdlIGJlaGF2
aW9yIGFuZCBjb3VsZCwgaW4gdGhlb3J5LCBicmVhayBzb21lCnVzZXJzcGFjZSBhcHBzLi4uCgo+
IFRoYXQgbWFkZSBtZSB0aGluayB3ZSBjb3VsZCBkcm9wIHRoZSBsb2NrLCBidXQgdGhlIGFyZ3Vt
ZW50IGdldHMKPiB0cmlja2VyCj4gYXJvdW5kIHN0LT5jb25maWcgd2hpY2ggaXMgdXNlZCBpbiBh
ZDc5OXhfc2Nhbl9kaXJlY3QoKSBhbmQgbW9kaWZpZWQKPiBpbiB3cml0ZV9ldmVudF9jb25maWco
KSBpbiBhIGZhc2hpb24gdGhhdCBtZWFucyBpdCBjb3VsZCBiZSBvdXQgb2YKPiBzeW5jLgo+IEkn
bSBub3Qgc3VyZSB0aGF0IG1hdHRlcnMgYnV0IGl0IGlzIGdldHRpbmcgaGFyZCB0byByZWFzb24g
YWJvdXQuCj4gCgpUaGUgd3JpdGVfZXZlbnRfY29uZmlnKCkgYWxzbyBjb3VsZCB1c2Ugc29tZSBp
bXByb3ZlbWVudC4uLiBOb3RlIHRoYXQKc3QtPmNvbmZpZyBpcyBhbHdheXMgd3JpdHRlbiBldmVu
IGlmIGFkNzk5eF93cml0ZV9jb25maWcoKSBmYWlscyAod2hpY2gKZm9yIHNvbWUgZGV2aWNlcyBp
cyBwb3NzaWJsZSkuIEkga25vdyB0aGF0IGZvciBhbiBpMmMgd3JpdGUgdG8gZmFpbAp0aGF0IHBy
b2JhYmx5IG1lYW5zIHdlIGhhdmUgYmlnZ2VyIGlzc3VlcyBidXQgdGhhdCBkb2VzIG5vdCBtYWtl
IGl0CmNvcnJlY3QgOikuIFdlIHNob3VsZCBvbmx5IHVwZGF0ZSB0aGUgdmFyaWFibGUgYWZ0ZXIg
ZG9pbmcgdGhlIGFjdHVhbApjb25maWd1cmF0aW9uLi4uCgotIE51bm8gU8OhCj4gCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
