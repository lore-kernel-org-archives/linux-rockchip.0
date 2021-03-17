Return-Path: <SRS0=J32z=IP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D958C433DB
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Mar 2021 01:36:52 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2D55D64F99
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Mar 2021 01:36:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2D55D64F99
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+RqUiTOeYUbrHPsNyBbBVp00ySW5QA1H0L8Cbi0mU4s=; b=andM+a/0HeLaPE/VjNC91kH1H
	iWomSn0VJ8QTMaEO0qFBaivgs/v3D/yK+YpQJAyDcNnK1X4H61EKTknmlHWWE++tHLIWZ626sAjhH
	cbFEjO6yiB2cKAazUWTtpB59kJsGkn7ssQAqIyi3zYiwoD4k9y2JuTiYd0s7siJe9oWGhQlYWRWwv
	DVTIbJ3XJ02P2swdKKw3v9W/kLAz6AlJhLKbfseY1CN+a3sBptvVP9gm/gdb0kFMjTiWjZkGlRf2Y
	nYWzeyEjvKe+PbjAKi05fYFTveK0MR+1reJREQ+RN/nvVIESpbDNZrW4pyJw+VFHRBZKEntVy33AJ
	hbyQcPreA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lML78-002EI0-4E; Wed, 17 Mar 2021 01:36:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lML73-002EH0-Av
 for linux-rockchip@lists.infradead.org; Wed, 17 Mar 2021 01:36:43 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id EF29D64F99;
 Wed, 17 Mar 2021 01:36:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1615945000;
 bh=Sc97qhhpJZEboCOxPhj04eeJ/fGLVXl1L3DyhupBQJc=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=jVb6urGcVHcBQTAoM/5siv6wYgCE6Aapy2KqcHi1yL0d+PWtdhuBBEMJ+lgnesdFd
 lhvkzm3NAp7n/FE2EtFy94ZQYZSD5tZJ/EaSZ1jCmkMA/oY0lk8PwOtW9DZzdYlXz3
 7NWFmPrQOQNHhQMbz8zIPMzUBxSaJ5E9vJ4RmPEwVObR/kgDUuIFh7ka/A5xiahnku
 +J5cY/aw4R44WkEVyGEX6wreKRYyMaEazOU3JgGgCW/KNPkpO7/+z3uwZrJARzyb9n
 QFD2thYFoybH41pW9ehFo9iRQWGXe11TXkD68yUAlRBGogkkuPFBoU6J/gZYUroPgI
 /AwOFa9XCrrGw==
MIME-Version: 1.0
In-Reply-To: <20210315112502.343699-2-heiko@sntech.de>
References: <20210315112502.343699-1-heiko@sntech.de>
 <20210315112502.343699-2-heiko@sntech.de>
Subject: Re: [PATCH 2/2] clk: rockchip: drop MODULE_ALIAS from rk3399 clock
 controller
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, zhangqing@rock-chips.com,
 mturquette@baylibre.com, linux-rockchip@lists.infradead.org
To: heiko@sntech.de
Date: Tue, 16 Mar 2021 18:36:38 -0700
Message-ID: <161594499885.1478170.3779535512987411515@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210317_013641_941985_3A955A3C 
X-CRM114-Status: UNSURE (   4.58  )
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

Quoting Heiko Stuebner (2021-03-15 04:25:02)
> As suggested by Stephen during the rk3568 clock review, the MOUDLE_ALIAS
> doesn't serve any meaningful purpose, so drop it from the rk3399 as well.
> 
> Suggested-by: Stephen Boyd <sboyd@kernel.org>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
