Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 717A5C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Feb 2022 07:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=10uQeOrQY8R0Bh6vH1wVJW6KQmNhvn885POU/mHj2OU=; b=vbYgDEEnWG2oee
	v9zXLvTbZTNA2sg9DyDqj/L8TPdh3FM6f20A2rPw706ZtrvFJVoj2XUwBoF8+OYB8HkRNNxmdQwk8
	3xj6zF+gNhFr+ys5D2iXPriNG98Y4OOxh92+0H+UXzmTwpCIcsVFBnK8Jmq8stQQJMSlqyAY4dbV5
	v6WrNBjl8hQl57GK8YDShjJy9Mx0S7ri+0L5nYE6XyjdtSLHR33L4xARvBqEdmYXwUx+VwJDVeyAR
	K19k8OtEvgsmXylSLNYLD6iuJbIvA8Y0u3R4sZyzvh/FGZ5j+/Vb33gf1CQaoiNdr+eWAmSjbFi9v
	Y4UY9xgWi4gD0SF8Bqqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHhBn-00GRco-V0; Wed, 09 Feb 2022 07:14:55 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHhBc-00GRaH-9l; Wed, 09 Feb 2022 07:14:45 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 0BBE5B81F16;
 Wed,  9 Feb 2022 07:14:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30544C340ED;
 Wed,  9 Feb 2022 07:14:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1644390881;
 bh=wow7Xba07Wy/tQH9b1uW9S6psIbbtqgP3WTlgP6npog=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UD234fovBIkQEnSwuMkPlx89/PjiNEpxdx5go7xy0wpY2oOOMvmLNpfrnJtzwNjuL
 j3E1jn3BXUidik+yxWF2I2AcCHr2uTHsWpVGujOQtmZM4n7BUfiTKJjylMWn2eS2S1
 xocTG8orRshUCDHJESNApJvXB+scrm8Ev8347JyJdf+EVtR+DmK+Nl6mql4j59Ki1K
 Cw2HM93xhjf0EYckTOxaezGE7fb1GSYgv1y/M3BmGxUQM29KerM23MCJtdBs85XHdp
 LJqbuIqfgNbgv4ZLlG41pjGi5DqD2KIgx2zE0MMqDpOMBQjT50j0X5NRZZ3crGDJFL
 uVQ+cd/9UFaHg==
Date: Wed, 9 Feb 2022 15:14:34 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Adam Ford <aford173@gmail.com>
Cc: linux-media@vger.kernel.org, aford@beaconembedded.com,
 cphealy@gmail.com, Lucas Stach <l.stach@pengutronix.de>,
 Rob Herring <robh@kernel.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-staging@lists.linux.dev
Subject: Re: [PATCH V4 02/11] dt-bindings: power: imx8mq: add defines for VPU
 blk-ctrl domains
Message-ID: <20220209071433.GC4909@dragon>
References: <20220125171129.472775-1-aford173@gmail.com>
 <20220125171129.472775-3-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220125171129.472775-3-aford173@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220208_231444_505782_954C22F0 
X-CRM114-Status: GOOD (  11.76  )
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

On Tue, Jan 25, 2022 at 11:11:19AM -0600, Adam Ford wrote:
> From: Lucas Stach <l.stach@pengutronix.de>
> 
> This adds the defines for the power domains provided by the VPU
> blk-ctrl on the i.MX8MQ.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Acked-by: Rob Herring <robh@kernel.org>

When forwarding a patch from someone else, you should add your
Signed-off-by.

Applied, thanks!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
