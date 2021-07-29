Return-Path: <SRS0=cphG=MV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD27CC4338F
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Jul 2021 13:19:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 40CDD60F23
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Jul 2021 13:19:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 40CDD60F23
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uFFd+dKtXW7Q5gnu+U9SXt2WIbGN+s9WUYKRhA3q1VQ=; b=Yp0lU/YwWmgEIX
	/1yj/TIM4LZD4Cq5JtyGNp+E5vaDe+fW18RQaiuKxfXCJgFf8JHr8lKkJuaITdcEiRG9JRxiqqVnx
	ILbPZKhNgNeGXkyzjINZUt6mBz9/zNb2Z9sPaCgBscCdAuEkYMtQDMRfB2ZpMucJs9IEOp5yCkq7W
	5ow8i82yZVzWYfEQ7EG0nx5dZqptT+thLCmDx1WKIkNpz7wkTvXV1RnHp0bnepyZsx9Ny2/B3zNA7
	aguFw44LPchfY1JqOvUh2EaOgm9uQjZIKEmIqmpKdUzFWRk/SJaxkfpNEoS8lNSwwbl1FH5aKg7Kl
	OcoZC8303PnSlceEbbSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m95wc-004CGL-8Z; Thu, 29 Jul 2021 13:19:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m95wZ-004CFF-FI
 for linux-rockchip@lists.infradead.org; Thu, 29 Jul 2021 13:19:24 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1m95wW-0003Jt-Is; Thu, 29 Jul 2021 15:19:20 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, Ezequiel Garcia <ezequiel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>, maccraft123mc@gmail.com,
 Chris Healy <cphealy@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Jonas Karlman <jonas@kwiboo.se>, Hans Verkuil <hverkuil@xs4all.nl>,
 Alex Bee <knaerzche@gmail.com>
Subject: Re: [PATCH v4] arm64: dts: rockchip: Add VPU support for the PX30
Date: Thu, 29 Jul 2021 15:19:16 +0200
Message-Id: <162755606327.1705274.1593160960961175960.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210728230040.17368-1-ezequiel@collabora.com>
References: <20210728230040.17368-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210729_061923_551950_63C3FB62 
X-CRM114-Status: UNSURE (   8.70  )
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

On Wed, 28 Jul 2021 20:00:40 -0300, Ezequiel Garcia wrote:
> The PX30 has a VPU (both decoder and encoder) with a dedicated IOMMU.
> Describe these two entities in device-tree.

Applied, thanks!

[1/1] arm64: dts: rockchip: Add VPU support for the PX30
      commit: 10c68d1788eb29b69b96b5da12c673576922a267

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
