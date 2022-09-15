Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91607ECAAD3
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Sep 2022 13:49:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GNjFOlh9SgPh/vMZoVN3+3uxxjFvDK6r2zmG6+asOI4=; b=KVsUCL4UdLZlDE
	ECnnO8w4ytMKRO2RnuaORpoKnt37c4Mi/t9daN6lJQHRAUasT0Dsm6tuc891IClPSQZDl7lcJ5mQE
	P0kfxBEs/6IFlU4I8D9+lI++rCkoNopyRc3zVnFfGeWIOA2PD4joWgwil7N4EOi/WCl0wa5HlczBF
	memxDFcwZtEez9jF+ixXRnToijecGRW95QHtYgW448uTMKA+OAn3+sn8gFYhc1p1rScAfcrc1DAuv
	bTmwKZT06ihUYWXV6yRIuXv1n4lMHGylsXu1FxUqLYahtpdd8gGwuTCY3cU0qdwoRCMLXwC4CYzhT
	PJsY9dmrg/frHTBeBtUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYpEx-009hhF-OQ; Thu, 15 Sep 2022 13:49:15 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYpEv-009hfk-79
	for linux-rockchip@lists.infradead.org; Thu, 15 Sep 2022 13:49:14 +0000
Received: from [89.101.193.72] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oYpEt-00053R-62; Thu, 15 Sep 2022 15:49:11 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Furkan Kardame <f.kardame@manjaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	pgwipeout@gmail.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Enable video output on Station M2
Date: Thu, 15 Sep 2022 15:49:07 +0200
Message-Id: <166324955276.172936.11504279408784665143.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220627202208.45770-1-f.kardame@manjaro.org>
References: <20220627202208.45770-1-f.kardame@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220915_064913_277035_741BA26A 
X-CRM114-Status: GOOD (  10.05  )
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

On Mon, 27 Jun 2022 23:22:08 +0300, Furkan Kardame wrote:
> Add the device tree nodes to enable video output on the Station M2.
> Enable the GPU and HDMI nodes and fix the GPU regulator range.

Applied, thanks!

[1/1] arm64: dts: rockchip: Enable video output on Station M2
      commit: 0209861877531ae0744552f3fd0531303d665b52

I have changed the device name in the patch subject to rk3566-roc-pc

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
