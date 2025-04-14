Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D251DC3601E
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Apr 2025 07:28:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lxpA45uP+OnFaOJgJR2s3RL+Bcwh8hluo/9MRe3Yyw0=; b=VVajFpEubIeXxV
	Uen67XeJ9OPef8bVjpakCte4hCXnpaUg8a19aK03oGf/Eu44A1s+gX7rKizkDXcHkmwndG2Xsykai
	SDe4d2qiHD5Vdc87g6kekt3jcVXK8iDbZwXTI+5LBhYKaGcWtOWg1hFnhUysoeC6bjydl9s4flpCu
	DbXPwfb8oyLuCoieJE8Gh6+BWkRqjJGiqBV8Ns7A4jqwhODJojv1XQbMydgslI9PBk1AIJu2LHLeu
	/UlGZ+F7WyBiUBb3zwkXx/eAJlOj1Vt/G7JfqP6YlFLJCfPubhWmbMLXCCvuVCJmo0k6XICCNe5TP
	MRWof4GH7lNZI2isI7fA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4EFG-00000000vbZ-3X78;
	Mon, 14 Apr 2025 07:28:42 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4EDP-00000000vMl-2g73;
	Mon, 14 Apr 2025 07:26:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A08365C2756;
	Mon, 14 Apr 2025 07:24:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0DB1C4CEE2;
	Mon, 14 Apr 2025 07:26:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744615606;
	bh=B5aWKWH2FORQFNpAWOtD5r+9LPdCnzGQZHEkjywxDVw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XvkA14ufc5R0yibMxePJMAuvTCUdkfjLaz+u1o1kazGDjsXZVnin8IklNLq6t9t6Q
	 j4629ZES7tetWbWjxK4CtZnr/79RrZQIKyYIH6OvFM6Og+9IWGSizuRQN99jzIf4s+
	 hI5FOaCQ+TxFm5nfYsm39ZfXLxw4DBaFMbWaTRQtqZmVPeiab2pN1dSPHgBcCg2iIe
	 YrT88ukt5bElpzx9Uybz69OTYlQVroXxLU0KkdwTBpIImf792PELU/0fg8/ibG/Dkh
	 aC947MFroRYdqEDVsDbHKJV1JA0CQkqBvJGAT5C8aFS2hvoh4tEcObmf0EvwqjW1NN
	 Sbx/eoo2HIOng==
Date: Mon, 14 Apr 2025 09:26:42 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Sugar Zhang <sugar.zhang@rock-chips.com>, 
	Luca Ceresoli <luca.ceresoli@bootlin.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, 
	kernel@collabora.com, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-sound@vger.kernel.org
Subject: Re: [PATCH v2 05/11] ASoC: dt-bindings: add schema for rockchip SAI
 controllers
Message-ID: <20250414-xanthic-tortoise-of-experiment-dcbfda@shite>
References: <20250410-rk3576-sai-v2-0-c64608346be3@collabora.com>
 <20250410-rk3576-sai-v2-5-c64608346be3@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250410-rk3576-sai-v2-5-c64608346be3@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_002647_719326_075A41DB 
X-CRM114-Status: GOOD (  11.52  )
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

On Thu, Apr 10, 2025 at 09:39:57PM GMT, Nicolas Frattaroli wrote:
> Rockchip introduced a new audio controller called the "Serial Audio
> Interface", or "SAI" for short, on some of their newer SoCs. In
> particular, this controller is used several times on the RK3576 SoC.
> 
> Add a schema for it, with only an RK3576 compatible for now. Other SoCs
> may follow as mainline support for them lands.
> 
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
>  .../bindings/sound/rockchip,rk3576-sai.yaml        | 144 +++++++++++++++++++++
>  MAINTAINERS                                        |   6 +
>  2 files changed, 150 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
