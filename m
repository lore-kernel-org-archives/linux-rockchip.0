Return-Path: <SRS0=iXk1=PR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 87A01C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Oct 2021 06:42:55 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4EC26600EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Oct 2021 06:42:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 4EC26600EF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=om6K5V2+DDg85lwdRV2Bzr5qAno/KeKkljLHptWMsTs=; b=rAcldQNFz3so/9
	lzxReEChWVOIaNS3b8DtDdvp2WgUiQzfaTyRP/EJs0vpN/NkT4GpupN60mi5FllEN2iYTsGf/eW6y
	unEg/rbS8UjhDJX4tVNVqB42y2v0ZahrKN4HuZoC3leUv1dO/vn90i23VyFCtHaoH/KRLhxsJAwbW
	1jjzbl0EFedPBRdHAA61xRjNSKoVkeAncjOBiVbABAlUWmoEnbTubX7d6ZdOW2EFw0fQb++J6yN0v
	EFrXY1ZVxxfYtAMe36pTOkGtKbdzwP4wuYtvvolngocibbsd/UsppvwCSQYYeBw2uV4sVj7JFFhnL
	DpU1J5j2BXbJNn8cgFsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mgLbH-009x8n-OI; Fri, 29 Oct 2021 06:42:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mgLbE-009x7y-P6
 for linux-rockchip@lists.infradead.org; Fri, 29 Oct 2021 06:42:49 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6180E600EF;
 Fri, 29 Oct 2021 06:42:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1635489768;
 bh=i7vsYO/aq+qtfFVL3WNN7t4dt+Ran+zcKeLEf5z34W8=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=HGILTzHA9KkTYqs0f9Wk9j5vtZGGnBxfa3il48MDhLLFy5emnNd6CXzCOC7GZHNVW
 P6//p/kiowmD5dgASG57nHq6KeipevghEBtLs/r2mLCuD1pC2taNTwfG0xUMDu7UoV
 Sanb6OKjQF2tBcyWSQR7Ije10KILHsuSIiId8e7ukNzTcs0Z0XeJ1CBTOVbURWvVch
 EJ1/pqc4gqncFw2F4Pe8ysBr7ImavEK8evoySPZzxtZwhkbuHuVhPzmOCpFdD7xzsL
 HrZC35D3NWRizRWU7pliqbUyw2eWueut5m+10pGbAAPX95JJPRjcAldUafL1LKuUlw
 L/TczIEEWrDBA==
MIME-Version: 1.0
In-Reply-To: <20211027132616.1039814-3-heiko@sntech.de>
References: <20211027132616.1039814-1-heiko@sntech.de>
 <20211027132616.1039814-3-heiko@sntech.de>
Subject: Re: [PATCH 2/2] clk: rockchip: drop module parts from rk3399 and
 rk3568 drivers
From: Stephen Boyd <sboyd@kernel.org>
Cc: kernel@esmil.dk, linux-clk@vger.kernel.org, mturquette@baylibre.com,
 heiko@sntech.de
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Date: Thu, 28 Oct 2021 23:42:47 -0700
Message-ID: <163548976724.15791.12515100208357999661@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211028_234248_857521_A4C859CD 
X-CRM114-Status: UNSURE (   6.22  )
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

Quoting Heiko Stuebner (2021-10-27 06:26:16)
> Both of these drivers were converted to real drivers and got a tristate
> build option. But them being builtin_platform_drivers, they only ever
> should be build-in - as the name suggests.
> 
> So adapt the Kconfig symbol and drop the MODULE_* parts from the drivers.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
