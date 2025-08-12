Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 555A2CCD199
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 12:03:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WkAQUWLXTyWiMSkE+89EU6+VtfCHfwsmFx6RxX+f1k8=; b=xRJU+lAubCtIYK
	u74bpT1ktScdCPtGlnG7UUXDMQ0jYkQgTAFkFMxlSRZqytXIg5zXtzvaBIiljfq/DOhaCnhgfZKjO
	LCbmew3HRAbcb3VFswLuP+jY9ITv73+CgTAowT711O3OmzuYsa1vRfqOHIfinf0sszcwdKjTd2poW
	El0mP3pt0ITC4A8DkzwuD1knlfxZlk/+GmB5k09fCpG7WYiTBzCICr4s7gMY8/kiX/ElGgWHd2NmC
	hzRTNownkDdiGNBm8iInsVmyRFttBQiiY48hHSzDMKOcy4kSWKtwderslJ58AI7y+GWpMk1UrKxYV
	NVW77ej+vR3lXWpnbH4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAobO-0000000DGT2-2w9Q;
	Mon, 20 Oct 2025 12:03:03 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulmQ6-0000000AWLB-1YRD
	for linux-rockchip@lists.infradead.org;
	Tue, 12 Aug 2025 10:39:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1754995191;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ZNmGluZMVEODqqLey7tscfNEcE8jZgnd0oIotEJMQE8=;
	b=S/w4E4vhnIv9g5/m9EpOWKn80bn4jOLxEYmhjX2Zk5jVtdrmkheWJ3H5FTJz+lA4GV7cpg
	0HdTqXuvrzYOKAK1KSgY9ClDl19f1K7v1Dh2PBKtF4pjpzlLSn3qdkp0A7yJsCCYKnMm92
	1h0YWugJgjLnJlwBhuZZdczNBgjsnjM=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-607-vHr7vgXINTm28z51b96veQ-1; Tue, 12 Aug 2025 06:39:50 -0400
X-MC-Unique: vHr7vgXINTm28z51b96veQ-1
X-Mimecast-MFC-AGG-ID: vHr7vgXINTm28z51b96veQ_1754995190
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7e65340b626so1274939285a.2
        for <linux-rockchip@lists.infradead.org>; Tue, 12 Aug 2025 03:39:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754995190; x=1755599990;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZNmGluZMVEODqqLey7tscfNEcE8jZgnd0oIotEJMQE8=;
        b=Y6Rv8fNHORzfXCFa99GbTrH6N7eVlp+tQgSjW/M5Pe5TX1lrrxg7lsJ/VQKCHaO9G7
         PA/8U9Qj5cNEZML79wARWcFVQzmXc1MfzRXUuQ5E/dX0yl1faC9a2t2BM1rvC187F1fX
         elE3sjtkp9+nGmDiE2oWTGJD00lcqNVlm2Hb1A9oQU1Dui+Ntx7isDoVLhe/ldrsZNq7
         3dA3G7Z8LKwf9Aw7ocpEX1DRS0WaiJBr6J1+XYGxKxVPFzZOkP6ugY5jmaiLILEVd0nJ
         hcx9unXpB2cUKTzWAVttvN0ngo3L11nuCY1EtankKcDBI2aqNlBd+jleubcD39SgqUGW
         x/Ww==
X-Forwarded-Encrypted: i=1; AJvYcCXxNHrNWBJHb3KdHr5sIJ/VuRRiHaZSB7M/4QxhjZqRwcRHYL3wh9V/2XxbVtU745LxiI7r9e3Al21hIleE2g==@lists.infradead.org
X-Gm-Message-State: AOJu0YwY909EKOQR35/j6+wyhaDfIM8l2L8Ggi+wICx+H68JQ+i2XV+j
	VNR3Wp0bUQHL/IkMhfthU0hDEjVhajMGyGrKrJ+1RP4BJ46MFgSJ4EDaxmDRuxBEGbzc1sFHIsM
	2k+fqJAJX7fP+N9feKaQVQYw1kZ65biWhCDnxpjREVm52fruOex8eb7UFkqzuXzUwvBmEj/ee+g
	==
X-Gm-Gg: ASbGncu8VVuqdlxF+0riWmxfzXIHtgyIIgy4s6OjEly7FsyCBqAww7K94C/5UFlzl7i
	4AFuGNXBLkXsCAgCLI0W73iJU+LUP2WGU4bDpxmjSSrUAbsYCPw0JbifArLecImvnzK8jBVai/G
	xW1IkFbymhIUv+xlRk7RKiht75ZaJ+RJ44mloTPEcqIhRHkOKPsTjv0DP/+62JHSXS9QfUzbXng
	x+XOkn3EvRc3obYu+bdPQtofp0/2Hlg6fVOOUDruosulYVyXLNQhPQ+4l0+IDwZicGBUWr6m3nn
	eFvtyVPifybxlr3sRdyq5Ek9fRViWbuQJgPypoT1BDMaeIeV+0902hQbRUh4P68=
X-Received: by 2002:a05:620a:126c:b0:7e8:15ce:bf9f with SMTP id af79cd13be357-7e8588b064emr355641985a.33.1754995189830;
        Tue, 12 Aug 2025 03:39:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFnBK/VwO9xaDEZqPIr5Ki0EDBjQlgku4qoR/ofUy7muXwNiOHVcU/4sdcTQibJSWhG5zm1ew==
X-Received: by 2002:a05:620a:126c:b0:7e8:15ce:bf9f with SMTP id af79cd13be357-7e8588b064emr355631785a.33.1754995188996;
        Tue, 12 Aug 2025 03:39:48 -0700 (PDT)
Received: from x1 (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7e67f73101asm1727614485a.68.2025.08.12.03.39.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 03:39:47 -0700 (PDT)
Date: Tue, 12 Aug 2025 06:39:41 -0400
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
	Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
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
Message-ID: <aJsZ7bs0OMXcrStU@x1>
References: <20250811-clk-for-stephen-round-rate-v1-0-b3bf97b038dc@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20250811-clk-for-stephen-round-rate-v1-0-b3bf97b038dc@redhat.com>
User-Agent: Mutt/2.2.14 (2025-02-20)
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Vf_3aeOJloddgmrGvGa6ikZ04ZnBcEzmKXWBby9jekU_1754995190
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_033954_487451_BA45C926 
X-CRM114-Status: GOOD (  16.42  )
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

On Mon, Aug 11, 2025 at 11:17:52AM -0400, Brian Masney via B4 Relay wrote:
> Once all of my conversion patches across the various trees in the kernel
> have been merged, I will post a small series that removes the
> round_rate() op from the clk core and the documentation. Here's the
> other patch series that are currently in flight that need to be merged
> before we can remove round_rate() from the core.
> 
> - arm32 (3): https://lore.kernel.org/linux-clk/20250710-arm32-clk-round-rate-v1-0-a9146b77aca9@redhat.com/T/
> - clk/tegra (6): https://lore.kernel.org/linux-clk/20250710-clk-tegra-round-rate-v1-0-e48ac3df4279@redhat.com/T/
> - clk/ti (7): https://lore.kernel.org/linux-clk/20250811-b4-clk-ti-round-rate-v1-0-cc0840594a49@redhat.com/T/
> - clocksource (1): https://lore.kernel.org/linux-clk/20250810-clocksource-round-rate-v1-1-486ef53e45eb@redhat.com/T/
> - drm (9): https://lore.kernel.org/linux-clk/20250811-drm-clk-round-rate-v2-0-4a91ccf239cf@redhat.com/T/
> - drm/msm (7): https://lore.kernel.org/linux-clk/20250810-drm-msm-phy-clk-round-rate-v2-0-0fd1f7979c83@redhat.com/T/
> - i2c (1): https://lore.kernel.org/linux-clk/20250810-i2c-round-rate-v1-1-9488b57153e7@redhat.com/T/
> - media (4): https://lore.kernel.org/linux-clk/20250710-media-clk-round-rate-v1-0-a9617b061741@redhat.com/T/
> - mips (1): https://lore.kernel.org/linux-clk/20250810-mips-round-rate-v1-1-54e424c520dd@redhat.com/T/
> - net (1): https://lore.kernel.org/linux-clk/20250810-net-round-rate-v1-1-dbb237c9fe5c@redhat.com/T/
> - peci (1): https://lore.kernel.org/linux-clk/20250810-peci-round-rate-v1-1-ec96d216a455@redhat.com/T/
> - phy (9): https://lore.kernel.org/linux-phy/20250810-phy-clk-round-rate-v2-0-9162470bb9f2@redhat.com/T/
> - pmdomain (1): https://lore.kernel.org/linux-clk/20250810-pmdomain-round-rate-v1-1-1a90dbacdeb6@redhat.com/T/
> - tty (1): https://lore.kernel.org/linux-clk/20250810-tty-round-rate-v1-1-849009f3bdfd@redhat.com/T/

Konrad noticed on patch 90 the space after the cast. I thought I fixed
all of those by hand, but apparently not. I looked through this series
(and the others above) with `grep "u64) "` and `grep "long) "`, and found
4 other cases.

Patch 38: clk: nxp: lpc32xx: convert from round_rate() to determine_rate()
Patch 64: clk: x86: cgu: convert from round_rate() to determine_rate()
Patch 68: clk: zynqmp: divider: convert from round_rate() to determine_rate()
Patch 95: clk: rockchip: half-divider: convert from round_rate() to determine_rate()

Brian


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
