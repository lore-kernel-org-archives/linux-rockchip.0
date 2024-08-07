Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A317C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Aug 2024 04:40:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p5vTklTYa19TleJCGS67Nhp/5UHyxYhdGM4gz1r1R/Q=; b=cucXDj4HmoerRn
	ORuVghwsgIQN7cAoXUeW2/7kNje3r4Wkwk2B5Us+paoiiIvgwAJLgZL46/lXCxDwEI8KCIRVHG0ux
	vNiAhx+HBhaW5hXssspixR2AeWVqiCWxtkShfTuQIVsl+zA2kTvQmzimYM0JeJPCnKISuA8RcxSIq
	ZGXIhQ/+wVH1BHjU5Bhd3al+KoMTWnfvQkPUSY/p8o1EcmbtIjFV7sZ2r5ZSna9MJuEBawaTYX5ju
	+XU/VRQZsXaDgVsi/BeZBo48pJ3B5ETrHuTelPrH42Dkk2SUfqFuLTIrM8AUWHaG0eKGj4g4D9Dzc
	DruW/hR6JbFIAoDmFqnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbYTc-00000003o8v-01n8;
	Wed, 07 Aug 2024 04:40:44 +0000
Received: from mail-oi1-x229.google.com ([2607:f8b0:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbYT4-00000003o4N-0GgS;
	Wed, 07 Aug 2024 04:40:11 +0000
Received: by mail-oi1-x229.google.com with SMTP id 5614622812f47-3db16a98d16so797805b6e.0;
        Tue, 06 Aug 2024 21:40:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723005608; x=1723610408; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=vputw6en5UM/U6FW3NvGX277Q4urgiLXbQEtEOomLNY=;
        b=nhehIDYK1MlWCnRrJfEYD3ZZQ0dZe5WS5j7tyCrb2xhkQizqmQqDCXxK3txGhFXzEo
         Kg1ueKJeiQy3Qd3yWHsF+zVkvftVRveU3Ng2j7gNhXMESFF2iuWblgP+6KLX9nTzoifZ
         I3qtugS125wdl7NOp7s1jyf7TuzGrssEWHDKgaxMaLFA2B7x8U33t97NZS44FZuSYxJc
         8gntTcaa9cT6Orm3N9mWB1MhaegM+hn/iu/Ml8UWv8YI+eP4TunaRtZUJsYnQrObEhPE
         wFaRqbae4cu9tUaro3lXS/Oq8YbfiBBhQEIhbMda+Zw6TVLwPsFtnAZ/z+Uhs9Gh+0bl
         Jq9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723005608; x=1723610408;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vputw6en5UM/U6FW3NvGX277Q4urgiLXbQEtEOomLNY=;
        b=u9y82vahFya+0jzb5xUAYpW6CCCoh2ffO7NFjS4mLxfZckEideoTpVDO818vWJiOkQ
         XeO1kVTv0gOE3rfJ7lXbkxxHNnbUxjn8oNKx6YQxSpj1TWspLyIDWEA1tc4zYM+cdtRj
         nA5qdWoTi8zBwUjlcCKoviUzDoZrbdVj/8hx//tv89ZdDKLO6Kt62hRwq8dOk/1owo8g
         X+9Qd8dlz26f18jkSbC2jI/D4l1wVvTXAqYfLfMNOf/Aoh52rBxgqdXlm3gIdMX6KTs9
         EY/5Ak0cJhIw6sCIqRQ1wAGEcCtRfajtBvq/Injzp8jT9PrVn0L9j53iyVrJjSZARHKF
         XGOg==
X-Forwarded-Encrypted: i=1; AJvYcCVPgEVGEsV/IAfSRCBpexJ1mvYs1VghjyaAk5dNhm+mqxNeQ5lHoy3msuF6qI7j6H1bmNDV3mrRF5f0xqFOQl7o7h+M70//FZgzOdZ0vG6xfltWkm/qNcy7BIUufrj1NQyjlVWi9yWx3fIFYV6Tj3y+jtWEfYiZnTs=
X-Gm-Message-State: AOJu0Yxxb9NTCUqKYO4BqT48gKhT2hOg3aaNt9I8IpZIS0otgafVafxp
	32LaFTUDU4ftM38uTuNibDnLquAm85FD2Y8elcpmvlr8ereh6LKrl1sfudUeENEDMFhUP0nvLXL
	cV3J3ITmeEFRvNhyRRH2PSR1DdL8=
X-Google-Smtp-Source: AGHT+IFroz+WxNH1Yjo2QJuI+bBuCAZqGU9Q0IyIYNW7GfFp1a9rjGaeHs68lxVGlmKdcMqcPiGU0G3y5RuOgJGhM4w=
X-Received: by 2002:a05:6871:3325:b0:261:218:dae with SMTP id
 586e51a60fabf-26891ea8f86mr22541861fac.33.1723005608211; Tue, 06 Aug 2024
 21:40:08 -0700 (PDT)
MIME-Version: 1.0
References: <20240625155759.132878-1-linux.amoon@gmail.com>
In-Reply-To: <20240625155759.132878-1-linux.amoon@gmail.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Wed, 7 Aug 2024 10:09:53 +0530
Message-ID: <CANAwSgRP3m6hY7cNeBv6EXavoApZZ_zmemStg2v__iK3DLm2ig@mail.gmail.com>
Subject: Re: [PATCH linu-next v1] PCI: dw-rockchip: Enable async probe by default
To: Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240806_214010_129652_8978ECF0 
X-CRM114-Status: GOOD (  10.31  )
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

Hi All,

On Tue, 25 Jun 2024 at 21:28, Anand Moon <linux.amoon@gmail.com> wrote:
>
> Rockchip PCIe driver lets waits for the combo PHY link like PCIe 3.0,
> PCIe 2.0 and SATA 3.0 controller to be up during the probe this
> consumes several milliseconds during boot.
>
> Establishing a PCIe link can take a while; allow asynchronous probing so
> that link establishment can happen in the background while other devices
> are being probed.
>
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>

Gentle ping.

Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
