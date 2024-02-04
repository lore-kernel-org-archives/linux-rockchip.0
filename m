Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70995C48298
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Feb 2024 11:17:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y8UkPxhFgJ286+8xzx9Pzwa9bYzmwXv60gzj/GCkFbY=; b=iy94KdDUQGdo03
	DYQvHYfTRG7kwFnWfmoMFuJMFb2ekj8t9aY8S5ud7dBJ8sB/YSyurODKHyWKNMd8Da5Smt7A3NuNq
	GmCit8hcre806+4axPvjL2Y6Yvftt5EbWcKjdRFP+Vk5B143LnES/ZhVNw4jO9yMQ+WOcXjvlBxXU
	EFALmvWxfRxhwgTCWpNsY4/kl9ylzj2I1hzgeFx8dxUe0vzY4HTNURysiQCBNkEXl04ehJ571trSu
	A26wQWmhUhRs/Lv69XMqJARMpMF2rCV3NHtwJnDB8M6H/NN0/TB1jJ9lQaji89bJd/W9/7re5PYtT
	NdqIX50K2X6DL7EMJyUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWaUw-00000000e4H-0IMq;
	Sun, 04 Feb 2024 11:17:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWaUs-00000000e33-4AXp;
	Sun, 04 Feb 2024 11:17:16 +0000
Received: from [185.175.219.2] (helo=phil.fosdem.net)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rWaUp-00051V-8I; Sun, 04 Feb 2024 12:17:11 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko.stuebner@cherry.de>,
	linux-arm-kernel@lists.infradead.org,
	quentin.schulz@theobroma-systems.com
Subject: Re: [PATCH] arm64: dts: rockchip: drop unneeded status from rk3588-jaguar gpio-leds
Date: Sun,  4 Feb 2024 12:17:06 +0100
Message-Id: <170704542197.2517832.3939294124436389366.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240129114851.2019861-1-heiko@sntech.de>
References: <20240129114851.2019861-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240204_031715_268951_7C28C56D 
X-CRM114-Status: UNSURE (   9.70  )
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

On Mon, 29 Jan 2024 12:48:51 +0100, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@cherry.de>
> 
> The default status is okay, so it is definitly not necessary to set
> it on a newly added node.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: drop unneeded status from rk3588-jaguar gpio-leds
      commit: bab7ec1d80fe5998ce5ab4480f15e7cce43e2cdf

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
