Return-Path: <SRS0=TltV=JL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2F7BC433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 10:33:08 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4DD176121E
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 10:33:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4DD176121E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=96trVzSzeVKPqEyU3UU6JDC7gqYnMvY5vRSJOy56XqY=; b=oheFej/Uf/PCBe
	FP18u6f2xszQmHMS1yFTA8NYt6WzzuY5h8vMvdSuiGD06gD8s5BNC5yL/Z4lWbfQ1kucQUCaiDku7
	ZuzFMLn9lSqZRTbFwDBnWd2M5tictxWfRt31Xyympjuj4QPuz68P515KzwON9px5kjP3F8QiI2pmI
	Ow9LZAabmVjad9Wt8QLbrDsGNhHF4SdMShra2VQ/d5gSTzs7qKXmZTJEnsEqwR87bAryWyRSIFi7a
	wqY2IKwLfPNdoYOKw2frq/OMe+Ti/pMODqrSLt48p+iYGTgMmmKe8gYj8rVjuOh1W7oLyHhWCoE2z
	SnYMZZQEcf4qdyadg0vw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWcpP-00CHbm-4J; Wed, 14 Apr 2021 10:32:59 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWcpM-00CHbD-Ps
 for linux-rockchip@desiato.infradead.org; Wed, 14 Apr 2021 10:32:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=0kbTefn3hO3w0LCZUig7YuSy0EObSZ4OryEHcILQ9A8=; b=ssvrJfPXDzEjxSz1IMYV1uRBVg
 rxR18TPaU2PQ/FSG9AmM/B+LiDCLBEAIITnGYR8LBLFxlF+MgDDQsrLf3t5pkRF++G4PV87iShF29
 GvIvuJnz5yT8HXoTju1WDuDJQCR4t7Hsl7QoPABhu9cVV/qld1AMGQm/OpsKZJne0wwpI6H6ysVKF
 m8yqsAjQzdaJClTMtWyZRy4BhmeIa5RjmTwMcBhA+gtZF9EmImscDY1F4PSMujGrAd3s9s/0WCwHn
 WSG8tjyyGUw62tKMTBT8nsnjjk2Lrp2Pximg+lXcnGfxwhplJtV4LneKWh0Hx5dBy/OSymCfI8FJH
 C+O46HXg==;
Received: from mail-ua1-x932.google.com ([2607:f8b0:4864:20::932])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWcpK-007gSa-3F
 for linux-rockchip@lists.infradead.org; Wed, 14 Apr 2021 10:32:55 +0000
Received: by mail-ua1-x932.google.com with SMTP id r8so6248887ual.9
 for <linux-rockchip@lists.infradead.org>; Wed, 14 Apr 2021 03:32:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=0kbTefn3hO3w0LCZUig7YuSy0EObSZ4OryEHcILQ9A8=;
 b=EON5qCJGlGgySMAwpVSNiZi5vJDi4vSPmQiTNkcs9RvjyjQ0RQtADbiSxQspUQVtsY
 NWSl7/mfZEWApqL6rGVwEF2dur93j/aUBMj26ItEEkd/QvngeWq1xla6aoMCECxlTZP1
 yMrlxbjA5FRt7MEmTDkik1cvbQQSeVZoGit+BTeGLL//ax8xUzyObE6ZcpV7E/b8KP8q
 NxyO0a8VFJ6wAnh6UUQPAiIenP2XZnUls2/WwJeSjPlcewMm/NcQvxzFi2IN8fmm8rIN
 /CPAznljsGs+4VpETAzDvhzxIHFCDNvB1QLuPByFkNXv9yyXHnFQ09+UlTEMRiIAZ+c5
 lAqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=0kbTefn3hO3w0LCZUig7YuSy0EObSZ4OryEHcILQ9A8=;
 b=qbTNec/ZTcTw10buyZzTXtfuepYwzk7VlG6/hOW03jk1fxgIeI5ydftG4MHVUYh0lP
 vrKd85PZ1KN9j7bRjqT+PiZWoACcoctbeYslER35tjVQJaaGR6KBkElzmhdNbPJZKV1p
 reH8o4uWSuTuLHn+S4x9pDVMgLvYr83EEn6u0DprhgcASV/V3ErAR3OyfAqWRurIxKkg
 y2vctjpzUoYmalTm/qYmucjhIA1xzYxK2Jv4KyM4fai4578XUXXESngKt+mKbPh5ynn5
 yJMHdhoz/azHdPCWMkbM2aFJggNMC2+in986eNR1xZuPD+mcGablRAMtOGtEEbrs4McL
 Tb6A==
X-Gm-Message-State: AOAM531vAjE12voqXQu7ETs7W/T+A4ALOkTEc9/1KJn4ea0AunVmLuXZ
 Jqrn8tZcZXNddUDoJu6FSvB3u5qp1J09hoVSTko=
X-Google-Smtp-Source: ABdhPJwbOAKS5xtJYVCp0sD7mYUPaXP9YlaLojzNA8G+T1ApLsLJJ3kv5djhhQm74aq4lubGECB+FJqRFWWi+R58naA=
X-Received: by 2002:ab0:12a:: with SMTP id 39mr25549591uak.19.1618396372022;
 Wed, 14 Apr 2021 03:32:52 -0700 (PDT)
MIME-Version: 1.0
References: <20210401144336.2495479-1-emil.l.velikov@gmail.com>
In-Reply-To: <20210401144336.2495479-1-emil.l.velikov@gmail.com>
From: Emil Velikov <emil.l.velikov@gmail.com>
Date: Wed, 14 Apr 2021 11:32:41 +0100
Message-ID: <CACvgo50-fKJk_EpY-G_SGes6-FUs=nAouzBmSN-CYgMTpoeN_w@mail.gmail.com>
Subject: Re: [PATCH v4 0/9] Microchip SAMA5D4 VPU support et al
To: kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>, 
 devicetree <devicetree@vger.kernel.org>, linux-media@vger.kernel.org, 
 linux-rockchip <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_033254_179904_3827BCD5 
X-CRM114-Status: GOOD (  11.62  )
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

Hi everyone,

On Thu, 1 Apr 2021 at 15:43, Emil Velikov <emil.l.velikov@gmail.com> wrote:
>
> Hi all,
>
> This is here is another small revision of the series adding support for
> the Microchip SAMA5D4 VPU, which it based on the Hantro G1.
>
> For more details, please see the v2 cover letter.
> https://lore.kernel.org/linux-media/20210311154055.3496076-1-emil.l.velikov@gmail.com
>
> Changes since v2:
>  - Added RB (thanks Eze)
>  - Added AB (thanks Nicolas)
>  - Reworked Hantro driver to support modules lacking irq/clk name
>    (thanks RobH and Eze)
>  - Dropped defconfig patches - merged separatelly (thanks Nicolas)
>
> Changes since v3:
>  - Include the fixed dt-binding patch
>  - Reinstante clk/irq names within the SAMA driver (Eze)
>  - Use num_{clk,irq} in Hantro, instead of WARN_ON/NULL checks (Eze)
>  - Drop Nicolas ack from a patch he never gave it to. (Eze)
>
> Note: patches 6/9, 7/9 and 9/9 need reviews. Everything else has been
> covered already.
>
Rob H reviewed patches 7/9 and 9/9 last week (thanks Rob), which only
leaves 6/9.

Is there anything I can do to move the series forward?

Thanks
Emil

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
