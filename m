Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B890E7E62F
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Sep 2023 12:59:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hqQbZtAwrXF8bwFgZ5z8CT+PllCFVXP/wU8JTpZouzQ=; b=e+oYtEF5N5c8hB
	b5KT8fn5uDO/wqeOaT1L2ZIPl5EgZxkre+Fo5fsYIy8uOVUAFne5Sexks8Wc9XZunihVDGl+PIQe1
	8EapZGa2suV9R5wRR6I0dy4jQlFEZUAfJmD6lHEr1dSimDzWN4mqwTYBYkl/svnnRqQYw0N+AAHzf
	aIBzYyyHr+Fu1o6HtcNr1ju+94/XTZOsKZCdU2m0u6/hwnKRJb4usyvDkblqZSiT/5mNUkvlaJBiO
	hTwpGrZHY3jwMlm7yKCAcBZpSZpRh18bMHQ06Lk9IWEfgjmuqnqkAH1OrK/xZCnECUfq4LNsTgGal
	Og2oQwxQz788hsSTJ6jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ql7f1-00GPo4-2V;
	Tue, 26 Sep 2023 12:59:31 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ql7es-00GPm7-2Y;
	Tue, 26 Sep 2023 12:59:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 1DABACE1396;
	Tue, 26 Sep 2023 12:59:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A916FC433C8;
	Tue, 26 Sep 2023 12:59:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695733160;
	bh=z8o4JuRpxvSYlgwJN2Va3OBMKYGSPZHqX6/S5fP8NVg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=WWYQDLeU8GmAQQVkF0jWCN5ImPSm72s5bYbooHrHAZ6QhmFNvtcAXswFcoN2rpYA9
	 QDGYhFnniYjMx/UqdEVwM+KElywaxLDPXcoElwHkJqPqKZ+FATW3/UpyYj5Oh0uPyU
	 i1uhfp5KCnWTIOiccDCUdeesoMMYqrq4PSri1rD7oLfGOSLAwtkojehZqfTL8dYTKa
	 MuyY/Gjb3IrhpqCTyPeh0MTZQSE8NOSTB1x6MrFoX8sRwdFzQ0qfBueh4iCsF/FOjo
	 2EUtGe9OYuxfvikRwNZjisvWp133Nv8ceG6tmeXSvlEMmXrgQdebDIvo7eZmd1Wn7J
	 dHWfDPFlGBr8g==
From: Mark Brown <broonie@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, Heiko Stuebner <heiko@sntech.de>, 
 Serge Semin <fancer.lancer@gmail.com>, Maxime Ripard <mripard@kernel.org>, 
 Chris Morgan <macromorgan@hotmail.com>, Rob Herring <robh@kernel.org>
Cc: linux-spi@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 linux-kernel@vger.kernel.org, linux-tegra@vger.kernel.org, 
 linux-rockchip@lists.infradead.org
In-Reply-To: <20230925212614.1974243-1-robh@kernel.org>
References: <20230925212614.1974243-1-robh@kernel.org>
Subject: Re: [PATCH] spi: dt-bindings: Make "additionalProperties: true"
 explicit
Message-Id: <169573315641.2623557.2641052084011389770.b4-ty@kernel.org>
Date: Tue, 26 Sep 2023 14:59:16 +0200
MIME-Version: 1.0
X-Mailer: b4 0.13-dev-099c9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230926_055923_002286_4C1A555F 
X-CRM114-Status: GOOD (  11.45  )
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

On Mon, 25 Sep 2023 16:26:00 -0500, Rob Herring wrote:
> Make it explicit that child nodes have additional properties and the
> child node schema is not complete. The complete schemas are applied
> separately based the compatible strings.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/1] spi: dt-bindings: Make "additionalProperties: true" explicit
      commit: 9f778f377cd3b8d6699025ea75732ca91a239cd1

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
