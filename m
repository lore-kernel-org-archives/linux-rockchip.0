Return-Path: <SRS0=p67a=ND=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED77C4338F
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Aug 2021 19:56:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4682561019
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Aug 2021 19:56:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 4682561019
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KyoZ20nL+Edn8o179Js/h7I/M5Z4rDdgZ71yNkrj51o=; b=44HpdJoxJsmw1D
	HchhsRe78AIefKfFBx1ePqT+pGhNibhCdTHwv9yRnAuZqwxezP3+UESDUGgJFtANsOxENt9YgzncY
	mPQraWPmzF6mEuuVfDDcL6cNcOPrKN7S7egcwm4tjS/8T9XjAmzrspPbtgLO8RZfgKiP9Q7rBif3l
	jwlh/1IQPAcLKaJ7lxozoAs4GZ6BGvSjHQDxdhpxRg2IOdVjUZ5hyJfWfAvvQTPKWVLfBydWhH6Bo
	NS99JK5gdUChdvupc5VsGSibHwZeKLHP9v8VmvMp5CRbMPRu7xQEY6mFcNqtvj5WdUp5f9Wf663zh
	tfkXtgva40aPEPb6pEeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEGoq-00B5g8-SQ; Thu, 12 Aug 2021 19:56:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEGof-00B5eq-1x; Thu, 12 Aug 2021 19:56:38 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8F14A60F57;
 Thu, 12 Aug 2021 19:56:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628798196;
 bh=VK6fTGBMqObvHDZgnYKEpzt1BpppjuPCDJvY8Ra0iNU=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=PE6LssHI1gSJufHuzujfnOHe+y8vzLZuTbtDtujt/+4KiNzWik7VzcqhpsxaPTcas
 IqWwbBwqjlN8fsgPsw4tmI/g4EZxeZ095GQ2Uf/erR+Rg7pp8BDouIFtjObGPsBxDc
 g2uaxm1Ly0Tt4McJRTOZWRb7Ixefz2k5rNe0ejmpV8JLibmDuYDJHNpWag0MdRLUhm
 8+HXjJbBULdQ8tKHtgUlCiawhyS/sSpUzfVw89tYYnIOopQ2x67uc9zYDmAp2JaBJ+
 eV828IjkIeuj93tjUwmw+IrFm/4nTX5tLVBX5bq9dtYgQ68UfypKAt7JZrN7MwNTf0
 hjUrYk8BSfF3Q==
MIME-Version: 1.0
In-Reply-To: <20210812170025.67074-1-andriy.shevchenko@linux.intel.com>
References: <20210812170025.67074-1-andriy.shevchenko@linux.intel.com>
Subject: Re: [PATCH v4 1/4] clk: fractional-divider: Export approximation
 algorithm to the CCF users
From: Stephen Boyd <sboyd@kernel.org>
Cc: Rafael J. Wysocki <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Abel Vesa <abel.vesa@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Lee Jones <lee.jones@linaro.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Elaine Zhang <zhangqing@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 Rafael J. Wysocki <rafael.j.wysocki@intel.com>, linux-acpi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-imx@nxp.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Date: Thu, 12 Aug 2021 12:56:35 -0700
Message-ID: <162879819529.19113.6409882476721828944@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210812_125637_156980_B02E7727 
X-CRM114-Status: UNSURE (   8.38  )
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

Quoting Andy Shevchenko (2021-08-12 10:00:22)
> At least one user currently duplicates some functions that are provided
> by fractional divider module. Let's export approximation algorithm and
> replace the open-coded variant.
> 
> As a bonus the exported function will get better documentation in place.
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Tested-by: Heiko Stuebner <heiko@sntech.de>
> Acked-by: Heiko Stuebner <heiko@sntech.de>
> ---

Applied to clk-next

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
