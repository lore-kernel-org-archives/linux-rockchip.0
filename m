Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69AD1CCF2DA
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Oct 2026 08:54:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dDiIoNTgRCvoUrWRA8HsX586JinroG1nKyHO+IZlRAk=; b=vdAGvLTrg54hXT
	/XZIo8s1Tuo3lDLc/zsXrK0Q6JHoW1uRxGKHuI0yMjvgyG6ovlQBhOrkv+NEYAladQNxgoNfM8aE7
	qNsqUQDUnsowcTn8h4yyJp6cAQK3Vukto8S7L/LAnvGm813s75dE9FK6gF5cogmLbtzHjBBT0PMOm
	Ss3UWNIBqIkDDvJc+ZqXsxtJiuSOcrjyoAnw0/vox5csBb9gm+p1hEoKqZ2cqD6C+zFpicqRul/+9
	TlWZBMb7Z7wlGThKqJIIgq86ofcLPezUYY233L2c4C6lTXsYgd5t8b8GBP4X05yzJ1z9KaUDzV6D4
	gr8mSdlcfB9O9aJ/AuWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIj5q-00000006uHv-3Alm;
	Mon, 19 Oct 2026 08:51:42 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIj5m-00000006uGB-2CeX
	for linux-rockchip@lists.infradead.org;
	Mon, 19 Oct 2026 08:51:41 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-6aa046a99c6so355103a12.2
        for <linux-rockchip@lists.infradead.org>; Mon, 19 Oct 2026 01:51:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792399897; cv=none;
        d=google.com; s=arc-20260327;
        b=rHxlaAK7ks/RlchBh9PHtMcshBdaBF2zW0Liaq8ut6560jorHTBNYLXW6KGf1eCvtI
         YOFr0xjDK1KNF4h9+ccx8EQWMilag12dq2Wswmv0639QXBv5NMj8+o055TLzLCJqUT3B
         B0kJLSR7L/h4eD1fCPDOLEKxSrHDnpL1InsoyHp9ui7xFuLq/6Vr9bTqhwRQW9OdBUVN
         RdsZFusmWSfMHX6Qb6HN0JO6xlueAXoPB0WDRpR6iFCytn6Ho57iFK5XeKkg9OXosfXY
         3IWexPdhQm2+nOVgN518IpEmEIhBgwvlWKkpX6TDDHhq6G+161/wQoQsnF4z9Wa2IaN9
         HnpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=YZGPcgD9AFqKQnqdPo2/PO6pxJ4WnzRDZW0BsKuEGoY=;
        fh=Q9DkBfplBECbDVyPJcPJqMIoE4jgFiwQZzZoObKcClI=;
        b=SxS8OwLSNPiM9LACCxezY4AxiDUmnytbnw50m3+Rahrw9xYEkEMg7g35KweYpk4PXc
         rEMGCd+IXLPMG/F2y4gf+PlE2swZnc82AeB+Cg/DkZiahl0/Onl6J3q51bWqYcpmTIRB
         JhqcASTp5BVKgs8ekXp8VTR4nCUUv8DSfdyIDiHaZO57DjN0veL7cZoqL4W4MJVT4Erb
         TgUzKn0aBbhKQczp/H92eLPc+B2ePmIsZt3plx/ZC2Z0UwCZpq/IdPTPDueg11NWeoHH
         UEvovHJ1sumq5fSeNEBsXEI4k2P3lnUaJ0z15cwm87exggsdEgH0Kx5UC9Q0zOs5zQr5
         4yOA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792399897; x=1793004697; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=YZGPcgD9AFqKQnqdPo2/PO6pxJ4WnzRDZW0BsKuEGoY=;
        b=MIs+xPYl67x0OCK2qjAYAJ7ZI1SAMpVWt220Ux0OLkKeac1s01Q+MsUi20ga090WjE
         4YYjWNAf5esA8q4k9enb3+t2qbhBzOW/vlrFnKQXUYW/YbdVpl391MKdaHBRMy7m1yVp
         6C5Jj944Z+xTFPlGcRKg3fMuNg0dFw2N+szGHZTKqzmN/0EGnQ3h5ABUAQcff32QSZre
         HjJk8+gLBOGFlXO/CaXNaLii10kkdyT3XePPrnMaW75icy9h42GCRAmYKTboyJVmuvA7
         +xAcgblDEPTbGWiVRJyxXRXXG0JYTvkzWgE2DRXz7GU6bFAIgS5skctak98Vjj1jEArE
         PYYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792399897; x=1793004697;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=YZGPcgD9AFqKQnqdPo2/PO6pxJ4WnzRDZW0BsKuEGoY=;
        b=vHF18miAiuUtU4cGiTFqk7hgWRYS3RZlYbzHDZNo6JzsItbVCt0wJK/G4mfMv99kz6
         /2n8+hbMbkTgqy+vq53cr1lxsWLOEABIVAh9nKfsGvNwH96TJciiS55OgsMFhTlp7Ea3
         MzhH3yLVDE3RZefbSt2f/zxfOn7VrqkyrI2+qh/cVzUhjUCiG0KAl2uJ968JvmG0PQ+O
         SD5s73EL20gJvdmXnyXL0fSQxaWg1PqJ2Ln4jexqh/5cG5UgE0DN4ryGPHUf3gJPy5cQ
         5+vAMnPbJcnL4DLF6uVIrzI2/LMgbjTuCEIDpG8pMx7bMub+UJa1i7INIPF3Q3ORvG/6
         tprQ==
X-Forwarded-Encrypted: i=1; AKwUvBwCgCFMPha+yxQTNZBfXL5o5oyzwM6D+Vvdl2pEUKwGYlILpzueWF1Rny7nypyVbZjP87un+SosyYlDYIc2Ug==@lists.infradead.org
X-Gm-Message-State: AFq9FYJ1knJOe+J9PC1kC7xuGGA/mqFJIKn1FPrHbdu1qrSGV3UzlDiD
	mTaGNfgWyzEdoslW3Gzwzwl8PYDZkdem+1UfI5H2i36fAD82uiaPbA/1BHT+52tCj3zan99G2bn
	VZoDjDGjBPUbILM8+rTX6KT6SD8tmCyw=
X-Gm-Gg: AYBFou3WvI34VlmMuUpnzE662sdQ0eawfbhcTMMTY0BNGVq8nIvvPBFHS+398KAvfiG
	TTVkXYatZJ7yL+WVFYcFLDnujLYR8b/fghhD3AEq54S6KL2gN+FqWOgWqqgoQAGfdHewVsgdVRV
	s3WrYqiuhFoq0xGNKgzFe9sdX5T3KPUg7RnuuyBh0oiSf4/0C2JDIsWhppeB2+suNifKymCCJli
	updMYngpDR9DSOXWx24O4BSPaIhDZpSTKB/LWdBlCHiJh60KZ6wWBfun6astMcks2V/NOquSjQ+
	USvO23FI/fN8P8TXSm99nqd/BlSDz4EZwYlmCUsZXJlJqL56cyojbw==
X-Received: by 2002:aa7:cd16:0:b0:6b1:a509:8a2 with SMTP id
 4fb4d7f45d1cf-6b3a8153c70mr3342735a12.2.1792399896018; Mon, 19 Oct 2026
 01:51:36 -0700 (PDT)
MIME-Version: 1.0
References: <20261016-dcphy-rx-v1-v5-0-e63b49eabe2d@gmail.com>
 <20261016-dcphy-rx-v1-v5-2-e63b49eabe2d@gmail.com> <f337f41f-2ada-4958-b0f9-379e78e96a3d@linaro.org>
In-Reply-To: <f337f41f-2ada-4958-b0f9-379e78e96a3d@linaro.org>
From: =?UTF-8?B?5qWK5pm65oiQ?= <jason98166@gmail.com>
Date: Mon, 19 Oct 2026 16:51:23 +0800
X-Gm-Features: AclHuK_WAI6-16edIPrAFWjpLBUVloumDqFsNS60JoizZzHWBKP6V-AdFc5lP64
Message-ID: <CAPwA33KFY0avDH-F_5w01vqWu=RK=nXZ=za-Do5Zm3S8CPtGgA@mail.gmail.com>
Subject: Re: [PATCH v5 2/8] dt-bindings: phy: rockchip,rk3588-mipi-dcphy: Add
 a cell to select TX or RX
To: "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Guochun Huang <hero.huang@rock-chips.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Michael Riesch <michael.riesch@collabora.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261019_015140_093735_F2FDCB9C 
X-CRM114-Status: GOOD (  10.93  )
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

Hi Bryan,

> Two consumers use them - which them ? Two consumers use the receivers at
> the same time ?

> Its minor but instead of "them" define what the them is.
> The second cell, if present
>
> -> you want to make clear it is optional.

I will check my description and make sure there is nothing misleading.

> Not really related to this patch but how do you envision that
> requirement being enforced, per driver ?

The transmitter and the receiver of this PHY share the bias block, and
the TRM explicitly does not allow them to run in different modes. Since
this is part of this PHY's spec, the check is done in this driver's
xlate for now.

Best regards
Jason

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
