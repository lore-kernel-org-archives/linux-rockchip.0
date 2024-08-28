Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DD3CC636E5
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 17:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=85wmBFyP3vacxrZyV5GUVpxCg5oUZb4wu++KDGLurCk=; b=LE17JVA8sNWjwd
	A1ZlZ5bN0zzDX0dx8QcD8XZ4oosZfqWgWPIZqDhFWTWEPfb5yc61ISzLIVZWqJBJ0FGuxEuCyIspO
	ZUCYTijOOPX/JsAgN2/V39HjMv2zQGBxkUYLKt5JxFRZ8/IoBrf4kH77IcVutFywKIidE1YzYikBd
	NA8CXfgQiof9efzRRkxYW/czpwGey+NoxQn87PXMHo0qO1JLZAMPGIDBNAAj/s2BMKc8aB7BzLJX2
	jv6LCd0hnpAnL1d7U6YbVZsGus4XXgC8RGA+qD0VyrqTObzfodZMsw5V9MC2/hpEDfD+xklefNacZ
	ryUVBmVLnsnJZg2MK+wA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjM4X-0000000GHtY-1bSM;
	Wed, 28 Aug 2024 17:03:05 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjM21-0000000GHBU-3pwM;
	Wed, 28 Aug 2024 17:00:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id E909AA414F1;
	Wed, 28 Aug 2024 17:00:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C841C4CEC7;
	Wed, 28 Aug 2024 17:00:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724864428;
	bh=b1/yAhL78h8Qexpk6AQkwIxD117TkTuBxuGjc8ZTs/Y=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=MAMo9qGDvfnno5VtsBng//64g+l74YvpodpqJGZfDDIkAN9UbL7DXkLOPUd6WLk47
	 kwoIMFMX1DQFeDFx5GDZ5795kaBNBZLa+80uJA74DMJPKgKkaVkfBKm+8aiobQjUIt
	 hGWsOCvVSt2vGEkfDBGOItgkWNhY0xl+pkZWo2b5f3tFr2hjuRhCHmVxZeR5iQNhne
	 9+S2QZdRfOg3EusSBVjLXf0mkwo+op0Iz/AE0gRtpWpNUqJ9DpeSiuGeaut8t5wntJ
	 ZC3oQrY3d9pK51sIYoVjt+kW2KV1ELvNu0ef/vARgcqLWrDm36gBg53IbM+loYjket
	 P/smIQcPZxcqg==
Message-ID: <af8009dd5ff762cbefe6453d85d07d2e.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20240818173014.122073-2-krzysztof.kozlowski@linaro.org>
References: <20240818173014.122073-1-krzysztof.kozlowski@linaro.org> <20240818173014.122073-2-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH 2/5] dt-bindings: clock: cirrus,lochnagar: add top-level constraints
From: Stephen Boyd <sboyd@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Alexandre Torgue <alexandre.torgue@foss.st.com>, Charles Keepax <ckeepax@opensource.cirrus.com>, Conor Dooley <conor+dt@kernel.org>, Elaine Zhang <zhangqing@rock-chips.com>, Gabriel Fernandez <gabriel.fernandez@foss.st.com>, Geert Uytterhoeven <geert+renesas@glider.be>, Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Magnus Damm <magnus.damm@gmail.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, Michael Turquette <mturquette@baylibre.com>, Richard Fitzgerald <rf@opensource.cirrus.com>, Rob Herring <robh@kernel.org>, Serge Semin <fancer.lancer@gmail.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org, linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com, patches@opensource.cirrus.com
Date: Wed, 28 Aug 2024 10:00:26 -0700
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_100030_048873_B74DD17C 
X-CRM114-Status: UNSURE (   6.67  )
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

Quoting Krzysztof Kozlowski (2024-08-18 10:30:11)
> Properties with variable number of items per each device are expected to
> have widest constraints in top-level "properties:" block and further
> customized (narrowed) in "if:then:".  Add missing top-level constraints
> for clocks.  Drop also redundant assigned-clocks properties, because
> core dtschema allows them if clocks are provided.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Applied to clk-next

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
