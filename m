Return-Path: <SRS0=/XqT=PP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8574EC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Oct 2021 20:27:56 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 44DFF60C40
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Oct 2021 20:27:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 44DFF60C40
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6R3AzCAWit5wk5MKLxFy2d1xVHLS228Om1XG8X7LOq4=; b=NK4Wena6U09Hzc
	vXcrYV4Xji9S7pRGtOX8kIcgV/u+2PCRA6zq+PZO0LvVobB0SQ0KM6DS8LUxnBH1g90tRAvqY87AQ
	DxNLRwpGDmyJVzZlRvuMRr7mZreB9UZzLbqrk6mmSxc+/L8X4TzXClnAqm2OoFsticat6KQVFW8hn
	0nQAQ6yEIgjrJtjh6K0RttvLkQzDYdBUStBYnphpuyJUrBBIAI+UmOjTLTFD5ocKm2PD63YqgHJzb
	bRGI9uIAc7jzz54xwD6WCEsv0ZFTmUTnpPOY6/TShpoG6WmapKJCN9S3H8cHWjKsGb0WYofDBsTtN
	296zKrzIEo4rIU3bbv4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mfpWZ-0063c6-Bz; Wed, 27 Oct 2021 20:27:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mfpWW-0063bP-FR
 for linux-rockchip@lists.infradead.org; Wed, 27 Oct 2021 20:27:49 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 73E0260C40;
 Wed, 27 Oct 2021 20:27:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1635366467;
 bh=ETJbht3ruVRXtbpajTpi6Z6h3wWwolO65oifEPJ0jNk=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=Nx9Q9F7jNG9cOc0qfZAO/E/WUXyG2U5bWdue0M0XILkhhK9WXDWnFrJYt48MDqD+K
 KNmSpuGEj/IqDwsff6p/kz57zOfpCT4HUFcbTfqqhDr0E1+c2M4WdQKr7aIE4CjW/+
 n0zwEHJWcQulh8iZWOCSlWIu7k1Yr+9bn61+uoFaKEnP2XcLwHUV+mEXGsmJRKn4ne
 d2GJuwmQrhLFp027wu/YzbmkZWspZe17YkxSWfxqGFfFsNlO5CqFb/CoYWc4fRoiQb
 OITQ++13mz4G2+RDPda9w2AWUhKDoJuT0ksKT6BBIe+rpovptZknKNm1XG5mSPhJCc
 T7TRUjz05+c1Q==
MIME-Version: 1.0
In-Reply-To: <20211027132616.1039814-1-heiko@sntech.de>
References: <20211027132616.1039814-1-heiko@sntech.de>
Subject: Re: [PATCH 0/2] clk: rockchip: cleanup errors in (module-)driver
 handling
From: Stephen Boyd <sboyd@kernel.org>
Cc: kernel@esmil.dk, linux-clk@vger.kernel.org, mturquette@baylibre.com,
 heiko@sntech.de
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Date: Wed, 27 Oct 2021 13:27:46 -0700
Message-ID: <163536646616.15791.10163287623335903483@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211027_132748_560711_33F93BE6 
X-CRM114-Status: UNSURE (   5.24  )
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

Quoting Heiko Stuebner (2021-10-27 06:26:14)
> Recent conversions or inclusions of rk3399 and rk3568 as platform-drivers
> and subsequently allowing them to be built as modules introduced some
> problems.
> 
> These two patches try to correct them.

By removing modular support? Ok.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
