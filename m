Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6E47CA0EF8
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Aug 2025 15:31:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MdRDGnZ1ihtShOah4jCcRT/uCmsZM5FhdZ+426ElkhQ=; b=ogMF/oTiA3lhUj
	DIAMSxsaa23DmGA8hrRQpcp88R4ibnQQRe6sNZJR9UcPhnpN1XEv5ni3rF0sPnw+CiyCHrSFd0MZU
	QcFqlwqud3gLcbBjHTMA3sINjuHvV4JudSxs4jFO8n13j172uB8xtqT2XX4O6F+X0GAZeAVM1oN3u
	FenkhkOgaFc2le9EffThKDnbhyeLKydzPuH0Yaj/At79Vr8cAHxDBTcYJ99XR/j0vPlGUke7hvwjo
	gW3lac4T/4i81U6mrQC7lWOS3W4V7NLGyDawWJQOYwYLj/lMK2HNHlGZ1iVRW0a/InwZOexAZvEWL
	LMDk8P27jy89Oqwxp/vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up7Fi-0000000HNeu-45sp;
	Thu, 21 Aug 2025 15:30:59 +0000
Received: from mail-qk1-x734.google.com ([2607:f8b0:4864:20::734])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up3oU-0000000GoEm-3UQj
	for linux-rockchip@lists.infradead.org;
	Thu, 21 Aug 2025 11:50:40 +0000
Received: by mail-qk1-x734.google.com with SMTP id af79cd13be357-7e8704b7a3dso85656785a.1
        for <linux-rockchip@lists.infradead.org>; Thu, 21 Aug 2025 04:50:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=melexis.com; s=google; t=1755777037; x=1756381837; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GI2XcWaMkZXf3XlixG2IPGL+6e9Vy4tl86zb1yjrRNY=;
        b=YrLJ11/xcen83cyqerh5e449b4Nob7At5hWJbVJD/agUb0Hu7btC7OXF83L1Icwoia
         WTxmTOd2MjAkPQgeKPEUSEcbkES9IAq7YbuKaGo/1wPi7x1Rl9VDcWmZB2UNA4LZpWsY
         cJnB9atHfnGHVeB0Zl6HjqBPIQ9VvBxTtm255ok+7N8uZ7kRhLj1pfdPpOQRuk8Y3+Re
         s1UiIVKjHvgMZ1Ba/2aLsFMvUBEBOA4snGfcwgdGkJjmErfrHWIxQsnRxPo+xF9jWzoQ
         ++Xr2Thigl6UwfBglJawkFOKOm6RnXuwx65+tGov2iGEMt5xCxXyAyyJ+4MxOLzVK6AM
         szjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755777037; x=1756381837;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GI2XcWaMkZXf3XlixG2IPGL+6e9Vy4tl86zb1yjrRNY=;
        b=n1XSACGPpCrnMH6T68Ia2KETggkqhkxTHSWNNOl9m4wBu5ZhlczMK8yWQfffQnIeS6
         /lBLAAJVWDh9MilRnCuPxLMSr71RJjFSxWOZcQkOHmYW1ybkEoF1o5A4aZX0QL+52mFy
         +4vrJlVQzbaZ+oDrZemDvCWdugZwyI/qIe1dCiTPS+VhyyLGC3Q/oduhB1Pd4grbtRHk
         /f92HstGqJ/tDXh4XR7PJlfKLHyVCuXwvBohTfj11MCHDU5HqE01IdqTPZ9mRv79xHZs
         2gyjOn2gFqpXjbTRUkMOinjbs65nfZvv7xAsv/u1IaZFl6NojW7zpiql21qDAQUzl2cn
         ydbQ==
X-Forwarded-Encrypted: i=1; AJvYcCUIU7KklbHPjSNo185PGrveWWQTpv4gH/fES6oY3cmFxrCyIS9L+K0yt7zMKOB+m7J0i/9DiTT4HmOxqvqY3w==@lists.infradead.org
X-Gm-Message-State: AOJu0YyAmRZfiyY3o2uve//zhCuXIbk5nbEDLK00DxhnHR2/r7hS660/
	WpBj77llC1eXnjJy1/7nfb3kK9jnPctmZORqyzctg7PK/TKJa1w+9XZKmnv5DGZ0MzAhikqlefu
	afjvtz7VqWbLEp/TQ4kovI+A88EbznCmK/RnQmbkQ
X-Gm-Gg: ASbGnctKgI+P8na/Bqtm3GQBTIjL3dsOfw8vWNoh8lSU2sx/m7or17DQzu4eoxWx9kZ
	B2uduhB48OtZ8UKFO84EkVLOCWrM05Bq0H9z1RbtQmCNFwNTFEa/Gq24ELBBtr2ElJfepJA1gbv
	7F/rXC/ASVLVUnakppV/QGKYZTiBOmMyYrQjvZ8dgULiTnjhQ1OGYwLRuf2kkShm2HV5o31Zoon
	bkKiJJXRQ==
X-Google-Smtp-Source: AGHT+IFXgN4z+V5r61maVUoVH7Q+4oGAXqZzaV+iRCJ0lg/aewM1N1+KmnykJmm4zHXRs1rwg//XUIeBfKZTRO4+v7g=
X-Received: by 2002:a05:620a:4548:b0:7ea:5aa:84fe with SMTP id
 af79cd13be357-7ea08c78a25mr207064785a.2.1755777037356; Thu, 21 Aug 2025
 04:50:37 -0700 (PDT)
MIME-Version: 1.0
References: <20250821080723.525379-1-zhao.xichao@vivo.com> <CAHp75VeDvK8cOr=rVGj_hVX5YzXM-UqrWRBgUrhiA1wzYn7C_w@mail.gmail.com>
In-Reply-To: <CAHp75VeDvK8cOr=rVGj_hVX5YzXM-UqrWRBgUrhiA1wzYn7C_w@mail.gmail.com>
From: Crt Mori <cmo@melexis.com>
Date: Thu, 21 Aug 2025 13:50:00 +0200
X-Gm-Features: Ac12FXxGX8W0hsOM6YtKDXVSOgl06ennUByjlBCRIy2fIDyre-p0gjpggdKZ2cA
Message-ID: <CAKv63uvfHYATd7ZFweZ0LMfTLt-idHVgYJqOV8PvzaNeigbt9w@mail.gmail.com>
Subject: Re: [PATCH 0/7] iio: Remove dev_err_probe() if error is -ENOMEM
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Xichao Zhao <zhao.xichao@vivo.com>, Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Andreas Klinger <ak@it-klinger.de>, Haibo Chen <haibo.chen@nxp.com>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Marius Cristea <marius.cristea@microchip.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Heiko Stuebner <heiko@sntech.de>, 
	Francesco Dolcini <francesco@dolcini.it>, 
	=?UTF-8?Q?Jo=C3=A3o_Paulo_Gon=C3=A7alves?= <jpaulo.silvagoncalves@gmail.com>, 
	Hugo Villeneuve <hvilleneuve@dimonoff.com>, Gustavo Silva <gustavograzs@gmail.com>, 
	Tomasz Duszynski <tomasz.duszynski@octakon.com>, Jagath Jog J <jagathjog1996@gmail.com>, 
	Per-Daniel Olsson <perdaniel.olsson@axis.com>, Waqar Hameed <waqar.hameed@axis.com>, 
	Yasin Lee <yasin.lee.x@gmail.com>, Julien Stephan <jstephan@baylibre.com>, 
	"open list:IIO SUBSYSTEM AND DRIVERS" <linux-iio@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	"open list:NXP i.MX 7D/6SX/6UL/93 AND VF610 ADC DRIVER" <imx@lists.linux.dev>, 
	"moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Amlogic Meson SoC support" <linux-amlogic@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_045038_870827_4A504030 
X-CRM114-Status: GOOD (  14.45  )
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

U29ycnkgZHVwbGljYXRlIC0gYXMgSSBjb21tZW50ZWQgb24gZHJpdmVyLgoKT24gVGh1LCAyMSBB
dWcgMjAyNSBhdCAxMDoxMywgQW5keSBTaGV2Y2hlbmtvIDxhbmR5LnNoZXZjaGVua29AZ21haWwu
Y29tPiB3cm90ZToKPgo+IE9uIFRodSwgQXVnIDIxLCAyMDI1IGF0IDExOjA34oCvQU0gWGljaGFv
IFpoYW8gPHpoYW8ueGljaGFvQHZpdm8uY29tPiB3cm90ZToKPiA+Cj4gPiBUaGUgZGV2X2Vycl9w
cm9iZSgpIGRvZXNuJ3QgZG8gYW55dGhpbmcgd2hlbiBlcnJvciBpcyAnLUVOT01FTScuCj4KPiB3
aGVuIHRoZSBlcnJvcgo+Cj4gPiBUaGVyZWZvcmUsIHJlbW92ZSB0aGUgdXNlbGVzcyBjYWxsIHRv
IGRldl9lcnJfcHJvYmUoKSwgYW5kIGp1c3QKPiA+IHJldHVybiB0aGUgdmFsdWUgaW5zdGVhZC4K
Pgo+IEluIGZhdm91ciBvZiB0aGlzIHNlcmllcywKPiBSZXZpZXdlZC1ieTogQW5keSBTaGV2Y2hl
bmtvIDxhbmR5QGtlcm5lbC5vcmc+Cj4gKHllcywgSSBpbmRlZWQgbG9va2VkIGF0IGFsbCBwYXRj
aGVzIGluIHRoaXMgb25lIDotKQo+CkkgYW0gbm90IHN1cmUgSSBhZ3JlZSB3aXRoIHRoaXMuIEl0
IHByb3ZpZGVzIGFuIGVycm9yIG1lc3NhZ2Ugd2l0aApyZWFzb24gYW5kIEkgdW5kZXJzdGFuZCB3
ZSB3YW50IGFzIGZldyBhcyBwb3NzaWJsZSwgYnV0IHRoaXMgd291bGQgYmUKYSB2YWxpZCByZW1h
cmsgaW5zaWRlIHRoZSBsb2dzLCBidXQgd2l0aG91dCBpdCB3ZSBvbmx5IGdldCBlcnJvciB2YWx1
ZQp0byBmaWd1cmUgb3V0IHdoZXJlIGl0IGNvbWVzIGZyb20/Cgo+IC0tCj4gV2l0aCBCZXN0IFJl
Z2FyZHMsCj4gQW5keSBTaGV2Y2hlbmtvCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
