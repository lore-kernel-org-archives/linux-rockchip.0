Return-Path: <SRS0=J32z=IP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED4AC433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Mar 2021 01:36:48 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5E79064F99
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Mar 2021 01:36:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5E79064F99
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0lWYrBGF4iqTRKOw3y/77B23booOhoQKxoPQZVFTnoY=; b=XYTgfmT5VoYBYLzUVXPM3EdLL
	VozWuMpBQVOUHVMcMy+8+qFvxdfQbMlo4Ka15UWVlVKHA0Ks5s3d3ti59CbOKiNFlLlMJgzTUmD07
	4CE1/h2qGQ3RuS9gaJitP9wutEJl9mpyy6alQSmYbsd9WUjZRyff65rD+RyBjWzp/PGV9567kkbdY
	AvJFqmhNT89MVU40yLPrSeRtLa+KNJUf+AVPuGnbZc39Ofz6/EzHEniJXK2AV/qasLRRhkaTHj6b9
	4r0gk/iYLZn720w/eYK6wVsvctcsyURAa960SjjhkCSeH/A/sAFOKf18j/85JORwYppqNPGPFO2dx
	5eBcoNxaw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lML72-002EH2-Lo; Wed, 17 Mar 2021 01:36:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lML6x-002EGN-3F
 for linux-rockchip@lists.infradead.org; Wed, 17 Mar 2021 01:36:37 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 57CB164F97;
 Wed, 17 Mar 2021 01:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1615944993;
 bh=FZgfTha48+8fEpkTBH9H3veXQK0JI2YdcPNLkNruT/M=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=hP2a9k1y38HPYB4uzyW9VPwRCSh+ChjAyMH759aWt7AKxpm/VtW+0boTC90b4YiYI
 j+ybwX07XSEHHFjAHgJtO74TbjhxIpLf/6YUp308xeSL0/dvX/Ny2ulgu7ftwmUvG9
 vaSY/qN/5DQfvJE4Slef3wKZeCSyc1RUnfqpSChWIJd5JW/7cY/yRnk3siMMGxZaXb
 dNFQAgHWymxwsruDnTlMHPuVhiJ7NZRkCI4MRh7XSUHacbXVHAUZFCajFPP25YE2GD
 CoxPZPYJLzx1uepFRxQObli31TEMSjh5vjARYzShiRz7mk4E8BAqAdBlQvShO4QwNK
 nbrf9VoFC8JQw==
MIME-Version: 1.0
In-Reply-To: <20210315112502.343699-1-heiko@sntech.de>
References: <20210315112502.343699-1-heiko@sntech.de>
Subject: Re: [PATCH 1/2] clk: rockchip: drop parenthesis from ARM ||
 COMPILE_TEST depends
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, zhangqing@rock-chips.com,
 mturquette@baylibre.com, linux-rockchip@lists.infradead.org
To: heiko@sntech.de
Date: Tue, 16 Mar 2021 18:36:32 -0700
Message-ID: <161594499215.1478170.15629079546863596316@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210317_013635_649720_DB7C5A96 
X-CRM114-Status: UNSURE (   4.87  )
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

Quoting Heiko Stuebner (2021-03-15 04:25:01)
> As suggested by Stephen in the series adding the rk3568 clock controller
> the depends works just as well without the parenthesis around the depends.
> 
> So to make everything look the same, drop them from existing entries too.
> 
> Suggested-by: Stephen Boyd <sboyd@kernel.org>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
