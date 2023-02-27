Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7D9BC64ED8
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Feb 2023 21:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wtubT412w2FvS9mkkib/I28LUH6bp47nrnZsPSC44sY=; b=vDm9ejPHVDtKKd
	rU0ssQz77IQwSoZH6GFxf4qcUKmVG5R/3eQLZprymJbZZMoJm12/KKc60NN6LfXbLp6XhPH+/N+1G
	VhkxB+lio/lAHOwIfXH1DtxEQZmWiPVLc4y4XIyfXDeZZY2ul8NsfSI43G9lBXbl6/hjr+VnvBG73
	vN1f+6vbLfS9d/PbZvbdiX1B0iLKp/NKP/M0bBQzX/VkuNshA6VWHjk/xPqwOz3k8kn+uRu2q47pw
	eP3vGfnCQtFiBH7o9a3Y37ZUFaiafFfW9Y/tRHdnv4p6VgA1ZSIOvRX2SciXomeX7QM6Pvgu6fAg4
	g1e2e91T/1vFy78l1Onw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWkxN-00BJOd-W1; Mon, 27 Feb 2023 21:22:50 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWkxK-00BJKz-L3; Mon, 27 Feb 2023 21:22:48 +0000
Received: by mail-wr1-x432.google.com with SMTP id r7so7670600wrz.6;
        Mon, 27 Feb 2023 13:22:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=uirSLB3F9Zb+PTXXeLN0MPijsyHCQ2xWrITr0wlr88I=;
        b=em1V+lmvXOiXWqqGeAQ2IjGFqdAYg++TzAYPyddFCk1yvxJVYBcPgfgXN9g4P0axNn
         P4KLkVkBYvYpuOsXySp7nDPzjMSAQqBYLHcamLew9fzaR781fkBCt3i/CsN/hXGUuf33
         dFztapH6nIeAADdZo5yWhT2ErYWEjTRsC/cvP+ms0WC+8IWB/5Y6MJ9dZ2K2P/aajRSh
         3Z2jWmroWtD4hQXKbRnmnsjCnEdqyTWzn4YrdPPxR/vCA9nmFolM2J5nnNffSin1VF17
         XTbPQ92H9tVBVUOtShGCLaqxTWKxfr+roLG6yUJ63d5GyIY3/AFkfTlVfX5DSdj7a00v
         cOJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uirSLB3F9Zb+PTXXeLN0MPijsyHCQ2xWrITr0wlr88I=;
        b=VjWDhJrsVcXc6ZUawf6u9Ux9CRNOA5vG95/pkjKHDsaHw5l5F8a0bxDJVv/x1B8U9d
         BB/t+JqxP9XJh2k/lUO01mW3TUE3JVuDGcWN+lnTDMu/QZ9Znb6faw7OMUQZEoxbZChe
         Vem8DzQFN72IzHkmMLahKM8tev88lJkOVyMOIbANrH0RHa+rxm+eXOoOQVGJTFmOWQqd
         hFllK4+329VSW1qwPtYvAeYca+eGVy9G//hh8O6Yob5Qw65q3KsIgWIJjANHhx0n8rsF
         dIiUdStMTzc/1X6M3Wrr16e4I2k8n5rDq929q5BX5G+5q/qaJoQFzFhsRwaKxyt9OT7D
         GJnQ==
X-Gm-Message-State: AO0yUKWsFGHyc611LWlsyBH2aZrZDbkQkK+/nRWj48ELT4Sf9B2EfvRB
	6ObjhfrT6Ts9X7i+EqTqHFJIv+P38bacmSGFSFg=
X-Google-Smtp-Source: AK7set8ADg0kdUtzpW9qrUsTBlfAGHGWVV37/V1prUR1shzO/2nhTvB+GPKFW2eS1wh/uaj4v+GfSVYbARZ+xcmxqnM=
X-Received: by 2002:adf:d4c3:0:b0:2cc:4ed1:f849 with SMTP id
 w3-20020adfd4c3000000b002cc4ed1f849mr120657wrk.8.1677532956794; Mon, 27 Feb
 2023 13:22:36 -0800 (PST)
MIME-Version: 1.0
References: <20230227151847.207922-1-lucas.tanure@collabora.com>
In-Reply-To: <20230227151847.207922-1-lucas.tanure@collabora.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Mon, 27 Feb 2023 16:22:23 -0500
Message-ID: <CAMdYzYrmq1ftBaBj1XHVWWXUQ4Prr1VpTpunyNOQ2ha-DkXMjQ@mail.gmail.com>
Subject: Re: [RFC 0/1] ITS fails to allocate on rk3588
To: Lucas Tanure <lucas.tanure@collabora.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <maz@kernel.org>, 
	Kever Yang <kever.yang@rock-chips.com>, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230227_132246_713494_D9A0DF7C 
X-CRM114-Status: GOOD (  22.35  )
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

On Mon, Feb 27, 2023 at 10:18 AM Lucas Tanure
<lucas.tanure@collabora.com> wrote:
>
> I am assisting with PCIe and networking bring-up for Rock Pi 5B (RK3588).
> This chip uses the same GICv3 as RK356X but has fixed the previous
> limitation of GIC only supporting 32-bit addresses.
>
> But the implementation decision for shareability in GICR and GITS is
> still the same.
>
> I read the previous thread about this topic:
> https://lore.kernel.org/lkml/2791594e-db60-e1d0-88e5-7e5bbd98ae4d@rock-chips.com/T/#m5dbc70ff308d81e98dd0d797e23d3fbf9c353245
>
> From my understanding, the errata numbers Marc Zyngier is referring to
> are found in Arm errata documents at developer.arm.com/documentation.
> But I could not find Cavium or Broadcom pages for errata with those
> numbers in Documentation/arm64/silicon-errata.rst
>
> I could not find an errata document about this shareability issue,
> and by what Kever said in the previous thread this could be a
> RockChip design decision.
>
> Marc, as I could only find ARM errata numbers, is the errata number
> you were expecting generated by ARM only, or RockChip should issue
> a document like Arm to detail the issue?
>
> Can this shareability issue be seen as a quirk without an
> errata number?
>
> The following patch is based on the work of Peter Geis for the
> Quartz64 board and the previous thread feedback.

I see you have included rk356x in this as well. This will only work on
rk356x boards that do not exceed 4GB of ram as the on chip devices are
only 32bit addressable and the kernel by default allocates this in
highmem.

Very Respectfully,
Peter Geis

>
> Lucas Tanure (1):
>   irqchip/gic-v3: Add RK3588 GICR and GITS no share workaround
>
>  Documentation/arm64/silicon-errata.rst |  4 +++
>  arch/arm64/Kconfig                     | 13 ++++++++
>  drivers/irqchip/irq-gic-v3-its.c       | 42 ++++++++++++++++++++++++++
>  3 files changed, 59 insertions(+)
>
> --
> 2.39.2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
