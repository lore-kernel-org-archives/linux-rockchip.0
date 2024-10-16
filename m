Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81A67D2A541
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Oct 2024 19:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=biQpsmeO+HTvWk3UhCGPirNKRa8n5WVGFlo2rq9QDws=; b=0BKz/YjgLfNGgS
	MGaA204rSx9AygpXQlKCzjjkEVMxUwP0Fq+Vxc9xGUk7t3zDgsk6WiLMCU0XR/z6083Ukq5JFyNGi
	ooewOm9Vvna06mEfSWJ+HTj396lI7QGTenNAhezxbZ6ZUanPl0AnxZ5FMUzdRvAT6HVl7yLfMq3KK
	nMjdjZlj+gLGZ81Qn3v0xzGQ+wNfIeT9owwusja1jHVcy4xPSpqB98/nhFrsv6mSQG9Xzs/7FJ/KK
	CoO2ZRn3wEmsDGXdpshDtVYlQsmn+qiX5fT2v0d3jHk+sBUFibeZhdsEG412mPOy7n2xE3LpT2bCc
	d5HlBenax0cUZ5RV/mkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t19jM-0000000CoAN-0bcM;
	Wed, 16 Oct 2024 19:30:48 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t18im-0000000CfrY-3iPu;
	Wed, 16 Oct 2024 18:26:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 82AB35C51B0;
	Wed, 16 Oct 2024 18:26:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8CFB1C4CEC5;
	Wed, 16 Oct 2024 18:26:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729103167;
	bh=udgXEr4tRU9cVriPhW81FOJfeK1qkSca62T20Hg7T6Q=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=T0jq/SX0o8AUhSM4NRdgUcMgLodf0NzQgJgR2ysxpZxg52SZGuv2AqGGwd2DEOwra
	 YfnqXOFOZ5gs1vrGOKcBMYAAP8RI0iVh3gdbNV4QwqVGlpwduBrE9aOpVMLYI1xs4/
	 8yTfZ6ktovPOgBeYIs23DA0n+MWxDaJYq4xtT4XI0u3yVOnPA7bT72tw8HueJxHIoh
	 irWVqGMs99OUeuRRGFnBZvvhaAUl6u2qqcJn21xTnI5a5V5OjubOh/XHDm2hwWcE22
	 WEnhj45sLhTS1QOeu9vTMVp6H2eln0m8IJOq9hqLO/yzbHmDLJz9sWDAdW2FxIyLWk
	 s7hEg2jJBclGQ==
Message-ID: <87ffdca4bc85313270ae2b109cc4039b.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20240906082511.2963890-2-heiko@sntech.de>
References: <20240906082511.2963890-1-heiko@sntech.de> <20240906082511.2963890-2-heiko@sntech.de>
Subject: Re: [PATCH v4 1/5] dt-bindings: clocks: add binding for gated-fixed-clocks
From: Stephen Boyd <sboyd@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, linux-clk@vger.kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, Conor Dooley <conor.dooley@microchip.com>
To: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com
Date: Wed, 16 Oct 2024 11:26:05 -0700
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_112608_990055_6AEEC453 
X-CRM114-Status: UNSURE (   8.42  )
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

Quoting Heiko Stuebner (2024-09-06 01:25:07)
> In contrast to fixed clocks that are described as ungateable, boards
> sometimes use additional oscillators for things like PCIe reference
> clocks, that need actual supplies to get enabled and enable-gpios to be
> toggled for them to work.
> 
> This adds a binding for such oscillators that are not configurable
> themself, but need to handle supplies for them to work.
> 
> In schematics they often can be seen as
> 
>          ----------------

Applied to clk-next

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
