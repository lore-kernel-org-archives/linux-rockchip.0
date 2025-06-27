Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D46AAC77B7F
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Jun 2025 19:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+gn2U+PUXWOMrh2FETx1p8L5Nr3zmwie+vHD5tTPkAg=; b=uoJS6vsKmISDyJ
	P78owjjvBKh6DFwGBYMsRzdo6Zaf4XhwRv2B9GxzxWnCqz0DDnGzAzTNFO2c7ZEtsFZMvK1vrY6GU
	o4gHEdWRrn1XvMce3XI7+t1MjW31sJISzLOUaQJ4zvCPnbteqBz0N3Uvo0EitUD3ZqlnboVR+WYWA
	mHr8v+mAn75QoyN1DIFY/bM98tdycPeXt0hQO910AE1XIqGyQnVCug2EuhbXsJ5XdG4bRKLkd7IXT
	Af92OhXSq4cy8RhYhgTjgwEcjFnIv3eTiTsx7+JzkkH0vgDioh7Fbv2IkQN0hTeA+hINRw0O7O96q
	oORZS1GbByH//U5GEBFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVErJ-0000000FebW-3A9k;
	Fri, 27 Jun 2025 19:35:37 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVEVa-0000000Fbct-0jR5;
	Fri, 27 Jun 2025 19:13:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 4A6B561434;
	Fri, 27 Jun 2025 19:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D8AA3C4CEE3;
	Fri, 27 Jun 2025 19:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751051589;
	bh=uJye5eK2gZUT/fK47GMXXoLFMlDyOz0ZGd3spyloggQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iB1lk3F2T356oNJVMmfGW3mUXttN+O4Q0YNEqBR16/Y2HcYAsOsQmrZwAcIpxtqG7
	 kMYVAVn1kM5gkteG+F2XtyiQt1YhpaCut8LnHkpqwxqt9TPuvYlAxzdUg5xW3H7KjV
	 PgFHanWaxdwksk1wc7/+BRW8WPGVGbE+ZsZNz3Vz840c09y4aPgl4p3qxPHFq9PFs4
	 KgSFAD4nH6Veqn3mYE6K7UsOxZWPhhDW+ncaizatpW1U8B+kWfpKKFU3ONZ9yu0BzX
	 7B6cjHqR6FxQl2qagJ/qumO64/KC5wzOIMLW/9EkI72myLEC+HaSeP/LVl00Cnx01i
	 zw9JOvo3R3ljA==
Date: Fri, 27 Jun 2025 14:13:08 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Quentin Schulz <foss+kernel@0leil.net>
Subject: Re: [PATCH v4 1/5] dt-bindings: mfd: rk806: allow to customize PMIC
 reset mode
Message-ID: <175105158757.4019943.860671576753586474.robh@kernel.org>
References: <20250627-rk8xx-rst-fun-v4-0-ce05d041b45f@cherry.de>
 <20250627-rk8xx-rst-fun-v4-1-ce05d041b45f@cherry.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250627-rk8xx-rst-fun-v4-1-ce05d041b45f@cherry.de>
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
Cc: Daniel Semkowicz <dse@thaumatec.com>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Quentin Schulz <quentin.schulz@cherry.de>, Lee Jones <lee@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Lukasz Czechowski <lukasz.czechowski@thaumatec.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Fri, 27 Jun 2025 12:53:53 +0200, Quentin Schulz wrote:
> From: Quentin Schulz <quentin.schulz@cherry.de>
> 
> The RK806 PMIC allows to configure its reset/restart behavior whenever
> the PMIC is reset either programmatically or via some external pins
> (e.g. PWRCTRL or RESETB).
> 
> The following modes exist:
>  - 0; restart PMU,
>  - 1; reset all power off reset registers and force state to switch to
>    ACTIVE mode,
>  - 2; same as mode 1 and also pull RESETB pin down for 5ms,
> 
> For example, some hardware may require a full restart (mode 0) in order
> to function properly as regulators are shortly interrupted in this mode.
> 
> This is the case for RK3588 Jaguar and RK3588 Tiger which have a
> companion microcontroller running on an independent power supply and
> monitoring the PMIC power rail to know the state of the main system.
> When it detects a restart, it resets its own IPs exposed to the main
> system as if to simulate its own reset. Failing to perform this fake
> reset of the microcontroller may break things (e.g. watchdog not
> automatically disabled, buzzer still running until manually disabled,
> leftover configuration from previous main system state, etc...).
> 
> Some other systems may be depending on the power rails to not be
> interrupted even for a small amount of time[1].
> 
> This allows to specify how the PMIC should perform on the hardware level
> and may differ between harwdare designs, so a DT property seems
> warranted. I unfortunately do not see how this could be made generic
> enough to make it a non-vendor property.
> 
> [1] https://lore.kernel.org/linux-rockchip/2577051.irdbgypaU6@workhorse/
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
> ---
>  .../devicetree/bindings/mfd/rockchip,rk806.yaml     | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
