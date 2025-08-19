Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4981FCCD199
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 11:57:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tOCNQi1kbmwoT9H+6zVU9kPWHNrZptxTC1nVi3SmsEc=; b=PW5k2DEkkB+3f4
	d0EAhT3L9WTxS3UO1aPkg4+8RpEomJ9NNzxI67r7YwMtG51RqxK1CussNbY9ynCqIOjQ0xKYHt5U+
	H3D3Y3LBZDub/UawW8bfWSyIgN65VBNvsskO0P3uT7+98VJUpCf7MrY0fsKOqRunMwo7wSdOKIbhK
	D4pQjFIA447FqhrQ+iIc/hlzYTzhwvbsimOBZrkmQfcngbhYP1H6NpuZ/Ddfgio6Jg8benPGHCgAm
	UGxGw+YzD8E5wObGOoO2XCsjfowVQrsbWMPyxJLhXQGmIFI0flxuR0j/ig1n5gAn4YDqIyBOBbIPO
	n0rSLyVZ4u/MdCo6hhiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAoVY-0000000D8tX-1Dbx;
	Mon, 20 Oct 2025 11:57:00 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoIwJ-0000000A1Ew-0MGF
	for linux-rockchip@lists.infradead.org;
	Tue, 19 Aug 2025 09:47:37 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-333f8f0dd71so39477091fa.1
        for <linux-rockchip@lists.infradead.org>; Tue, 19 Aug 2025 02:47:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755596853; x=1756201653; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RdTVW2acL3x4TY+q3fiwzcKJmZ14PXDkj8EpJokxAbo=;
        b=dGXPqLjYlxrFgBbb+2jsShCZAA6/NN+IKaeiJ9q7bZNS3vy3AqUz1fSzHa5GUfx9Te
         YJjyaCt65+2yAQuGdJ9djwOUDsC+SsHqIPc8/kdqV6+q5DlFPUF/coecNRZ60nzsyrmF
         hMXXTOwl3hTWXs+eDhuh7RrkIO3AFbc0xorC1Pvt9ZVjdnPAFD8pPAnHiKavTnJglfiC
         5u74FjQ2UkAcmBmWC3wrYjEL0/06I7BbUgqksaAMwXvxKqWknKWSWfgdyuAB1zKn3Fhx
         mgXFzIeN4N0l0Sk8IRq+eJ1ZkiB2ygnlvzUZLcfUrU/Ic0Ki53Z3gfh5FI1rt4wQVqc8
         eLPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755596853; x=1756201653;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RdTVW2acL3x4TY+q3fiwzcKJmZ14PXDkj8EpJokxAbo=;
        b=dC9SGZSDGX112kqVakvoN4GWlMUVb5cyXeajfi0n6tDJMBybCd/EKk9OQUxLP7zoOO
         J00uCOaC/ixUhLH/mZhZhLvL2JDEKQreYv3mNZV/nEJyXxIKxQ00tQNI6qtFbebvj/qR
         V4fQDCKmK0typWFsbhaiobKZt1zvkPqRsA0hFnuR1CmVbR61BcTVqT5mG5u66nLBSHpu
         UdwXbtiZV7HUUXOxM7TzMwOit77grIaZqHwQPlK3gPlnDg6VkVCgsWc6PsSBFRXXZoAx
         Et1U582WAnpjRf81me3bLt52pnGIV95GEpKIWRNLElraRK5oBOVXmoigTPcfcgvf3gg8
         Jorw==
X-Forwarded-Encrypted: i=1; AJvYcCWc9UAHz93RTCQ9xypBe0ActJnog3jqHdPDPqbFtLTc/10GDOn3/+niLlJyb5ey943DgZWyNVG+5W1rFUGOrA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyLSr0TFezrjZwVSdMS+IhPi9LyOFcortsqCCLf5SqHNeJFLwJi
	wob9r8G6oVLDVfOlWLZZNQcJdXgtU0BPy2ds+gOjZbvuO3LV0AXmDWMEtPpNSoI2XvWO7cmfn/+
	N4xvdHn7+vY4XiPN7ROHx6OM3vWS2/InAxcG7nPADjQ==
X-Gm-Gg: ASbGncsp9fd58GnxYQtLtjSyBQ3YWuQxaswG5xJpcEvuPqsW5B6QX7JCxcaRdvFGIcj
	OYvAZsLYJ8O/uvFOAbccOT9JwvEw+R5i6EYsNZ+GDVGuI2SBQhRgISP4ldWpAJva6RPmtDSFXSr
	pHGXcNsFDPGjUnnq0OZaVYVIp/qrugo1W2dDO1SJJQvfetS6ee4GbxtlLu60IUyNmuCLcFQsQb3
	8MhU28bnu+G
X-Google-Smtp-Source: AGHT+IFaAkF1r4GWgj+j3Xeyk0sBgHgQuFXAyBRPToaJvqEtDi6Qt1cFt8RtILv6l5mltG8+0huqL2sCrZ81MI3EBAM=
X-Received: by 2002:a05:651c:b2c:b0:333:ad0c:a44e with SMTP id
 38308e7fff4ca-335305347dbmr5252501fa.7.1755596852940; Tue, 19 Aug 2025
 02:47:32 -0700 (PDT)
MIME-Version: 1.0
References: <20250811-clk-for-stephen-round-rate-v1-0-b3bf97b038dc@redhat.com> <20250811-clk-for-stephen-round-rate-v1-105-b3bf97b038dc@redhat.com>
In-Reply-To: <20250811-clk-for-stephen-round-rate-v1-105-b3bf97b038dc@redhat.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 19 Aug 2025 11:47:21 +0200
X-Gm-Features: Ac12FXwQ8ZNlahHw5FRReJn3coSNBp0waFbtb0dR-jKWl_cQ9vhC2BCpFgBry0M
Message-ID: <CACRpkdZ3M65bKzaHcKPRhEFCy+TvHUq8bZ-8Zr_7HSRKsk_TWQ@mail.gmail.com>
Subject: Re: [PATCH 105/114] clk: ux500: prcmu: convert from round_rate() to determine_rate()
To: bmasney@redhat.com
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Sudeep Holla <sudeep.holla@arm.com>, Cristian Marussi <cristian.marussi@arm.com>, 
	Chen Wang <unicorn_wang@outlook.com>, Inochi Amaoto <inochiama@gmail.com>, 
	Nicolas Ferre <nicolas.ferre@microchip.com>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
	Paul Cercueil <paul@crapouillou.net>, Keguang Zhang <keguang.zhang@gmail.com>, 
	Taichi Sugaya <sugaya.taichi@socionext.com>, Takao Orito <orito.takao@socionext.com>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Jacky Huang <ychuang3@nuvoton.com>, Shan-Chun Hung <schung@nuvoton.com>, 
	Vladimir Zapolskiy <vz@mleia.com>, Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Samuel Holland <samuel.holland@sifive.com>, 
	Yixun Lan <dlan@gentoo.org>, Steen Hegelund <Steen.Hegelund@microchip.com>, 
	Daniel Machon <daniel.machon@microchip.com>, UNGLinuxDriver@microchip.com, 
	Orson Zhai <orsonzhai@gmail.com>, Baolin Wang <baolin.wang@linux.alibaba.com>, 
	Chunyan Zhang <zhang.lyra@gmail.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Michal Simek <michal.simek@amd.com>, 
	Maxime Ripard <mripard@kernel.org>, =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>, 
	Manivannan Sadhasivam <mani@kernel.org>, Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>, 
	Alyssa Rosenzweig <alyssa@rosenzweig.io>, Neal Gompa <neal@gompa.dev>, 
	Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>, Ray Jui <rjui@broadcom.com>, 
	Scott Branden <sbranden@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Max Filippov <jcmvbkbc@gmail.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Daniel Palmer <daniel@thingy.jp>, 
	Romain Perier <romain.perier@gmail.com>, Andrew Lunn <andrew@lunn.ch>, 
	Gregory Clement <gregory.clement@bootlin.com>, 
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Bjorn Andersson <andersson@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Heiko Stuebner <heiko@sntech.de>, 
	Andrea della Porta <andrea.porta@suse.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Sylwester Nawrocki <s.nawrocki@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Qin Jian <qinjian@cqplus1.com>, 
	Viresh Kumar <vireshk@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Luca Ceresoli <luca.ceresoli@bootlin.com>, Alex Helms <alexander.helms.jy@renesas.com>, 
	Liviu Dudau <liviu.dudau@arm.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>, linux-clk@vger.kernel.org, 
	linux-kernel@vger.kernel.org, arm-scmi@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, sophgo@lists.linux.dev, 
	linux-mips@vger.kernel.org, imx@lists.linux.dev, 
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, 
	linux-stm32@st-md-mailman.stormreply.com, patches@opensource.cirrus.com, 
	linux-actions@lists.infradead.org, asahi@lists.linux.dev, 
	linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, soc@lists.linux.dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250819_024735_156838_AD20CCA4 
X-CRM114-Status: GOOD (  11.10  )
X-Mailman-Approved-At: Mon, 20 Oct 2025 04:56:03 -0700
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

T24gTW9uLCBBdWcgMTEsIDIwMjUgYXQgNToxOeKAr1BNIEJyaWFuIE1hc25leSB2aWEgQjQgUmVs
YXkKPGRldm51bGwrYm1hc25leS5yZWRoYXQuY29tQGtlcm5lbC5vcmc+IHdyb3RlOgoKPiBGcm9t
OiBCcmlhbiBNYXNuZXkgPGJtYXNuZXlAcmVkaGF0LmNvbT4KPgo+IFRoZSByb3VuZF9yYXRlKCkg
Y2xrIG9wcyBpcyBkZXByZWNhdGVkLCBzbyBtaWdyYXRlIHRoaXMgZHJpdmVyIGZyb20KPiByb3Vu
ZF9yYXRlKCkgdG8gZGV0ZXJtaW5lX3JhdGUoKSB1c2luZyB0aGUgQ29jY2luZWxsZSBzZW1hbnRp
YyBwYXRjaAo+IG9uIHRoZSBjb3ZlciBsZXR0ZXIgb2YgdGhpcyBzZXJpZXMuCj4KPiBTaWduZWQt
b2ZmLWJ5OiBCcmlhbiBNYXNuZXkgPGJtYXNuZXlAcmVkaGF0LmNvbT4KClJldmlld2VkLWJ5OiBM
aW51cyBXYWxsZWlqIDxsaW51cy53YWxsZWlqQGxpbmFyby5vcmc+CgpZb3VycywKTGludXMgV2Fs
bGVpagoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
