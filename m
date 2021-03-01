Return-Path: <SRS0=+1u9=H7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C6A0C433DB
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Mar 2021 17:16:09 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 36D3B651B7
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Mar 2021 17:16:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 36D3B651B7
Authentication-Results: mail.kernel.org; dmarc=fail (p=reject dis=none) header.from=google.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=undyNAq5yAvirjqqwvqj7aMdYC0ymHbyizrx+vFvqDw=; b=bLde9K62CuNPtrutUETDKoWDO
	F+vTcOSfCFOifhezDec7pXnyTcrgE8CIKU4r4Rh1QY5aK2YeBcath3BF1kcK8p/WHky8oXeny7rx3
	WiO5TgTiiPNvuF1VUOy0nDIOGzfY82KvZ+dSaroCyItcLD4pCecbdm1b9GVcHqquIJtsb/WybJ4u5
	mlYlDhWRLgKgiZIKEv290X+aXu2c/o1TCCXg3j31tSyzxHXWMwrYKRTvxMd2lT6HxV31GAeahgSL9
	AwlwpjtaohxoZDrT+vrHK/aIi52XiOzqeZBmk6lU6giVTRBuuDeqNcPIYk3Zk4HRug3dVn0VDEZgB
	csz1evOwg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGm9K-0008Ns-4n; Mon, 01 Mar 2021 17:16:02 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGm9I-0008MO-2S
 for linux-rockchip@lists.infradead.org; Mon, 01 Mar 2021 17:16:01 +0000
Received: by mail-lj1-x229.google.com with SMTP id p15so11424436ljc.13
 for <linux-rockchip@lists.infradead.org>; Mon, 01 Mar 2021 09:15:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8vfA0JJVUwjAoVTynDDOGpb5xwJq3miSmMP9XTq3nF0=;
 b=QUngnvuZ1juQC+JZqd3bfrz/6eGvwq8dFa9G3cpk4LNVtVZ/50qtZExt8jlX2vYPju
 j7zmp+XCKr86InJMeROfKPvT5u2RR26rFxcN3lZ7rT7EOrDu7XJ+x4ZrX0ng2FUIioO8
 YFuMDgBiVEeauoJbNAV7y+2420DLmuJLFJK0xaHcsr3ckapgC1msyiMTUv4ZPG7NVonp
 /G0cAA7kJp3iZwxOh/qC3juvtyOp1dx7uipR/zOy94RsQm5rLXO51oVX1Om0bsntnaZM
 ECrsSCePPEx/kbsz4FtC4W1jmZpzrY3nu1Hn1vaE4055R0YFyqt0YqxmdvAaMWipunzb
 ipOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8vfA0JJVUwjAoVTynDDOGpb5xwJq3miSmMP9XTq3nF0=;
 b=TN5ll3DscJd83YDIxHBzAg8kbjA3R/0Hrg7Q4o6JZO2LionC9FMmLDgNOqNsITxwSE
 90DJ/kiMMSg088/q7uTt6+0SZsnsbMCY5AR7jz7YErdUNOvxKQcRIAKbYynQNyYzKPnO
 12tGICtgXnxyOkuH044ftTJoB8iCI6BAXG+G7GwslmlIZ68qwGH9497RFbxS0lBiKvUy
 MhBG60ZheDB3FndJp9fAPaFhs4rm2qtEB0tZikQCzyLV+oDGlVJPV1/DmUMMqqmU8+sT
 iFOB0PXxh1RHTkuMplwl712Jjzzd0yKznOZlBEleHGh/bckrWzSRK5t8aufYc7GdosR6
 hBxA==
X-Gm-Message-State: AOAM530M2LJA68apbj8AVgYDfPQaZXtza3pY+z0sDzF9YRYv89fAlXmO
 9jYObgAzkqr+6B1i6JBp9T5mqqz18wEaHX3duSi2wQ==
X-Google-Smtp-Source: ABdhPJw+ulsZ4e65mNoQ3u4P9w+nmNzhzYyTKZwphBBWrWSyEHlf41GeR6R1QobhkIVVtK/HP3dLPjnIBFW80yJIlt0=
X-Received: by 2002:a2e:9a4e:: with SMTP id k14mr7363439ljj.116.1614618955690; 
 Mon, 01 Mar 2021 09:15:55 -0800 (PST)
MIME-Version: 1.0
References: <20210226140109.3477093-1-arnd@kernel.org>
In-Reply-To: <20210226140109.3477093-1-arnd@kernel.org>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Mon, 1 Mar 2021 09:15:44 -0800
Message-ID: <CAKwvOd=kWY8ki-j-VZ7X4anypeuW5=4w2FPD=f39vK-zrAaWjQ@mail.gmail.com>
Subject: Re: [PATCH] [v2] spi: rockchip: avoid objtool warning
To: Arnd Bergmann <arnd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210301_121600_152926_6504D6D4 
X-CRM114-Status: GOOD (  23.01  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Emil Renner Berthing <kernel@esmil.dk>, Arnd Bergmann <arnd@arndb.de>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>, linux-spi@vger.kernel.org,
 Nathan Chancellor <nathan@kernel.org>, linux-rockchip@lists.infradead.org,
 Mark Brown <broonie@kernel.org>, Jon Lin <jon.lin@rock-chips.com>,
 Johan Jonker <jbx6244@gmail.com>, Pratyush Yadav <p.yadav@ti.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, Feb 26, 2021 at 6:01 AM Arnd Bergmann <arnd@kernel.org> wrote:
>
> From: Arnd Bergmann <arnd@arndb.de>
>
> Building this file with clang leads to a an unreachable code path
> causing a warning from objtool:
>
> drivers/spi/spi-rockchip.o: warning: objtool: rockchip_spi_transfer_one()+0x2e0: sibling call from callable instruction with modified stack frame
>
> Change the unreachable() into an error return that can be
> handled if it ever happens, rather than silently crashing
> the kernel.
>
> Fixes: 65498c6ae241 ("spi: rockchip: support 4bit words")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Thanks for the v2!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
> v2: use 'return' instead of 'BUG()'
> ---
>  drivers/spi/spi-rockchip.c | 13 ++++++++++---
>  1 file changed, 10 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
> index 936ef54e0903..0d75080da648 100644
> --- a/drivers/spi/spi-rockchip.c
> +++ b/drivers/spi/spi-rockchip.c
> @@ -476,7 +476,7 @@ static int rockchip_spi_prepare_dma(struct rockchip_spi *rs,
>         return 1;
>  }
>
> -static void rockchip_spi_config(struct rockchip_spi *rs,
> +static int rockchip_spi_config(struct rockchip_spi *rs,
>                 struct spi_device *spi, struct spi_transfer *xfer,
>                 bool use_dma, bool slave_mode)
>  {
> @@ -521,7 +521,9 @@ static void rockchip_spi_config(struct rockchip_spi *rs,
>                  * ctlr->bits_per_word_mask, so this shouldn't
>                  * happen
>                  */
> -               unreachable();
> +               dev_err(rs->dev, "unknown bits per word: %d\n",
> +                       xfer->bits_per_word);
> +               return -EINVAL;
>         }
>
>         if (use_dma) {
> @@ -554,6 +556,8 @@ static void rockchip_spi_config(struct rockchip_spi *rs,
>          */
>         writel_relaxed(2 * DIV_ROUND_UP(rs->freq, 2 * xfer->speed_hz),
>                         rs->regs + ROCKCHIP_SPI_BAUDR);
> +
> +       return 0;
>  }
>
>  static size_t rockchip_spi_max_transfer_size(struct spi_device *spi)
> @@ -577,6 +581,7 @@ static int rockchip_spi_transfer_one(
>                 struct spi_transfer *xfer)
>  {
>         struct rockchip_spi *rs = spi_controller_get_devdata(ctlr);
> +       int ret;
>         bool use_dma;
>
>         WARN_ON(readl_relaxed(rs->regs + ROCKCHIP_SPI_SSIENR) &&
> @@ -596,7 +601,9 @@ static int rockchip_spi_transfer_one(
>
>         use_dma = ctlr->can_dma ? ctlr->can_dma(ctlr, spi, xfer) : false;
>
> -       rockchip_spi_config(rs, spi, xfer, use_dma, ctlr->slave);
> +       ret = rockchip_spi_config(rs, spi, xfer, use_dma, ctlr->slave);
> +       if (ret)
> +               return ret;
>
>         if (use_dma)
>                 return rockchip_spi_prepare_dma(rs, ctlr, xfer);
> --
> 2.29.2
>


-- 
Thanks,
~Nick Desaulniers

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
