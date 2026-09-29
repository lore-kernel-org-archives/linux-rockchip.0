Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A900FCA5FAC
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2026 21:33:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oS1ddxPWehXj2N5mmC8mhJvvZxsKZwAveIaNhCTuZCQ=; b=mZcpZsOXDHc865
	jK4DHwifgPTn49yMeItjrfVjjkKMKDF3+M7Aq72y5dceRSp5iaFcbP8n7nqt16TTowih6jtVuUOW4
	I8//nyPqwq5yIqNxneBonUkG1orRGrUL7Z2zxXmBqOfj/JcZfISTXPcsUpukVYLTwUW+LwQTUeSFA
	7aVL/Y+STqoJSB7EDhIf+AooLNt+i9PdipP8oOW+ISJix/5KP1ri3xSPPMt/sTrf9xlOPR9CE5/Ow
	gnd+dLkW+35i7RNJ1moQyb4cI1IO8pjMCKD812ZwRufrfmBjKDYriblIBObLhfUDE5xLKTNJLS5ab
	sqJ5pNtYVdDd3vWaXr3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBfRg-00000004bX9-3sgR;
	Tue, 29 Sep 2026 21:33:04 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBfRf-00000004bVn-13NH;
	Tue, 29 Sep 2026 21:33:03 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 051C541311;
	Tue, 29 Sep 2026 21:33:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9AC841F000FF;
	Tue, 29 Sep 2026 21:33:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790717582;
	bh=lelsT5w70qSo6Jz1QIPHWdCUzI8GluF0Gnl5Y70qLj4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Gfnygp67yJoU6wYQYLDHLLsHUQOt3WctNaX7omRMnGuvm1Trzfh2TcVbInjG0SRzC
	 l4y/e5J59XBb1uIJP6uCTkR0bnAHoy5KZmTycC4CSKePUIMHTg2oFKWSR90/GCzXDh
	 o/fmm64t4CTs+61hfFGioN1k3ZiSaTjYvXdPDSKMiXb3wp0ZPFGOfYOxeQ9QHv4Akn
	 Og0tnEZ8BBAP+QxJLIqo/7plV4g/0Hyny+aTmJ+DzDhuuDMv9P330XmTikiI9Yw/R1
	 98tcZsMmJpAdRX0uFEOjwsYZu/vNfp5EYAwW8P6DJogbkEBOgl3chBUEfU7QR0lnOL
	 KIpRVJAVlPBvw==
Date: Tue, 29 Sep 2026 16:33:01 -0500
From: Rob Herring <robh@kernel.org>
To: Michal Wilczynski <m.wilczynski@samsung.com>
Cc: Vinod Koul <vkoul@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Hal Feng <hal.feng@starfivetech.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Dominique Belhachemi <db@domibel.de>,
	Brian Masney <bmasney+clk@redhat.com>,
	Jerome Brunet <jbrunet+clk@baylibre.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-riscv@lists.infradead.org,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Maud Spierings <maud_spierings@murena.io>,
	Graham Markall <hello@big-grey.co.uk>,
	Icenowy Zheng <zhengxingda@iscas.ac.cn>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Joshua Peisach <jpeisach@ubuntu.com>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@baylibre.com>
Subject: Re: [PATCH v5 06/21] dt-bindings: display: verisilicon: Add
 starfive,jh7110-dc8200
Message-ID: <20260929213301.GA2839911-robh@kernel.org>
References: <20260929-jh7110-clean-send-v5-0-82b4d8e3c6c7@samsung.com>
 <CGME20260929103214eucas1p20a39791b0286596d4c33c2e459030943@eucas1p2.samsung.com>
 <20260929-jh7110-clean-send-v5-6-82b4d8e3c6c7@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260929-jh7110-clean-send-v5-6-82b4d8e3c6c7@samsung.com>
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

On Tue, Sep 29, 2026 at 12:31:03PM +0200, Michal Wilczynski wrote:
> The JH7110 embeds a DC8200. The binding requires an SoC specific
> compatible ahead of the generic one, so add the JH7110 to the enum.
> 
> Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
> ---
>  Documentation/devicetree/bindings/display/verisilicon,dc.yaml | 1 +
>  1 file changed, 1 insertion(+)

Acked-by: Rob Herring (Arm) <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
