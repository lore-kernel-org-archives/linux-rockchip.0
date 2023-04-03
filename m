Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57DDAC761A6
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Apr 2023 10:23:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LYsep39m3zKfCJ67vFHzoehEdxrZJhIP5AYvegSWluo=; b=kdHf3mbK3K9cgZ
	aqdgjS7IKzhQEw7GzdHeXTDXirp0R2U0ogP7EKvRs2FwZuaanViTwzx8dFGWdCKvgoyqT0DkeW/xG
	9YGQ0s3BR+5WKJzhwtkm/ogMLPy+PIiqxxEckIK1A4VI3akPYZSw/oX6B2XPArf1uJCi8R4+Jgts3
	oncZMdTGB709awaXI6ZzONqMCCOKLAyD/uG9BfxXSKjfQ2GyefAK+qbyg/YmPAs9hwHYrHkCIaia5
	1V3dGtVaJpfWZU1eb8USnDq576tP0eLZFW80KKivMCvDHM+ThDlnOX7/8w+zy/hu8uBBTcs6XkOCz
	aVzb1HYFnV6pH3yTzHSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjHLU-00Euue-32;
	Mon, 03 Apr 2023 10:23:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjHLS-00Eusr-2K;
	Mon, 03 Apr 2023 10:23:27 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pjHLI-0006VW-Dh; Mon, 03 Apr 2023 12:23:16 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Vincent Legoll <vincent.legoll@gmail.com>
Cc: linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 Finley Xiao <finley.xiao@rock-chips.com>, Jagan Teki <jagan@edgeble.ai>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Boris Brezillon <boris.brezillon@collabora.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
Subject: Re: [PATCHv1 0/2] Improve RK3588 clocks and power domains support
Date: Mon, 03 Apr 2023 12:22:39 +0200
Message-ID: <22215580.EfDdHjke4D@diego>
In-Reply-To:  <CAEwRq=q=W57W33nYe_uUDQb0cf7QkFoa0rO+EWdsuUGTN7k_Vg@mail.gmail.com>
References:  <20230331163058.5688-1-sebastian.reichel@collabora.com>
 <CAEwRq=q=W57W33nYe_uUDQb0cf7QkFoa0rO+EWdsuUGTN7k_Vg@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_032326_757298_69D8F0EB 
X-CRM114-Status: GOOD (  12.43  )
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

Hi,

Am Samstag, 1. April 2023, 16:30:53 CEST schrieb Vincent Legoll:
> Hello,
> 
> I'm running a QuartzPro64 with this patch set applied, everything(*)
> works properly.
> 
> (*) eMMC, SD, LED, ethernet, serial, watchdog.
> 
> Are there any tests I can do to help with this ?

gmac1 and sdmmc do reference power-domains in the dts, so things should
be fine and I guess if your system boots successfully this might be enough.

If you want to check more, try
# mkdir /debug
# mount none /debug -t debugfs
[or do this to a location of your choice, I guess the standard is under /proc]

# cat /debug/pm_genpd/pm_genpd_summary

and check the runtime_status field.


Also you could provide a email-reply with a

Tested-by: Your Name <your-email>

line in it :-)


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
