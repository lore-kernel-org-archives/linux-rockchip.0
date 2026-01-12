Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17397C9EC94
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jan 2026 15:52:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DI1PnokmutTyQ7p3cRjC1y9zoGXYVwA5J/Ky8W+x9kE=; b=LJnCHyPqIlGaIa
	j92y86ztu1f+0hQ7c9x+RluHrsFiTW0vjf0jqoRLJrWcTuK8TNmfCPi8T/rmQQUeO0if20F4ze4XI
	xqXzG8fYQ4JKWz7bMfLa6C0QUZYMX7FuDe5XmHuLTeqzoHTAFX/kVOLrAZ7/8KLp5lTmz75RGZ3pZ
	bJUUrlHLgxQNIR4ip09aB0IjMhLIIfrgSNffBRnCCpk98Ytjr1aQ/WmzpBp4W9y9Cuk+VLDniV0UI
	38g4trs/bXz4lSVcbdCW7D3/kRWPz1YRExytK3vlO8O0/D/li+e+O+c2GVNvIQn2Pm0D8UUZjv9ts
	uH94ho32G/07KUmQpJew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfKDQ-00000005fcV-34vz;
	Mon, 12 Jan 2026 15:52:24 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfKDO-00000005fbk-2tm2
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Jan 2026 15:52:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 4BE7B440E3
	for <linux-rockchip@lists.infradead.org>; Mon, 12 Jan 2026 15:52:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21702C2BCB3
	for <linux-rockchip@lists.infradead.org>; Mon, 12 Jan 2026 15:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768233142;
	bh=ZkcabmcYCcBrxnwKFSNqoTlMq8l5sVsmuZV7ptzpUhs=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=H8UJ8IaEpopQ/EXYsnMfDGmckISt8UEqaPIlrsVA9V4pYuvWLdsRW0EkDKUrHwuJx
	 83kZlHNTNvMum/h5bOAws9xHUn2v4fHczgsAmXBEo/vF44IaAChXWJBbn2K1ogLW7f
	 TNoDh9FVoDwG0clkJ732A72BgcdP5JB0pu7qUp7qspza+hZJW5gIdmcdBvcbVrOs2d
	 rp2YAA9rfBU/6yaYdj8TaVVW/a1ME+/cCXj+Y48KZQS+kY1HT5WiDaepDIVyPUwDub
	 AV0+PX3/JHW6P9gLCt066fLSGMuxQZ+vddw1XlNeqMdNeiVzyt4uDG5XCC0vlkfZAF
	 pe7dwOsMs8MMQ==
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-382fe06aa94so45861591fa.0
        for <linux-rockchip@lists.infradead.org>; Mon, 12 Jan 2026 07:52:22 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWxelBS8nQzpNJdyq3ZHwvPZEEdb+cVegwYghNfrknpuQ255EpdulA+DsUrU/eqnoHiefCb3/W6RHgtibgFHg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyiV5pCWRS4WazSav80+m3tj+igA7r96ePiLNZCpHD03pKUEGQy
	GywdPfw5PUyAQx2beX4BsyAkbDOE9RtKDBxsjr/UINhMbqsAeoLGpImliwsW/5chWzZ7WYR4C2u
	tLu3rhJXn/7M9yGbOyk342xtEw6RUZwM=
X-Google-Smtp-Source: AGHT+IGvtvpe0+JORzp/Ys20P6G9z09DfGY5vS/3Gm+svovxaEP0U/CWOpHfTeAwgDHpI7RPcWpKuzzFp/hRrSMcr6c=
X-Received: by 2002:a2e:bea8:0:b0:383:1ec5:9650 with SMTP id
 38308e7fff4ca-3831ec5abe9mr31087051fa.21.1768233140744; Mon, 12 Jan 2026
 07:52:20 -0800 (PST)
MIME-Version: 1.0
References: <20260112134900.4142954-1-andriy.shevchenko@linux.intel.com> <20260112134900.4142954-5-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20260112134900.4142954-5-andriy.shevchenko@linux.intel.com>
From: Linus Walleij <linusw@kernel.org>
Date: Mon, 12 Jan 2026 16:52:07 +0100
X-Gmail-Original-Message-ID: <CAD++jLmD+50JeZdcpDfhk_hv8xZukjAng15woDE_zFaxh=cRqQ@mail.gmail.com>
X-Gm-Features: AZwV_QjeVsmFIXPVAfMxBTLxxVXBlmyoPLa2yVuN3Ez29-sBYgkr3sMPDrlgVTQ
Message-ID: <CAD++jLmD+50JeZdcpDfhk_hv8xZukjAng15woDE_zFaxh=cRqQ@mail.gmail.com>
Subject: Re: [PATCH v1 4/7] i2c: nomadik: Use HZ_PER_GHZ constant instead of
 plain number
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Andi Shyti <andi@smida.it>, Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Qianfeng Rong <rongqianfeng@vivo.com>, linux-i2c@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	Khalil Blaiech <kblaiech@nvidia.com>, Asmaa Mnebhi <asmaa@nvidia.com>, 
	Andi Shyti <andi.shyti@kernel.org>, Qii Wang <qii.wang@mediatek.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Heiko Stuebner <heiko@sntech.de>, 
	Patrice Chotard <patrice.chotard@foss.st.com>, Ard Biesheuvel <ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_075222_749993_9B41DD42 
X-CRM114-Status: UNSURE (   7.90  )
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

T24gTW9uLCBKYW4gMTIsIDIwMjYgYXQgMjo0OeKAr1BNIEFuZHkgU2hldmNoZW5rbwo8YW5kcml5
LnNoZXZjaGVua29AbGludXguaW50ZWwuY29tPiB3cm90ZToKCj4gVXNlIGRlZmluZWQgY29uc3Rh
bnQgdG8gYXZvaWQgdGhlIHBvc3NpYmxlIG1pc3Rha2VzIGFuZCB0byBwcm92aWRlCj4gYW4gYWRk
aXRpb25hbCBpbmZvcm1hdGlvbiBvbiB0aGUgdW5pdHMuCj4KPiBXaGlsZSBhdCBpdCwgZHJvcCB1
bm5lZWRlZCA2NC1iaXQgZGl2aXNpb24sIGFsbCBvcGVyYW5kcyBmaXQgMzItYml0Lgo+Cj4gU2ln
bmVkLW9mZi1ieTogQW5keSBTaGV2Y2hlbmtvIDxhbmRyaXkuc2hldmNoZW5rb0BsaW51eC5pbnRl
bC5jb20+CgpJdCBtYWtlcyBwZXJmZWN0IHNlbnNlLCBJIGRvbid0IHJlbWVtYmVyIHdoeSBJIHB1
dCBVTEwgaW4gdGhlcmUKYW55bW9yZSA6LwoKUmV2aWV3ZWQtYnk6IExpbnVzIFdhbGxlaWogPGxp
bnVzd0BrZXJuZWwub3JnPgoKWW91cnMsCkxpbnVzIFdhbGxlaWoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
