Return-Path: <SRS0=J32z=IP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 25E0EC433DB
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Mar 2021 01:40:02 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B1B9064F3C
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Mar 2021 01:40:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B1B9064F3C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=foY6NoC6FaxyDWguMbtJIrYZu0qmgSCZhtyPt/oWkko=; b=pNqRGBYdCrz40NRKDAm2vaDAl
	j8aVEz9ULv5tKme2FrMLksTHWO4fQIbO6jx3yIQjk3twuj6IqTTLGM6uj9dv7LpxdE5ypBL4stA3o
	OHt2YVwA9gNAlzaTBHAk1EgXChlTCW0r0YcKvAjW/m9Vab6p8OeFMrp3wleC4pspv0rO0TjNx6emc
	oVKF2RKy9Kcjza5rgUCKyDVptkJa0LnutuNJOtjST2slSvHOcYN/mTgCjGxLTka1umjOovgOoem/2
	7z+DEnLhw3mcUSaKXB4nCR9libFqOASBEPx8t570OUGGBYxxyHnacmiSKmLKjMwx1OaO3NqWkelOP
	qAm6X6y7w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lMLAA-002Ef9-Us; Wed, 17 Mar 2021 01:39:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lML9l-002EXs-4H; Wed, 17 Mar 2021 01:39:31 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id BA8C764F8A;
 Wed, 17 Mar 2021 01:39:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1615945167;
 bh=H8WIgmrcKIzvOcAWqa/8G1sb+H+xkWR7ZsZ/+sCO5No=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=PQnC5YwKwpGmaYJtT6YThRYrLJ+KRrUc9CLwIXf/2jGAohVV4NF4OjOJN33QVA0G8
 A7GzmhUKuH1Mwlvd5SasqOnrYZc7mSFvOMu53FvO5cOMZn97j+JgxvIoyAI4Pne1Ed
 5bF7vvV8bYBB4l1fR3qfzS0v2wHnrHF4hAzE/oumtZJ9l6ON8sDtFZiS+IqITjD42f
 x8x+2yYXAwQRi35eCxXoYfonKxBoi3X7VC7rHM3p7fawKHpDMU+NrYSzcEKldN0+sb
 tU7r8lrZ/zm6zjhmhlTDUwYdPq/qBJbtK460R4/RJwomnx1BXrHGG0qVt3jJX5IuYb
 FehzvkcjjigMQ==
MIME-Version: 1.0
In-Reply-To: <20210315085608.16010-5-zhangqing@rock-chips.com>
References: <20210315085608.16010-1-zhangqing@rock-chips.com>
 <20210315085608.16010-5-zhangqing@rock-chips.com>
Subject: Re: [PATCH v5 4/4] clk: rockchip: add clock controller for rk3568
From: Stephen Boyd <sboyd@kernel.org>
Cc: devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, cl@rock-chips.com, huangtao@rock-chips.com,
 kever.yang@rock-chips.com, tony.xie@rock-chips.com, finley.xiao@rock-chips.com,
 Elaine Zhang <zhangqing@rock-chips.com>
To: Elaine Zhang <zhangqing@rock-chips.com>, heiko@sntech.de,
 mturquette@baylibre.com, robh+dt@kernel.org
Date: Tue, 16 Mar 2021 18:39:26 -0700
Message-ID: <161594516665.1478170.8135763363334069374@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210317_013929_719192_DB8B900C 
X-CRM114-Status: UNSURE (   4.72  )
X-CRM114-Notice: Please train this message.
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

Quoting Elaine Zhang (2021-03-15 01:56:08)
> Add the clock tree definition for the new rk3568 SoC.
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
