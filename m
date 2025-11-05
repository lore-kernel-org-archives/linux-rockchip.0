Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBD5CCCFA0D
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Nov 2025 13:09:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:From:Subject:Cc:
	To:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tNQyNVwxU8NehWdb26+P4u8F2tcVL5C3bOE9UQNWcp8=; b=kbhiSmtR9OFAZa
	SpNyCsgj8svulHK7aw1N/2sOcAHuzotBM3XOEJzRm7VZDewZLE/oFNsQxb78mmRh9HupDE+pIi3I+
	oNpxKlG1XHU9WgV8R56NXLSx8+pl9RA0EeurbyfJDGacW1xu8RJ0Dev1fs9OyNlKwWvTMDfEmG8eZ
	xw21MEGCcacWegtmCorflHDcj/lgWfEqc2qzvkojEtlbTsqsU5d9TJCbaJU63tA4Oj1bon5Ka0bex
	CoRHdUNpZ0tl6SjpMny53FjNpZ23Br53iIedFpmEh1oxtGQKJ5W6EFMdBb8xVy1tuUEWWQZddvWO6
	+8VqSiuttC2e212/fwxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGdGU-0000000Djfk-0BXe;
	Wed, 05 Nov 2025 13:09:30 +0000
Received: from out-179.mta1.migadu.com ([2001:41d0:203:375::b3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGdGR-0000000Djez-0qP8
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Nov 2025 13:09:28 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1762348154;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=JviihLCt3v6d6CZovBHWlp8JXmmPFCMHNUL+edx3LHs=;
	b=MNTmIoYgYT8/lE217Au/8HIwzXrmYeDqSa3iJuB2cz2XV0ASGUqU4Jn+7U+k5/x8VuoUmh
	wQM4ZwYXWDcsU7vOdXVFhoiwmcJe7dDaRSDvVJVGfGz3wrclxU+mpJ5dFoCmivN9vdAS18
	sLVRoR2CRPiYUem7AmPTd7Whw6gsk+L6BDCkstcw4el/O7xgCyJ01yh2kvge79opSk7jAy
	OvgqFm3rNxMCWNc1v/M/5WWG/ItEEUahS0kpFDtVv8XJR7SdC5LjYLCGmfRgRPrUFeg2dG
	novMFhyOvhRD7jHLq93j6hNgrs0VqfXyipAM92miup/izAs0i8wqEVgnQ13kZw==
Date: Wed, 05 Nov 2025 14:08:59 +0100
Message-Id: <DE0S9YBDI0NK.2892TZHYSQLFM@cknow-tech.com>
To: "Heiko Stuebner" <heiko@sntech.de>
Cc: <mturquette@baylibre.com>, <sboyd@kernel.org>, <robh@kernel.org>,
 <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <linux-clk@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <michael.riesch@collabora.com>
Subject: Re: [PATCH 1/3] dt-bindings: clock: rk3568: Add SCMI clock ids
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
References: <20251103234926.416137-1-heiko@sntech.de>
 <20251103234926.416137-2-heiko@sntech.de>
In-Reply-To: <20251103234926.416137-2-heiko@sntech.de>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251105_050927_372888_D1109DE5 
X-CRM114-Status: GOOD (  11.73  )
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

On Tue Nov 4, 2025 at 12:49 AM CET, Heiko Stuebner wrote:
> The Trusted Firmware on RK3568 exposes 3 clocks via the SCMI clock
> interface. Add descriptive IDs for them.
>
> The clock ids are used in both the older vendor-binary TF-A, as well
> as the recently merged upstream SCMI clock implementation.
>
> Link: https://review.trustedfirmware.org/c/TF-A/trusted-firmware-a/+/31265
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  include/dt-bindings/clock/rk3568-cru.h | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/include/dt-bindings/clock/rk3568-cru.h b/include/dt-bindings/clock/rk3568-cru.h
> index f01f0e9ce8f1..1e0aef8a645d 100644
> --- a/include/dt-bindings/clock/rk3568-cru.h
> +++ b/include/dt-bindings/clock/rk3568-cru.h
> @@ -483,6 +483,12 @@
>  
>  #define PCLK_CORE_PVTM		450
>  
> +/* scmi-clocks indices */
> +
> +#define SCMI_CLK_CPU		0
> +#define SCMI_CLK_GPU		1
> +#define SCMI_CLK_NPU		2
> +

This corresponds with the id's in ``clock_table`` in TF-A's
``plat/rockchip/rk3568/drivers/scmi/rk3568_clk.c`` file, so

Reviewed-by: Diederik de Haas <diederik@cknow-tech.com>

>  /* pmu soft-reset indices */
>  /* pmucru_softrst_con0 */
>  #define SRST_P_PDPMU_NIU	0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
