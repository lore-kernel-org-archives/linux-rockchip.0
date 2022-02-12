Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9560C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Feb 2022 00:29:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D1n9pp5I8f0CHjuSCivOuPWVppjArKkVSKQeT38Tq78=; b=kySjS/H7/XU8if
	8RavrYLVQYBJ0NCHGPyRJd1leSPYRPj37tDmN2S6YXul5tUIZ3Oi5BU0D2BGhn0WPm2NmzVn2o0/v
	zvDs3IuLw30IxBwDaHlrFwLxZGuWc9CWcmqMcF28qENSbW8k0U0bmmzj+De4OFr3XJbUAIUD1e7Kc
	YI0CpkL8zDMmdPqGV1bTpcjyxZpSE47e2mSWa2cjQfN7krTUBy8FWM8hejGfETmHuUjiungfzMEL4
	Ncpiadu7162u9YBdKqtP7D1E0GyAb/FX3fdUXrqO9DVi+hxhcnD479ZsGIAJjQHrOmGTz+1wixzij
	LfJdNMbDUUuCw4vL0eUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIgI8-009B0J-Mz; Sat, 12 Feb 2022 00:29:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIgHi-009Ana-8Z; Sat, 12 Feb 2022 00:29:10 +0000
Received: from p508fd6ee.dip0.t-ipconnect.de ([80.143.214.238]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nIgHE-0003EL-HH; Sat, 12 Feb 2022 01:28:36 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 Johan Jonker <jbx6244@gmail.com>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm: dts: rockchip rk322x: reorder hmdi clocks
Date: Sat, 12 Feb 2022 01:28:34 +0100
Message-Id: <164462570821.854738.7048363448978256354.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220210142353.3420859-1-s.hauer@pengutronix.de>
References: <20220210142353.3420859-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_162906_314680_ABEA4F4F 
X-CRM114-Status: UNSURE (   8.58  )
X-CRM114-Notice: Please train this message.
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

On Thu, 10 Feb 2022 15:23:53 +0100, Sascha Hauer wrote:
> The binding specifies the clock order to "iahb", "isfr", "cec". Reorder
> the clocks accordingly.

Applied, thanks!

[1/1] arm: dts: rockchip rk322x: reorder hmdi clocks
      commit: be4e65bdffab5f588044325117df77dad7e9c45a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
