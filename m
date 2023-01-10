Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2D10C46467
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 13:59:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qsXnXBRh9tbBZl9lXtynljj1dDZE37fJkXhJPP0q20E=; b=3Iua3xIKEU7Wrg
	ivCJmx9U+zYLqlVlBrZkI76b2d92HCTKdYSw94oUsL5iEzS9CABXQcdwKPWipSKwoNF0XP3B04Wtf
	OSQgrArjlUU/lL03oCwGT3XecDBU+gD90is3mDUNlz/ZXYUtFzVqMH8mv0RYSDsbS7uMWGd8nuPsK
	xPvJySmVaSRpp5POEsqr5yhxxSDZljtmcbAoD4BMIep2Y+ftOWF1PzxgwsyZVCER8jqWL6V29DiTi
	g18eTFi4ZUzCKVZ26Sh5bGxyU+M2+gdqzp69RVK80oPODTCB2bs2kiWrT+zyma55KFSGX+Ftn3Kz3
	EBe2v5YP2tc5hjI9XNjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFF9g-007A7k-P7; Tue, 10 Jan 2023 13:59:08 +0000
Received: from mail-yb1-xb34.google.com ([2607:f8b0:4864:20::b34])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFF9e-007A6E-1Q
	for linux-rockchip@lists.infradead.org; Tue, 10 Jan 2023 13:59:07 +0000
Received: by mail-yb1-xb34.google.com with SMTP id c82so4580626ybf.6
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Jan 2023 05:59:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Dsda8KMeucoX1ilrO2O3wq/4jP5OycOEc8TNPvLqSL4=;
        b=5lyVr6VVay+hI8m/2i2l6KZTNNDYjLNisen/l9+2D4grmXW74VmNb1x4m5nbef8RXi
         JOAojJoCo1HbXi3nVvVVOUB+T2fQmistSoC/b63bhcG3/3JysMrsEfPKlW+YRW1p8t65
         VOP4atNNpHyKBKdgkbB/UEgCgbYlryKYJe1EIlbWzg1QRSe13ENMHYcghfFljnaSUQ/E
         Xuj2mlpfVbhveYHn3uO96y7Jn5W95rYc6P3PMEBLFyv7ViQy2OfLwIZpreXzYjoCmYKR
         y1Qslj64GGca37Yh7ahrSLvCi4Rua4MtNbo3LyyLaLypcxtVo6bK9nY9xmHaOXBFyEob
         P44g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Dsda8KMeucoX1ilrO2O3wq/4jP5OycOEc8TNPvLqSL4=;
        b=W4S/hsNC/LKV18AnGVo4s9l63wCbGk6XXnpGexmYejRKh3ZM+xiOLicIzOLTlUT4us
         ZQJBS1Ll3ZXJIPkPUUJwTTKl4CRDis1RULp46RUcCS07MOcijHFNL8bxTS2aSHOpM5rQ
         LvYYWiKNWczIkZVX9EKeoqd8jqOtcoink6REbn27vC5Ymb/sN3IR1Zo31OApAnhrYLXq
         p/F3oBGwc74Bvydh+1Zk6lolckr/Rp5zvBxZVRFzjjdXS8wX+hbxmwWo8sBnb/N2wvC1
         KvdfuU1fdQbpKAQuZcmhdWmugMtvNPrydg1C1IvDmD6n4A2S5xwZe5cWvqFQqEyvIpSY
         FHeQ==
X-Gm-Message-State: AFqh2kod7OHCA4/pUXXZCrQdtPjk5tOJuEN/HVhVO18PH0z22XNqkb2C
	uAXeFuvKcJ6bOUzMYXB4FT/YR//zsUMjp2lLzBXYIA==
X-Google-Smtp-Source: AMrXdXuJbj8SnHjb++QBh1i8j0IsUc1D544EYFAL+i06GsxF0sSb2SQc9S5qlLQdeW1ZXpeu3gUoVzWVYHKJsJUSqO4=
X-Received: by 2002:a25:e087:0:b0:7b9:e22:7262 with SMTP id
 x129-20020a25e087000000b007b90e227262mr1448243ybg.416.1673359142043; Tue, 10
 Jan 2023 05:59:02 -0800 (PST)
MIME-Version: 1.0
References: <20230109155801.51642-1-sebastian.reichel@collabora.com> <20230109155801.51642-6-sebastian.reichel@collabora.com>
In-Reply-To: <20230109155801.51642-6-sebastian.reichel@collabora.com>
From: Jagan Teki <jagan@edgeble.ai>
Date: Tue, 10 Jan 2023 19:28:51 +0530
Message-ID: <CA+VMnFwBNc+Mk2VM=6BVGJoxVkpueekXHmkMdp50V7e6UNq8xA@mail.gmail.com>
Subject: Re: [PATCHv8 5/7] arm64: dts: rockchip: Add rk3588-evb1 board
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Marc Zyngier <maz@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Christopher Obbard <chris.obbard@collabora.com>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Kever Yang <kever.yang@rock-chips.com>, kernel@collabora.com, 
	Michael Riesch <michael.riesch@wolfvision.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_055906_095998_C30D1B50 
X-CRM114-Status: UNSURE (   9.72  )
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

On Mon, 9 Jan 2023 at 21:28, Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:
>
> From: Kever Yang <kever.yang@rock-chips.com>
>
> Add board file for the RK3588 evaluation board. While the hardware
> offers plenty of peripherals and connectivity this basic implementation
> just handles things required to successfully boot Linux from eMMC,
> connect via UART or Ethernet.
>
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> [rebase, update commit message, use EVB1 for SoC bringup]
> Reviewed-by: Michael Riesch <michael.riesch@wolfvision.net>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---

Reviewed-by: Jagan Teki <jagan@edgeble.ai>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
