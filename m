Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E290C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Oct 2022 08:39:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wBFZ8wAflAvQXn/1MAG0opF+FnN5XI03E4gu7KP29uI=; b=EqvpXd8H1etqJ/
	1o6enTKbT2FJVMhZ9BgyHE+UT/ttC3Llj+YxsVuVPRx9mo4HT5K1GBL87Xt3Oe4zOCv1kzPxGI9zu
	E8m+Lm3ujf7lLEgTVhj/ALREd1NVJoCr2XTEZ33VQnILDK0DGzgniagY7APFFvp7LYvh1y4r8rZmx
	CiEsxKWWYwqOPyPDDizpsHmiKh8RUfU6rvbYiFU75MDfeeRfLO3ZXy+PmKQwaCLiDoXxu243hTUnL
	rr+M09sVWauUG09xcGgvbgyW6xUfM83VldmQ0yk03JxY7FwIGOY6mBmhn9eG5T635x4K7eX0JQoot
	AIERjHNG7qQGqtVl+iPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofzvl-00D5rx-0u; Wed, 05 Oct 2022 08:39:05 +0000
Received: from mail-qt1-x82c.google.com ([2607:f8b0:4864:20::82c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofzvZ-00D5lG-VM; Wed, 05 Oct 2022 08:38:55 +0000
Received: by mail-qt1-x82c.google.com with SMTP id d15so2254994qtw.8;
        Wed, 05 Oct 2022 01:38:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date;
        bh=TnA6JzSn4arjpTN/bPqQkDRPYmsMIf2Li73dTR0mpO0=;
        b=ONwEbApRuyxgWRIpd/fuFOKiSWN/+DWE/CtRuW4q35CKbmuam6lJ8FPZbbXaCzNt7e
         vlh8GTfwRQfxaUnQddKYrrlQawscqr07zE+f/YKbTNKGKkI7VP2Pt49F8vGDFt/+AGEA
         gxJ6f0Y6JmtNxu2UQWhInCK2YbakqcdGNFaWRuWyGZIKwnUTuIY8xpORzDFXGfQLb34f
         wZ2JiMfOhxmc1Fd0idbk7b+UqAtfxO+4YS/x97eXfPi80WYqE8T4LYLi7XDZjg3TU9zM
         QBXDBiemVCqT4KCs2iTZM52aiaVRYm4c3daguXStjBa7zGXi/l4fqRJUjIY1ok5NnWYi
         XD1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date;
        bh=TnA6JzSn4arjpTN/bPqQkDRPYmsMIf2Li73dTR0mpO0=;
        b=N8flPjlLblRDcLsyGQ2PTzPeF6U7jn19MCLuM5JFDFqtC4QD/mFljJXQk6+njmdIAI
         qMXJ6X5WAE5hkuRJ8NGS7Zw6RnwVLkRS2GvtROZkuQIy+Q4Ih9aPGMnPTbf1btwnZY68
         CNUUG97OJeUjRrAsB2MHirAc3JxDgCpNKuGBmKyq5eU4Q6KOkCXEJ0qSB9cuG7QOwX9H
         GxUESy5xqwjJbqjQGPYV/OBJvpu82+voViTAo9gqAv3p7Cr3LvkVwjAIDMQWprAuXQC+
         dqjiL/EXQg3TbsSc1G3Xx1SK0w4eiQr2lbzbsfnE8GPmA8bXdoIg9qLkH80d1xvGsIjE
         K8CQ==
X-Gm-Message-State: ACrzQf0xdr/mZeS9k6y8Gif2OVw/yMvlUtvkEYATQe+N/wxxJM9KP29t
	3dnC9+mUBtC1eyhWsFUfLrk=
X-Google-Smtp-Source: AMsMyM5S1zbtIP8pge6aYNhqSMP45dSoxmOnek1iAfkzj/AA75VShoWoiBhyIqiEwOtZAz7Gfw7d9w==
X-Received: by 2002:a05:622a:8c:b0:35d:44d5:58f6 with SMTP id o12-20020a05622a008c00b0035d44d558f6mr22701862qtw.315.1664959125734;
        Wed, 05 Oct 2022 01:38:45 -0700 (PDT)
Received: from p200300f6ef036f005de6a4d0d791ed01.dip0.t-ipconnect.de (p200300f6ef036f005de6a4d0d791ed01.dip0.t-ipconnect.de. [2003:f6:ef03:6f00:5de6:a4d0:d791:ed01])
        by smtp.gmail.com with ESMTPSA id g12-20020ac8580c000000b0035d4f68232esm14575313qtg.3.2022.10.05.01.38.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Oct 2022 01:38:45 -0700 (PDT)
Message-ID: <f25507c2bfce7933684a2f1bfd00eb14609cd8b2.camel@gmail.com>
Subject: Re: [PATCH v2 16/16] iio: core: move 'mlock' to 'struct
 iio_dev_opaque'
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>, Nuno =?ISO-8859-1?Q?S=E1?=
	 <nuno.sa@analog.com>
Cc: linux-amlogic@lists.infradead.org, linux-imx@nxp.com, 
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
 Ardelean <aardelean@deviqon.com>,  Florian Boor
 <florian.boor@kernelconcepts.de>, Michael Hennerich
 <Michael.Hennerich@analog.com>, Orson Zhai <orsonzhai@gmail.com>, Chen-Yu
 Tsai <wens@csie.org>, Chunyan Zhang <zhang.lyra@gmail.com>, Vladimir
 Zapolskiy <vz@mleia.com>, Jerome Brunet <jbrunet@baylibre.com>, Haibo Chen
 <haibo.chen@nxp.com>, Kevin Hilman <khilman@baylibre.com>, Jonathan Cameron
 <jic23@kernel.org>
Date: Wed, 05 Oct 2022 10:40:03 +0200
In-Reply-To: <CAHp75VfpcrTpH83XqAC9xFrwYApORwoDcqmnhLLTkEWbj6zYVg@mail.gmail.com>
References: <20221004134909.1692021-1-nuno.sa@analog.com>
	 <20221004134909.1692021-17-nuno.sa@analog.com>
	 <CAHp75VfpcrTpH83XqAC9xFrwYApORwoDcqmnhLLTkEWbj6zYVg@mail.gmail.com>
User-Agent: Evolution 3.44.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221005_013854_030402_C6947279 
X-CRM114-Status: GOOD (  14.75  )
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

T24gVHVlLCAyMDIyLTEwLTA0IGF0IDE3OjIxICswMzAwLCBBbmR5IFNoZXZjaGVua28gd3JvdGU6
Cj4gT24gVHVlLCBPY3QgNCwgMjAyMiBhdCA0OjQ5IFBNIE51bm8gU8OhIDxudW5vLnNhQGFuYWxv
Zy5jb20+IHdyb3RlOgo+ID4gCj4gPiBOb3cgdGhhdCB0aGVyZSBhcmUgbm8gbW9yZSB1c2VycyBh
Y2Nlc3NpbmcgJ21sb2NrJyBkaXJlY3RseSwgd2UgY2FuCj4gPiBtb3ZlCj4gPiBpdCB0byB0aGUg
aWlvX2RldiBwcml2YXRlIHN0cnVjdHVyZS4gSGVuY2UsIGl0J3Mgbm93IGV4cGxpY2l0IHRoYXQK
PiA+IG5ldwo+ID4gZHJpdmVyJ3Mgc2hvdWxkIG5vdCBkaXJlY3RseSB0aGlzIGxvY2suCj4gCj4g
dXNlIHRoaXMKPiAKPiAKPiBJIGxpa2UgdGhlIGVuZCByZXN1bHQhCj4gUmV2aWV3ZWQtYnk6IEFu
ZHkgU2hldmNoZW5rbyA8YW5keS5zaGV2Y2hlbmtvQGdtYWlsLmNvbT4KPiAKPiBQLlMuIFNob3Vs
ZG4ndCB3ZSBhbm5vdGF0ZSB0aGUgcmVzcGVjdGl2ZSBBUElzIHdpdGggbWlnaHRfc2xlZXAoKSBh
bmQKPiBDbyAoaWYgaXQncyBub3QgZG9uZSB5ZXQpPwo+IAo+IAoKSG1tLCBJIHdvdWxkIHNheSB0
aGlzIGlzIHRoZSBzYW1lIHN0b3J5IGFzIHdpdGggc3BhcnNlIGFubm90YXRpb25zLi4uIEkKZ3Vl
c3MsIGF0IGxlYXN0LCBtaWdodF9zbGVlcCgpIHdvdWxkIG1ha2Ugc2Vuc2UgYnV0IEkgdGhpbmsg
d2Ugc2hvdWxkCnByb2JhYmx5IGRvIGl0IGZvciB0aGUgY29tcGxldGUgSUlPIHN1YnN5c3RlbSB3
aGVyZSBpdCBtYWtlcyBzZW5zZQppbnN0ZWFkIG9mIGhhdmluZyBpdCBpbiBqdXN0IHRoaXMgbmV3
IEFQSS4KCi0gTnVubyBTw6EgCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
