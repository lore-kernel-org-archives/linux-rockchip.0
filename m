Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B761CD98CE
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jun 2026 16:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0xT0ckgTB5G7+JGnJrE2ZidOKvnJdom0XMGGWMLwUyU=; b=YUO6M8TMXu79PB
	DEapM67OnorGWEBgijLKkTemgUGhDc6hUSn9u14bargICJX/zig1AKzZTe9VCSwUtgVrJ930R2+H3
	C15wUyLZT2vqFupk01ErmW1FmhdOysop0c0i2ul4CH0yCcDzFJWDQjCBTG6MiLslA38S2u68oQ+D3
	0dtG2aqzsxVC+7ltLF1e3u9443NWOvymLo9gHfkuNxS6hcwnF1JTGXsE7faojHMCWC5pWD7QQLZYr
	LiCmUiEBs3fU6gVWODxu6v6vS4GIEJar8pOEmcDexJ1cBuAENwSrig+q3wAMIzF+2SinG4QKsbDad
	rHP5bYK2ceIU0fjLtqYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXiO9-00000009lqD-0rT5;
	Thu, 11 Jun 2026 16:36:17 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXiO6-00000009lpl-3s7Y
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Jun 2026 16:36:14 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 840144449E;
	Thu, 11 Jun 2026 16:36:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FB5D1F00899;
	Thu, 11 Jun 2026 16:36:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781195774;
	bh=2N0qWoXrfak0xGG1eIGg2FqAh+x5olhBjGsCNYaVpCo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Wsae4kLxtUl5dSecyi05jZETMu0MnLTgTd9dX1xJpZVA0fugJ/oWGd7l42UxCBzJ+
	 k5yhUosRvgEsU5bd9XuFGhaHF0X+iFeo4ft7z82b1FYPxkUr0LIET6KbF/Va6Kf3xB
	 iEGcy65AnqL51YqqEPGg2gFvDF0Ow8HIAAwsnHggODykbW7DPgMFiWtvZUMsHfovtW
	 ZhrJdTuEds0REUghF6LVj4RvAeiqYWcNBLQ4p9cKZ25g29gpOugOxVxY8lphwEH3qk
	 GjBPOU61yVw4136AA/A7K5VnfMZdoB2ZjSztp78xD8dZQUTLx72MkMEywbRs5vQxV2
	 K4gBNmhPIp+wg==
Date: Thu, 11 Jun 2026 11:36:13 -0500
From: Rob Herring <robh@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	xsf@rock-chips.com, sre@kernel.org, simona@ffwll.ch,
	airlied@gmail.com, tzimmermann@suse.de, mripard@kernel.org,
	maarten.lankhorst@linux.intel.com, jesszhan0024@gmail.com,
	neil.armstrong@linaro.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V7 1/6] dt-bindings: power: supply: sgm41542: document
 sgm41542
Message-ID: <20260611163613.GA2922314-robh@kernel.org>
References: <20260610144407.438846-1-macroalpha82@gmail.com>
 <20260610144407.438846-2-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260610144407.438846-2-macroalpha82@gmail.com>
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

On Wed, Jun 10, 2026 at 09:44:02AM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Document the SG Micro sgm41542 battery charger/boost converter.
> The parameters of input-current-limit-microamp and
> input-voltage-limit-microvolt are defined as such since they are in
> common use among multiple bindings currently.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Missing Conor's reviewed-by.
> ---
>  .../power/supply/sgmicro,sgm41542.yaml        | 96 +++++++++++++++++++
>  1 file changed, 96 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542.yaml

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
