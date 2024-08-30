Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E5EDCA0FFF
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Aug 2024 15:15:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d6G/JPeLLTO8nvLOb/baRzMsOA2gZ5hrVTEzmyIE2gk=; b=CLKZZU8X0Q3BY0
	SpQlWbp8jL6pP5f338Qps/qIgkWaxHxBUfIU/dOVlbfCHzdSR0FSnlZJ0CbJXLrZZgEH8fTGgYmiI
	pnnjrnxa1lDJv0j+mI80k8Ptw+7ed3Q5a1qpyv3mhthJq/9ybwmr8MKIjpyLaPQe9c6iF/C+S8vZG
	/ud+AAjROUIbc0hhn5ThtWSjRA9qtaby20Y7MU6BjcQl+jvij/qGDkCHmusGQC2QSpiZfl/PGT8Fi
	3scHzFqFDWCwD22HUvt8Q06kfuy+JzMM369n+ZNevsZ0D5OasFY6kNdNQ5v1xGbx7mFcUAvCUWrEI
	yfiYd8DrasP6yDQrIX6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk3Kw-00000006k3H-1U5a;
	Fri, 30 Aug 2024 15:14:54 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk3JQ-00000006jpy-3DXq
	for linux-rockchip@lists.infradead.org;
	Fri, 30 Aug 2024 15:13:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=mKoAUCPLIx2u8bDuKHDW2AwZSGh12y/DJxrGx1xVQAs=; b=X79uT/JWFVwscl4U2i8M02fhoP
	kD3xNG8y1qE0GGmzAvTBZepPRr8LTp2O8vaC5ebYelXYmImEXCSoDzhqyC3e1rcrUZVON8gVYMcYq
	OGajtNQ7E0qM1dJJxLWQSARZ528qEu/IupAKSC5d4lmEOhMrGZfhDxwYRhNAt45GWHyebuAcaXexC
	MQHwrlxWafQYd0Szhsuv9UNczv8ud539gs4rkBtfQ9pMcEi0uG8eHkvlg4ob+WllA2acKrvpPMZY2
	ZFbLh8L83boy2B+9urT+fIWN1hUYU4AXaFPlucJ66N8GdK+GQM5TpXtphWeC+IkO1WJgXpIqSpFDh
	EdYTC1ZQ==;
Received: from i5e861921.versanet.de ([94.134.25.33] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sk3JG-0004MP-Iy; Fri, 30 Aug 2024 17:13:10 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
	Stephen Boyd <sboyd@kernel.org>,
	linux-clk@vger.kernel.org,
	Michael Turquette <mturquette@baylibre.com>,
	Detlev Casanova <detlev.casanova@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	andy.yan@rock-chips.com,
	Michal Tomek <mtdev79b@gmail.com>,
	huangtao@rock-chips.com,
	Elaine Zhang <zhangqing@rock-chips.com>,
	linux-rockchip@lists.infradead.org,
	Chad LeClair <leclair@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kever Yang <kever.yang@rock-chips.com>,
	kernel@collabora.com,
	Ilya K <me@0upti.me>
Subject: Re: (subset) [PATCH v9 0/7] rockchip: clk: add GATE_LINK support
Date: Fri, 30 Aug 2024 17:13:05 +0200
Message-ID: <172503062006.1956268.2661371879547817382.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240325193609.237182-1-sebastian.reichel@collabora.com>
References: <20240325193609.237182-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_081320_849696_E65CB719 
X-CRM114-Status: GOOD (  13.95  )
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

On Mon, 25 Mar 2024 20:33:31 +0100, Sebastian Reichel wrote:
> This implements proper GATE_LINK support following the suggestion from Stephen
> Boyd to use clk PM operations by creating MFD dynamically. This required some
> restructuring, since CLK_OF_DECLARE() is called before devices are available.
> 
> Apart from improved power consumption, this fixes the runtime errors from the
> pmdomain driver (failed to set idle on domain '%s').
> 
> [...]

Applied, thanks!

[1/7] clk: rockchip: rk3588: drop unused code
      commit: 2e7b3daa8cb1ebd17e6a7f417ef5e6553203035c

@Detlev: I think the rk3576 driver I added days ago, might also want
that change? Can you take a look please?
[I don't have rk3576 hardware, so can't check myself ;-) ]


[5/7] clk: rockchip: fix error for unknown clocks
      commit: 12fd64babaca4dc09d072f63eda76ba44119816a

I've added a fixes that to that, looks like overlooked that issue
way back in 2014 ... pure nostalgia.


Anyway, rest of the series hopefully later today.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
