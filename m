Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62E06C83F25
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jul 2025 08:11:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=atibPTNz5zJaRtjnxxNQAJ8DwFM9YFVdRvpEHlJBodc=; b=h0F7RwSRUauy/A
	iJ8ZHvBgNtEHBxhAa8CPSRKnBky4fvxF8iWh5EgzvY556IPJguvGPccZ334qv4q1W6ogMpFPC05cz
	gE3oCZx30L6ktb0KWYYStRpkgU1R9tug9rTdvm3CvRk/sL/RAOYXEc1zUcaNvVU8JNC4xV03Ie0QK
	a5WDr3xpBqJDycrq1Sm3gh5/O0q5vZAaunat2AjY/Oghn5G9AMNLaIQIEQ+bTboaFPUAtVxZZHav0
	HR+zi3tK85b8JVlfEffGrvdai+mkhM2HCudNhgTyARMBpgsr6DsTRtzuPvFDTMUQJllOZR0NvcvFe
	9MR2vknDpOV8EIYB0daA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueUZY-00000004LH5-2Atu;
	Wed, 23 Jul 2025 08:11:32 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueUDW-00000004HrV-1bKk
	for linux-rockchip@lists.infradead.org;
	Wed, 23 Jul 2025 07:48:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1753256925;
 bh=tlysNIUHkG+ajpgUu28U9v0znvVFpOUQJKOU6I0mE1w=;
 b=bbNqCsmQeozZjmgl0HL4SufvnfKLO7ldo/P8dtWW9pDV/1Z/e+L0MtuLwko3ciac72JXNqcJv
 2+FK18VX8VfIa+gH2CK6suj2NeKkrmwIVj2EwOC/AanGcI5kZp2H8cHGbOnu+jDzdj67bGCZlLD
 F4GD+5dgvrPaTLcyw0we+6XDjs8KdLUPcp2/hRwmj+1L/46G9poa8zzLCqbLigbCUyDOqTi5tga
 SnsoCL5BWVUidI8tPsUq1APX7f2jQ299k+mPFZbNH9Y+9vsSNY21LbSRPcqJNrMAqFYpGzVO0YU
 SRK2DYw3mh/qkIHuS4f5NiCIQUtaflco6ugNuQDR90Tw==
X-Forward-Email-ID: 688093da144dc4a5e5badcbf
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 1.1.6
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <5ce75920-1b2e-4cc6-8e7b-e26f40089c7c@kwiboo.se>
Date: Wed, 23 Jul 2025 09:48:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: rockchip: convert rk3528 power-domains to
 dt-binding constants
To: Heiko Stuebner <heiko@sntech.de>
Cc: ziyao@disroot.org, amadeus@jmu.edu.cn,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
References: <20250620201715.1572609-1-heiko@sntech.de>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20250620201715.1572609-1-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250723_004846_707955_47CCE5E2 
X-CRM114-Status: UNSURE (   8.37  )
X-CRM114-Notice: Please train this message.
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

On 6/20/2025 10:17 PM, Heiko Stuebner wrote:
> Now that the binding head has been merged, convert the power-domain ids
> back to these constants for easier handling.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

This matches the state in my original patches, so this is:

Reviewed-by: Jonas Karlman <jonas@kwiboo.se>

Regards,
Jonas

> ---
> changes in v2:
> - add conversion in newly added gpu node
> 
>  arch/arm64/boot/dts/rockchip/rk3528.dtsi | 23 ++++++++++++-----------
>  1 file changed, 12 insertions(+), 11 deletions(-)

[snip]

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
