Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BE96C28D13
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Aug 2022 07:51:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FEpkegEDOoHqbt7X40oY4F73/3J6RuU2swfSDjGqzQ4=; b=ksLFg2WaUtcchL
	WuUG6zc5QnUosEv2fngJPC/pY9d7fq8e58Zxct8JOC5PDliv95dBmCrcZKSAooJ57zagT0c90gANb
	YCz//O5Cmh0F+R3q7qZFLRNAJNJwsNCzaxdNDbRDT4cX4rDJ0Le0ahJG3Bh4Bsc8wUFNtQyr6+rEp
	5fOeC288qdj2+aImh35/g6Lx4GuFlBMZoGk9wROBNUuistdqwpE3dnV/qY3+fJVEWNMGC9MaRoryN
	5aWPxAtoxRh0q/Z8fGUMqtgGpMSBsJT7qJWaMkLg6yXNFrC/3EpznnLF4Lcl9iBongOTYQXfDyNgU
	fk/DEBakprPgAM27CQ/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQ2Do-0068st-Nm; Mon, 22 Aug 2022 07:51:44 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQ2Dl-0068oh-N1
	for linux-rockchip@lists.infradead.org; Mon, 22 Aug 2022 07:51:43 +0000
Received: by mail-ej1-x62c.google.com with SMTP id gi31so13003110ejc.5
        for <linux-rockchip@lists.infradead.org>; Mon, 22 Aug 2022 00:51:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=BZfpU+SmYe52WAmg/Y7YBFP2XZSNeH6d6wib4TE2Z9s=;
        b=ueyXxGZSP+icZgmjpMxuxXG9X+4oo1se8JikeHzkHDin7aKmYKPF05fNpJGyE7Uqq4
         Fha+jPocAO+rxOgV1yGiG6Vt+bLwLqsgS+HTLzIb48u/J8Xe322a3l88MCS7wH3wfZNw
         BJzKa1uBmGhTa9nER2dBRU3mAwmpVK9aP+oXQCJxcFrBgb1fEmpUkC3QXZfY7fNjVo3f
         CW9s4iC9DatwZz92upQLt2QSf8DRK70BncEXeEdnVop/1Or0XCZPDx3sCkHSD/WWqHKq
         OTrdiqfv+D/DLSzLeVif6b2s00E8xqBkcfG7a6ZjkexZb8DOz9lmOGYRBFuJeN2H2ysI
         Ee9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=BZfpU+SmYe52WAmg/Y7YBFP2XZSNeH6d6wib4TE2Z9s=;
        b=iEIDTPXgJ8tCIdwbOCnQMQPaNWkbptc5LsWy7ZsEobb/da5aE4czx6pwP6xcKQyvyg
         eh3Fp7Rwe9ZDoRFl7JehFeeSowBCKNh4spJZQABfXlo6nYKtC6Pdb272ethKF4MMJwAP
         QVxRyIHbZHlQVEep2Ax6o9AgHZw/8fpKfMttHWnLib9C1W5epccQtuqfsl2dx/GZb0Lw
         5R2GArzovkjKPsi/lKdln867gnMHxSgZz8wDuz4L2EAIBCs1neRJcePXplhb0lfTg+0+
         C2oXI4oXRQqjC5+vY+RZGHTDv9IezO9aT9la0YNfM8OVocAIdv/08n3EZmL6dXWT6tb5
         Qy9Q==
X-Gm-Message-State: ACgBeo15Bn02xJNMZbULjK3CNetAcZd12A1hkeBxu9YTNtEsxi9X5hJS
	k48YwfkNoIznEOiZwZHukeZmUFEMVLaC+W5y9kpOEQ==
X-Google-Smtp-Source: AA6agR6/5iy/cSsM7dMB8N/ny1F6pJoOvfU2NJ9VVbMZM47NCmG9dGwl7hBHWAbzjFVTdCkFFBUX5ufcsmNvui4YXhg=
X-Received: by 2002:a17:907:9686:b0:73d:1de0:7fbe with SMTP id
 hd6-20020a170907968600b0073d1de07fbemr9075080ejc.500.1661154699618; Mon, 22
 Aug 2022 00:51:39 -0700 (PDT)
MIME-Version: 1.0
References: <20220818124132.125304-1-jagan@edgeble.ai> <20220818124132.125304-8-jagan@edgeble.ai>
In-Reply-To: <20220818124132.125304-8-jagan@edgeble.ai>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 22 Aug 2022 09:51:28 +0200
Message-ID: <CACRpkdZvv5vqXLb6CgHTpB6uCo1V68KZG8av0acBW3fegmpX-Q@mail.gmail.com>
Subject: Re: [PATCH v3 07/19] pinctrl: rockchip: Add RV1126 pinctrl support
To: Jagan Teki <jagan@edgeble.ai>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Kever Yang <kever.yang@rock-chips.com>, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
	Jianqun Xu <jay.xu@rock-chips.com>, Sugar Zhang <sugar.zhang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220822_005141_808388_C728BFD5 
X-CRM114-Status: GOOD (  13.12  )
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

On Thu, Aug 18, 2022 at 2:42 PM Jagan Teki <jagan@edgeble.ai> wrote:

> RV1126 has five GPIOs groups - GPIO0 in PD_MMU and GPIO1-4
> in PD_BUS.
>
> In GPIO0, up to Lower C group GPIO0_C[3:0] is part of PMU
> but rest of the groups from there are part of GRF.
>
> Added pinctrl support for RV1126 and the pull, drv and schmitt
> calculations are inferred from [1] authored by Jianqun Xu.
>
> [1] https://github.com/rockchip-linux/kernel/blob/develop-4.19/drivers/pinctrl/pinctrl-rockchip.c
>
> Cc: linux-gpio@vger.kernel.org
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
> Changes for v3, v2:
> - none

This patch applied to the pinctrl tree for v6.1.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
