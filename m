Return-Path: <SRS0=pRwE=CY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1EB9C43461
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Sep 2020 00:42:06 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 610F5214F1
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Sep 2020 00:42:04 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="IHxWF9kh";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="TXjeCLz/"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 610F5214F1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:References:
	In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZN34nEcL8preeBw1bDcXpei8hIXS5d6+QJRrdSRRhT0=; b=IHxWF9khMTeCQVziX3AtBc1So
	lbP5xj5KrtyqRUeODM0UQiT/R8rDF0gdjcJagbeEhVAlock0B33mWYM4PKdZ8jFlNIt5x75NYjdrs
	VEv4Ernt1BxEUbBEzOKSARMe4d2+OzUr1nQOp0d/v7zn+zV6yBCpuy1mCKQ469EsKcJWfLR13ojW9
	chQWEvDSUFiPfbly30QuoI8kh4lXjM3mEXdfc6C9QNFPhXl2NmQ8NNooEgb2qxOMBF5PuNc+Cp8xw
	7u7pwl9HfZ7m4hwVr4kzccC9TiJ2zaYnu9HzFWky7RcobTgfC0hSwhLcHnp6BKrbseqMiqsXHRbtp
	P4gwxbVRA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kHz2h-0006kB-RX; Tue, 15 Sep 2020 00:41:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHz2g-0006jh-3W
 for linux-rockchip@lists.infradead.org; Tue, 15 Sep 2020 00:41:54 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6406E214F1;
 Tue, 15 Sep 2020 00:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600130513;
 bh=nrrLFNnvy3PSRjxTE3+1fmxu4B1t4fKYxyDJOkeX/64=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=TXjeCLz/zkEukWnP0x8CYTZR+kUAbe6PFRznWz1YUW4vTbX0mxyhQrddxjmjDa8xJ
 78x1qG6IFljzs09kySijYeVf/M5jKUw3EWl0xPk1PQoQWwv9G+uu9heTsp41hkB5qx
 uh/zwvusfzsu3YeQNUJXQTdEBG5GvbFtUq2+vIeg=
MIME-Version: 1.0
In-Reply-To: <20200914022225.23613-3-zhangqing@rock-chips.com>
References: <20200914022225.23613-1-zhangqing@rock-chips.com>
 <20200914022225.23613-3-zhangqing@rock-chips.com>
Subject: Re: [PATCH v4 2/6] clk: rockchip: Export
 rockchip_clk_register_ddrclk()
From: Stephen Boyd <sboyd@kernel.org>
To: Elaine Zhang <zhangqing@rock-chips.com>, heiko@sntech.de
Date: Mon, 14 Sep 2020 17:41:52 -0700
Message-ID: <160013051226.4188128.14911114572938623675@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200914_204154_213845_F7DB7E35 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: huangtao@rock-chips.com, xf@rock-chips.com, mturquette@baylibre.com,
 Elaine Zhang <zhangqing@rock-chips.com>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, kever.yang@rock-chips.com,
 linux-rockchip@lists.infradead.org, xxx@rock-chips.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Quoting Elaine Zhang (2020-09-13 19:22:21)
> This is used by the Rockchip clk driver, export it to allow that
> driver to be compiled as a module..
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
