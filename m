Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5BF0C04A95
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Sep 2022 10:21:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cFPcygqE92NF681+YrC5q3+1ji3i2Vha4Lr1xqIp5ho=; b=DgKMHHMpt0rLRV
	TfYsxswFAze6Q3i+IiyZyOQGiOMJeffAvVW55anYHPo1DWsdTCO66DhHfGwT0h/0W9NPKnqQbLrNL
	90yJMANo0cO/MN8AZXjSISgQYHJFwnb1jkNpw+80EPG5gX3Awb7wjmTK/Exh8y9ecJObrFV4KTSBc
	axQEptqer8OS6jsnF6EFhCfVM9nhki5z44cunHvBB44FZ09Hmzw+emykUAGWYYo9X7AjcDO+tcccR
	lPgeZsaCJk5WX56udtN23uw4/BVyM5QT8SMo7BUzCuHWlV0gnoKBP/Dhg8/LsLabrB+hW0+0xvc4J
	6P91SjZNXQr8zY9TFiSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odUBg-00FZPC-It; Wed, 28 Sep 2022 10:21:08 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odUBV-00FZFi-6N
	for linux-rockchip@lists.infradead.org; Wed, 28 Sep 2022 10:20:59 +0000
Received: by mail-wm1-x335.google.com with SMTP id k3-20020a05600c1c8300b003b4fa1a85f8so748467wms.3
        for <linux-rockchip@lists.infradead.org>; Wed, 28 Sep 2022 03:20:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=KRTwQ1vNduhRzChHgqxF9A8blOrg1ZvjNi8tks23g9I=;
        b=fkjyqlrP6NkJGnYBG9EnexZ8kjh1u+2P/M/Mj6lOcYTBb/y1mISGjADScyvQ8sZQgc
         Xqe0+HxqfC5XjWcyDO6HSBWTyBroVCInOO9XLPZ5e81eVH+Ph+0qIXAahaO3MDsrzWie
         FiM0Yct+I7LJ2HhZ0DSL6Kd3cN5DHXr4EJIXI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=KRTwQ1vNduhRzChHgqxF9A8blOrg1ZvjNi8tks23g9I=;
        b=zD5QwSalQyTC7hNEUa7SsBCL6CVx96mRWV8czhxNsgOF15UfPUo+8dvt4Ec3M0Fzp2
         xNpVffmn0TxwwVzWK6x8ON2XoXCYoYj1TfY8IG4h9vZnYUqeLoJCnkiYcJ+CvDmemluY
         TJT/5lUEm96IF6mVh4IqTJA1vuGYjfOtDFZALoTHRHQnt1V6Vm5OkREpnY8CzIdbyUwa
         HTzOLGCOSuwaoS37kW3nY/fM5W4kW0eAjFHUjxxhi22m/2b7B5zDwDDW/mHYJUtmCY+E
         9pBv4pO5YYlYEHX5PBtITD+kCKBVUzAu0wkykI2twS3yVtoHNYm9PDkIAtBHHPWKcBoe
         bSTQ==
X-Gm-Message-State: ACrzQf1sXYsDioIWH+//sfNFggcnl2/EEkUm/oqUsMXMEMBHr2UU3Gud
	A1u8t9Iin1x+ZdmJFkQgYNNyTzqZxyNvDbRCWrGEYQ==
X-Google-Smtp-Source: AMsMyM6Z/gXicbIkv6J/1PMLZNZx6AqpijA1lEN1q/82U9CH1FdggxhmfvBOLgCiaRvs4LD/6o2p4xOj7mtGAuqUiCk=
X-Received: by 2002:a7b:cc99:0:b0:3b4:76f2:192b with SMTP id
 p25-20020a7bcc99000000b003b476f2192bmr6317681wma.138.1664360450477; Wed, 28
 Sep 2022 03:20:50 -0700 (PDT)
MIME-Version: 1.0
References: <20220922064704.1740759-1-hanetzer@startmail.com> <20220922064704.1740759-5-hanetzer@startmail.com>
In-Reply-To: <20220922064704.1740759-5-hanetzer@startmail.com>
From: Simon Glass <sjg@chromium.org>
Date: Wed, 28 Sep 2022 04:20:37 -0600
Message-ID: <CAPnjgZ3-a8eCdD7uqeW6QPXceSyUA2n2uDRE1Kddgsys_fGByg@mail.gmail.com>
Subject: Re: [RFC PATCH 4/4] rockchip: rk3399: attempt to redirect uart2dbga
 to sdcard
To: "Marty E. Plummer" <hanetzer@startmail.com>
Cc: U-Boot Mailing List <u-boot@lists.denx.de>, Kever Yang <kever.yang@rock-chips.com>, 
	Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Artem Lapkin <email2tema@gmail.com>, 
	Philipp Tomsich <philipp.tomsich@vrull.eu>, 
	Quentin Schulz <quentin.schulz@theobroma-systems.com>, 
	Xavier Drudis Ferran <xdrudis@tinet.cat>, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_032057_277083_EF71B709 
X-CRM114-Status: GOOD (  11.23  )
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

Hi Marty,

On Thu, 22 Sept 2022 at 00:47, Marty E. Plummer <hanetzer@startmail.com> wrote:
>
> The meat of my problem. rk3399 has the ability to redirect uart2 to
> sdcard pins. This setup half works; I can push input into the uart, but
> not see output.
>
> Signed-off-by: Marty E. Plummer <hanetzer@startmail.com>
>
> ---
>
>  arch/arm/dts/rk3399-gru.dtsi                   |  7 ++-----
>  arch/arm/dts/rk3399.dtsi                       |  4 ++--
>  .../arm/include/asm/arch-rockchip/grf_rk3399.h |  3 +++
>  arch/arm/mach-rockchip/rk3399/rk3399.c         | 18 +++++++++---------
>  4 files changed, 16 insertions(+), 16 deletions(-)

Perhaps the C code could be behind a Kconfig, with a comment about how
to change the DT?

Regards,
Simon

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
