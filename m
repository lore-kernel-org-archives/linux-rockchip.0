Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2617C636E5
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 17:05:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FkDl1eWH3S4Bj89J5jixpff3TB2OYiGOr/yLF8H1PHc=; b=QWoLV4HQntiOrb
	I3LyidZBweBKYz3l51A//BPkHWi9ocZZRdbCln6WY5lVXZqoIyw62xQ5JCcIM+yX33p/FBeGXz8lE
	Tbi6Yce2vYV3YifRnIZRNlFPIqmZ80WSwWbM2IZ9Ni3AnSwrC4ejw0uMx4l+eqSPcNPm70ZdS/BG5
	zzJ6HdATGUTdVFnroDG8O3wTTBezqWHw76BGEsPcmFeEPX51yWAzPKSFzK9j8uu2PUJUlB2iOOQkk
	iuK0OQ+KhPFH4KXYQW82t94Q+m8YrKjKNgqrrcyI8yGGFCIh4S5KCQezKj8TQEK5xhB35PDB5pCeD
	3GUCFT1S5Gm9RAp0CM6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjM6f-0000000GIPt-06pb;
	Wed, 28 Aug 2024 17:05:17 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjM6Q-0000000GILP-1cev;
	Wed, 28 Aug 2024 17:05:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 400F3AE283A;
	Wed, 28 Aug 2024 17:04:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F139C4CEDF;
	Wed, 28 Aug 2024 17:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724864458;
	bh=nO77iIxdd02hF4E9tDlYoiBUA4JWXzvnnSS2wI9f4nM=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=Y2pFooLvVPPXz7nwZb9jTgXWJXi4uakj20PF+IsgktZrUaYmwdNonK2MITKW6/AK/
	 JRvrTGK5Ipp+arPZ3vrHUcofKC9OvgwLKZBrZkwzgbC1Fcyht0la272dQ9LBcNSFcs
	 nwplEI79ohQAgmHL4UnWcP6Wt28PwBJWYLQY/cwa0fA0wA0tElS8DduKeYMcRQ+Nq6
	 BvXSTJ1qzMKF2p30B36r/DS2TWVjErIV7S35mV3OmPFTzMPzUI4drzQ1p8Ce4X+2Yx
	 br9FV+UDA3MEITIXsWibgtc3/6izu2b6WenBwkhenAvg16xOgp9XzW85BrNN3tK7Co
	 N4PZ0JDpTU88A==
Message-ID: <83b3274296b7d9353aff4caf618ee042.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20240818173014.122073-5-krzysztof.kozlowski@linaro.org>
References: <20240818173014.122073-1-krzysztof.kozlowski@linaro.org> <20240818173014.122073-5-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH 5/5] dt-bindings: clock: st,stm32mp1-rcc: add top-level constraints
From: Stephen Boyd <sboyd@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Alexandre Torgue <alexandre.torgue@foss.st.com>, Charles Keepax <ckeepax@opensource.cirrus.com>, Conor Dooley <conor+dt@kernel.org>, Elaine Zhang <zhangqing@rock-chips.com>, Gabriel Fernandez <gabriel.fernandez@foss.st.com>, Geert Uytterhoeven <geert+renesas@glider.be>, Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Magnus Damm <magnus.damm@gmail.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, Michael Turquette <mturquette@baylibre.com>, Richard Fitzgerald <rf@opensource.cirrus.com>, Rob Herring <robh@kernel.org>, Serge Semin <fancer.lancer@gmail.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org, linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com, patches@opensource.cirrus.com
Date: Wed, 28 Aug 2024 10:00:56 -0700
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_100502_681808_EB879FBF 
X-CRM114-Status: UNSURE (   6.82  )
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

Quoting Krzysztof Kozlowski (2024-08-18 10:30:14)
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
