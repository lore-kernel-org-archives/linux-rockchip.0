Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECB4FC433FE
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Oct 2022 11:48:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XK08lkY3vvUEoUvp34/+BBnSL6rb5rloriLwnxnYxTY=; b=Dix/rhltFO/CEI
	F/S9+7Ag/j5lL4JKocj++MRALZ+566NhdBsFGQaD2dWF1IYnuyhrXyW6AoV+ADKMbaVi42iasza8P
	15T4/M+pErNSP41jTODb/MO55l4wG5DmEtFkdtgOOCLa07NUCmcohJvPb49bfhbX2hn/jbGRlgSws
	VXzIdi4jHYiQgvORXc3cNlPkQglxqmeGHOXSIi0YxH4kT+xakHhqa2vtS+plFCUNCVrt7Krsvdd0O
	W1GReifBl8C6U3knRMsH0WkJiw+wGPgLjkxXtT5XyD3znSL6sJ1sTYeMVbMmIWNwQUuDtNfpdqrUc
	RI2Nb982MFbYjr1eSYxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohUn0-00FQBw-9F; Sun, 09 Oct 2022 11:48:14 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohUmo-00FQ8f-D9; Sun, 09 Oct 2022 11:48:03 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 407E460AF9;
	Sun,  9 Oct 2022 11:48:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E19DC433C1;
	Sun,  9 Oct 2022 11:47:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665316079;
	bh=uLUT0ZlPLaW7vPy5rpn1T/wM8DNzywIgKzRvliwSObs=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=uSHU58/wL/H2hi+pxvpQh58nBsB4DtqePkrRlaUJruDvQEjhp4p1GLUWVTsqRQ+gY
	 VrdcySZgRFyaxgRKML/KSVKS9xRIQqqcC9O6I4sc2YcWzwChGn/6mcCw0hAi/+HguH
	 O5BJUGpUYwOreVA6JIyumu9actpMognRXPBiD/sNp+F4avVd3WOBTxZhjKodHS2hR+
	 sJOCQhqZt28lvztXE7sUrMgfksWXOW+gICINq+AkzPtgb59EpU+4KT8Mi3Quh3xSCx
	 JchuPduXpoJF10ZZDbNhtiqJaVdkIYy/0+jDqhtftKrALN6aU5iQvs2aU0Hq6nRdj4
	 AcO686FjQBCqg==
Date: Sun, 9 Oct 2022 12:48:15 +0100
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
Subject: Re: [PATCH v2 16/16] iio: core: move 'mlock' to 'struct
 iio_dev_opaque'
Message-ID: <20221009124815.3d34daff@jic23-huawei>
In-Reply-To: <f25507c2bfce7933684a2f1bfd00eb14609cd8b2.camel@gmail.com>
References: <20221004134909.1692021-1-nuno.sa@analog.com>
	<20221004134909.1692021-17-nuno.sa@analog.com>
	<CAHp75VfpcrTpH83XqAC9xFrwYApORwoDcqmnhLLTkEWbj6zYVg@mail.gmail.com>
	<f25507c2bfce7933684a2f1bfd00eb14609cd8b2.camel@gmail.com>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_044802_538410_F1D0E35A 
X-CRM114-Status: GOOD (  21.07  )
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

T24gV2VkLCAwNSBPY3QgMjAyMiAxMDo0MDowMyArMDIwMApOdW5vIFPDoSA8bm9uYW1lLm51bm9A
Z21haWwuY29tPiB3cm90ZToKCj4gT24gVHVlLCAyMDIyLTEwLTA0IGF0IDE3OjIxICswMzAwLCBB
bmR5IFNoZXZjaGVua28gd3JvdGU6Cj4gPiBPbiBUdWUsIE9jdCA0LCAyMDIyIGF0IDQ6NDkgUE0g
TnVubyBTw6EgPG51bm8uc2FAYW5hbG9nLmNvbT4gd3JvdGU6ICAKPiA+ID4gCj4gPiA+IE5vdyB0
aGF0IHRoZXJlIGFyZSBubyBtb3JlIHVzZXJzIGFjY2Vzc2luZyAnbWxvY2snIGRpcmVjdGx5LCB3
ZSBjYW4KPiA+ID4gbW92ZQo+ID4gPiBpdCB0byB0aGUgaWlvX2RldiBwcml2YXRlIHN0cnVjdHVy
ZS4gSGVuY2UsIGl0J3Mgbm93IGV4cGxpY2l0IHRoYXQKPiA+ID4gbmV3Cj4gPiA+IGRyaXZlcidz
IHNob3VsZCBub3QgZGlyZWN0bHkgdGhpcyBsb2NrLiAgCj4gPiAKPiA+IHVzZSB0aGlzCj4gPiAK
PiA+IAo+ID4gSSBsaWtlIHRoZSBlbmQgcmVzdWx0IQo+ID4gUmV2aWV3ZWQtYnk6IEFuZHkgU2hl
dmNoZW5rbyA8YW5keS5zaGV2Y2hlbmtvQGdtYWlsLmNvbT4KPiA+IAo+ID4gUC5TLiBTaG91bGRu
J3Qgd2UgYW5ub3RhdGUgdGhlIHJlc3BlY3RpdmUgQVBJcyB3aXRoIG1pZ2h0X3NsZWVwKCkgYW5k
Cj4gPiBDbyAoaWYgaXQncyBub3QgZG9uZSB5ZXQpPwo+ID4gCj4gPiAgIAo+IAo+IEhtbSwgSSB3
b3VsZCBzYXkgdGhpcyBpcyB0aGUgc2FtZSBzdG9yeSBhcyB3aXRoIHNwYXJzZSBhbm5vdGF0aW9u
cy4uLiBJCj4gZ3Vlc3MsIGF0IGxlYXN0LCBtaWdodF9zbGVlcCgpIHdvdWxkIG1ha2Ugc2Vuc2Ug
YnV0IEkgdGhpbmsgd2Ugc2hvdWxkCj4gcHJvYmFibHkgZG8gaXQgZm9yIHRoZSBjb21wbGV0ZSBJ
SU8gc3Vic3lzdGVtIHdoZXJlIGl0IG1ha2VzIHNlbnNlCj4gaW5zdGVhZCBvZiBoYXZpbmcgaXQg
aW4ganVzdCB0aGlzIG5ldyBBUEkuCgpXZSBkZWZpbml0ZWx5IGNvdWxkIGFkZCBzdWNoIGFubm90
YXRpb25zLgoKRnJvbSBhIGRvY3VtZW50YXRpb24gcG9pbnQgb2YgdmlldyB0aGF0IG1pZ2h0IGJl
IHVzZWZ1bC4gCkZyb20gYSBwcm90ZWN0aW9uIC8gYnVnIGNhdGNoaW5nIHBvaW50IG9mIHZpZXcg
dGhlIGNhbGxzIHRvIG11dGV4X2xvY2soKQpzaG91bGQgZmlyZSBvZmYgbXVjaCB0aGUgc2FtZSBl
cnJvciByZXBvcnRzLCBqdXN0IG9uZSBsZXZlbCBkb3duLgoKSm9uYXRoYW4KCj4gCj4gLSBOdW5v
IFPDoSAKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
