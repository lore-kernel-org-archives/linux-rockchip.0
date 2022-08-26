Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C12FECAAA3
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Aug 2022 08:12:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=73WZHveaErdm+LvjpPZs/+x6xvq03b5U3I8iT5XBTDY=; b=R38bo9rEGFNNB8
	vFanSJROOBrfejJrz3pDbxJDpHZImp6KrJttTJVMUHAoZ6rTLNH5i1QnS8iKVHhjWMWOFVUsbL3h5
	8bp0QjybY+gxwJf73Maw+/Aoi7Oqgau9fbIozvuZdE90rsIyapSBWN3SUk6Glh/jZbIjAHD6DTcIq
	UKQ1dIPFLqzU6Jynw3LmkaKKcXnnkPw0LFLtVP65sroqhLbL1BV5l35zP4GPpr9/rfLelNS/o9tMv
	JXeNtMK56zo40nS0xDEb8EgA/RVMpoJi5wFj8TTikiiGEFFwhycg3/f6EGtL1aTfD+xocsVEaHtja
	ciag/VpjttBchOxBpMOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRUS8-00GpHR-3B; Fri, 26 Aug 2022 08:12:32 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRUS5-00GpDf-0W
	for linux-rockchip@lists.infradead.org; Fri, 26 Aug 2022 08:12:30 +0000
Received: by mail-ej1-x635.google.com with SMTP id d21so1742269eje.3
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Aug 2022 01:12:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=e8ZphYJdOSEPtt5r/EW36Akv3KjPF5sUUtzi1KPW6Gs=;
        b=EfK1gkKtPi95p7HfDEJLPwR9kaDVTcWRqUBCA558fF6Uj70P8ZhvSSmOLZB7WiQT/b
         Ldkh5jLuyAikVaMOCPZeCaFqAWko49wweCa/2egJ7ajsHjhDWP9glt/UGZ7xW2CQIQbo
         YeWNyFM8y/iE7k+5Kv0hPkz8ZPXFOjDu1cXAZ9n52moBGOAc9L62Z5eVETTlBIT3zBay
         79mMVTzrdyso6KaGZgecHm7dCCM87bMoi3hkDRPk73bODZ9849rTVNJoK0QzpiQMY/L0
         1dV69Mrkm+WzwKeFWanPhuLE46nuxb9b1eLKY0HHXxZ9ibDiv5Ya/DtgBPPIj6mqTcqZ
         KBdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=e8ZphYJdOSEPtt5r/EW36Akv3KjPF5sUUtzi1KPW6Gs=;
        b=qDzXIdF1tIg3G1JCALQXE0YfytJvbvAlhR9HR0b8AXwnDyF4t7S29M5JyjqSZa6/Cf
         rhYvZsUrDm1STg/a+qtpC51WUkSuX5fk782R8mu4QdxwOUCKrjltP5Fnpwgu4bgZKuyA
         pnzdIqxfB7m8t/SC6+4Ay51n+/xLwSQPyS6rvbtC10JGRPmBG2rBidJUETmRCBOkYTuA
         f2VHRDjV2alBqBNoi6Hc0EREJgMbJT5mr/Sgw36YStwRgAy8gR2OukxlAtYpkFWuslPS
         oYXWHN+yjOzaMbZkHmWCK0YWAj2rD/znqVAvoTW3WmTRPk+N7t/Uo4C+eBvTxOmfE4Yo
         4F1g==
X-Gm-Message-State: ACgBeo1bYn8USo1OABZr6/BhQhNt06Aotb2zZkzufNm7fcsBvZ/32TTA
	/lsyJZ5DMXwdf0nfXR6VfQKBGpY5uEO8W6+gHQjcK2yysbg=
X-Google-Smtp-Source: AA6agR6f7eH6YJdq9JVbpPEbgCaW3gYLDNs2I15gxyc3uImcpgRtDDAxTVWv/4WL40bUQdUWhmuWKI5L8ScwqraYo5w=
X-Received: by 2002:a17:907:6293:b0:73d:b27b:e594 with SMTP id
 nd19-20020a170907629300b0073db27be594mr4890230ejc.526.1661501545163; Fri, 26
 Aug 2022 01:12:25 -0700 (PDT)
MIME-Version: 1.0
References: <20220819014126.1235390-1-jay.xu@rock-chips.com>
In-Reply-To: <20220819014126.1235390-1-jay.xu@rock-chips.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 26 Aug 2022 10:12:14 +0200
Message-ID: <CACRpkdYTrdrSVWSfpEqP7Wekk+_j+rO60Xrn1jY1OzjmNHJLcA@mail.gmail.com>
Subject: Re: [PATCH] gpio/rockchip: handle irq before toggle trigger for edge
 type irq
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: heiko@sntech.de, jeffy.chen@rock-chips.com, linux-gpio@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220826_011229_075837_6BCE2226 
X-CRM114-Status: GOOD (  14.52  )
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

On Fri, Aug 19, 2022 at 3:41 AM Jianqun Xu <jay.xu@rock-chips.com> wrote:

> The irq demux for rockchip gpio interrupts do real irq handle after loop
> over the bits from int status register. Some oldder SoCs such as RK3308
> has no both edge trigger type support, replaced by a soft both type
> which switch trigger type once a level type triggered.
>
> For example, a irq is set to a IRQ_TYPE_EDGE_BOTH trigger type, but the
> SoC not support really both edge trigger type, use a
> IRQ_TYPE_EDGE_RISING | IRQ_TYPE_EDGE_FALLING instead.
>
>         --------
>     ____|      |______
>
>         ^      ^
>         |      |
>         |      [0] the falling edge come before irq ack set by driver !
>         |
>         rockchip_irq_demux set to EDGE_FALLING type
>         rockchip_irq_demux call generic_handle_irq
>                                   -> handle_edge_irq
>                                     -> irq_gc_ack_set_bit
>
> The [0] irq will lost by software on board test.
>
> With this patch, the generic_handle_irq has been move ahead before
> trigger toggle to fix the [0] lost issue.
>
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>

This looks fragile, but such is the nature of this dual-edge emulation.
If it works better in practice like this, it is better.
Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
