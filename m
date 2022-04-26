Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0AFFC433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Apr 2022 07:40:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7HuesQ2pdwXUNdT0Cl1AGWE/t8zMCmmidq02WGbLQV0=; b=d9WKOMe+fQoZLj
	l8d+KiRvsWQXshWFs6FgifyEAfA3+TUgkqnU3POlneBvt1OIzBYFpJcYbjtOPbaw1mDv97VoXFRNN
	ahrIKqbxEV+Zg9F10MLWOIu4Vi1gA59VHKyo/ugzh/sJpS9ALi9WFKXAx//i5BYiaHqUMDcRkz8cD
	qbvtd+Ko9bPt2bGaJfwvGlqxzX/pGM1vRtePQAQyK4HtZMgVj/cvC7RJXjxH+xXM4/0y0Ad0Qpbgr
	1p+S1vf8Phd0lwFXG+ucIWp68IcoT8xZB90t55QNUixFXoXYfLPbDYXqZK5FyLx5OK6EB2sNo8x0j
	OVdpfxP0c68G5eVv2iDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njFno-00D200-5o; Tue, 26 Apr 2022 07:40:04 +0000
Received: from mail-oi1-x236.google.com ([2607:f8b0:4864:20::236])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njFnb-00D1u6-Ft
 for linux-rockchip@lists.infradead.org; Tue, 26 Apr 2022 07:39:53 +0000
Received: by mail-oi1-x236.google.com with SMTP id r8so19799585oib.5
 for <linux-rockchip@lists.infradead.org>; Tue, 26 Apr 2022 00:39:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JwyicQ1EZbhkEoCjc0hbWIesHTbrCBp19hDfJseo+HA=;
 b=DPjhTV/HULgZtMDEaftFP2qvtPyQamNLNReviY6O82ZZFowzhk8maY7iefA9pL0o7G
 RIj6xu6foCieM7KicxW54CSqwWGooHfFVdYwP2zDNPYLRGTp27JCc0Z4V6qvAoz7SwzK
 PUFDC9lDvHB/KscGJpgre30a6rlouIC3eS8Es=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JwyicQ1EZbhkEoCjc0hbWIesHTbrCBp19hDfJseo+HA=;
 b=X9EkOUUyhjwNTzfnvQc0xuUYaU8wTGUMVZNAh6u3EmHaRrLax3FeeAZXUSPh++22db
 UbST5LZL4Tndw3TAkWxUBkxIT0jhgmU5hpSTQ4RFa8ArISnsMfAVpgrmhLUZkySa3X+z
 LVIn+KNzigwIVnJkZaY/Fp8DHXqqP6KhUCqKRpaVok4ohfxie019ljgvBdsoqBj/6CxJ
 isO98ROvWXQrSCNUOHzylbhLJzBHOJK1Ar6Zj0fBIDR4ER9bRt0+U1jcTgpZG3DNeLhf
 YfnUeHMtO+8joBnrFQ7AChm2pYB4GJePh8aF921+jfm4l8KO4+Dy2AxVZfftH+Di3Vof
 nX3Q==
X-Gm-Message-State: AOAM532ZctkC2FtAS6kbjgirU8AUFcfIY+HZmBFH3fnp8ZDwvK5nSBT2
 Eu/gUwaTqE2gFpfB2glK8qG8HIkDnxPjkd71
X-Google-Smtp-Source: ABdhPJzD0FAlNEgKqQ4IFsgXRU6FHQW0xn5UVOFtOpAjRlFdrFxhUo1ANQ3emN66ErJZpdi+qIf27w==
X-Received: by 2002:a05:6808:30a4:b0:325:6175:3392 with SMTP id
 bl36-20020a05680830a400b0032561753392mr540538oib.153.1650958787142; 
 Tue, 26 Apr 2022 00:39:47 -0700 (PDT)
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com.
 [209.85.167.169]) by smtp.gmail.com with ESMTPSA id
 s15-20020a0568080b0f00b003227735da75sm4525587oij.50.2022.04.26.00.39.45
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 26 Apr 2022 00:39:45 -0700 (PDT)
Received: by mail-oi1-f169.google.com with SMTP id e4so19813080oif.2
 for <linux-rockchip@lists.infradead.org>; Tue, 26 Apr 2022 00:39:45 -0700 (PDT)
X-Received: by 2002:a05:6808:e88:b0:2fa:72da:55d4 with SMTP id
 k8-20020a0568080e8800b002fa72da55d4mr14283271oil.66.1650958785126; Tue, 26
 Apr 2022 00:39:45 -0700 (PDT)
MIME-Version: 1.0
References: <Ymbw52EF+Pcvkclz@pendragon.ideasonboard.com>
 <20220425210104.31964-1-laurent.pinchart@ideasonboard.com>
In-Reply-To: <20220425210104.31964-1-laurent.pinchart@ideasonboard.com>
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Tue, 26 Apr 2022 09:39:34 +0200
X-Gmail-Original-Message-ID: <CANiDSCvzwcTG6Qacobqekwf8uo9wBxRPJnHvud5Se3PHDKXDOg@mail.gmail.com>
Message-ID: <CANiDSCvzwcTG6Qacobqekwf8uo9wBxRPJnHvud5Se3PHDKXDOg@mail.gmail.com>
Subject: Re: [PATCH v4.1 18/21] media: rkisp1: debug: Update max register name
 length
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 Dafna Hirschfeld <dafna@fastmail.com>, Heiko Stuebner <heiko@sntech.de>, 
 Paul Elder <paul.elder@ideasonboard.com>, Tomasz Figa <tfiga@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220426_003951_617662_CC3E7D98 
X-CRM114-Status: GOOD (  20.41  )
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

Hi Laurent

Thanks for the change


On Mon, 25 Apr 2022 at 23:01, Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Update the maximum register name length to match all the registers being
> printed. This helps getting a consistent alignment of register dumps
> when concatenating multiple debugfs files.
>
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Ricardo Ribalda <ribalda@chromium.org>
> ---
> Changes since v4:
>
> - Replace dynamic per-file register length with global maximum length
> ---
>  .../media/platform/rockchip/rkisp1/rkisp1-debug.c    | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> index 2c226f20f525..e76dc2b164b6 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> @@ -11,8 +11,10 @@
>  #include <linux/debugfs.h>
>  #include <linux/delay.h>
>  #include <linux/device.h>
> +#include <linux/minmax.h>
>  #include <linux/pm_runtime.h>
>  #include <linux/seq_file.h>
> +#include <linux/string.h>
>
>  #include "rkisp1-common.h"
>  #include "rkisp1-regs.h"
> @@ -28,10 +30,14 @@ struct rkisp1_debug_register {
>         RKISP1_CIF_##name, RKISP1_CIF_##name##_SHD, #name \
>  }
>
> +/* Keep this up-to-date when adding new registers. */
> +#define RKISP1_MAX_REG_LENGTH          21
> +
>  static int rkisp1_debug_dump_regs(struct rkisp1_device *rkisp1,
>                                   struct seq_file *m, unsigned int offset,
>                                   const struct rkisp1_debug_register *regs)
>  {
> +       const int width = RKISP1_MAX_REG_LENGTH;
>         u32 val, shd;
>         int ret;
>
> @@ -39,15 +45,15 @@ static int rkisp1_debug_dump_regs(struct rkisp1_device *rkisp1,
>         if (ret <= 0)
>                 return ret ? : -ENODATA;
>
> -       for ( ; regs->name; ++regs) {
> +       for (; regs->name; ++regs) {
>                 val = rkisp1_read(rkisp1, offset + regs->reg);
>
>                 if (regs->shd) {
>                         shd = rkisp1_read(rkisp1, offset + regs->shd);
> -                       seq_printf(m, "%14s: 0x%08x/0x%08x\n", regs->name,
> +                       seq_printf(m, "%*s: 0x%08x/0x%08x\n", width, regs->name,
>                                    val, shd);
>                 } else {
> -                       seq_printf(m, "%14s: 0x%08x\n", regs->name, val);
> +                       seq_printf(m, "%*s: 0x%08x\n", width, regs->name, val);
>                 }
>         }
>
> --
> Regards,
>
> Laurent Pinchart
>


-- 
Ricardo Ribalda

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
