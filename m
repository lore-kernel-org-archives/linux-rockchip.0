Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A934DD3B7E5
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Dec 2025 10:25:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HfmCyzQCI6fYIKaPwNlVMw9ipgEai43z2biR9ICFY3Y=; b=knHjotlZfr4yiF
	+dGmMpHahUG03gdU4AnlMVcfNg3WUJOboWUCBDOZh15eshC4d5AuGXkrgOcdgxNtff69a+uDkil+k
	c2WJTJ8TvN93MeuWDG+fjHrPXMovqFkXo8KCyQodwEZM8vg6uNf0PULg8GyMbrDdji9b8XYbIvFhD
	Tt8bmTGszTnx9+OESGkQVIXfec6G+CjHNSg0zWqO0svENygnt98IdAifzORQrWSklmNLQM2c7b7bD
	rHLyiupwx/tjr8OuapvN7bbF3G9WPu77MO11Xvq06kSutKu/A24gH7DX+NGzXKaR9iWWT8BNau59O
	iXYhkEECxMVfL8FZHrlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaARR-00000003ZQC-1Uye;
	Mon, 29 Dec 2025 10:25:33 +0000
Received: from mail-vk1-f175.google.com ([209.85.221.175])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaARO-00000003ZOu-46Qf
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Dec 2025 10:25:32 +0000
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-55b6a642a4cso6212241e0c.3
        for <linux-rockchip@lists.infradead.org>; Mon, 29 Dec 2025 02:25:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767003930; x=1767608730;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fEHua9B0eiJ9krPOOGN9l1YijNcHX4oQExQFKvr6EFA=;
        b=scDNc/9FBKlhuVCp3Ec0YVUyIO7sgQss/MYFl6dZSZ1+m0zgbOsT2TE/Y3u46mwX2H
         z6yJdz2StjsMo9itZJmFlrCwoTNoNxtYPjMe3wZbSGBuotRMKrsBu8LFJL67nEjjaoWq
         hphwFJKdaQrNjkY7O+Xlzy/e+GNhSOxi9VtfItFG5aXaUkReTpfrlLvQPtnnomsSzcMH
         kP6D8KQ6Aq+5RBNqDekVuOEiFsY8Drp1PFzloIThW7WuIPH83H/buYByKeS0rUjqXIfE
         FO5pj/ikuuGW5zdtp1w8LELyz8af8mTXics2QWeEQEY2mmObbWtEszAm+TB0mqtQtQGM
         lk0g==
X-Forwarded-Encrypted: i=1; AJvYcCUfdgKoUMp9Ftopxvg/HZoFG9PheyaT/PP4VCsbT5wfrNLK6E1sK9MjjjUI/q9NKLJ1XdjItV6yb3IsfC3YLQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxdwKzpu69hxUyBWCWQHEjGOnrfN/OBNpR6WNe6NB+5jBdEHlZJ
	auVXmxkNwDSfQU8f72LRT1eXelcXmP5HHoHG3OMKGo2woQ6vfYsAkgeHKBEFYsdH
X-Gm-Gg: AY/fxX49xMnqpo6c2RjKT7IIcorvxsoD1l/C9CCoQceSpemrArfBObb9EbnYxBA6oVP
	Z3NKkNclObx04PJBa5hd98WmnALU9/7B0vZU9eIR6ms7cu1sU9qOQaqIDLekla5O3oQSoB7vmvx
	JX89qKSBM/sUS1SOnU/yRPCElA5fbEQdH/Nj+fUMASuBZWlUUWDK2EabDwsh17vuIBUvFaPHP3v
	BIVcwiDG8gWGONDCjQrHr1RlZ0qqXTKw5qLKALulEMSVcUbGIuGUySiMlkxOY8jYVbAAf8qtfN0
	6FFd3b6VtuJ4kyOJmX6wYo4/1wuYc7o5SvSFIwPfU1Nphq7Yxx3pCgnaktQs78di7z2N8CnkNpt
	ssiBmSvHs/8cVLSSlAAOOW23oRNTcJZUKWLRfidu3olm++UVHG3U0qrbBXEzVE8pQcjLl0Ro3Ew
	hW/A65NcVDy1c6LnRRgrmwIdP0J7QABT3y7TWtuBsQ066Zh5vgRs/fZ4bFXec=
X-Google-Smtp-Source: AGHT+IHmy2lCmmmWOirOe6AXT89Mwd8+hOeQmu/C82oYNgaeCBZtE1QzqJUnxBG9R/m4fI6LXfNsRg==
X-Received: by 2002:a05:6122:168d:b0:557:c6d3:5c0f with SMTP id 71dfb90a1353d-5615be6b746mr9162400e0c.13.1767003929651;
        Mon, 29 Dec 2025 02:25:29 -0800 (PST)
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com. [209.85.217.47])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5615d066ddcsm9181688e0c.9.2025.12.29.02.25.29
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Dec 2025 02:25:29 -0800 (PST)
Received: by mail-vs1-f47.google.com with SMTP id ada2fe7eead31-5dfa9c01c54so5601375137.0
        for <linux-rockchip@lists.infradead.org>; Mon, 29 Dec 2025 02:25:29 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUotMKk1io41Vh/aMgk/lXerlmB97VMRM48Qz1RpB7sSwOx9OFntifpSUuw4ixr/lLNTgGzfDLAtY9FdO97fw==@lists.infradead.org
X-Received: by 2002:a05:6122:d85:b0:557:ddc4:dea4 with SMTP id
 71dfb90a1353d-5615bd7150bmr9849393e0c.5.1767003543582; Mon, 29 Dec 2025
 02:19:03 -0800 (PST)
MIME-Version: 1.0
References: <20251212-phy-clk-round-rate-v3-0-beae3962f767@redhat.com> <20251212-phy-clk-round-rate-v3-9-beae3962f767@redhat.com>
In-Reply-To: <20251212-phy-clk-round-rate-v3-9-beae3962f767@redhat.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 29 Dec 2025 11:18:52 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXudWW3MPKqP0-d+DyMNRF-X62oyHRnj=MM_9MSpJw6sw@mail.gmail.com>
X-Gm-Features: AQt7F2rKWfaXfoMj8qssy3Tj3BKKzf9SWfuNGXkoZ2xYV04eFqP8YoD995Ts3mk
Message-ID: <CAMuHMdXudWW3MPKqP0-d+DyMNRF-X62oyHRnj=MM_9MSpJw6sw@mail.gmail.com>
Subject: Re: [PATCH v3 9/9] phy: ti: phy-j721e-wiz: convert from round_rate()
 to determine_rate()
To: Brian Masney <bmasney@redhat.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Chunfeng Yun <chunfeng.yun@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Heiko Stuebner <heiko@sntech.de>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Stephen Boyd <sboyd@kernel.org>, 
	Maxime Ripard <mripard@kernel.org>, linux-clk@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251229_022531_053999_E4B97C2A 
X-CRM114-Status: GOOD (  22.97  )
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

Hi Brian,

On Fri, 12 Dec 2025 at 00:21, Brian Masney <bmasney@redhat.com> wrote:
> The round_rate() clk ops is deprecated, so migrate this driver from
> round_rate() to determine_rate() using the Coccinelle semantic patch
> on the cover letter of this series.
>
> Signed-off-by: Brian Masney <bmasney@redhat.com>

Thanks for your patch, which is now commit 27287e3b52b5954b ("phy:
ti: phy-j721e-wiz: convert from round_rate() to determine_rate()")
in phy/next

> --- a/drivers/phy/ti/phy-j721e-wiz.c
> +++ b/drivers/phy/ti/phy-j721e-wiz.c
> @@ -934,12 +934,15 @@ static unsigned long wiz_clk_div_recalc_rate(struct clk_hw *hw,
>         return divider_recalc_rate(hw, parent_rate, val, div->table, 0x0, 2);
>  }
>
> -static long wiz_clk_div_round_rate(struct clk_hw *hw, unsigned long rate,
> -                                  unsigned long *prate)
> +static int wiz_clk_div_determine_rate(struct clk_hw *hw,
> +                                     struct clk_rate_request *req)
>  {
>         struct wiz_clk_divider *div = to_wiz_clk_div(hw);
>
> -       return divider_round_rate(hw, rate, prate, div->table, 2, 0x0);
> +       req->rate = divider_round_rate(hw, req->rate, &req->best_parent_rate,
> +                                      div->table, 2, 0x0);

Is this correct?  divider_round_rate() can return a negative error code
(from divider_ro_determine_rate()), which is not handled here?

Looks like several other users of divider_round_rate() use this
same logic, and thus are affected, too.

> +
> +       return 0;
>  }
>
>  static int wiz_clk_div_set_rate(struct clk_hw *hw, unsigned long rate,

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
