Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C83F3C001B0
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Aug 2023 17:52:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b3+vW8YnTnZdKfS3NrauBTofsIlAw1bSKztAN3IRkjI=; b=2BzO980goqaUgG
	SG7kywIe0d7rjjdtZRK0YWcgEwnawhgOYoLfjsz+kTk3H7VVxtvh/QMU9IePs23k4zQsRqYI4Bc4W
	ONqpknwiRCAYDcGcAxXQWkGClYv2dvKudY2/rjBt7dti2NOmFR0UaG+HZovpb+f06fB/2/oll8Psg
	6FeUWPYW08Quw1oFVN/2eTxSaKkZQIS2DQAeX6OZU6HzPo74LUmH9KTPGjlNPbcyEq1tsXwcYip5c
	rkthC64dp+jANyCxml3nk4JS0e5NPVVbG+dtIZg9lNC215g9Zz2nNqXhP5EXsZGJdzhI+uBZ9xrLS
	qltOhTbXOWUCSWx4dV6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qUWJU-00BHXX-0r;
	Fri, 11 Aug 2023 17:52:40 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qUWJQ-00BHWk-2L;
	Fri, 11 Aug 2023 17:52:37 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0A91F6767C;
	Fri, 11 Aug 2023 17:52:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F678C433C8;
	Fri, 11 Aug 2023 17:52:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691776355;
	bh=7JRTXIP4S+sP+hJ75tQ16jaUKuVATdw8PZiWsNSSlpE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GWBxcordk3DeA0ezIAa6i+T8RhdO8dHwbhguxb1ZbTnT0mi+wwAU6fKaAIGZlgjsV
	 wuw5LKveAS4VGaDVQaHVpW83BnqMmODK34DvQmIdxowRyB6mfNA0JPufqx4trl0/n8
	 eiVi2wh5XehWat0R9pasC+/nNQum7P81EtkgRRBEy9B7TZhCh9k/5UUDsq87aHCG+m
	 FW7Gmy+URj2rAnBnTXiuz1UO6jDxzmuyRJxfdaw0jZxtudJ/y68mKnZ3OBMfPOf6ii
	 1SaJwcUySZRQOAXOop1Ya1fzX5u/WD8oVIYzuREfjUk5lF8NpKxIr9ILXbhqz2Snvi
	 4OrfoI5NrHxsQ==
Received: (nullmailer pid 3669611 invoked by uid 1000);
	Fri, 11 Aug 2023 17:52:33 -0000
Date: Fri, 11 Aug 2023 11:52:33 -0600
From: Rob Herring <robh@kernel.org>
To: Jagan Teki <jagan@edgeble.ai>
Cc: Vinod Koul <vkoul@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 03/14] dt-bindings: phy: rockchip-inno-dsidphy: Document
 rv1126
Message-ID: <169177635297.3669556.3862665719264768972.robh@kernel.org>
References: <20230731110012.2913742-1-jagan@edgeble.ai>
 <20230731110012.2913742-4-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230731110012.2913742-4-jagan@edgeble.ai>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230811_105236_828594_9866E0CB 
X-CRM114-Status: GOOD (  11.47  )
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


On Mon, 31 Jul 2023 16:30:01 +0530, Jagan Teki wrote:
> Document a compatible string for the rv1126 dsi-dphy.
> 
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
> Cc: linux-phy@lists.infradead.org
> Cc: devicetree@vger.kernel.org
> Cc: Vinod Koul <vkoul@kernel.org>
> Cc: Kishon Vijay Abraham I <kishon@kernel.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Conor Dooley <conor+dt@kernel.org>
> 
>  .../devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml          | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
