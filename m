Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0302ED0E6D8
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Nov 2025 13:01:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NgurzSa4iR1skAt1qL+apLhV/7O0jijBTJg+PO8/sdQ=; b=pGv7s9KOfnmijx
	WXYTgk/L5vcwHbs2UnL92ZA/q1h7gu5TAxWbLUPtgWvdaAgB0AyK6cjx4s9hPMGdfX1T4IPHaNXLS
	Dd92e95t8ih9gRSFO9tBV/lKzShde9sWnGKTvMBNKtF3djtA5EZi/x7b58uYQ5F54W6Bj38OgTKVB
	qZq3zWP/kRG962MnkHPHMHgeD/w04RV53SrbFgVCOBvbcV6K2SIOL8YaWAXn/Xj9qaazqG7HBgrOu
	OIsectKXW+VSsMi2ND9uH2aOz+hE4XfOsNuxM5LwOy60SHC06vUYOUaH9B8qmKrRFCv73O2Bi0fux
	P4JsdQ4m9sln1pleMImA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNsfC-0000000DJDI-0xEw;
	Tue, 25 Nov 2025 13:00:58 +0000
Received: from mail-yx1-xb131.google.com ([2607:f8b0:4864:20::b131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNsf9-0000000DJCt-1U4G
	for linux-rockchip@lists.infradead.org;
	Tue, 25 Nov 2025 13:00:56 +0000
Received: by mail-yx1-xb131.google.com with SMTP id 956f58d0204a3-6430834244aso2593733d50.2
        for <linux-rockchip@lists.infradead.org>; Tue, 25 Nov 2025 05:00:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764075654; x=1764680454; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1RsPPNmFTp7OpTkMbhK8Rgl/qW4d5zaCYUB+xPaRZ5I=;
        b=FqgE2lBukIhqsJVQc7paCwCiI10KaYomQuRpbdrhnyMIqVtClgHYrwR+CSYmlQ/i9e
         aD8TK9l2FPf8d36xLjJQDvUHLtkpYWzfESAGntqzi3SYXtWSlQxbp8Q69p60pVxXHDP8
         eNMROM/ftAomH4rFjVPttlg1tvrXqKa8IVRv2P/r/suYceNNH2OgAanE/I/syV2/FoYy
         3Z0AOJugmyUcpWe4VkPw7Kx5JczNhnGhePwOdMiMb/jG5KTqGJeIm7Ed+LSRw3vV9hbI
         AVAeE3BQrrEkMqH71xlBkv28KUHG/qNk5hA1T2ROeflZo2X4AA9F5XyCYbnhE09bN2MO
         T07g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764075654; x=1764680454;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1RsPPNmFTp7OpTkMbhK8Rgl/qW4d5zaCYUB+xPaRZ5I=;
        b=uBqdkL7EB3M4Yp+3PvIGF1wzmnQ64UnJE91sBUy0IDH4nZHSBJf+Hvc2VWF9XvlcpB
         1p66K83xmn4jXHWkPMW4bdoMUdEEyoGLrMecahszWv4/kzvDppHTilE9KHClNbuXtFkc
         4yDsoxvCOZUt+9b+/x2TDKg1Y7gln9w/uVP3P1q1W4vXGyak/VwECo+3/SipU6pNG5s5
         5x8HZnxp6JJEyEnbE6nSW0a9E9B4PNM0zxi7iUNAB6m6wcHkCxmQXNnpfVQxkfPyYxjf
         c6bJ0yrfSwOCTR1BAUZQK2nsLkzzY1Q9SvPwFTjDypDz2NauLBhxG+RSuGsGGLyJ/EdV
         VT3w==
X-Forwarded-Encrypted: i=1; AJvYcCUIT5YwRmt1sFJIo0NEiq1iQ6znoysnouVku/xvRZXQsMhcxiGmxv0mOJVRTezPVI3CMNKtF0802JAxDeYwdA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyHvlMXSeDn9I9TjK5Oi4W/C95/S29XlPpYcMUtH4TEqAdksQdi
	RsY4QHD/uRn/9v7JjghAy/mZ0+n5ibcP6gaAfgP1PoCXli3wWmybVudzftL2jIyCENZQZoOVcpQ
	8+DjkkaiV5GnWPEmQ6f3CTvP8h6nOX+wtdtuDsomCpkKFsIho1Ynz
X-Gm-Gg: ASbGncvqpU8OjRREt9B6qJymqU2WQJMznkjMqejBW2LoipBbah+ryAyQt1eQ1FG9nid
	KtUVdWw5fgFwCoMyQmVuEPUtRFwVzJZevSf36fYhbDy6p3py/oO/p6cajxzv0pcQEJjZTFYg34C
	1e76GVegh9tqfiLQMn6G8a/ryFfyw5o9pbtjCiu7+Rkyu8MS5XH7BdLq8AO2VCOQKS/LyGa3J1G
	/tfIXEAUqk4+ZMmaHonxbCTi8wQMzCyOth+uLe9k8M9W8leXyrwW+4axtlhVAeTOoZ5eV6j
X-Google-Smtp-Source: AGHT+IEP20Hd5zXH7TaBK1luFEI91whta9/nRanMdGqkrRNeye2Tk/PEkWxVIZl9IN/yXd7H6AlOEFw6B+87i0XqsQ8=
X-Received: by 2002:a53:d056:0:10b0:641:f5bc:68d4 with SMTP id
 956f58d0204a3-6432941d131mr1383516d50.81.1764075651936; Tue, 25 Nov 2025
 05:00:51 -0800 (PST)
MIME-Version: 1.0
References: <20251121-rockchip-emmc-cqe-rk3576-fix-v1-1-a77805f40072@collabora.com>
In-Reply-To: <20251121-rockchip-emmc-cqe-rk3576-fix-v1-1-a77805f40072@collabora.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 25 Nov 2025 14:00:16 +0100
X-Gm-Features: AWmQ_bn9XHBZp-_mXQSdYI6S_EfNS30h2ysruAh8MZxFVousTjCGxc-bOSJ4hr4
Message-ID: <CAPDyKFp4oNWQn3xW3+GGbGmi8U7H98Bbos0vRqaQPaht54nZ=w@mail.gmail.com>
Subject: Re: [PATCH] mmc: sdhci-of-dwcmshc: Fix command queue support for RK3576
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Adrian Hunter <adrian.hunter@intel.com>, 
	Yifeng Zhao <yifeng.zhao@rock-chips.com>, linux-mmc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251125_050055_404087_45790696 
X-CRM114-Status: GOOD (  20.63  )
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

On Fri, 21 Nov 2025 at 17:27, Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:
>
> When I added command queue engine (CQE) support for the Rockchip eMMC
> controller, I missed that RK3576 has a separate platform data struct.
> While things are working fine on RK3588 (I tested the ROCK 5B) and
> the suspend issue is fixed on the RK3576 (I tested the Sige5), this
> results in stability issues. By also adding the necessary hooks for
> the RK3576 platform the following problems can be avoided:
>
> [   15.606895] mmc0: running CQE recovery
> [   15.616189] mmc0: running CQE recovery
> [...]
> [   25.911484] mmc0: running CQE recovery
> [   25.926305] mmc0: running CQE recovery
> [   25.927468] mmc0: running CQE recovery
> [...]
> [   26.255719] mmc0: running CQE recovery
> [   26.257162] ------------[ cut here ]------------
> [   26.257581] mmc0: cqhci: spurious TCN for tag 31
> [   26.258034] WARNING: CPU: 0 PID: 0 at drivers/mmc/host/cqhci-core.c:796 cqhci_irq+0x440/0x68c
> [   26.263786] CPU: 0 UID: 0 PID: 0 Comm: swapper/0 Not tainted 6.18.0-rc6-gd984ebbf0d15 #1 PREEMPT
> [   26.264561] Hardware name: ArmSoM Sige5 (DT)
> [...]
> [   26.272748] Call trace:
> [   26.272964]  cqhci_irq+0x440/0x68c (P)
> [   26.273296]  dwcmshc_cqe_irq_handler+0x54/0x88
> [   26.273689]  sdhci_irq+0xbc/0x1200
> [   26.273991]  __handle_irq_event_percpu+0x54/0x1d0
> [...]
>
> Note that the above problems do not necessarily happen with every boot.
>
> Reported-by: Adrian Hunter <adrian.hunter@intel.com>
> Closes: https://lore.kernel.org/linux-rockchip/01949bc9-4873-498b-ac7d-f008393ccc4c@intel.com/
> Fixes: fda1e0af7c28f ("mmc: sdhci-of-dwcmshc: Add command queue support for rockchip SOCs")
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
> Sorry for the delay in sending this :)
> ---
>  drivers/mmc/host/sdhci-of-dwcmshc.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/mmc/host/sdhci-of-dwcmshc.c b/drivers/mmc/host/sdhci-of-dwcmshc.c
> index c66a8dfad47c..ee0008d91b98 100644
> --- a/drivers/mmc/host/sdhci-of-dwcmshc.c
> +++ b/drivers/mmc/host/sdhci-of-dwcmshc.c
> @@ -1767,6 +1767,7 @@ static const struct dwcmshc_pltfm_data sdhci_dwcmshc_rk3576_pdata = {
>                 .quirks2 = SDHCI_QUIRK2_PRESET_VALUE_BROKEN |
>                            SDHCI_QUIRK2_CLOCK_DIV_ZERO_BROKEN,
>         },
> +       .cqhci_host_ops = &rk35xx_cqhci_ops,
>         .init = dwcmshc_rk35xx_init,
>         .postinit = dwcmshc_rk3576_postinit,
>  };
>
> ---
> base-commit: dcbce328d3a2d87770133834210cf328c083d480
> change-id: 20251121-rockchip-emmc-cqe-rk3576-fix-ec8ac72e6e32
>
> Best regards,
> --
> Sebastian Reichel <sebastian.reichel@collabora.com>
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
