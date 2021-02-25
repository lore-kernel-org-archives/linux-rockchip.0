Return-Path: <SRS0=CMqn=H3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03232C433E0
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Feb 2021 21:17:06 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 493BD64EBA
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Feb 2021 21:17:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 493BD64EBA
Authentication-Results: mail.kernel.org; dmarc=fail (p=reject dis=none) header.from=google.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CjIIhpj4R8gZhOFGuI1sGDjQFjMA41xL9ZIM3p4ZCOY=; b=Drqhh7BFxMCtBqgP7ocdl8wBS
	ZDka7Ok/Kl1mqxf7UJsnLR7atLHtBk/ar20t84A4nQSTptIdqOAKBQkN4vxq7rX6RIGyVVfjcnkQk
	LusF25t7bAaHuFAW37V+ARs8U5ZLwax5YAzU7JEzypXF0d1/Lpx7szgitV+Qe36mkFt3pjWRYP07O
	AUql1xMlDm1vWCjx2bCzOZIW3dE+/Qha/lxLcRQ+YqKhFsaCBjLKc44XrryQf9rVV4VuIpho/tnQO
	gfiszTnduDfU0cMutbW/3FcrX/xuCWbhfYUoVYNd9fiCzWwwF3PaDrUDFTEdK2spTTDM/zuV6iEJn
	E38uwL76w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lFO0D-0003MB-Fi; Thu, 25 Feb 2021 21:16:53 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lFO0B-0003LL-H8
 for linux-rockchip@lists.infradead.org; Thu, 25 Feb 2021 21:16:52 +0000
Received: by mail-lj1-x22a.google.com with SMTP id q14so8177659ljp.4
 for <linux-rockchip@lists.infradead.org>; Thu, 25 Feb 2021 13:16:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+Q5jeV0/eI5MVanjQDC59pyS/bWWpJw2xxtG8W1c7H4=;
 b=lSDsTa8+1W/LrXlNbDCet5BRX7EP5F6fAfIS4wDDgeQxu1IDh/qbnAteagqoVU/4kt
 0hUW0AMRMdI5mL1PWlNAlkFWnXHFNW+JMVbA1ApVnBUrA1lkPZSqxHpIG3CDDRHc4exv
 WpzZ5/9965fNkK5SJ2SjZR9aCd3KqnbYIaFF8CBANIB0L+enAl72WgK7bJi1wVsdpQna
 irU4+WZ2ROO7Z80oUaV8Vv84aUTnMF6bQ0CX/x/IZ/OGnB8AGcJO7o5D04R1RdtokRx+
 exfZd2Jn12m7Z7EpFkp59f2TNUutRHx4aaA4GiBTXT6sJ9mabLs6TgFUzdH5PmkM81k3
 2XBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+Q5jeV0/eI5MVanjQDC59pyS/bWWpJw2xxtG8W1c7H4=;
 b=W13MlwPxROR/5yVMxxlzEVfTJN57eDiHfuesefTlSZpgcUOyk0Kwtl9Dk4XZxV0LVZ
 OeDHCVeeKROm44LKyyPTtW0bQB4LHCwEQCLSlHj7rpjadLpswfqrq9+JNA2WGGxUUP0H
 +3S/YCNvH2JJmKLpySQqLoVkl+2xgUs99PUIVfQVsI7YPXFJHJVIbQMJNl5rkbSQabQP
 ulY2lBE/tHjQsc85pPZpXsPpVh7bb3tnTVU3EdRgajvW5LKzSYgqXSBGeNRanRPBs9Iy
 K95QNAHuM+5oy7V7P18tkQQfVdpdBrZujW8i/Q+fbsH7LJoxSD9j87I6XN9cO/HF9N+d
 luTQ==
X-Gm-Message-State: AOAM532c3ntP/DoXpvfFzQiJLYtZkwfZkKooZ7VhQ6MmfWebzW/djgox
 5wC7R00XsoYu9SJDZagOX/dazLy0gVX82LyW7SrDPw==
X-Google-Smtp-Source: ABdhPJyoukkJIzbnUCTDgEc8ErCmiFKnaC//5UEi7GGwOSyywu4N1VzA/uVndHYzTf2iwxBHw4DsoQHM4/1tXrcLxow=
X-Received: by 2002:a2e:b88b:: with SMTP id r11mr2535739ljp.495.1614287809489; 
 Thu, 25 Feb 2021 13:16:49 -0800 (PST)
MIME-Version: 1.0
References: <20210225125541.1808719-1-arnd@kernel.org>
In-Reply-To: <20210225125541.1808719-1-arnd@kernel.org>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thu, 25 Feb 2021 13:16:38 -0800
Message-ID: <CAKwvOdkcR=8Ay+VaOym6y4ySC-x+=dfTjN_HDLs-281KdUhojA@mail.gmail.com>
Subject: Re: [PATCH] spi: rockchip: avoid objtool warning
To: Arnd Bergmann <arnd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210225_161652_075741_62449F6B 
X-CRM114-Status: GOOD (  19.52  )
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
 Alexander Kochetkov <al.kochet@gmail.com>, LKML <linux-kernel@vger.kernel.org>,
 linux-spi@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>,
 linux-rockchip@lists.infradead.org, Mark Brown <broonie@kernel.org>,
 Jon Lin <jon.lin@rock-chips.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Vincent Pelletier <plr.vincent@gmail.com>, Johan Jonker <jbx6244@gmail.com>,
 Chris Ruehl <chris.ruehl@gtsys.com.hk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Emil Renner Berthing <kernel@esmil.dk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Feb 25, 2021 at 4:55 AM Arnd Bergmann <arnd@kernel.org> wrote:
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

Thanks for the patch!

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
> Fixes: 65498c6ae241 ("spi: rockchip: support 4bit words")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
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


-- 
Thanks,
~Nick Desaulniers

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
