Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B75BCA100C
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Sep 2025 00:53:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KWLKUVk1T+kk5xQ/CaLyA+9DxpSxJ7wXnHmvGWZBjY0=; b=ATP2wB317O2l74
	7nhdncb1CxnyeNvq7b9KG++2ipJQ3E7HmOZYkp7rVg6KNLwKPpWJlkSlOA05pzsvwcJOwNl9J65i/
	GGRqEIUxfv5zCxgFwcwiu/FG/9uVIPwrceNj89bQySABW8ATf2xDgWo3Vzw3+R7bjUjoCd66Mv1K/
	CoV+Z7AGYFvPRj8x+390CKSXeHzN7MumxwVo8jW/iDfiWsBhuFvGhhF3wp4eqtnTUPkPuE+NWQjp/
	6m8Ws59YbDyf8KzTrlKB1Y9dcNRoTk6LQGl4KbwX8SX0jo0+0ZS7OnaIqDohx6B3J1UGcXcavFgXa
	8npn6tRfqAhIS+3NnBKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utFHB-0000000EZyH-3kIK;
	Tue, 02 Sep 2025 00:53:33 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utC8e-0000000DzIo-0L1b;
	Mon, 01 Sep 2025 21:32:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 7AEA344074;
	Mon,  1 Sep 2025 21:32:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A74AC4CEF0;
	Mon,  1 Sep 2025 21:32:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756762351;
	bh=XJtUW54wFVnqUN/GjGXLK8CdHk3O9QHu7uFpdEFxdw4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ODajV7gaIdI7Peny6U62Mdbzmn17K9c0n4WpKG92q5YyVAysBnZMEGw4Et5oG5ko1
	 rL9IhH1ttdwkSZdj3hu7eMuqcD+1x3Mp+xA1M6SfkZgn0aP5qzETf8UyPlPKZouX+T
	 nFY5rqZx1stDmtbCB/UWDJaeHMuoXq3P22KYL4bAIredkKjBmP9b7l/JJbJu13HESr
	 BYSlVclAMrS54rDQM7Yu0zQtdMFUR/KtdHhyqZ+DgK4U6/p8SMJecIlbC/5sKl4H/9
	 jAW7TlRg0vlEA8idVSL7tX4DdDEltK0kidhIG/jVqNtp/fi7bgmft1iIHwDwY9YYqu
	 RifmqcGWDUVhQ==
Date: Mon, 1 Sep 2025 16:32:30 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: WeiHao Li <cn.liweihao@gmail.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org,
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, hjc@rock-chips.com,
	andy.yan@rock-chips.com
Subject: Re: [PATCH v1 3/7] dt-bindings: clock: rk3368: Add SCLK_MIPIDSI_24M
Message-ID: <175676234944.379480.9026638393609375066.robh@kernel.org>
References: <20250831104855.45883-1-cn.liweihao@gmail.com>
 <20250831104855.45883-4-cn.liweihao@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250831104855.45883-4-cn.liweihao@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250901_143232_138007_011BADC0 
X-CRM114-Status: UNSURE (   8.76  )
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


On Sun, 31 Aug 2025 18:48:51 +0800, WeiHao Li wrote:
> Add a clock id for mipi dsi reference clock, mipi dsi node used it.
> 
> Signed-off-by: WeiHao Li <cn.liweihao@gmail.com>
> ---
>  include/dt-bindings/clock/rk3368-cru.h | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
