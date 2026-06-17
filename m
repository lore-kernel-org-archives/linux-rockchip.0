Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7C5ACD98ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jun 2026 07:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/kTWCHtvLxNTrSOMkP+cR3wM39jsB+8GfBzgMtz2wvE=; b=H+TX2QfrRnsmqr
	uoba4e9uOBzcHPLGHlu66XI1/l6BjyjKxF7T9PfIHz/iBSOwOmuFK7moCE1h3BGkn1UiDv41oIxm9
	8yajrfAi5SgQcJROTyJ3mToZOwmNSd0rczEhpPl5OydEnViGTjx4Iijvkw3tjILcJPBsEgq9j0hw8
	DLT2oYfeFKmZjavK5jusQAJlXx98bwyQuJH636OoXYpVGTukFXIvVQmbMMicueYx1R0WrjQpgosL+
	8ZioSZiBkrnM7iyv7gORN+n4avCgkNE48np384PFDP2fj5SGxrqniFlH3ce1+dYR5KYU4DTF9riyK
	UB2yM+oZjHjqXZdKo67Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZkjO-0000000GpYD-18O5;
	Wed, 17 Jun 2026 07:30:38 +0000
Received: from mail-m2419.xmail.ntesmail.com ([45.195.24.19])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZkjJ-0000000GpUQ-4C54
	for linux-rockchip@lists.infradead.org;
	Wed, 17 Jun 2026 07:30:37 +0000
Received: from [172.16.12.74] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 42b8fd4b5;
	Wed, 17 Jun 2026 15:30:22 +0800 (GMT+08:00)
Message-ID: <5799c8e2-fc95-4a53-98d7-0b6caacc05af@rock-chips.com>
Date: Wed, 17 Jun 2026 15:30:22 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [REGRESSION][BISECTED] No display on rk3399-gru-kevin
To: Vicente Bergas <vicencb@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>
Cc: Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
References: <CAAMcf8CXfvzvEUyoASmp=6efRDNszyPJuFg0OU63Z7gT+oVQ8A@mail.gmail.com>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <CAAMcf8CXfvzvEUyoASmp=6efRDNszyPJuFg0OU63Z7gT+oVQ8A@mail.gmail.com>
X-HM-Tid: 0a9ed47cff8003a8kunm6b443dfdfa66c
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDTkoZVkkdTRoZTEoeTEpMGVYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=UiYny89OHy5+U77Wp9HnED+5wZ45BU3P/2jyl4SED2rweoY+h3mxCo32soSrpyXCkLsKXxhJe8vnpRerBvvGsah8qlj6tZnolgHzudkGRL2hWrAnZBD6D/FwqTSEqKSDtoZHJyxdr61JNZ/jivcWzHYIxOpDRl5dFUyI4Y8TY5k=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=HmgV4ANmf/XxxTIKJoU2sap4bRuYBmKkN1NTGlsyMsA=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260617_003035_012634_90AC0182 
X-CRM114-Status: GOOD (  12.10  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Vicente,

On 6/17/2026 7:05 AM, Vicente Bergas wrote:
> Hello,
> there are two issues that result on a black screen on the rk3399-gru-kevin.
> 
> The first one is due to:
> c8079f83e0bf312645050c17d9c87deb707369c1
> gpio: rockchip: convert to dynamic GPIO base allocation
> 
> Reverting this does not fix the problem as there is a second one:
> 51eb548ade20158b4f4f8693a95b1f31a2480e8e
> drm/bridge: analogix_dp: Apply DP helper API drm_dp_channel_eq_ok()
> 
> That second one depends on:
> d84b087c7662dd65cd51b228219987c31b1cee02
> drm/bridge: analogix_dp: Apply DP helper APIs to get adjusted voltages
> and pre-emphasises
> 
> Reverting all three commits from v7.1 make the display work again.
> 
> Please, can this be resolved?
> 

These two issues appear to come from entirely distinct subsystems. Could 
you share the related error logs so I can analyze them further?

Additionally, I will set up an RK3399 EVB1 environment locally to 
reproduce and verify this issue later.

Best regards,
Damon


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
