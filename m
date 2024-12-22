Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62278E7718D
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Dec 2024 16:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rWE3uVxHgIBmia12pWjHnHMFk9SSQOpr3b+7z69svxA=; b=2vdwdcVjPmrWJ4
	lxeWma7sqHkDkZjXD9DRAt7IdiUuokeqIZ5q3SwJ//dthXFaCIuknAJq4buzfFRIjG+/MG2Fh/Z/e
	gWuba3S0yLNrcVNTYQb0lR8GOlYVtJSZIQWhVo5lUSxLno2K2AQAlvt5R1oOMquuA8w9qjKvPDD96
	ToA+6aTkTFnUDBFc4jpcOvqcrDlCtRkkjJOUQe/gEt1o2J23Pwd763PO8l5oejICDUU04jBTVb/tO
	It2bMnA09n6iv8A6qCwGJrQEJBvsJq1aUsd0f2ELkwtpV4u9wKSMeAhy8XuHLLEtvzJML6dj1gHcv
	+pgosE8KsEeXG3UlU4eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tPOSo-00000008UFX-0zt2;
	Sun, 22 Dec 2024 16:05:54 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tPOSl-00000008UEf-3FZi
	for linux-rockchip@lists.infradead.org;
	Sun, 22 Dec 2024 16:05:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=sJK39RA0K5056eaTfV7JaZNqqhDu4nNGoPt+f+k2PyI=; b=tq/UhkZ3gxaXxvXTxe5+nbjpqk
	E2qCZ1uaLkLR7P6d9HqUrMIhkYRW6ek0/o/ekaGlRNavCTDj6kjKmHgQwBeXMz3KJABZGnFNfH7LF
	pYvyHs5F35Gwd98Ps5/Ar53+C3PFM+9JRNznUM3ytUfPOuNyqpHvMy08ojROI3glbRnbENL0nj5w6
	hBzL7hgCqi7BEgvnxhREn8KiWMttZllJM1/nnHTGrJMj8e/D0UPk+5rYDjIowe1fbww7UO0jR4d7m
	ibzqEvRLZfRunOrUmWYuuOEHpFySznK8kRRYlYd21O8wF6597KA8iM5N2SU6a20hI/iV+wsEGiWoZ
	Ga5cLZMw==;
Received: from i53875adc.versanet.de ([83.135.90.220] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tPOSk-0007eT-CA; Sun, 22 Dec 2024 17:05:50 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH 05/38] pinctrl: rockchip: add rk3562 support
Date: Sun, 22 Dec 2024 17:05:49 +0100
Message-ID: <17013676.geO5KgaWL5@diego>
In-Reply-To: <20241220110407.3511882-1-kever.yang@rock-chips.com>
References: <20241220103825.3509421-1-kever.yang@rock-chips.com>
 <20241220110407.3511882-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241222_080551_826894_B66225FA 
X-CRM114-Status: GOOD (  15.35  )
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

Am Freitag, 20. Dezember 2024, 12:04:03 CET schrieb Kever Yang:
> From: Steven Liu <steven.liu@rock-chips.com>
> 
> Add support for the 5 GPIO banks in the rk3562.
> 
> Signed-off-by: Steven Liu <steven.liu@rock-chips.com>
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> ---
> 
>  drivers/pinctrl/pinctrl-rockchip.c | 199 ++++++++++++++++++++++++++++-
>  drivers/pinctrl/pinctrl-rockchip.h |   3 +-
>  2 files changed, 200 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
> index 36d4eaf0ebd1..c919437a1dbc 100644
> --- a/drivers/pinctrl/pinctrl-rockchip.c
> +++ b/drivers/pinctrl/pinctrl-rockchip.c
> @@ -1,6 +1,7 @@
>  // SPDX-License-Identifier: GPL-2.0-only
>  /*
>   * Pinctrl driver for Rockchip SoCs
> + * Copyright (c) 2020-2024 Rockchip Electronics Co., Ltd.
>   *
>   * Copyright (c) 2013 MundoReader S.L.
>   * Author: Heiko Stuebner <heiko@sntech.de>

nitpick: it would look nicer to keep the Copyright blocks together, like

  * Pinctrl driver for Rockchip SoCs
  *
+ * Copyright (c) 2020-2024 Rockchip Electronics Co., Ltd.
  * Copyright (c) 2013 MundoReader S.L.
  * Author: Heiko Stuebner <heiko@sntech.de>

other than that, the rk3562 variant looks quirk-free, so

Reviewed-by: Heiko Stuebner <heiko@sntech.de>


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
