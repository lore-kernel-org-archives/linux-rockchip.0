Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 829CEC4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Oct 2022 07:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=us68znLIT4zRO2Fe1bQi/EToLQ6YrPT2/vYs3XODklI=; b=4bsnYJ1JRpTEN0
	dwjK6fcr2bhJ5ENfPvbgY8McHtndOBK+l/rROsolddlAPnaAgKO0uaET8hyrp4Xv1IuFtacG7aKvY
	nTZ5OlxQnPb6SuVQW5S2DDkQrwzFvjG4zrEcJinHWo3upVcDtp+oq1mUYIJb4IlktqJJcdT4ziJiU
	aT0CD13CYXXl1ZSfRP5S8wjFeisox2jreC3xcWOkgToD6OeAZBM6jOk046hdVI9HisDyiReNUlXyv
	undzlbIWL+XLjhkWrOpXc27PInsgUmsGOAzfBwrl95+d8CMqqTvwwGYw6pn1APagdGOhIXWnIQdMS
	eHTGpxU1Y88wEjOWIlfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojF3u-00DsJC-1D; Fri, 14 Oct 2022 07:24:54 +0000
Received: from mail-qt1-x82d.google.com ([2607:f8b0:4864:20::82d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojF3j-00DsHu-Bd; Fri, 14 Oct 2022 07:24:44 +0000
Received: by mail-qt1-x82d.google.com with SMTP id jr1so3197192qtb.0;
        Fri, 14 Oct 2022 00:24:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=guXsNvunppVc9WWPiCDXMbZ55lmfscZRL3+k5ViV9No=;
        b=oUsQIAOiDc9y41fuV+L7s+WM/p3Q61/2Dnxn688nE2CqTH0uCcstpSKfByFHA78F+d
         l0Jd7Ibdy+zlNJ9yeUlf4hH/SWERQ8sQgro+Og9GEKOHGUQngTHQ2WK1apmXfj7luXjT
         +kDSCGhGu+zDLhPTLA9zgsCRFVk2Jed+lW1baX+/+Td8OV+U/F63Cbdca8Ppv0QdLpuB
         n5suh65nbDD7VRWarfniOC/sOA0qSy/BV5iFa2tYc7Y56cWhnzmR41oa3Qb97AhZknUD
         wwmf8rEcni44ROfAJYeoJEOLJi6og1jxgMl2806+/aVLr5UpujCp42rxsno34UPDECIT
         TWIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=guXsNvunppVc9WWPiCDXMbZ55lmfscZRL3+k5ViV9No=;
        b=FmZ51zG0ywOQJQVjtC7Ggb7saHf+lsiJ1rTOJRaj5nWtBrhMGMWkPCvoI7jVFtrV4c
         W0cvatPx/vnbgWfCzeYdUhwVFcZaO+B615ZUiwQVTGdQKx9Ugd1UrwIgqWHM2QcvkN0+
         K7pYhcgPiin3JLMBFaHfMG9hyWqjm5HPi279WlbjjLdCqpNwqBTJP0VT4CZb2LFBj++8
         PPAnGIBSgv2gHJAz9KB4yboKT9hDzvWdnWm2COAr6klVyZXf1A5rMyiVYUqCSprEQ84E
         Bho8MBy0xU5U7leuucdQoAH0r1ADQtzEsyyzKifC+HKP7DKF3+/McURCaG1FAH06XPUD
         5wrg==
X-Gm-Message-State: ACrzQf1NnW3zhEXsrQG+KWccssiU6RjETxsPwulwCpTseMdfQ7pNj9yI
	0+I5cDaoAuiFSnjCqc8NLLM=
X-Google-Smtp-Source: AMsMyM7gMIH996fPil0I2eH6kEfzrcR7fJOfL5qMY+5BrnG0S7Swr4k4YGgxRpFyQLhQYDs/Z/bWVw==
X-Received: by 2002:ac8:5cc3:0:b0:35c:e1b3:78c5 with SMTP id s3-20020ac85cc3000000b0035ce1b378c5mr3078874qta.228.1665732280128;
        Fri, 14 Oct 2022 00:24:40 -0700 (PDT)
Received: from p200300f6ef036f005de6a4d0d791ed01.dip0.t-ipconnect.de (p200300f6ef036f005de6a4d0d791ed01.dip0.t-ipconnect.de. [2003:f6:ef03:6f00:5de6:a4d0:d791:ed01])
        by smtp.gmail.com with ESMTPSA id bs10-20020a05620a470a00b006b615cd8c13sm1711743qkb.106.2022.10.14.00.24.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Oct 2022 00:24:39 -0700 (PDT)
Message-ID: <fccf3f41b32e881eb79ee78852fa40a62b134c00.camel@gmail.com>
Subject: Re: [PATCH v3 3/4] iio: health: max30102: do not use internal
 iio_dev lock
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>, Nuno =?ISO-8859-1?Q?S=E1?=
	 <nuno.sa@analog.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-iio@vger.kernel.org, 
 linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-imx@nxp.com, Chen-Yu Tsai <wens@csie.org>, Andriy Tryshnivskyy
 <andriy.tryshnivskyy@opensynergy.com>, Ciprian Regus
 <ciprian.regus@analog.com>,  Vladimir Zapolskiy <vz@mleia.com>, Cixi Geng
 <cixi.geng1@unisoc.com>, Neil Armstrong <narmstrong@baylibre.com>, Sascha
 Hauer <s.hauer@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>, Fabio
 Estevam <festevam@gmail.com>, Jerome Brunet <jbrunet@baylibre.com>,  Martin
 Blumenstingl <martin.blumenstingl@googlemail.com>, Pengutronix Kernel Team
 <kernel@pengutronix.de>, Baolin Wang <baolin.wang@linux.alibaba.com>, Hans
 de Goede <hdegoede@redhat.com>,  Alexandru Ardelean
 <aardelean@deviqon.com>, Michael Hennerich <Michael.Hennerich@analog.com>,
 Haibo Chen <haibo.chen@nxp.com>, Lars-Peter Clausen <lars@metafoo.de>,
 Jyoti Bhayana <jbhayana@google.com>, Jonathan Cameron <jic23@kernel.org>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Florian Boor
 <florian.boor@kernelconcepts.de>,  Chunyan Zhang <zhang.lyra@gmail.com>,
 Orson Zhai <orsonzhai@gmail.com>, Shawn Guo <shawnguo@kernel.org>,  Kevin
 Hilman <khilman@baylibre.com>
Date: Fri, 14 Oct 2022 09:25:59 +0200
In-Reply-To: <20221012204556.7648df2e@xps-13>
References: <20221012151620.1725215-1-nuno.sa@analog.com>
	 <20221012151620.1725215-4-nuno.sa@analog.com>
	 <20221012204556.7648df2e@xps-13>
User-Agent: Evolution 3.44.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221014_002443_417650_0BE844B6 
X-CRM114-Status: GOOD (  24.40  )
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

T24gV2VkLCAyMDIyLTEwLTEyIGF0IDIwOjQ1ICswMjAwLCBNaXF1ZWwgUmF5bmFsIHdyb3RlOgo+
IEhpIE51bm8sCj4gCj4gbnVuby5zYUBhbmFsb2cuY29twqB3cm90ZSBvbiBXZWQsIDEyIE9jdCAy
MDIyIDE3OjE2OjE5ICswMjAwOgo+IAo+ID4gVGhlIHBhdHRlcm4gdXNlZCBpbiB0aGlzIGRldmlj
ZSBkb2VzIG5vdCBxdWl0ZSBmaXQgaW4gdGhlCj4gPiBpaW9fZGV2aWNlX2NsYWltX2RpcmVjdF9t
b2RlKCkgdHlwaWNhbCB1c2FnZS4gSW4gdGhpcyBjYXNlLCB3ZSB3YW50Cj4gPiB0bwo+ID4ga25v
dyBpZiB3ZSBhcmUgaW4gYnVmZmVyZWQgbW9kZSBvciBub3QgdG8ga25vdyBpZiB0aGUgZGV2aWNl
IGlzCj4gPiBwb3dlcmVkCj4gPiAoYnVmZmVyIG1vZGUpIG9yIG5vdC4gQW5kIGRlcGVuZGluZyBv
biB0aGF0IG1heDMwMTAyX2dldF90ZW1wKCkKPiA+IHdpbGwKPiA+IHBvd2VyIG9uIHRoZSBkZXZp
Y2UgaWYgbmVlZGVkLiBIZW5jZSwgaW4gb3JkZXIgdG8ga2VlcCB0aGUgc2FtZQo+ID4gZnVuY3Rp
b25hbGl0eSwgd2UgdHJ5IHRvOgo+ID4gCj4gPiAxLiBDbGFpbSBCdWZmZXJlZCBtb2RlOwo+ID4g
MjogSWYgMSkgc3VjY2VlZHMgY2FsbCBtYXgzMDEwMl9nZXRfdGVtcCgpIHdpdGhvdXQgcG93ZXJp
bmcgb24gdGhlCj4gPiDCoMKgIGRldmljZTsKPiA+IDM6IFJlbGVhc2UgQnVmZmVyZWQgbW9kZTsK
PiA+IDQ6IElmIDEpIGZhaWxzLCBDbGFpbSBEaXJlY3QgbW9kZTsKPiA+IDU6IElmIDQpIHN1Y2Nl
ZWRzIGNhbGwgbWF4MzAxMDJfZ2V0X3RlbXAoKSB3aXRoIHBvd2VyaW5nIG9uIHRoZQo+ID4gZGV2
aWNlOwo+ID4gNjogUmVsZWFzZSBEaXJlY3QgbW9kZTsKPiA+IDc6IElmIDQpIGZhaWxzLCBnb3Rv
IHRvIDEpIGFuZCB0cnkgYWdhaW4uCj4gPiAKPiA+IFRoaXMgZGFuY2UgYmV0d2VlbiBidWZmZXJl
ZCBhbmQgZGlyZWN0IG1vZGUgaXMgbm90IHBhcnRpY3VsYXJseQo+ID4gcHJldHR5Cj4gPiAoYXMg
d2VsbCBhcyB0aGUgbG9vcCBpbnRyb2R1Y2VkIGJ5IHRoZSBnb3RvIHN0YXRlbWVudCkgYnV0IGl0
IGRvZXMKPiA+IGFsbG93Cj4gPiB1cyB0byBnZXQgcmlkIG9mIHRoZSBtbG9jayB1c2FnZSB3aGls
ZSBrZWVwaW5nIHRoZSBzYW1lIGJlaGF2aW9yLgo+IAo+IFdoYXQgYWJvdXQgYWRkaW5nIGEgVE9E
TyBjb21tZW50IHNheWluZyBzb21ldGhpbmcgbGlrZTogInRoaXMgY29tZXMKPiBmcm9tIHN0YXRp
YyBhbmFseXNpcyBhbmQgaGVscGVkIGRyb3BwaW5nIG1sb2NrIGFjY2VzcywgYnV0IHNvbWVvbmUK
PiB3aXRoCj4gdGhlIGRldmljZSBuZWVkcyB0byBmaWd1cmUgb3V0IGlmIHdlIGNhbiBzaW1wbGlm
eSB0aGlzIGRhbmNlIj8KPiBCZWNhdXNlCj4gdGhlIHJlYXNvbiBiZWhpbmQgYWxsIHRoaXMgaXMg
dGhhdCB3ZSBkb24ndCB3YW50IHRvIHJpc2sgYnJlYWtpbmcgdGhlCj4gZHJpdmVyLCBidXQgcGVy
aGFwcyBhIHNpbXBsZXIgYXBwcm9hY2ggd291bGQgd29yaywgcmlnaHQ/Cj4gCgpIaSBNaXF1ZWws
CgpBRkFJVSwgZWl0aGVyIHRoZSBkZXZpY2UgaXMgcG93ZXJlZCAod2hlbiBidWZmZXIgbW9kZSBl
bmFibGVkKSBhbmQgd2UKY2FuIGRvIHRoZSByZWFkaW5nIG9yIGl0J3Mgbm90IGFuZCB3ZSBuZWVk
IHRvIHBvd2VyIGl0IG9uL29mZgoibWFudWFsbHkiIHdoaWxlIG1ha2luZyBzdXJlIHdlIGRvbid0
IHJhY2UgYWdhaW5zdCBlbmFibGUvZGlzYWJsaW5nCmJ1ZmZlcnMuIFRoaXMgImRhbmNlIiBpcyBu
ZWVkZWQgbWFpbmx5IHRvIG1ha2Ugc3VyZSB0aGF0IHdlIGdyYWIKJ21sb2NrJyBvbmUgd2F5IG9y
IGFub3RoZXIuLi4gVGhlIG90aGVyIHdheSB3b3VsZCBiZSB0byB1c2Ugc29tZQpzcGVjaWZpYyBk
ZXZpY2UgbG9jayB0b2dldGhlciB3aXRoIGEgZmxhZyAoYXMgZGlzY3Vzc2VkKSBidXQgYXMKZGlz
Y3Vzc2VkIHdpdGggSm9uYXRoYW4gd2UgZGVjaWRlZCB0byBnbyBkb3duIHRoaXMgcm9hZC4uLiBT
bywKaG9uZXN0bHksIEkgZG9uJ3QgcmVhbGx5IHNlZSB0aGUgbmVjZXNzaXR5IG9mICJtYXJraW5n
IiB0aGlzIGNvZGUgd2l0aAphIFRPRE8gYnV0IG9mIGNvdXJzZSBpZiBzb21lb25lIGNvbWVzIGlu
IHdpdGggc29tZXRoaW5nIHNpbXBsZXIsIGdyZWF0CjopLgoKQW55d2F5cywgYXMgSSBzYWlkLCBJ
J20gbm90IHJlYWxseSBrZWVuIGluIHNwaW5uaW5nIGEgbmV3IHZlcnNpb24gdG8KYWRkIHRoaXMg
Y29tbWVudCBzbyBJIHdpbGwgZGVmZXIgdGhlIGRlY2lzaW9uIHRvIEpvbmF0aGFuIDopICAKClRo
YW5rcyBmb3IgdGhlIGhlbHAhCi0gTnVubyBTw6EKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
