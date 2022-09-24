Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D59AC32771
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Sep 2022 15:56:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dCd7dTkQDv/hDSVgZ2iDFa/4UZpyW7ku5DqDTUYwZ4Q=; b=MaijqGRGtX5Dfn
	Ci4LFK2r4P8SWKjGCByR9GMiq/ljxLYAaQ+35UZubZt9AfpcigyU1kQNLyzPWjCoNU7LBfPZ3taMd
	uVBPivcQaQ5h7ssLOi9JLqq94qBsfSDNWj61tBZ967AVw/JJtI0LD7cRb/+JHTiDOXfwXVirsypFE
	gJuFmUNNloqF7ILTHaosBxyLRfp0t8VcV68Lenlv0CGztsrTzDBvRsi3oGR/orF1G9ewJ2lWqHa09
	26YzmoJFDq5b7d5REt8ZvoZPDZ/ezhGCN3iO48vM0/FMnNyA1ZKNCjyc4kitMd2egnNhI43CpwB/A
	AmqpnVX5VIeqXKVQ1AGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oc7WI-007qIR-U6; Sat, 24 Sep 2022 15:56:46 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oc7W6-007qC9-5C; Sat, 24 Sep 2022 15:56:35 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id D05AFB80967;
	Sat, 24 Sep 2022 15:56:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32749C433D6;
	Sat, 24 Sep 2022 15:56:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664034991;
	bh=qTNlpHMISOV4KB0CLJWivSAEHSg4ucI5/yCwcRMQb9Q=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=U5SU6zfWEMemO2eUwr8AcRknz02mxUkWLX0GEjuaM6BJK5UPkwG8MOUbPUZkNfR6f
	 qVtpLIVYRKOT/3KOLYSnsgUn7T574PZkUtYmGP7StoN6DdQ2OYZXioFFfgpBhnM5fL
	 NwuMh4LiKHom3/wYu14i+wGNK3/n4W2hQxamwQIGZmUCmMza1YLNCwuyXwe79KPUD3
	 EivzdII9szCi0vc9FVO3sPR1XbIfwUT6BlrMHtN6GPh4LO8kV93eN3QzIS/iLoD5PJ
	 94vZLjMy8VlelkmOWYbCcvi6xilAP1WiZ/Lq5lv2tLPvEVsfRWWAvE15Zv3KO+L6sl
	 xaKqRall014tA==
Date: Sat, 24 Sep 2022 16:56:32 +0100
From: Jonathan Cameron <jic23@kernel.org>
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
 <hdegoede@redhat.com>, Miquel Raynal <miquel.raynal@bootlin.com>, Jerome
 Brunet <jbrunet@baylibre.com>, "Heiko Stuebner" <heiko@sntech.de>, Florian
 Boor <florian.boor@kernelconcepts.de>, Ciprian Regus
 <ciprian.regus@analog.com>, Lars-Peter Clausen <lars@metafoo.de>, Andy
 Shevchenko <andy.shevchenko@gmail.com>, Neil Armstrong
 <narmstrong@baylibre.com>, "Baolin Wang" <baolin.wang@linux.alibaba.com>,
 Jyoti Bhayana <jbhayana@google.com>, Chen-Yu Tsai <wens@csie.org>, Orson
 Zhai <orsonzhai@gmail.com>
Subject: Re: [PATCH 15/15] iio: core: move 'mlock' to 'struct
 iio_dev_opaque'
Message-ID: <20220924165632.2641725f@jic23-huawei>
In-Reply-To: <20220920112821.975359-16-nuno.sa@analog.com>
References: <20220920112821.975359-1-nuno.sa@analog.com>
	<20220920112821.975359-16-nuno.sa@analog.com>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220924_085634_372478_3C231746 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
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

T24gVHVlLCAyMCBTZXAgMjAyMiAxMzoyODoyMSArMDIwMApOdW5vIFPDoSA8bnVuby5zYUBhbmFs
b2cuY29tPiB3cm90ZToKCj4gTm93IHRoYXQgdGhlcmUgYXJlIG5vIG1vcmUgdXNlcnMgYWNjZXNz
aW5nICdtbG9jaycgZGlyZWN0bHksIHdlIGNhbiBtb3ZlCj4gaXQgdG8gdGhlIGlpb19kZXYgcHJp
dmF0ZSBzdHJ1Y3R1cmUuIEhlbmNlLCBpdCdzIG5vdyBleHBsaWNpdCB0aGF0IG5ldwo+IGRyaXZl
cidzIHNob3VsZCBub3QgZGlyZWN0bHkgdGhpcyBsb2NrLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE51
bm8gU8OhIDxudW5vLnNhQGFuYWxvZy5jb20+CkxHVE0gIE5pY2Ugd29yawoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
