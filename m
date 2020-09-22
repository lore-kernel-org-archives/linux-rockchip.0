Return-Path: <SRS0=X5eU=C7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AF3CC2D0E2
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 19:45:30 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DB32A238D6
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 19:45:29 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="jj1LfrGd";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="fw/WQkx9"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DB32A238D6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:References:
	In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ANOxBJIvKgFaDHFOv6ey1XQ5jRCWLEa2ufzhCkcHmaM=; b=jj1LfrGdBrHYfjr2YfQ/IBiQR
	mZnwEa5CqIcF40Pg2Kn+7LgiXrmTvYjBKDxdmD1lPNINOdmgk8KH91BezB9BSXGPGGQsFO4wCrxGm
	4B2nr8Bcq29ErA3KhSOWZ2xTUg72LHMVqUR3NTwb8rL4ZI/DfZ3mEWyaCd2LPfpu+Zwq5YKXnz7lE
	iqk+IBAkb5zypGdgLViSPpmqgzA4NJTDVBbnRFJBmuGLKJI4V+Ql/lq3kRexzN8wQvQNi5fZWC7E/
	Hqs1zvek1p1TbmRHCh21FC5qsGw9agEPz3N7dIunda5daCRX/qpoDHfHaGTCmoWOi+DQ4YPRzYEoW
	uL/qcNWNw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kKoE5-0005MI-1N; Tue, 22 Sep 2020 19:45:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKoDn-0005Fv-6M; Tue, 22 Sep 2020 19:45:04 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 34FFF23787;
 Tue, 22 Sep 2020 19:45:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600803902;
 bh=yBAsRkgb+YjtLB+er/pY3xx7d5wgjjdSRJG+VAjtO3I=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=fw/WQkx9C1Hvt3/1k76ShL8h+i2T8H6yk9lS8zStPVeK8XwJpRz0iZt5TWD7789J8
 XlWtlnXD9KzrcI6IDwKDB4ozCiHLBRUxgSlCr0MLRTEdj1RpaT/Tw2RoKRPGxJBnHw
 O8Y9H1u0nk5gMEvulPnojcfbWlUQrjir5I+n7Mes=
MIME-Version: 1.0
In-Reply-To: <20200916161740.14173-3-krzk@kernel.org>
References: <20200916161740.14173-1-krzk@kernel.org>
 <20200916161740.14173-3-krzk@kernel.org>
Subject: Re: [PATCH 3/6] clk: davinci: add missing kerneldoc
From: Stephen Boyd <sboyd@kernel.org>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 David Lechner <david@lechnology.com>, Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, Sekhar Nori <nsekhar@ti.com>,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Date: Tue, 22 Sep 2020 12:45:00 -0700
Message-ID: <160080390093.310579.11470222037564752365@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200922_154503_964257_D1430643 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Quoting Krzysztof Kozlowski (2020-09-16 09:17:37)
> Add missing kerneldoc to fix compile warning:
> 
>   drivers/clk/davinci/da8xx-cfgchip.c:578: warning: Function parameter or member 'dev' not described in 'da8xx_cfgchip_register_usb1_clk48'
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> Reviewed-by: David Lechner <david@lechnology.com>
> ---

Applied to clk-next

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
