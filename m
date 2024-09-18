Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A66CCCD191
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Sep 2024 08:50:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LCmJmU3iApig7KfQKY7uA3IaG8RDijUaXzn873BS+Y0=; b=3/cDIod5fBuw50
	OomOiji9bXdFs5sBHUjfMZICqbEqSRN30MQJs+XgyKIFBba8RyKGuxHy3YFjkXC+OCu5C2dYd3odc
	YThVm3Yj3sezaa8Yy7x6IMR3P1I0kHGo3vSFTdFu4QBLtnFQQX9ikfR0KcLbe1RifgdfNuah8tkYK
	LJ8K8MNwj3KVJdtTynrXa+u9aEuG+7ujJEkhQXyFB6GNwPnrjmOzberydScw88ofduE08DfX44+MD
	e0OdC9n1HZFjl1JoCg3oHS9PtAqGMRCdtAdRxNhxrLtXqfHKUrU4ofCObed1eRo/xD3nA5DU2xDHL
	WTPp+ttaJ3NpOYG8JNDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sqqOY-00000007r38-19r7;
	Wed, 18 Sep 2024 08:50:42 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sqqNP-00000007qrD-1mbt;
	Wed, 18 Sep 2024 08:49:34 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id DE13E60006;
	Wed, 18 Sep 2024 08:49:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1726649367;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=N7PSUp9F0oicxLKbSiglCWIy2JAE0zQFupsKW0WeIOI=;
	b=NfXmsEDLfH59Fde0cGBF/U+AlUovywqvIfUMbtIRp1h5wMpDF82iTBVKKVxlO+JrpZtpyx
	CWYeIOQ7XUIw4iAt5+pE3cfM/r2rUcbb5VEihJ+yqL8ObZhUxPoiJ1CnBNXrk40C2Sanyo
	GdXCeYsA8/we755vWK3TxoM4mF0pz5GRag8AvT6wPZGSAw76rJ74kPz283biXIlEOVZe8Q
	dwoD0UWFC3EmGKfvCT8k7liYrO0IjowrZK+R/A+5zEd3bRsivr4mFJ06y1iQEjdhFzLlqG
	PXYXEQh8NrQysrBNiHslLk9HHdO2YCO57hyyyrVJR/zJ4DUXi9UawAwtfO7JBQ==
Date: Wed, 18 Sep 2024 10:49:26 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	heiko@sntech.de, Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: (subset) [PATCH v3 3/6] dt-bindings: rtc: microcrystal,rv3028:
 add #clock-cells property
Message-ID: <172664935562.7925.8121058581671553092.b4-ty@bootlin.com>
References: <20240912142451.2952633-1-karthikeyan@linumiz.com>
 <20240912142451.2952633-4-karthikeyan@linumiz.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240912142451.2952633-4-karthikeyan@linumiz.com>
X-GND-Sasl: alexandre.belloni@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240918_014932_712966_A658F0E3 
X-CRM114-Status: UNSURE (   7.02  )
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

On Thu, 12 Sep 2024 19:54:48 +0530, Karthikeyan Krishnasamy wrote:
> RV3028 RTC has a clock out features, the clk out can be
> controlled using clkout register, to consume the clock out
> from rv3028 '#clock-cells' property is added.
> 
> 

Applied, thanks!

[3/6] dt-bindings: rtc: microcrystal,rv3028: add #clock-cells property
      https://git.kernel.org/abelloni/c/4015580e983d

Best regards,

-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
