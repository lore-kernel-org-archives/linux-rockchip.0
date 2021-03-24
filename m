Return-Path: <SRS0=NEY9=IW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA91CC433C1
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 12:51:44 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 48417619D5
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 12:51:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 48417619D5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KvUT69uZKQzYORs7yCg7zdoz5KrOMJ0qqtDYXvbj7Tc=; b=fc19Hb0rUvK4fUzIs0wursI4T
	GaZ9Y5UUG76gd69uo0c3lgPNtFMxAQ1v9sheFnFVF+GV3NYbuqS4qRWuattUAmYYhhK/TLq9DP2It
	7OMMiNxEP47vHyP7gXJJat6yO1pzJYKGGwJU47SChvzX7TTsc1iHeXucZgM/AujAgjxrewm6EfIhD
	qwO3VbBjbmMDc14qnNTeKsXdQ98wU6TzBBSljTkvJbGNTyyugcEVjIRxMEbIUitbNiw0VK5aTISgb
	eJVW427j/H25LT5XepBTTGhdM1mgW8W2D7PxA7d05VJ48PGXTqk4W2Csw1qlGlVUvBJkc1nlIXZ2l
	6bo2pT0bQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lP2z2-00H7MR-Rf; Wed, 24 Mar 2021 12:51:37 +0000
Received: from mail-vs1-xe31.google.com ([2607:f8b0:4864:20::e31])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lP2x3-00H7H9-5z
 for linux-rockchip@lists.infradead.org; Wed, 24 Mar 2021 12:51:35 +0000
Received: by mail-vs1-xe31.google.com with SMTP id h25so11240425vso.2
 for <linux-rockchip@lists.infradead.org>; Wed, 24 Mar 2021 05:49:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZGVrxs9AFgXtFmR5bPSS2YMR0x2lr3ZoZpgmiNE6mV4=;
 b=g+iHmZyHETsO/iBAZ0Gv3tMCRlrCEZP7WnRg1AqBEvxCPaJ3+8DbQ5MyYy6LbrXjgD
 2gIJGpBLkvCYa3VJF6W7dv0Z/ue1N9ejo0pMX/Ch6lqJe7m/7gN6aNZuZLx/fV4GXAOW
 vP2EfihLO9MqlKo8qbvrIcA20R1JbqMsewtutyMQeEPKSNNsdkj/12j20WBPIE8bKmlI
 RDkYnZ5G4550e23MsftqxziRCfAwX6qAymc82Pz8XhZXAIduA0CS5l54VvrBl35XBSXc
 MUQpYmjYfoejCNYdlP3HAsZrXpVRhX60en/5miDqif7Gwv8SANhv6Affmvdx6mhehzZ7
 lJ+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZGVrxs9AFgXtFmR5bPSS2YMR0x2lr3ZoZpgmiNE6mV4=;
 b=c4L5lN792NzHcGRDj3fW+5spdLvgbWWMcZ/t4OuOWP7sikkedli6u2yBaTbwsl6jBu
 BsQmJxJ1jnr0uSguRns271w3aPwYxSn/CJnGxhJPC+6hWu0Br+K4ytTV2cAzCUx9iwjZ
 0fc54nbu2CChTM+Vw8zWWxC8imTuQt3RkWOenx5S3Gqtg/dARX9F8tyYiKAqu2br8oRj
 aiMxbSvqiXO6yZW6MvLuAc2EC3fz+ubnyP2zZBvMoXZgLZKLMsgFdC+JI9/u8POhQAp2
 GMVfu9yS0HDE4j+gss84bKSK/I+1vJtwu37GgQHPm3Blzpu7nHk9o8N/28HSUQjXwHu4
 pR3w==
X-Gm-Message-State: AOAM532dI1MS+sYIEMsNGObT2C9zTuNtsuktCLH8Z5rt3AUM5OhJhgWm
 QCU8XUso9IqWenjLi7m5KwvlM6Cb3Tw5Rwo1Ddc=
X-Google-Smtp-Source: ABdhPJzgycEcQKhzfuYScH5D4eg0SY5nemIhnP7BGV0KtR7gjbhZQMlqjVnGPk6R7LyVWXxlYMpu9GWzEXfrTqLWRoA=
X-Received: by 2002:a05:6102:c11:: with SMTP id
 x17mr1482920vss.18.1616590171550; 
 Wed, 24 Mar 2021 05:49:31 -0700 (PDT)
MIME-Version: 1.0
References: <20210311154055.3496076-1-emil.l.velikov@gmail.com>
 <5ecf1d3b8a8f88d6387a1549faeb4f4180cf5d4b.camel@collabora.com>
In-Reply-To: <5ecf1d3b8a8f88d6387a1549faeb4f4180cf5d4b.camel@collabora.com>
From: Emil Velikov <emil.l.velikov@gmail.com>
Date: Wed, 24 Mar 2021 12:49:19 +0000
Message-ID: <CACvgo51uNyQgzGdW=f-0wxvjv-+OD1p7E4DJXRzu1GvnAHbcCQ@mail.gmail.com>
Subject: Re: [PATCH v2 00/10] Microship SAMA5D4 VPU support et al
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 devicetree <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Ludovic Desroches <ludovic.desroches@microchip.com>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-media@vger.kernel.org, 
 linux-rockchip <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210324_125133_391738_59EAB3E9 
X-CRM114-Status: GOOD (  14.43  )
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

On Tue, 16 Mar 2021 at 17:23, Ezequiel Garcia <ezequiel@collabora.com> wrote:

> On Thu, 2021-03-11 at 15:40 +0000, Emil Velikov wrote:
> > Emil Velikov (10):
> >   media: hantro: use G1_REG_INTERRUPT directly for the mpeg2
> >   media: hantro: imx: reuse MB_DIM define
> >   media: hantro: imx: remove duplicate dec_base init
> >   media: hantro: imx: remove unused include
> >   media: hantro: introduce hantro_g1.c for common API
>
> For patches 1-5:
>
> Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
>
> >   media: dt-bindings: Document SAMA5D4 VDEC bindings
>
> This one need to be reviewed by DT maintainers, I think.
>
Rob can you help with this one?

> >   media: hantro: add initial SAMA5D4 support
>
> For patch 7:
>
> Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
>
> >   ARM: dts: sama5d4: enable Hantro G1 VDEC
> >   ARM: configs: at91: sama5: update with savedefconfig
> >   ARM: configs: at91: sama5: enable the Hantro G1 engine
> >
>
> These need review from Microchip maintainers.
>
Alexandre, Ludovic, Nicolas
Do you have any input of the patches or series as a whole?
If you prefer we can drop the last two patches for the defconfig. I've
included those for posterity.

Thanks for the review Eze.
Would you recommend that I resend the series with your R-B or it's
better to wait for feedback from others?

-Emil

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
