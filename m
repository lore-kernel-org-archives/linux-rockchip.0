Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42B65C636EA
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 17:02:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rdwLw/Kj+juqUKXX3AqWAebXzlmCbfy6uIGN/B6jEqE=; b=j6uLpW6+dIh6bs
	gGjVaHmGxwhX22ZbyZnDu3cfHShtGwjAPsCc3WDPOllMmnEX3H0OujHaCPuA6jI4gZm2xBSnKlkUa
	fK0G9jovqy9t3Q8qgcq5rd0ftHEqEC3/tsYZwV5Ypym/U6ykGSouk7xEIJHEYHMJ9yhDlAP/Hqvuz
	LEop9cylNto/EDbAKcEPCQtE3TROrN86CtJh2tz0VVVNqzyzZWy5VjnXncFKEY9StJPQIO21xsgle
	BRlB9ndaxNOVkZZC+p+6jWEUWMw2hFLwtz9soEh0a7Fcho3llR+5FhFF3odR4P2SmCVE7GgoQ2L4a
	qFTI59EUcFcaQHZqtmlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjM3j-0000000GHgi-07nj;
	Wed, 28 Aug 2024 17:02:15 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjM1s-0000000GH9p-2i9g;
	Wed, 28 Aug 2024 17:00:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 89FEDA414F1;
	Wed, 28 Aug 2024 17:00:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3B98C4CEDA;
	Wed, 28 Aug 2024 17:00:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724864418;
	bh=wvcCw/u2DHmQjZ+lBFZsEG5m3ALmQ5p1JIzRH0qd2OY=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=YXJ/6JlS49eKre5/7JLOUjrfR2hvDTzcLLYUdHxEG51KRx369KPbzsP27VUzIVKuy
	 CUJf5q3YAe7O3XIDhuew9We81iY6C0xrfPGCz8ZDDu9qzBO3ZHopPQxVgzsZk5OpK4
	 DPD5SU22ZUuXmXbREb85PpvPY/b0G1fv664vdzHu9NatA18kmK+YyblqSpod2PjNYu
	 NnzirXjAtxU7e7bUoxYb5Uxe3jVDf2QKYnSgswYULp2UkiWZZb+5pciHzrz/goGi4E
	 lyPvgQhF7OiIG/H9SrHl5NtWRdxRLP2Melm25mxupRtN+26v4szyx2l/M8lYQaLd7j
	 uMxMk2BZvtBtw==
Message-ID: <4a441f73cea283e694465d5a7c4bef6d.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20240818173014.122073-1-krzysztof.kozlowski@linaro.org>
References: <20240818173014.122073-1-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH 1/5] dt-bindings: clock: baikal,bt1-ccu-div: add top-level constraints
From: Stephen Boyd <sboyd@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Alexandre Torgue <alexandre.torgue@foss.st.com>, Charles Keepax <ckeepax@opensource.cirrus.com>, Conor Dooley <conor+dt@kernel.org>, Elaine Zhang <zhangqing@rock-chips.com>, Gabriel Fernandez <gabriel.fernandez@foss.st.com>, Geert Uytterhoeven <geert+renesas@glider.be>, Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Magnus Damm <magnus.damm@gmail.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, Michael Turquette <mturquette@baylibre.com>, Richard Fitzgerald <rf@opensource.cirrus.com>, Rob Herring <robh@kernel.org>, Serge Semin <fancer.lancer@gmail.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org, linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com, patches@opensource.cirrus.com
Date: Wed, 28 Aug 2024 10:00:16 -0700
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_100020_782019_759DB686 
X-CRM114-Status: UNSURE (   7.20  )
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

Quoting Krzysztof Kozlowski (2024-08-18 10:30:10)
> Properties with variable number of items per each device are expected to
> have widest constraints in top-level "properties:" block and further
> customized (narrowed) in "if:then:".  Add missing top-level constraints
> for clocks and clock-names.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Applied to clk-next

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
