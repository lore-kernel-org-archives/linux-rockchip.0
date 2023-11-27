Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34E1DC0755A
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Nov 2023 13:22:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ATQAcBFgnti7Edt81OXOWDkCSJhzNPJJZdIG9bNLa0=; b=Z1PypYGx39YfMa
	e6TK9prIZe0yx5NvxX1apjcKdCPoG/6NLKMCvN6m+fSA9r4HFBhgg/KxOsf+pnjsE46kpUnb9c78q
	WsKaJrndD63LaIANoYpeyjIgwW1BYrSt2m/Q5zbu7Glm+2OtUWdakXmAxCmz5gJYfqfwjMD5LLK5s
	H+tiAfe0G3XG+2xmdva4wN8fEHQBOJ2eEo1rdQd+p9CPutck+lBILccb6D+Dcs0JLZNir/REJMTfZ
	iYVj61JxUyALsPljMFZM5MSAdlmNlnpWUcLf4+QFtyKIwj1qKmvABURj00xxjcMmygmmGAKtm7sCz
	VfYtyUyk12ZcT06G279Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7bZN-002YSQ-2X;
	Mon, 27 Nov 2023 13:22:37 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7bZH-002YNg-28;
	Mon, 27 Nov 2023 13:22:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 276F4611D9;
	Mon, 27 Nov 2023 13:22:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC5ABC433C9;
	Mon, 27 Nov 2023 13:22:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701091350;
	bh=ctK+hzgQC+MSLrY/zdUFkWtbnB6zds12J32HcsBK/zc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=KW4paEx2pGcLIuM4lm1CrNXkrBmaG29is/BxD8BmmmBf08D3aRpeIoHwj9Cx/p3nY
	 yN3ued0C1c2b2nPPBj7GzF3TypElCj4WVr5cGj05Pf5tW3TEnX/yopo3t0nnL8fjjs
	 LMJtrqatLKh9MQBU2fj9FxaQZ35X+1zJ2Kd1uExiDcp6SDdjIQlDsKkiENi407uHV4
	 8OSxtmkavJ0zKHJkIW5N6bMYY+TC1Z9SLOrJ0+SaF1HIsI3JCpyYFueYc+gQjc4HGX
	 BuBY01a1n5vZfHwOCmEaSjCUEqL8iqZn0GPVKED08Pl9FQiuEVZwpJHTBhSGikcguG
	 ewtcHT030MBFA==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Rob Herring <robh+dt@kernel.org>, Alex Bee <knaerzche@gmail.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org
In-Reply-To: <20230830133623.83075-2-knaerzche@gmail.com>
References: <20230830133623.83075-2-knaerzche@gmail.com>
Subject: Re: (subset) [PATCH v2 0/5] Add USB support for RK3128
Message-Id: <170109134730.42627.8256424679982843015.b4-ty@kernel.org>
Date: Mon, 27 Nov 2023 18:52:27 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_052231_868979_2748D59C 
X-CRM114-Status: GOOD (  10.02  )
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


On Wed, 30 Aug 2023 15:36:19 +0200, Alex Bee wrote:
> While interestingly the dt-binding for the Innosilicon usb phy found in
> RK3128 SoC exists already and it is exposed in the SoC DT, it has never
> been added to the driver.
> This patch-set adds support for this early version of the phy and does
> some DT-fixups in order to make the 2-port host/otg phy and the respective
> controllers work.
> 
> [...]

Applied, thanks!

[1/5] phy: rockchip-inno-usb2: Split ID interrupt phy registers
      commit: 2fda59099462ee700e424ba3ac928d13ad6389a8
[2/5] phy: phy-rockchip-inno-usb2: Add RK3128 support
      commit: 62ff41017e147472b07de6125c3be82ce02a8dd7

Best regards,
-- 
~Vinod



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
