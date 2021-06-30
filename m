Return-Path: <SRS0=1ikY=LY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61E76C11F65
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Jun 2021 18:25:14 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 25D6A6113A
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Jun 2021 18:25:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 25D6A6113A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xHbUKmJmFyTwNRWKGN67QaPI3dH1kTTTiOsrs4ay46Q=; b=vJ1sDhGRqArIhL
	UdKNVD0r5GhGgKLb03EH51vtrGS7F7iobAOf54P/nJHgIuN3dkfA+G7dbIAmk1UqJblvSZ/fIAWWJ
	BXGgmncpl0KdHKxr2XsLlt182Yc1yppKee98Uv404yakJFrdf2v8yU/NoDWXVMsYAYmFdZhiHkBqy
	sANoRhoizaWixmFAxB0D/2f37Nm1/5zNEAeYTOmjELH1MHQO4XogmDTJ8s4Kgt1sVe3kALi5kQu4S
	gs99voes7zCNkFXx206uLy0cWPxzPN0jIcIoPKP9izFgjVClKLP67+So4LYnm3mmGBVNHIkuOnpv/
	6ZU6ufi54K7I46RpE+6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lyeta-00EvZp-Kx; Wed, 30 Jun 2021 18:25:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyesW-00EvCN-S3; Wed, 30 Jun 2021 18:24:06 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 71FE861468;
 Wed, 30 Jun 2021 18:24:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1625077444;
 bh=85GRTiAN+qIhZQpgqk3uxumNiZTTSlxWORSeg0LMGI0=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=fjesTOkCm8B0e4KRQvhiv/12jAMnsjdPJwCJMKIqRR7tbd2Y3UaG6d+TppeYjldJd
 IkQdFVYuPhRxteCyQOLH6JjO6U8GkfQLsbALB41/nACzk0xSvUjEdPjAIoy3fiQxTs
 ENg7ga49Xy/qYgMR3tLo5s0eCnUYVgDyxY6PQE8YUygDXxQhKGvY8FUpFbqogyWNCC
 YQQ7Cy0rB8VQ+figCq6cQJNvKtpty2HEWxAc0wUW6Ogm2cROK4+w4goeHVeWpgtwcQ
 NnE05URIGUvtmJgC+c9NJ8qo0Dwmm+MO3u678Ok5ObeAJQjR6mUQuMfirFlbult276
 lX04K2Gi1X8/w==
MIME-Version: 1.0
In-Reply-To: <20210630134745.7561-1-jon.lin@rock-chips.com>
References: <20210630134702.7346-1-jon.lin@rock-chips.com>
 <20210630134745.7561-1-jon.lin@rock-chips.com>
Subject: Re: [PATCH v10 05/10] clk: rockchip: add dt-binding for hclk_sfc on
 rk3036
From: Stephen Boyd <sboyd@kernel.org>
Cc: jon.lin@rock-chips.com, broonie@kernel.org, robh+dt@kernel.org,
 heiko@sntech.de, jbx6244@gmail.com, hjc@rock-chips.com,
 yifeng.zhao@rock-chips.com, sugar.zhang@rock-chips.com,
 linux-rockchip@lists.infradead.org, linux-mtd@lists.infradead.org,
 p.yadav@ti.com, macroalpha82@gmail.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 mturquette@baylibre.com, linux-clk@vger.kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
To: Jon Lin <jon.lin@rock-chips.com>, linux-spi@vger.kernel.org
Date: Wed, 30 Jun 2021 11:24:03 -0700
Message-ID: <162507744324.3331010.10691354484108930102@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210630_112404_972430_3698F5CF 
X-CRM114-Status: UNSURE (   4.89  )
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

Quoting Jon Lin (2021-06-30 06:47:40)
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add dt-binding for hclk_sfc on rk3036
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
