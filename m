Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78EEFC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Mar 2022 17:36:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u4pBqXnZruo9ipoVpMx2qwEkKJ0IfVmLq+EPDms6Et4=; b=EiswvVu8ND3Nl7
	16sk7hRv4xUjPpsY+b+wn6/+u1p0Oe04earmjqarWrLbhlhdmEl349WzN+i8WtBmLXFZrjDfxc2yo
	qvUax6WdZPnSqwsPA3xaxp6sl3eGUOdvQ0fZlYBrvhgOr4U253z5mtIoxk0nJwvrUmOhj0c4OEssV
	3xi4G2wxD0xgcL6y4ry34NqkPV1p6qRzD9P2wCyOYZqKRT/ei1tloJKIWq+H5mFEG3IBlb3N1Iav3
	vJxn4jqTB0sbV6di939cxd8uEr04/rQCS2jWoL4hr8AOgu55G+bslGvDTDviPEP2+5lUyDsI4TVNU
	rRf5vdM5ccZ9NXua0MUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQYKC-00DaVh-3J; Sat, 05 Mar 2022 17:36:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQYK9-00DaVB-Di
 for linux-rockchip@lists.infradead.org; Sat, 05 Mar 2022 17:36:10 +0000
Received: from wf0416.dip.tu-dresden.de ([141.76.181.160]
 helo=phil.dip.tu-dresden.de)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nQYJs-000687-W9; Sat, 05 Mar 2022 18:35:53 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: devicetree@vger.kernel.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, lee.jones@linaro.org,
 Chris Morgan <macromorgan@hotmail.com>, robh+dt@kernel.org,
 strit@manjaro.org, mbrugger@suse.com, zyw@rock-chips.com,
 zhangqing@rock-chips.com, linux-rockchip@lists.infradead.org,
 knaerzche@gmail.com, arnaud.ferraris@collabora.com
Subject: Re: (subset) [PATCH 0/4 v5] rk808: Convert bindings to yaml
Date: Sat,  5 Mar 2022 18:35:50 +0100
Message-Id: <164650173745.1811166.11606878506351946894.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220303203958.4904-1-macroalpha82@gmail.com>
References: <20220303203958.4904-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220305_093609_470535_BBC46631 
X-CRM114-Status: GOOD (  13.14  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, 3 Mar 2022 14:39:54 -0600, Chris Morgan wrote:
> Convert the rk808 bindings into yaml format. In order to accomplish
> this some bindings for the rk809 had to be updated to remove
> non-existent vcc inputs. Additionally, some bindings for the rk805
> needed to be updated to add a now-mandatory #clock-cells value, and
> a regulator for a board using the rk818 PMIC needed to be renamed.
> 
> Changes from V4:
>  - The latest version of yamllint, dt_binding_check, and dtbs_check now
>    return no errors for arm and arm64.
>  - Added DCDC_BOOST regulator for rk818 to documentation.
>  - Renamed regulator for rk3188-px3-evb from SWITCH_REG1 to SWITCH_REG
>    to match driver and other rk818 boards.
> 
> [...]

Applied, thanks!

[1/4] arm64: dts: rockchip: Remove vcc13 and vcc14 for rk808
      commit: 079d76ab304227dd29e7bba76736567b5ac73030
[2/4] dts: rockchip: Add #clock-cells value for rk805
      commit: f188620d6f96d398988a22934aa2cac5043c739c
[3/4] dts: rockchip: Update regulator name for PX3
      commit: c042639a70ed00ab2138f507ae1d6fa57c66ce11

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
