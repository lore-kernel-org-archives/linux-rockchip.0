Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C13FEE020B
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Dec 2025 15:34:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EZr46U+z20qubpg2eUWnuaYCRQ6hxn27TUtbcZiUGkc=; b=cGTWn+2xj6EHmw
	eGax16Qgqwz1pIkMPHSFjojgIcEaGk0b3Qd+B0Rf7+zbHefQL9rjQXCUmrExV9hQDE9q2g/a4GqNx
	5XpH0LBVugLOPzdimLsMXZAZR58x7LUcTmx9cmzfbw3UQqdADFGfmuor/UsVwtjVzJ/8tCYvfRXep
	1sr5dLa5Cdn3e3KGSmIrI0YAYjqPRISBV6+zhEr8OxG8RfVDXxorWHgyI8SeKX/sCcbQvS59Si41i
	wqUIMKm1a3SFd5apOM81E+WhrCVvebvxp/LTigMR3yQ4tIGobT+Lo1HbGCB4Cyu/A0K0v+TELnJCY
	+YrhDKEukMPp16Q0QajQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vabk1-0000000507Z-38w7;
	Tue, 30 Dec 2025 15:34:33 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vabjy-0000000506K-09uB
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Dec 2025 15:34:32 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-5957db5bdedso11605643e87.2
        for <linux-rockchip@lists.infradead.org>; Tue, 30 Dec 2025 07:34:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767108868; x=1767713668; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VVOyprJ3Cj2YRlSR4vH7ppFe43eLFh6BnkA7raxZ3uM=;
        b=idwwm1slYuPksgpXxJJG/ckvAB5FecheZKVjUAmrxYKnjQopfKgrVEP1TT0w9UNGkT
         OSs0y1QzLqRgjGtHLI68uuYVstwz9MQ+ky9e3oxSmkrRQe+UULGorrRhHywazy4KdKIH
         VFnHEOjWIfwzEL6x/aFHBehedVqjRlTOl9jyVUNMAw1mss6oyZpPlSLL3ho/bNHSdABl
         BAVhCU6lAuFpiV2ZcWPNzkkM1A1gQURk1KeU/JX8uo+5W+abebkob3tHTQUCAglMLcnP
         3JPl3Oxx+mDAsnAuBmz0rVSXKpvctq+txuLc/HGlfD8j5idx1OJIt5KQFPTTX/P09TQy
         7kqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767108868; x=1767713668;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VVOyprJ3Cj2YRlSR4vH7ppFe43eLFh6BnkA7raxZ3uM=;
        b=ggWnfec6/vIOZFk2jTYtxVpEnpCVLIkYN+auaUhwMyDm5FKc7QF3KiRx48LJyRJiEU
         UZZoNBwL/GNBzPdbSlZB24rhwiG6WNloMdiLMKAy6jBKqiLqiRxaKDVK56+b/rF0wyns
         +tI6uRcIyhieVUEr+jomwkVht2BeMs2O5tQb3jlgG/I9ntUGa8+hX1zkWnPyVRI4L4fy
         GiM3Y2SiEPj+G1fPp1ZGW2ee7by/dScaAI2E3MXvs+NQPziQGeCBQvE7HoCIIGu0kPiX
         q/GSPU5LdqkjlT0iO4ZMXNrloViTrmISEfhD6e/I25+CKpS+wjyHY7WCfdrHs7sJb+RX
         PXwQ==
X-Forwarded-Encrypted: i=1; AJvYcCVHasbaHU/Xx5GKxgfMLd7QDi+WRUzldtss//zko4irC8nWgQrUseo6o3OqLf5Lt+vvI0uP9ZFjvblCSA8eGg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxTV0ahCwqWY49Fe42An6oYwwZ7bkcx7SxJrLnam4LaU/03mUzc
	44rwedosK+CzL/sYMMnkGqv/0dfc2AlQFYDzFgVaeDLVT2nTU2He5Zu+FOjrMCDVrKPzKv4vzkT
	YHiHx4OXwVlIhON/MjQoDSFLodq0s/xdlvUX7mbOPRKgmkcdQHv70
X-Gm-Gg: AY/fxX7SGw9Bf88HBIA8hj0OQ+jGJFMxHVQz3DOx+Bz5anap7s92GkJGizF55SrcbLF
	6kr4P/8IMXndVxsr11JWgvu0CVDPHIix9Lgif71jk9rgmrnzMFETwabvMJ4EPG3y8g30n+yVZcc
	zorsQTkjl2v16kHw4Zgw1VFfzUU+rKe1x1eCgGX7skHaZD9tcDPv2BWkWSr/GftJbuP28/H1tWf
	dXJ4he5xc8m06Ny9j1/v+vwK9qVriEd28YFCsS6uLh4uHgPPEDHwnaNG1r1aTbJZ+zkx+jR
X-Google-Smtp-Source: AGHT+IEdpLJulaMagiCntHq1v9KxSgC049v9J3ss/UBW2tRdN7RsCII8vnj/WhdRIz5aTHz6WELoj9cCY8mYimOF/RA=
X-Received: by 2002:a05:6512:b8b:b0:598:8f92:c33f with SMTP id
 2adb3069b0e04-59a17d77435mr12093495e87.51.1767108867602; Tue, 30 Dec 2025
 07:34:27 -0800 (PST)
MIME-Version: 1.0
References: <1766387485-205480-1-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1766387485-205480-1-git-send-email-shawn.lin@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 30 Dec 2025 16:33:51 +0100
X-Gm-Features: AQt7F2oM5uh2RRoQE3AlSJVcnjGKNpD0QEAOcfCTfTFC010Q-hSrZ7pgui_gOls
Message-ID: <CAPDyKFrAyQY1o0x_-ZqxfwACZHhDPqiSWCBfLWGtHzX9fUSnTw@mail.gmail.com>
Subject: Re: [PATCH] mmc: sdhci-of-dwcmshc: Prevent illegal clock reduction in
 HS200/HS400 mode
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Adrian Hunter <adrian.hunter@intel.com>, linux-rockchip@lists.infradead.org, 
	linux-mmc@vger.kernel.org, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Yifeng Zhao <yifeng.zhao@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251230_073431_417473_987C14B3 
X-CRM114-Status: GOOD (  18.49  )
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

On Mon, 22 Dec 2025 at 08:11, Shawn Lin <shawn.lin@rock-chips.com> wrote:
>
> When operating in HS200 or HS400 timing modes, reducing the clock frequency
> below 52MHz will lead to link broken as the Rockchip DWC MSHC controller
> requires maintaining a minimum clock of 52MHz in these modes.
>
> Add a check to prevent illegal clock reduction through debugfs:
>
> root@debian:/# echo 50000000 > /sys/kernel/debug/mmc0/clock
> root@debian:/# [   30.090146] mmc0: running CQE recovery
> mmc0: cqhci: Failed to halt
> mmc0: cqhci: spurious TCN for tag 0
> WARNING: drivers/mmc/host/cqhci-core.c:797 at cqhci_irq+0x254/0x818, CPU#1: kworker/1:0H/24
> Modules linked in:
> CPU: 1 UID: 0 PID: 24 Comm: kworker/1:0H Not tainted 6.19.0-rc1-00001-g09db0998649d-dirty #204 PREEMPT
> Hardware name: Rockchip RK3588 EVB1 V10 Board (DT)
> Workqueue: kblockd blk_mq_run_work_fn
> pstate: 604000c9 (nZCv daIF +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
> pc : cqhci_irq+0x254/0x818
> lr : cqhci_irq+0x254/0x818
> ...
>
> Fixes: c6f361cba51c ("mmc: sdhci-of-dwcmshc: add support for rk3588")
> Cc: Sebastian Reichel <sebastian.reichel@collabora.com>
> Cc: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

Applied for fixes and by adding a stable-tag, thanks!

Kind regards
Uffe


> ---
>
>  drivers/mmc/host/sdhci-of-dwcmshc.c | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/drivers/mmc/host/sdhci-of-dwcmshc.c b/drivers/mmc/host/sdhci-of-dwcmshc.c
> index 51949cd..204830b 100644
> --- a/drivers/mmc/host/sdhci-of-dwcmshc.c
> +++ b/drivers/mmc/host/sdhci-of-dwcmshc.c
> @@ -739,6 +739,13 @@ static void dwcmshc_rk3568_set_clock(struct sdhci_host *host, unsigned int clock
>         sdhci_writel(host, extra, reg);
>
>         if (clock <= 52000000) {
> +               if (host->mmc->ios.timing == MMC_TIMING_MMC_HS200 ||
> +                   host->mmc->ios.timing == MMC_TIMING_MMC_HS400) {
> +                       dev_err(mmc_dev(host->mmc),
> +                               "Can't reduce the clock below 52MHz in HS200/HS400 mode");
> +                       return;
> +               }
> +
>                 /*
>                  * Disable DLL and reset both of sample and drive clock.
>                  * The bypass bit and start bit need to be set if DLL is not locked.
> --
> 2.7.4
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
