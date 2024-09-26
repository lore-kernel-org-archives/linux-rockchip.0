Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFB9FCCFA13
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Sep 2024 09:06:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yLCebdwLXm7vbJTsFcA9GJZD2fn26dazFQsPlAQfeVg=; b=cd6KbUM5J+zF75
	85rY+6GXoCCksEhpI2D7NqAfDWup8TzHlzyM+opgR8HVyEmKZ41C0PpJWbQMJB0vJL9cest52VZPL
	i/Up0WV/Dr6kBFx+8ZNPNoFS4/O7tS/7fdYH85+xFaqVV11F4mVfP2tFJh0GIvcl5svezHRzr0X/e
	f4IVi9BTiHHSvyTJyRRIuJKizSKbAHosZj2X4L6OdKgMZgqmoUMx7dmwtiOjibqTHe2FHlXcRPxHa
	nu1yEQMZBS1N4XAYLdY8mbCO8NwX4QDElgYv5zeh8EeFy8DtFHugCWHtiWz/NOCienIxtPZrtXhLF
	7BC0yjqSYrS76aH/5v6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stkSC-00000007o6J-2NKR;
	Thu, 26 Sep 2024 09:06:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stkHC-00000007lnd-1WYI;
	Thu, 26 Sep 2024 08:55:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=lK1Yk/2ult1Hx8RcFihNnAte3glD+3mv3Tmf7ao1aR8=; b=dMko6XWwUdJhtSeWOyby+IQghr
	ecGOcea60fou56SJQnvJCgPYbYXSorztJxkUJNGSABpxr91Fgyd1t43QmoOa8vR9LYXBd6MqloJ4y
	tPUhQuna1z+UjV2RplZgiCOs/QVhL6aLxjAdgdfPAeAIOBExUXcT4FCcVOo0vc8OjVrUYBhfj2hC6
	x1E5giRQ7lJXFg3zHoy/c+PlFSP/yRc8aRqfDlom+2F2d8yAnNVKoVqu/9mhlxXeeoYlMoRnXhNvC
	hSjFOyqfYRz8cjYp5USm78pdKMdQ5uAMrxvClPKc5PXGQkiiHJ7HrzptLUJDONXUwCJqnjV4OZOCD
	2xPGIdPg==;
Received: from 85-160-70-253.reb.o2.cz ([85.160.70.253] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1stkH8-0001qX-4Q; Thu, 26 Sep 2024 10:55:02 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-spi@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Dragan Simic <dsimic@manjaro.org>
Cc: broonie@kernel.org, oss@helene.moe, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/5] spi: rockchip: Don't check for failed get_fifo_len()
Date: Thu, 26 Sep 2024 10:55:01 +0200
Message-ID: <2382990.BjyWNHgNrj@phil>
In-Reply-To: <ce2e7f90e62b15adc2bed1f53122ad39c3a9b5ac.1727337732.git.dsimic@manjaro.org>
References: <cover.1727337732.git.dsimic@manjaro.org>
 <ce2e7f90e62b15adc2bed1f53122ad39c3a9b5ac.1727337732.git.dsimic@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_015506_442408_F333583F 
X-CRM114-Status: UNSURE (   8.93  )
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

Am Donnerstag, 26. September 2024, 10:38:14 CEST schrieb Dragan Simic:
> Since commit 13a96935e6f6 ("spi: rockchip: Support 64-location deep FIFOs"),
> function get_fifo_len() can no longer return zero, so delete the redundant
> check for zero in function rockchip_spi_probe().
> 
> Signed-off-by: Dragan Simic <dsimic@manjaro.org>

Didn't this topic come up in another recent patch too?

Anyway, having looked up the what the current get_fifo_len does,
the 0 case should never happen, as you describe, so

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
