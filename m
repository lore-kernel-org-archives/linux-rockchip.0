Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3855C4706F
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Dec 2023 22:55:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uo9m6DXcGyCuTHYv+XHNYc17+FVVPUzXdJP0eUrpKJM=; b=j8Pqg7g+lJRNyZ
	FgD2OTznrBj+MDs5lEUBeOqf5ZD/EpYvV3xDqSvuqDp3wYg5ncym6UnacZOvW4ciYEmRPdCwVdRP0
	kl5gqh8omKZ1NVR5arBl/HuYUafja83/QpM2InD+WpydsUB+e1KW0GX1x+HHA1pNTpzSAR5IPd9pO
	v76juqKaS4cWkbleyYfkqaZ8ttMo70DRLhdK1ZFxmn7RQFkdtLTcKMB7i958tKrVcvgJglpF/TC/n
	Jio0LwpPcShCl4NNhUJTe5D801YLiYV6bECbyouKSy59xuicnNeSWXMxY4aJYQESZosj5j0ZJwmvq
	hbZHggOb7XvtJErbuLNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJLlD-001iES-2e;
	Fri, 29 Dec 2023 22:55:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJLl9-001iCb-19;
	Fri, 29 Dec 2023 22:55:20 +0000
Received: from i53875a56.versanet.de ([83.135.90.86] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rJLl7-0004VA-Ot; Fri, 29 Dec 2023 23:55:17 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Support poweroff on Orange Pi 5
Date: Fri, 29 Dec 2023 23:55:12 +0100
Message-Id: <170389050012.2630399.823278864304556357.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231227203211.1047-1-honyuenkwun@gmail.com>
References: <20231227203211.1047-1-honyuenkwun@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231229_145519_400434_934F1107 
X-CRM114-Status: UNSURE (   9.95  )
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

On Wed, 27 Dec 2023 14:32:11 -0600, Jimmy Hon wrote:
> The RK806 on the Orange Pi 5 can be used to power on/off the whole board.
> Mark it as the system power controller.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Support poweroff on Orange Pi 5
      commit: e9126f9d3c83acbc88461a535e24c949c7e0b6ca

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
