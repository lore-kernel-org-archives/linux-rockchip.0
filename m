Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C87B3C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Oct 2022 08:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Ke7WlGT2FJ2hSGeeVvFw21FoVIprVHEMoP7jYaWsH4=; b=leXIwCtHHlxxnS
	B5yhVHCpK9rZDFNYVkHKhh5PMbS7MrDO2T9jJ8zAZ/4CYo2ZOvZ/noyO0taU00N/EF47C6f+F85e/
	THPoht//zXHuTqNlPGP5X3QrMx+8XBC5bY92cZu+cLM2G4LURx3paJPEJZde60AOBII+CVu70C4DQ
	9qWWx9UUQn0t29hP6vmRmD0DkKQFmR4DF/+UR49Slsc0/cjajuGKn0JiKTEMYfW+teQQt89F880kA
	J7eIzG2tpZpvIk89QcYrIzSk+OT+3btZrwIfi2DTpXGGPBwU8Oc6A1M8v6MFjBaxH2O5yxlKVK++q
	Gql580WHi32XsHY/XHpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohoCY-0001YD-TC; Mon, 10 Oct 2022 08:31:54 +0000
Received: from mail-qt1-x82e.google.com ([2607:f8b0:4864:20::82e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohoCF-0001Pv-FL; Mon, 10 Oct 2022 08:31:39 +0000
Received: by mail-qt1-x82e.google.com with SMTP id w28so4132127qtv.9;
        Mon, 10 Oct 2022 01:31:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hXaoEpBmFaWm4YhSYhLJqszxluutx3yUpvPEtnwbf/8=;
        b=pbKo5cQY+nM/svnG1J2yTAioTB9mF671N4t972e6X12Ufjd8dlZfTuJXhSiAz7EHNF
         wF3XvAwLlqluc2FHKZos96RpTw7oo5eMSesokaPklmKvwl6Dwp+jUSBYwjKp9UJZ9cUW
         l4EyXZNXxwJahajQXN10hBa2q3QIuWAxwkG1fXMZoEfZs5zFIutcDaGQC4xcsQM+z3e6
         iOrPZ3cC9ST2Bp0j1oRUgQiR+ZZQUaoklGVtPrUhb6NeKIxpO0tHIg2Ne2wCzyngsiiZ
         b/2s1nQYcUJC55Du1tRtkxTS9LVd1buXC3B34vzTdqRWAlE9GlfTXokc1pI4JdewpmnF
         YOog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hXaoEpBmFaWm4YhSYhLJqszxluutx3yUpvPEtnwbf/8=;
        b=4OCX/BasAbze99aFLbjmpaO8+tuoH8w7fheagQfrdPnVqAF/8WGFGB4+8vQCywVuMI
         yS/mT90hcoo9qC/f4lp/cM9KI0/i7m4cSDbEeX/Uqh0CJB1QeulOwoW5ncDVSMJPMScM
         xNwTKvPzPdGHcHkeW6xOn5CxXwjafXxR/LAYfT6+YBDhBVesOOylZYgnd6mDAL83IDgl
         dNhQ2WKV64hkdGOh0MFMvsNEAlMSKP9Hsq7a0NvxgSHrUz7ZAiXaMzRBlySS4rkxPLnI
         4l9wtq+kMEEXmeLPxKcgQGm3G6VEFNZ18Df9JEckJy2XQrLzvsX6zxWoDlzg0Cv6K1Yc
         INSQ==
X-Gm-Message-State: ACrzQf0F5H5Yq1+GIAolWfCIxSLjjkik4EjsZrWOyMDZ4tnx2YrMCnt9
	PFvE2d/UXWTFeTTK/exxvBsZGuexjSJCnACjRZo=
X-Google-Smtp-Source: AMsMyM4hZoJLGMaXto5+xoWE98hY7087ITW8cBq1XE4Zd9kTd/+UmjrShW6jvIaNBIv6x5xptyiXvJwqLCjpn0ibCk4=
X-Received: by 2002:ac8:7c43:0:b0:35c:cd8f:3da5 with SMTP id
 o3-20020ac87c43000000b0035ccd8f3da5mr14202039qtv.61.1665390692590; Mon, 10
 Oct 2022 01:31:32 -0700 (PDT)
MIME-Version: 1.0
References: <20221004134909.1692021-1-nuno.sa@analog.com> <20221004134909.1692021-17-nuno.sa@analog.com>
 <CAHp75VfpcrTpH83XqAC9xFrwYApORwoDcqmnhLLTkEWbj6zYVg@mail.gmail.com> <20221009125214.3da1dc89@jic23-huawei>
In-Reply-To: <20221009125214.3da1dc89@jic23-huawei>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 10 Oct 2022 11:30:56 +0300
Message-ID: <CAHp75Ve4+rRa37jhMHpvLt85Zdad1vRYJuGomZR3rb6TvO6Hew@mail.gmail.com>
Subject: Re: [PATCH v2 16/16] iio: core: move 'mlock' to 'struct iio_dev_opaque'
To: Jonathan Cameron <jic23@kernel.org>
Cc: =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	linux-amlogic@lists.infradead.org, linux-imx@nxp.com, 
	linux-iio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
	Neil Armstrong <narmstrong@baylibre.com>, Shawn Guo <shawnguo@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Jyoti Bhayana <jbhayana@google.com>, 
	Hans de Goede <hdegoede@redhat.com>, 
	Andriy Tryshnivskyy <andriy.tryshnivskyy@opensynergy.com>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Miquel Raynal <miquel.raynal@bootlin.com>, 
	Cixi Geng <cixi.geng1@unisoc.com>, Baolin Wang <baolin.wang@linux.alibaba.com>, 
	Ciprian Regus <ciprian.regus@analog.com>, Fabio Estevam <festevam@gmail.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Alexandru Ardelean <aardelean@deviqon.com>, 
	Florian Boor <florian.boor@kernelconcepts.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Orson Zhai <orsonzhai@gmail.com>, 
	Chen-Yu Tsai <wens@csie.org>, Chunyan Zhang <zhang.lyra@gmail.com>, Vladimir Zapolskiy <vz@mleia.com>, 
	Jerome Brunet <jbrunet@baylibre.com>, Haibo Chen <haibo.chen@nxp.com>, 
	Kevin Hilman <khilman@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221010_013135_570947_5527CA71 
X-CRM114-Status: GOOD (  11.40  )
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

T24gU3VuLCBPY3QgOSwgMjAyMiBhdCAyOjUyIFBNIEpvbmF0aGFuIENhbWVyb24gPGppYzIzQGtl
cm5lbC5vcmc+IHdyb3RlOgo+IE9uIFR1ZSwgNCBPY3QgMjAyMiAxNzoyMToyMCArMDMwMAo+IEFu
ZHkgU2hldmNoZW5rbyA8YW5keS5zaGV2Y2hlbmtvQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPiBPbiBU
dWUsIE9jdCA0LCAyMDIyIGF0IDQ6NDkgUE0gTnVubyBTw6EgPG51bm8uc2FAYW5hbG9nLmNvbT4g
d3JvdGU6CgouLi4KCj4gPiBJIGxpa2UgdGhlIGVuZCByZXN1bHQhCj4gPiBSZXZpZXdlZC1ieTog
QW5keSBTaGV2Y2hlbmtvIDxhbmR5LnNoZXZjaGVua29AZ21haWwuY29tPgo+Cj4gSnVzdCB0byBj
aGVjaywganVzdCB0aGlzIHBhdGNoLCBvciBzZXJpZXMgKHdoZXJlIHlvdSBoYXZlbid0IGNvbW1l
bnRlZD8pCgpKdXN0IGZvciB0aGlzIHBhdGNoLgoKPiBJJ20gZ29pbmcgdG8gcXVldWUgdGhpcyBz
ZXJpZXMgdXAgcGllY2V3aXNlIGp1c3QgYmVjYXVzZSBpdCdzIGZhaXJseQo+IGJpZyBhbmQgbW9z
dCBvZiBpdCBpcyBjb21wbGV0ZWx5IG5vbiBjb250cm92ZXJzaWFsISAgU28gZm9yIG5vdyBJJ3Zl
Cj4gbm90IGFwcGxpZWQgeW91ciBSQiwgYnV0IGNhbiBkbyBzbyBiZWZvcmUgSSBwdXNoIG91dCBh
cyBhbnl0aGluZyBub24KPiByZWJhc2luZyAod2hpY2ggSSB3b24ndCBkbyB1bnRpbCBhZnRlciB0
aGUgbWVyZ2Ugd2luZG93KS4KCi0tIApXaXRoIEJlc3QgUmVnYXJkcywKQW5keSBTaGV2Y2hlbmtv
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
