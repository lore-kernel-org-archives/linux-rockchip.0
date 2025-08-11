Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00E90CCD1A5
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 12:02:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VqQggmjH7hcClJ6GtDjg8VMq0IiEpZNkbG7KFpifOh4=; b=lNuXmob7jV31E2
	9cGNQnoMaR6ylskhcqmRYxNvKReipluXGSlUTVt7WCDHEip10mORySoLIbLjgk3iu53z/bZK38EVw
	sJXMNgGjL2TSaFkmk/uLZjaBWY/ZyfLGSLJB5MXjuJiy6eec1eBYsr8x7qu0fBdlI5m4PTuPbUE7O
	jzyj3F5kZ6VSwmf0c5q6hhVG+1IPgRUEnsjY0k5gKQzOVrjCZbh+eUtNDZO32EZO4MEZXU0I5FmnC
	GSHyWXv+l4EHATA/LTxKIEdDk8f5bw1AQGUzLFSNnnckwkuJLRwtDZRHgpjovn9NCCeJySzkjqXRT
	mxZxdh40nRkAIeFUgWLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAoax-0000000DG7T-2XVg;
	Mon, 20 Oct 2025 12:02:35 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulUuA-00000008IhG-15Sz
	for linux-rockchip@lists.infradead.org;
	Mon, 11 Aug 2025 15:57:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1754927865;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=UPMcKR4Oi745bR8iqUsDP5qg1uYaCMtbYLompUhICNQ=;
	b=iN2EhbD90ie9CgoZVivdz9sre9b3D2VhxMFSPXr82443LS5XVYsBZBJS3GaenR1zqD3r3r
	vNVf5vXrUJvYkljprd2yRlwZ+anMLZaWze/RNW989bOQiHjwcqdO0PgG2YWDAGGMfA6ngH
	Kn7kWXLB0lDk8wsaPK/R1E2LkxSfqks=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-435-Q_5yu7JVOUapPUtXMEtCMg-1; Mon, 11 Aug 2025 11:57:44 -0400
X-MC-Unique: Q_5yu7JVOUapPUtXMEtCMg-1
X-Mimecast-MFC-AGG-ID: Q_5yu7JVOUapPUtXMEtCMg_1754927862
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-7074bad04efso100711936d6.1
        for <linux-rockchip@lists.infradead.org>; Mon, 11 Aug 2025 08:57:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754927862; x=1755532662;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UPMcKR4Oi745bR8iqUsDP5qg1uYaCMtbYLompUhICNQ=;
        b=CkRs8lZH6M66Wae9K0MUhUA0D5VhcPqekHrXAqKemcvWk3aR9/yMGKkBVzyt/OJly1
         axKrZst7emvhQyXOoBvPQtB+Rrs4ii/Zf/izPIEMDaATCuKe+lXRfwSM4vC7s7rDP3gm
         nAyir6KBvPuMTrDwI4vRdRBBi9g2USWbZgJYzT/0Qrx4lfi8BQbdiX377Q1XAhwdrhmJ
         Ej48gNysA5ogNabdd+EhDpF3vbiH6lZswRxAohO55Vwkk+mGTvIjqJUY6NOxmQ+eR8xm
         OYofmgHlsBQ8czqKGLg8A5Oo8ft1fLPYZ2NHfg1HzdBf322JlGi7lixuE6DNv1D42ITU
         rTqg==
X-Forwarded-Encrypted: i=1; AJvYcCU6G/O1HYtsP0QcrOKjFUb13n45Q2+JutBkkRcRNPkby0JEqdFy4Qx2PAmYc1C3cn6niDz0ObkgSkIFI9kYuA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy7lIi3c3XLdiBkYGl9GxfA5o4WrRC2YdAIMM/H8xHE/EdBXW+k
	xoVq0CD7AtDBxvLlt14wAtGyqhDo+hi09hIIfhzDuSTZjF0mTbxSsuet9CJE8/AMXIny/FLFck6
	gf9JsYevdJ3Tpa4K4Li8dmsu/ib57jENklzA6CnYuLnVyHIdOp9sRa9Hp904bGxGYHte6DxclBQ
	==
X-Gm-Gg: ASbGncv95DZ6XFAgI0egWZl4/lwmm/sN2xxUJApi/usGmX7Es4cDouvicEmxL1dTgTx
	vllEnRBF1ra+EjKx2KAFYyZVMnxHrw94Kp+ri6plV1qgfLX8lxNCjT4DI2PDZEgYcXu2GOBNtY6
	qXG6wkNwKOSmCGobHBZvfWrPqTL2YZqD8qxKGwGgUwcBKgl63z1vIuAvSmoQqaaiIZcZH8k7Mo6
	wg/pcEahJvFIR+feq1VVvglRLqUi/rSwVDT0+UweB+AJql5OZuUAv19SaYvnnXiZvl2u3xU8UdE
	73CLIw0mPtjxfCBpDtdV7dh8rY8foQ/bdK87mm6lEOarCUWfskADCpkFzruBvxE=
X-Received: by 2002:ad4:5fce:0:b0:707:612d:3adb with SMTP id 6a1803df08f44-709d69b2c0emr1135236d6.18.1754927862235;
        Mon, 11 Aug 2025 08:57:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE83iNLxuXWBRGJIeIFUZHblancM50VRXiEQcjWFBbyuLTm1IZWPJbr6gZfh6Uj5SzS3+J40w==
X-Received: by 2002:ad4:5fce:0:b0:707:612d:3adb with SMTP id 6a1803df08f44-709d69b2c0emr1133886d6.18.1754927861515;
        Mon, 11 Aug 2025 08:57:41 -0700 (PDT)
Received: from x1 (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-7077cde5b4esm155566456d6.69.2025.08.11.08.57.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Aug 2025 08:57:40 -0700 (PDT)
Date: Mon, 11 Aug 2025 11:57:34 -0400
From: Brian Masney <bmasney@redhat.com>
To: Alexander Sverdlin <alexander.sverdlin@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
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
Subject: Re: [PATCH 048/114] clk: sophgo: sg2042-clkgen: convert from
 round_rate() to determine_rate()
Message-ID: <aJoS7twZC0WsIDY5@x1>
References: <20250811-clk-for-stephen-round-rate-v1-0-b3bf97b038dc@redhat.com>
 <20250811-clk-for-stephen-round-rate-v1-48-b3bf97b038dc@redhat.com>
 <9379f132e52c972b2735cad768242cb784b0ed2b.camel@gmail.com>
MIME-Version: 1.0
In-Reply-To: <9379f132e52c972b2735cad768242cb784b0ed2b.camel@gmail.com>
User-Agent: Mutt/2.2.14 (2025-02-20)
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 7mCxA1V9zVNKRxCK_Fv_77q4elZ97sI8unhZdN7bkAA_1754927862
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_085746_376159_D7C57F7C 
X-CRM114-Status: GOOD (  16.37  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, Aug 11, 2025 at 05:45:57PM +0200, Alexander Sverdlin wrote:
> On Mon, 2025-08-11 at 11:18 -0400, Brian Masney via B4 Relay wrote:
> > @@ -192,15 +191,17 @@ static long sg2042_clk_divider_round_rate(struct =
clk_hw *hw,
> > =A0			bestdiv =3D readl(divider->reg) >> divider->shift;
> > =A0			bestdiv &=3D clk_div_mask(divider->width);
> > =A0		}
> > -		ret_rate =3D DIV_ROUND_UP_ULL((u64)*prate, bestdiv);
> > +		ret_rate =3D DIV_ROUND_UP_ULL((u64)*&req->best_parent_rate, bestdiv);
>                                                  ^^
> May "*&" be redundand?

Yes, I agree that needs dropped and something I missed when I cleaned
things up by hand. I verified that this is the only case in this series,
and all of the other series that I referenced on the cover letter, where
this occurred.

My Coccinelle semantic patch has a case when the parent rate is
dereferenced, and I'm not sure why that wasn't converted here since it
works elsewhere.

    long round_rate_name(struct clk_hw *hw_param, unsigned long rate_param,
                  unsigned long *parent_rate_param)
    {
    <...
    (
    - *parent_rate_param
    + req->best_parent_rate
    |
    - parent_rate_param
    + &req->best_parent_rate
    )
    ...>
    }

I'll wait a few weeks to send out a v2 to hopefully let big chunks of
this series get merged so that I don't have to send out 114 patches
again for a v2.

Brian


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
