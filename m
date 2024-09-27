Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7EB8CEBF81
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Sep 2024 08:18:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xl9UbT/00s0SwVCOOcWTstapDSUT57vTgF+NOe1lcRU=; b=BSXXVrJ6grOnBf
	QJ7K/CZik654kZSq5d8+IXzPcOx3Mote0zsqq3iDbdyR/Tip3w8kzk/dZmhRZUm3Cv3IdZVtbHyD5
	loNdeZcVkD7sgixp8v+9WeNA/98UYkpQLbXPSKU14KV8cIh0/Y5UNFMKJBGBGciAaQG5hxqHAFHAh
	e3mqKcciYBzH348TkqD6QUTGeCOWTS1tgeGC/Zoog+6psNpgTOIJKzcgkmqDtokT4qlqi1xC2YSs9
	kUJW+1Yc0eJD9vt/DToqgz6e2URukQWdoj1oiqociXYPPuJ2IEYn3crG9mso6oYzu427mC8Wlxx0Y
	He2d0Jq9PUtbQDw7tS/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1su6Au-0000000ATNf-2QCl;
	Fri, 27 Sep 2024 08:18:04 +0000
Received: from mail-oi1-x22b.google.com ([2607:f8b0:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su6Ar-0000000ATMl-2lCP;
	Fri, 27 Sep 2024 08:18:03 +0000
Received: by mail-oi1-x22b.google.com with SMTP id 5614622812f47-3e3937ef498so418925b6e.0;
        Fri, 27 Sep 2024 01:18:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727425080; x=1728029880; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wik+ChQqsJUQ9vegf6yc2qiPGCL4qopVw1Omly+OHW0=;
        b=bmEhm7sYDvq6itbXolgOgXOOrK6zvwTjlBKfoADFJqwDN7ZyoP9dHS6HV96d2R0tU3
         hV809lfXkIQUwQNhAlnRUL5iJKa+1aJnFI0tEEeMXLnjNvCuPTdD5WB3xJpiGRm1VVnW
         rHciUPZEByp3sn22YNtSejlFtdbm0Nx0QubnPM1L4T06rHvkoUhAaRteenOID4NXPPGp
         0q2VHNCxvgZqMCAvGI8RVydVrycwYUfqwOL4H8kEs56wlsJISoGI9qQ7mlf8IMwSY5ZK
         ECqcfl3C2iD/etmYg7Kc0XbMDBAOj7ebYxovkM1Qq61S0HUKpR6juZBt1TT9XYrNB027
         7QQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727425080; x=1728029880;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wik+ChQqsJUQ9vegf6yc2qiPGCL4qopVw1Omly+OHW0=;
        b=cJK5uyAJrZpuTgzmj9Vtu/IwDlcv/qEfDGbkP8VyankWz56cI0JGKGY7i/65uuBlQ6
         EgzmiV5hNBbPajE4yzPqGgj3/mDawTQjOq80EMsGMsDHyrVoUO14SxfBPTfnVIan4UcA
         qLv3GPNl0fGz/qaf9sR6rrspJadmh00euWmFN3SHpfWP1odtPcxvvPisMyDqW5CQ/F/H
         qxmHHjbabXZuKak6jx923JHU5kWo/tAU7pUse8K1TsvZtxF4vrrqluf9U3HIW0RSr2jw
         PR1P28TFHm0+33RnRJF1dVFYh9qCzWosK7I1yenrb7K6QXU7Bo8HrG9hXJLN+B0PDyS6
         FjBg==
X-Forwarded-Encrypted: i=1; AJvYcCUZsIveQCKskX91WUhg0BmAxnSOSWB2YKFTfupHoD3ETq3P9BlI9pFmlRsbcw4U9M7phXQBdpVzwYPnzszVWKs=@lists.infradead.org, AJvYcCW3Qqmr2SwfWmejGyjS9eWxR6yUb0/PEp141AXCI1JyWZ3CGGayBYrcmtW4qmJjX+YCRJkndcNxA4m1IicCPxpJ@lists.infradead.org
X-Gm-Message-State: AOJu0YyiE1rlWug4raQCmOtQ3QN9pBVUR4u/yfoPMjMTiefGUUtbHub/
	5AG9HAFN8pVv9xsaOZK0b2q++5tPshu2hTLQLqDQhjOTSUEp5KfLf3ZfuPzX3VjTbrBIQXrj7RC
	w/jybZSGWIwYePU342O9LEcTeWbM=
X-Google-Smtp-Source: AGHT+IGXhzWbBdeIrb0hJqpwNgrU0bjAQ6vyKaWNVNcd1bGRalu2iD6EKqCW4Qs5ETCMD0+1IwTEHcpL/v4onOi88xw=
X-Received: by 2002:a05:6808:f86:b0:3e2:9d3f:15fe with SMTP id
 5614622812f47-3e3939e7f79mr1404501b6e.45.1727425079995; Fri, 27 Sep 2024
 01:17:59 -0700 (PDT)
MIME-Version: 1.0
References: <20240901183221.240361-1-linux.amoon@gmail.com> <20240901183221.240361-2-linux.amoon@gmail.com>
In-Reply-To: <20240901183221.240361-2-linux.amoon@gmail.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Fri, 27 Sep 2024 13:47:44 +0530
Message-ID: <CANAwSgSgwx0kuV-boF14_WXiPkE8KXxOWOfS2e_QOWMKgKSLnA@mail.gmail.com>
Subject: Re: [PATCH v5 1/6] PCI: rockchip: Simplify clock handling by using
 clk_bulk*() function
To: Shawn Lin <shawn.lin@rock-chips.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Rob Herring <robh@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_011801_780698_EFA34F9F 
X-CRM114-Status: GOOD (  24.32  )
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

Hi,

On Mon, 2 Sept 2024 at 00:03, Anand Moon <linux.amoon@gmail.com> wrote:
>
> Refactor the clock handling in the Rockchip PCIe driver,
> introducing a more robust and efficient method for enabling and
> disabling clocks using clk_bulk*() API. Using the clk_bulk APIs,
> the clock handling for the core clocks becomes much simpler.
>
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>

Do you have any review comments on this series?

Thanks
-Anand

> ---
> v5: switch to use use devm_clk_bulk_get_all()? gets rid of hardcoding the
>     clock names in driver.
> v4: use dev_err_probe for error patch.
> v3: Fix typo in commit message, dropped reported by.
> v2: Fix compilation error reported by Intel test robot.
> ---
> ---
>  drivers/pci/controller/pcie-rockchip.c | 65 +++-----------------------
>  drivers/pci/controller/pcie-rockchip.h |  7 ++-
>  2 files changed, 10 insertions(+), 62 deletions(-)
>
> diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
> index c07d7129f1c7..2777ef0cb599 100644
> --- a/drivers/pci/controller/pcie-rockchip.c
> +++ b/drivers/pci/controller/pcie-rockchip.c
> @@ -127,29 +127,9 @@ int rockchip_pcie_parse_dt(struct rockchip_pcie *rockchip)
>                                              "failed to get ep GPIO\n");
>         }
>
> -       rockchip->aclk_pcie = devm_clk_get(dev, "aclk");
> -       if (IS_ERR(rockchip->aclk_pcie)) {
> -               dev_err(dev, "aclk clock not found\n");
> -               return PTR_ERR(rockchip->aclk_pcie);
> -       }
> -
> -       rockchip->aclk_perf_pcie = devm_clk_get(dev, "aclk-perf");
> -       if (IS_ERR(rockchip->aclk_perf_pcie)) {
> -               dev_err(dev, "aclk_perf clock not found\n");
> -               return PTR_ERR(rockchip->aclk_perf_pcie);
> -       }
> -
> -       rockchip->hclk_pcie = devm_clk_get(dev, "hclk");
> -       if (IS_ERR(rockchip->hclk_pcie)) {
> -               dev_err(dev, "hclk clock not found\n");
> -               return PTR_ERR(rockchip->hclk_pcie);
> -       }
> -
> -       rockchip->clk_pcie_pm = devm_clk_get(dev, "pm");
> -       if (IS_ERR(rockchip->clk_pcie_pm)) {
> -               dev_err(dev, "pm clock not found\n");
> -               return PTR_ERR(rockchip->clk_pcie_pm);
> -       }
> +       rockchip->num_clks = devm_clk_bulk_get_all(dev, &rockchip->clks);
> +       if (rockchip->num_clks < 0)
> +               return dev_err_probe(dev, err, "failed to get clocks\n");
>
>         return 0;
>  }
> @@ -372,39 +352,11 @@ int rockchip_pcie_enable_clocks(struct rockchip_pcie *rockchip)
>         struct device *dev = rockchip->dev;
>         int err;
>
> -       err = clk_prepare_enable(rockchip->aclk_pcie);
> -       if (err) {
> -               dev_err(dev, "unable to enable aclk_pcie clock\n");
> -               return err;
> -       }
> -
> -       err = clk_prepare_enable(rockchip->aclk_perf_pcie);
> -       if (err) {
> -               dev_err(dev, "unable to enable aclk_perf_pcie clock\n");
> -               goto err_aclk_perf_pcie;
> -       }
> -
> -       err = clk_prepare_enable(rockchip->hclk_pcie);
> -       if (err) {
> -               dev_err(dev, "unable to enable hclk_pcie clock\n");
> -               goto err_hclk_pcie;
> -       }
> -
> -       err = clk_prepare_enable(rockchip->clk_pcie_pm);
> -       if (err) {
> -               dev_err(dev, "unable to enable clk_pcie_pm clock\n");
> -               goto err_clk_pcie_pm;
> -       }
> +       err = clk_bulk_prepare_enable(rockchip->num_clks, rockchip->clks);
> +       if (err)
> +               return dev_err_probe(dev, err, "failed to enable clocks\n");
>
>         return 0;
> -
> -err_clk_pcie_pm:
> -       clk_disable_unprepare(rockchip->hclk_pcie);
> -err_hclk_pcie:
> -       clk_disable_unprepare(rockchip->aclk_perf_pcie);
> -err_aclk_perf_pcie:
> -       clk_disable_unprepare(rockchip->aclk_pcie);
> -       return err;
>  }
>  EXPORT_SYMBOL_GPL(rockchip_pcie_enable_clocks);
>
> @@ -412,10 +364,7 @@ void rockchip_pcie_disable_clocks(void *data)
>  {
>         struct rockchip_pcie *rockchip = data;
>
> -       clk_disable_unprepare(rockchip->clk_pcie_pm);
> -       clk_disable_unprepare(rockchip->hclk_pcie);
> -       clk_disable_unprepare(rockchip->aclk_perf_pcie);
> -       clk_disable_unprepare(rockchip->aclk_pcie);
> +       clk_bulk_disable_unprepare(rockchip->num_clks, rockchip->clks);
>  }
>  EXPORT_SYMBOL_GPL(rockchip_pcie_disable_clocks);
>
> diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
> index 6111de35f84c..bebab80c9553 100644
> --- a/drivers/pci/controller/pcie-rockchip.h
> +++ b/drivers/pci/controller/pcie-rockchip.h
> @@ -11,6 +11,7 @@
>  #ifndef _PCIE_ROCKCHIP_H
>  #define _PCIE_ROCKCHIP_H
>
> +#include <linux/clk.h>
>  #include <linux/kernel.h>
>  #include <linux/pci.h>
>  #include <linux/pci-ecam.h>
> @@ -299,10 +300,8 @@ struct rockchip_pcie {
>         struct  reset_control *pm_rst;
>         struct  reset_control *aclk_rst;
>         struct  reset_control *pclk_rst;
> -       struct  clk *aclk_pcie;
> -       struct  clk *aclk_perf_pcie;
> -       struct  clk *hclk_pcie;
> -       struct  clk *clk_pcie_pm;
> +       struct  clk_bulk_data *clks;
> +       int     num_clks;
>         struct  regulator *vpcie12v; /* 12V power supply */
>         struct  regulator *vpcie3v3; /* 3.3V power supply */
>         struct  regulator *vpcie1v8; /* 1.8V power supply */
> --
> 2.44.0
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
