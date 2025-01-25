Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBB35C0218C
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Jan 2025 21:41:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KRm/dD3h44l4uKOWKdoXhW+8qnOTk4yyJK08ur6WwOw=; b=Jfw4KKcP7FC2Io
	1U4prqwodsOhgIwEEYkG/iYKKTudjuQYTaendnI3zRmCQNafmL0KZ4O86jd5l6GWOU+jtuWt/PG32
	zbFCjdoIiR0d63xJ7oAZvNLbikQm7gPozRnp7mfthuBjIYNSqBnsJ0v64Hit9wMNx/69f+Q6IgJEt
	mKrJyiMIYa9gaWJcbWwP7hSgRIwcrqdRF/YsGHGOJCNiJnfsXTEk02W1joV8KSkLzYCfep64V2lu6
	QA4b7Vair5FQ2TESFFeLlk8jP93/KuU6NALhci799BkeUuwmAGxArs6TcGmo+JiLEY20QpX3IL9FM
	3yXt8PRQJGrILpvUb2lA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tbntp-0000000Go3G-1KBI;
	Sat, 25 Jan 2025 21:41:05 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tbnsW-0000000Gnz7-1hMr
	for linux-rockchip@lists.infradead.org;
	Sat, 25 Jan 2025 21:39:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1737841182;
 bh=ZR2tSkF4rwVVUs2XDXjB3CxX9NUqN3QjJdhV+zW8rXU=;
 b=RJbHkQXXtewrtk5Tpoqi31QE3W/F2rWJHbZ4Uqn6CVJijUoQuazbY0DCvva2A3L1t6t1CvnO/
 O0YPnYd+Lz8Y//W/LQE9Qs+s6DbadKFu/FUASc8DAgaLB+bwhCMXpHkRrsnWH4HsgJoziXKHkw1
 gpAguj2g92zJjze4sgI8vEUq6wnj1/++UMyh6W7hnf7Gukf/HsOH62eK29maUoQDkEXSWYvUn5l
 6Paesc9cUS+xK5tMCFAheVLvTDFBvs9uXTE+NwtfXxLHX4PPO6UHAldiXzZuw6OQZSBLgoyAwH9
 CWqTfMW2UB1659JDHtnHlJDnpwDDOWO7+YbuCMdRysHQ==
X-Forward-Email-ID: 67955a1458390289d47a0e52
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <d1ddec89-08d5-4eed-8ecc-7df47294230a@kwiboo.se>
Date: Sat, 25 Jan 2025 22:39:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] Revert "arm64: dts: rockchip: Increase VOP clk
 rate on RK3328"
To: Elaine Zhang <zhangqing@rock-chips.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, kever.yang@rock-chips.com,
 heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, huangtao@rock-chips.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20250125011545.15547-1-zhangqing@rock-chips.com>
 <20250125011545.15547-3-zhangqing@rock-chips.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20250125011545.15547-3-zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250125_133944_474121_AC111E78 
X-CRM114-Status: GOOD (  15.56  )
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

Hi Elaine,

On 2025-01-25 02:15, Elaine Zhang wrote:
> This reverts commit 0f2ddb128fa20f8441d903285632f2c69e90fae1.
> 
> Before changing the PLL frequency, in order to avoid overclocking the
> child clock, set the child clock to a large div first, and then set the
> CLK as required after the PLL is set.

This commit message does not match what this patch does. In this patch
you revert a change and in next patch you re-introduce same thing
slightly different.

As mentioned in v1, see [1], you should merge both patches as a single
fix, if a fix really is needed.

Testing on a rk3328-rock64 I see no difference before or after these
changes. Please describe what this fixes because clk_summary show same
clock tree and rates before and after this fix.

Also for next revert patch you send, please include the patch author in
the recipient list :-)

[1] https://lore.kernel.org/all/cae9cb0a-1500-4fbc-bbf4-a6266549bcb9@kwiboo.se/

Regards,
Jonas

> 
> Fixes: 0f2ddb128fa2 ("arm64: dts: rockchip: Increase VOP clk rate on RK3328")
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3328.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> index 7d992c3c01ce..f3ef8cbfbdae 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> @@ -852,8 +852,8 @@
>  			<0>, <24000000>,
>  			<24000000>, <24000000>,
>  			<15000000>, <15000000>,
> -			<300000000>, <100000000>,
> -			<400000000>, <100000000>,
> +			<100000000>, <100000000>,
> +			<100000000>, <100000000>,
>  			<50000000>, <100000000>,
>  			<100000000>, <100000000>,
>  			<50000000>, <50000000>,


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
