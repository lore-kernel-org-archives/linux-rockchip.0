Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B005CCD199
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 12:03:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B1D1K6uH3PYSGseUJXbcR2jCdzPUn4hJAjkIT9bZZQM=; b=ePUHI2hr1b2zFQ
	zdnCpZIlL1tgQ4i5atipM/OgFfwtU5r504aXKYItKpvteciUXIfXYU4NsqiOh8g7BRQLEsF0JFWoJ
	wcQr9JOVAwkhT0JYHl+aDPz9gwhONMGDjDMyi6rSZnvIUjN1djB6D4GGeZNY9PoBxDQcmkNObS+Wg
	6PP2NLJVvKcTiJi27h0/ZPdOpOyukEzo+YQeMTGETuhmKezzbzPOJ1OS2ahuIhj3lJe0ITuqUHHJq
	P3jZaRaIZXoa3K5MsSVxq7spu4zGXBs23l/Mr4ddRalgpbau5ezPaMETwiVRGaECJmLgKBh9cpkce
	u3cp70ZfGg9FLD1eB/Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAoc9-0000000DHJn-3yHu;
	Mon, 20 Oct 2025 12:03:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urnHe-00000003uzV-0S8k
	for linux-rockchip@bombadil.infradead.org;
	Fri, 29 Aug 2025 00:48:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=MySjf1dNQ+QFblxbzgcBLucxms+md0OmiOz5lWF0b/w=; b=X9aj+0nRiHwdeNqT8/IKc8ZcAI
	xtfJ/xcsmXOKoj42wt/kpNNMtSZzhfJfFnOlgiji8xopBzovFh2Um9m9Gec9v8NuzgVjexcZ2yDUj
	GdKrTrF8dOPwrWHNxv1temZCYTM/Z9vLwT8VwpZpnOPsEleWOqu662aTrXwMsvjYRGafFM1UanrNr
	ztVjA38uDXJ/5A10/7UEpTZo+2Xn3M7ysKRPLb84SOFZQ0bdhXLcrkW40bLy922YAg3nqXXgpupKj
	IlWzJVPoGn96vEI7kfyDSS1NRUZGUpfLB0x4iK/7+lYGe5pkwwWFeNACVY3RgqykXyPRDU+I4TjNz
	BRv882ZA==;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urnHa-000000030Yv-2csp
	for linux-rockchip@lists.infradead.org;
	Fri, 29 Aug 2025 00:48:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1756428477;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=MySjf1dNQ+QFblxbzgcBLucxms+md0OmiOz5lWF0b/w=;
	b=eRIyUMrsdAYkfHt4XKCp6uZVcaF8eYVW5PQTWDPnRfcFh/fZ/OCQknkdaU2gTo+kNSqclk
	KzFj050q9fo6aXu7Xs7kbYSaiSI49YudDmWSTgD9iJoxx+XvlV4TYN/0OL56J4V7l+IoYq
	yJFrdmdnuvJZ5NGYRkAj9b78M2tCnOs=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1756428477;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=MySjf1dNQ+QFblxbzgcBLucxms+md0OmiOz5lWF0b/w=;
	b=eRIyUMrsdAYkfHt4XKCp6uZVcaF8eYVW5PQTWDPnRfcFh/fZ/OCQknkdaU2gTo+kNSqclk
	KzFj050q9fo6aXu7Xs7kbYSaiSI49YudDmWSTgD9iJoxx+XvlV4TYN/0OL56J4V7l+IoYq
	yJFrdmdnuvJZ5NGYRkAj9b78M2tCnOs=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-659-pF_3f63RNZ29-U2T7nxNow-1; Thu, 28 Aug 2025 20:47:55 -0400
X-MC-Unique: pF_3f63RNZ29-U2T7nxNow-1
X-Mimecast-MFC-AGG-ID: pF_3f63RNZ29-U2T7nxNow_1756428474
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7e87069063aso553265885a.3
        for <linux-rockchip@lists.infradead.org>; Thu, 28 Aug 2025 17:47:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756428474; x=1757033274;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MySjf1dNQ+QFblxbzgcBLucxms+md0OmiOz5lWF0b/w=;
        b=W8yyzQKER49oQi/JHR+VgBdGipihZavoio+SfQai1pj5BJJ7Hgj+76zUYvT0//f9Ta
         bewwIGmQ/Yh5UaAdeXArWH+Rpx8gQIsUmHQFsH+yJ/vTNeg5+GG2R+UM+5sbuxNpgq0c
         or8a8GzYGiLo2dVCKL1LfCfFuJ4fU+ru6gjQdF2UZsYdtyOsNrfuoMbTn7IhryHuVrzy
         cBXYMoYBi8t5COoypsSLzhL0nlOHiVaBdISD3OQ4yvLHlGBcIAZPLGyJ+vKbmX+v3pe5
         qj8+6won7iCcfyG0P+gOFzjEjTYYSfb1E5qN4rl3UrhBvUDOupMK/CwddWUaATH5HXJ3
         d4sA==
X-Forwarded-Encrypted: i=1; AJvYcCUdHiUDMBrcM4DiQqRpr+D5DIEGNxny8+AIF9QK2ModNjnt3OYb8m/vg+m65qljTPo7hL8MdzYSwARmZFxjqA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyY22DWo7vEgMh5pwwL78pHMnisi1oWnkAGgvzptEEjxNc2x/NU
	qhEMML2z2rQ2IDedelOsbJ0VBzugOoElZ3ajSSr+eINd2NSv6J0RiANBI9zs6c9j3bQcb5rjIrk
	U6pe9UrBEii6p7YZodn/NSX6SVD9cBZW/52yflL0J1qw472sTydpY8XxPZchRrw0z4AxED9PL5A
	==
X-Gm-Gg: ASbGnct25Cb3gQ+RzXREinY08/IucUnuehyw9stzPkocRRhhR2KD+bw1Gt3iv2MoXtB
	HryFlcHg1vR12Mj+ZksGV37T8tfjzvOOF/LfT76qHz5sgcsvv2vvyoY8kcR5mEO8a6J4k1xkdKz
	nNwLZlN5mrh6nqIB0/4uFp2tl/4ZL5AsIIZvzwvma9+X/OzaHUvJyOt76EOwKUnbX69ZFjOsR6f
	19Qa0aLEXsjtsZCBBEDs0OY8M2X6k6+CqH8gYzXASGCEh2m8eFsrJdAjrSiC0IPvV5wF3zvD/df
	afHBpFMh3hPyV0NJw+ITsRu1mQ3h+IqEShPxgPDDUyKrH3xpWk0InVNH5pHqqyy83FonLhdeLyO
	59FO8mvDLs2GwBbZltE8=
X-Received: by 2002:a05:620a:408a:b0:7f3:caf0:8412 with SMTP id af79cd13be357-7f3caf08452mr1587630385a.46.1756428474313;
        Thu, 28 Aug 2025 17:47:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEjCgf4If/yLnG9xLRPpSvaRiEUxzvfevF39cHGHA+NM0Oih06WQG6xkNf8xHsAsX5EmFe8lQ==
X-Received: by 2002:a05:620a:408a:b0:7f3:caf0:8412 with SMTP id af79cd13be357-7f3caf08452mr1587627285a.46.1756428473789;
        Thu, 28 Aug 2025 17:47:53 -0700 (PDT)
Received: from x1 (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7fc14754ee8sm80548485a.32.2025.08.28.17.47.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 17:47:53 -0700 (PDT)
Date: Thu, 28 Aug 2025 20:47:47 -0400
From: Brian Masney <bmasney@redhat.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Cristian Marussi <cristian.marussi@arm.com>,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@gmail.com>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Paul Cercueil <paul@crapouillou.net>,
	Keguang Zhang <keguang.zhang@gmail.com>,
	Taichi Sugaya <sugaya.taichi@socionext.com>,
	Takao Orito <orito.takao@socionext.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Jacky Huang <ychuang3@nuvoton.com>,
	Shan-Chun Hung <schung@nuvoton.com>,
	Vladimir Zapolskiy <vz@mleia.com>,
	Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Yixun Lan <dlan@gentoo.org>,
	Steen Hegelund <Steen.Hegelund@microchip.com>,
	Daniel Machon <daniel.machon@microchip.com>,
	UNGLinuxDriver@microchip.com, Orson Zhai <orsonzhai@gmail.com>,
	Baolin Wang <baolin.wang@linux.alibaba.com>,
	Chunyan Zhang <zhang.lyra@gmail.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Michal Simek <michal.simek@amd.com>,
	Maxime Ripard <mripard@kernel.org>,
	Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>,
	Alyssa Rosenzweig <alyssa@rosenzweig.io>,
	Neal Gompa <neal@gompa.dev>,
	Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Max Filippov <jcmvbkbc@gmail.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Daniel Palmer <daniel@thingy.jp>,
	Romain Perier <romain.perier@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Heiko Stuebner <heiko@sntech.de>,
	Andrea della Porta <andrea.porta@suse.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Qin Jian <qinjian@cqplus1.com>, Viresh Kumar <vireshk@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Alex Helms <alexander.helms.jy@renesas.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
Cc: linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
	arm-scmi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	sophgo@lists.linux.dev, linux-mips@vger.kernel.org,
	imx@lists.linux.dev, linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev, linux-stm32@st-md-mailman.stormreply.com,
	patches@opensource.cirrus.com, linux-actions@lists.infradead.org,
	asahi@lists.linux.dev, linux-mediatek@lists.infradead.org,
	linux-arm-msm@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, soc@lists.linux.dev
Subject: Re: [PATCH 000/114] clk: convert drivers from deprecated
 round_rate() to determine_rate()
Message-ID: <aLD4s0sGEaQKD9PQ@x1>
References: <20250811-clk-for-stephen-round-rate-v1-0-b3bf97b038dc@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20250811-clk-for-stephen-round-rate-v1-0-b3bf97b038dc@redhat.com>
User-Agent: Mutt/2.2.14 (2025-02-20)
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: XJZOk6nWxv8_y-EwFm0BUDWut73ykXpKzL7-s-Iei6c_1756428474
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250829_014759_013291_74C1736E 
X-CRM114-Status: GOOD (  13.92  )
X-Mailman-Approved-At: Mon, 20 Oct 2025 04:56:36 -0700
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, Aug 11, 2025 at 11:17:52AM -0400, Brian Masney wrote:
> The round_rate() clk ops is deprecated in the clk framework in favor
> of the determine_rate() clk ops, so let's go ahead and convert the
> various clk drivers using the Coccinelle semantic patch posted below.
> I did a few minor cosmetic cleanups of the code in a few cases.

I posted a v2 patch series with 8 patches from this series that needed a
v2 to:

https://lore.kernel.org/linux-clk/20250828-clk-round-rate-v2-v1-0-b97ec8ba6cc4@redhat.com/T/

Sorry I didn't put PATCH v2 in the subject. I noticed as soon as it
started to send.

In summary, it fixes one merge conflict introduced in linux-next, remove
one case of &*, fix a comment, and removes unnecessary space after a
cast on 5 patches.

There are currently 7 patches from this series that's currently in
linux-next (renesas, spacemit, samsung). 

The relevant remaining 99 patches from this series waiting to be merged
can be grabbed with this command:

b4 am --add-link \
	--cherry-pick 1-37,39-47,52-63,65-67,69-89,91-91,94-94,96-96,100-112,114-114 \
	20250811-clk-for-stephen-round-rate-v1-0-b3bf97b038dc@redhat.com

There's no dependencies with the other series.

Brian


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
