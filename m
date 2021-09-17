Return-Path: <SRS0=N4HT=OH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA4EEC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Sep 2021 17:22:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 75C62610E9
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Sep 2021 17:22:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 75C62610E9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rboC/r2jzKlVi6dGZUanOr90tBk2O88eZIINHqGHQ6c=; b=B04+OFfhaP5WN6
	YujVnYckmrs2YTIBRntcy3s49xaUuU3D8J8eRiQu0q4YlbLxBCqUgR8dGQ80LJLtVCMPpB6uO0q2z
	lk9eioYZ+k8Ws+hNnI3SH55GtlYIbSd8m3o2NvAdD7TSqLXn5IB1wXHkV/oUhud3nNwfWHFY5zWkw
	MJGVK3sTFjztr7/bjgean6vdxTM9IzqzUuuCcmZvCV/SbWa/XkNYqxkb+8EbiYBJ3nbd6eBeV2uE0
	PtdCTNRTKPXkd2qSVmueiLj2QlPe5+IHgBPaptAIxgCN9mqUWKbyosF9lsxZ03AAhoh/eFAvz9Ct+
	ADtckm8aHvcd1Z2E1A1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mRHZ0-00EjJ3-J4; Fri, 17 Sep 2021 17:22:14 +0000
Received: from mail-qk1-x733.google.com ([2607:f8b0:4864:20::733])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mRHYy-00EjIW-7x; Fri, 17 Sep 2021 17:22:13 +0000
Received: by mail-qk1-x733.google.com with SMTP id y144so19688579qkb.6;
 Fri, 17 Sep 2021 10:22:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DS0xP8xYymZ1tcfPZLEiyP7J8b0RQSNLGg9up/wgFeY=;
 b=SrbN5eLlNztZuh4yw27f1hAtJyF2l5jW3njLt0N93P3yN52pPJ6c1OMJJBdGzHut5o
 uKgG9JZ/LkoyyMwoEy0EJZ5236Afb0LcYeJIFL2BWNtJVwPMOxo+ibeTFjzHRQmKWrNy
 XpPirElPHqMP+6Flz7oNu3Z/VpIpji/dXZ/91r5HwgMcpyJmKg70mR77eP3LwsbsWtGm
 2QvKqDvlXUNEAJXX74skgnXSSkq+yc27i5vBx2q6rs2wM87wCfadiWk6QL0dvsVSAO/d
 /fe/GRlxVpB1MWoe82uPGLzpS9lP7HKHKs8UM9rXGtThEWWGQHE40rPy9T5ABlQ0C2kM
 xv7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DS0xP8xYymZ1tcfPZLEiyP7J8b0RQSNLGg9up/wgFeY=;
 b=JX0Oce+hNEC5Ja9+zZZ8nEtgXdZ+J0MKvtkFJl/3iet3/Az1LdkLT+KfFAqR3mnpfz
 9vM6WrOE2M1cN2ZM72PlQCQP1AcriSa5Fm0/zCUxOD3DmOgO81hJgi+10xDZIsyttUq9
 ZmYUn64sJWd7xxapA6GV8avH38baxDemqCnJyXBh1pUEGrQf3hdpTZvoRIuyHFKnO1gS
 XH2/BbalcWs3igjSn6sb3PXGrzWQm629cDcD7Md/36uiM6Wqxnru+ZJSVPSm5/TdRlfR
 i8pcX0bT1uzZ0ZFdJEXCs/dGQ9bbRH51ZEgWplB63GDt3chRkWMTTWAY2qm6bFwE0khZ
 0ATA==
X-Gm-Message-State: AOAM530xuQSWIqhGlptkH6o8X14TGoZ6fICBe6IcHK1A2PswS0o2QjLG
 7Zqn2LqqAN8QH/f8VlTVCrEsXj2bccbMPdi+o3zejEOl
X-Google-Smtp-Source: ABdhPJxkqBwHQrE1wq7rDENcFORhD2ldxq+J3AFnJcrg9sgfsAmwiUh2FPj62ppjmam3nRnhvxPWzWy86Dg8rtAi4/k=
X-Received: by 2002:a25:af8b:: with SMTP id g11mr16184618ybh.280.1631899330450; 
 Fri, 17 Sep 2021 10:22:10 -0700 (PDT)
MIME-Version: 1.0
References: <20210826123844.8464-1-yifeng.zhao@rock-chips.com>
In-Reply-To: <20210826123844.8464-1-yifeng.zhao@rock-chips.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Fri, 17 Sep 2021 13:21:58 -0400
Message-ID: <CAMdYzYpo4mRqMRSF=chp4PhL609FKv_b3HHa0+7=ph2C_DfvuA@mail.gmail.com>
Subject: Re: [PATCH v1 0/3]
To: Yifeng Zhao <yifeng.zhao@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
 devicetree <devicetree@vger.kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Michael Riesch <michael.riesch@wolfvision.net>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-phy@lists.infradead.org, 
 Kishon Vijay Abraham I <kishon@ti.com>, p.zabel@pengutronix.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210917_102212_329200_5266CADC 
X-CRM114-Status: GOOD (  16.71  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Thu, Aug 26, 2021 at 8:42 AM Yifeng Zhao <yifeng.zhao@rock-chips.com> wrote:
>
> Add Naneng combo PHY support for RK3568
>
> This phy can be used as pcie-phy, usb3-phy, sata-phy or sgmii-phy.

Good Afternoon,

Some feedback on this driver, for when you resend it to the mailing list.
I'm sending this against the cover letter since the mailing list
doesn't have the actual driver.

The driver doesn't work out of the box, you renamed the clocks but
missed one use point.
There's a lot of "magic numbers" that need to be defined.
Configuration could use some cleanup.
A parallel problem, if the PCIe phy fails to probe (because of the
aforementioned clock issue) the PCIe controller hard locks the board
during probe.

I look forward to version two.

Very Respectfully,
Peter Geis

>
>
>
> Yifeng Zhao (3):
>   dt-bindings: phy: rockchip: Add Naneng combo PHY bindings
>   phy/rockchip: add naneng combo phy for RK3568
>   arm64: dts: rockchip: add naneng combo phy nodes for rk3568
>
>  .../phy/phy-rockchip-naneng-combphy.yaml      | 100 +++
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi      |  68 ++
>  drivers/phy/rockchip/Kconfig                  |   8 +
>  drivers/phy/rockchip/Makefile                 |   1 +
>  .../rockchip/phy-rockchip-naneng-combphy.c    | 646 ++++++++++++++++++
>  5 files changed, 823 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
>  create mode 100644 drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
>
> --
> 2.17.1
>
>
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
