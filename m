Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E204DCF6499
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Sep 2024 11:05:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kibspqntdZfJAacg/P9rsGKfO2NJLtt1s8RKNP2fIZQ=; b=Jfs+frnJYp22Lv
	o+lYs3Nu6rq2GDEs+k6U1BsCoXT+iPwURlFuAsMnPMz3gXGFjlJI5DeIeSvNTD9RXW95riuBwuiH9
	xUPGaiOf3+0r53D8wcq2s7zAC4TscBDD4x2TArNqKU0DnMAeZJNtY+ADmA3UAIcI3Q7jFDS12FKJs
	MjWlQkdRetf+MjkroOFT7O5M3SBuSX49F0mU4+dk5g+R6g2ygpIwLYfslKZ0Gzv0Yh3fHwgwhVKEq
	D0ISsfi9DCWoEFd35y1hkb0XFOgmiRJ3oeWhZTIwiO++QANYZVOb/9ZPNNY55V0rixXcJSnZODTzf
	hPIkkRenxFq3yeLcJ5NA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svEDg-0000000GnHK-1ag5;
	Mon, 30 Sep 2024 11:05:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svE4T-0000000GlRe-3JYl;
	Mon, 30 Sep 2024 10:56:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=4I9m5gG54Sm1ZQZRuUc8e4nrJvimsb06OLbvmpozwl0=; b=sW3SYXsX+oYNhLJeeaO6xVkhoJ
	n24TUAnmxnVEVfCqyHTPIZ3cLV50ycj+FOCQ1WGss1NEBjxzuNu0eE2sMpw9NuRzc0P9qD+aJyiZg
	dpJ0YGDMrsWdLmSPo2FpbXunA47Asd2HluRFyZ34k/PdarnaxnvZEJl4DdL2HLGnNCBupQc+JywOy
	guMUHhewNPYMlVdvFdhuwbbj85f3ujFynngI6rBafQTdqjqj1UmmfAlXMGUloBD3BKqz2iaZBC2xe
	eaUsJN/jexsmTD215w12/vbgs0Mnd5Q2uC3okFwYfC23ayxj12Ijp67cHitOrB6/k4KQEVSl6k6su
	r0EC7knw==;
Received: from i5e861925.versanet.de ([94.134.25.37] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svE4D-0004Xd-DR; Mon, 30 Sep 2024 12:55:49 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	alchark@gmail.com,
	krzk+dt@kernel.org,
	efectn@protonmail.com,
	jonas@kwiboo.se,
	linux-arm-kernel@lists.infradead.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	andyshrk@163.com,
	jagan@edgeble.ai,
	devicetree@vger.kernel.org,
	knaerzche@gmail.com,
	boris.brezillon@collabora.com,
	dsimic@manjaro.org,
	megi@xff.cz,
	sebastian.reichel@collabora.com,
	robh@kernel.org,
	linux-rockchip@lists.infradead.org,
	macromorgan@hotmail.com,
	tim@feathertop.org
Subject: Re: [PATCH v5 0/2] Add support for RK3588S Evaluation board
Date: Mon, 30 Sep 2024 12:55:34 +0200
Message-ID: <172769365134.1880381.8272330238523830438.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240914095456.2347532-1-damon.ding@rock-chips.com>
References: <20240914095456.2347532-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_035605_845995_EC07236D 
X-CRM114-Status: UNSURE (   9.45  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sat, 14 Sep 2024 17:54:54 +0800, Damon Ding wrote:
> RK3588S EVB1 board features:
> - Rockchip RK3588S
> - PMIC: RK806-2x2pcs+DiscretePower
> - RAM: LPDDR4/4x 2pcsx 32bit
> - ROM: eMMC5.1+ SPI Falsh
> 
> Damon Ding (2):
>   dt-bindings: arm: rockchip: Add RK3588S EVB1 board
>   arm64: dts: rockchip: Add RK3588S EVB1 board
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Add RK3588S EVB1 board
      commit: fab49faebdfb0c3cdec6c70334e52f65343d130c
[2/2] arm64: dts: rockchip: Add RK3588S EVB1 board
      commit: 00c7fb3b8ab25c496931686860a09994c93c76e6

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
