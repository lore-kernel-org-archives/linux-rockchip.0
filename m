Return-Path: <SRS0=CMqn=H3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6667C433DB
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Feb 2021 14:09:43 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F101F64EC3
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Feb 2021 14:09:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F101F64EC3
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=esmil.dk
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=po/Ja6NuTyYgAzv/oa3NpmjTgxINUGTIP/Q0SjSCIlA=; b=fagfxNjNOxIrN+gLq/Sg+Ysbr
	EethOFinvKSSHrb6ZV+XaZEL1FCiX3U8BqRVu/zNw5SikuSf5+N06j/7UfShuU1cmFlhrlQF6n3GC
	Q/51pfuZNdOge9HryHTxuBD73MWJ094a3FDvz+NJx/64q0Q4japSm6aS+Cyw/DgYlpXa52SdUoqNz
	G2maYyrIDcIoNSPDVLRSS8sN71WhdqOJ+t++1whZTIjytvc9nGbYEi4eyptM9G8oYJw0ptvstVkhk
	BEQ5RZXy8ZETBZeeI2pz/Df+VbJg7bMKu+99iR6oghctNVPRVnh0KMhsMDF4e0txRnCDFBX+hedMS
	6J0KMjaRw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lFHKl-00073x-9H; Thu, 25 Feb 2021 14:09:39 +0000
Received: from mail-yb1-f173.google.com ([209.85.219.173])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lFHKa-0006zm-O1; Thu, 25 Feb 2021 14:09:29 +0000
Received: by mail-yb1-f173.google.com with SMTP id u3so5515738ybk.6;
 Thu, 25 Feb 2021 06:09:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Es5XNJa+9iwk/MVy1/C4neul9HbJdUAtiHxYan40OFg=;
 b=eB4PCHpbMILJCFzviNQGZ9DeiAd0gjOm8cQfpbX3c1zjoONvx3M235dQ+W5/w6VBYV
 OxU71neEEAWQb6IrjHyuiMX2fltLZmjzxcEObYA7j9GC8Spdp9SUYNUpx6wrWVOl4zoG
 IXlf75uXzSDYt/idPC+eu4H4dBOg6/7DlB9cit8ZBXj0eCYS0k+4FH1YoFJwb0E3Da1r
 RHLf0I2wCc2tW/E11geUp0iyNv3XyF+WnKleaH5T4fnMzFMjQIG4YVnFhBT3MlrrglU0
 mlHCBD6W1gKuY+D5Qoy6XZIgAy27UoagH/Ajk2QmSF2mDymI1bMwcNgQ1esBFeOuV+Yt
 itCw==
X-Gm-Message-State: AOAM530voGfWgsLEv9MFrXxcFJPWUmO0tNfnn6Bb94bEV11MQptnZY3i
 oLCQSVgcArbv7T1m38P+/pJK8w0dcI39UFMoijw=
X-Google-Smtp-Source: ABdhPJznLeyC6BnYFkpCmYVfHyYd+Yr+VQKBcKGQWFjTCaAbcUCo7BKZQJ/6U71x6ZA5evp6BfOvPTSN5cwrv9asZ4I=
X-Received: by 2002:a25:bbd0:: with SMTP id c16mr4092373ybk.23.1614262165784; 
 Thu, 25 Feb 2021 06:09:25 -0800 (PST)
MIME-Version: 1.0
References: <20210225125541.1808719-1-arnd@kernel.org>
In-Reply-To: <20210225125541.1808719-1-arnd@kernel.org>
From: Emil Renner Berthing <kernel@esmil.dk>
Date: Thu, 25 Feb 2021 15:09:13 +0100
Message-ID: <CANBLGczcWOYyEavx6H1Uk-KvQzTJoq2qC72f22K8ZP-TS5hSnw@mail.gmail.com>
Subject: Re: [PATCH] spi: rockchip: avoid objtool warning
To: Arnd Bergmann <arnd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210225_090928_813542_FADCDB00 
X-CRM114-Status: GOOD (  19.66  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, Arnd Bergmann <arnd@arndb.de>,
 Alexander Kochetkov <al.kochet@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-spi@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Mark Brown <broonie@kernel.org>, Jon Lin <jon.lin@rock-chips.com>,
 clang-built-linux@googlegroups.com, Vincent Pelletier <plr.vincent@gmail.com>,
 Johan Jonker <jbx6244@gmail.com>, Chris Ruehl <chris.ruehl@gtsys.com.hk>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, 25 Feb 2021 at 13:55, Arnd Bergmann <arnd@kernel.org> wrote:
>
> From: Arnd Bergmann <arnd@arndb.de>
>
> Building this file with clang leads to a an unreachable code path
> causing a warning from objtool:
>
> drivers/spi/spi-rockchip.o: warning: objtool: rockchip_spi_transfer_one()+0x2e0: sibling call from callable instruction with modified stack frame
>
> Use BUG() instead of unreachable() to avoid the undefined behavior
> if it does happen.
>
> Fixes: 65498c6ae241 ("spi: rockchip: support 4bit words")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Acked-by: Emil Renner Berthing <kernel@esmil.dk>

> ---
>  drivers/spi/spi-rockchip.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
> index 936ef54e0903..972beac1169a 100644
> --- a/drivers/spi/spi-rockchip.c
> +++ b/drivers/spi/spi-rockchip.c
> @@ -521,7 +521,7 @@ static void rockchip_spi_config(struct rockchip_spi *rs,
>                  * ctlr->bits_per_word_mask, so this shouldn't
>                  * happen
>                  */
> -               unreachable();
> +               BUG();
>         }
>
>         if (use_dma) {
> --
> 2.29.2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
