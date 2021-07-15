Return-Path: <SRS0=drtE=MH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1187AC636C8
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jul 2021 17:59:12 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CD4EE61360
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jul 2021 17:59:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CD4EE61360
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cC0xSwcdvEjvlx3Wo310zVD8qz+L496TB+JUOdMyWUo=; b=F4f0Lu5dGTFy1p9DHMyF9O1uzd
	+VrJg3jIOMdCxuUTFY53wh8gV/Ar0EfA/ocqfdzxpOcZqI6b3FswZtmncCcP5TUcmGX9uJHUkgD1y
	y4ILb2V5amVe3iwhuHKlzz89eV7QMM+qN7t2ETAQpJuk0FjM31Dff8nOCDaKBDWQpg9cDpg1gmjNG
	RiPjvbOchIPXkWL5PR4ToHJeNwBIpbKtVR9ffwruhJAKrymcmpOI8mLfxFPrMBbIowZDwDYY0gVTE
	Kw/V6qT6m6aGPogaJ1ZW/l6/0WtTVz+MIOupTyMnnPsCvo6rTh9lkFx099VYXADM6MoFaIQTgiX2c
	IO2s1nww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m45dc-001v8k-7w; Thu, 15 Jul 2021 17:59:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m45dK-001v3t-VD; Thu, 15 Jul 2021 17:58:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B3DDB6D;
 Thu, 15 Jul 2021 10:58:47 -0700 (PDT)
Received: from [10.57.36.240] (unknown [10.57.36.240])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0314E3F7D8;
 Thu, 15 Jul 2021 10:58:45 -0700 (PDT)
Subject: Re: [PATCH v1 1/3] clk: fractional-divider: Export approximation algo
 to the CCF users
To: Andy Shevchenko <andy.shevchenko@gmail.com>,
 kernel test robot <lkp@intel.com>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Heiko Stuebner <heiko@sntech.de>, Elaine Zhang <zhangqing@rock-chips.com>,
 Stephen Boyd <sboyd@kernel.org>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kbuild-all@lists.01.org,
 Michael Turquette <mturquette@baylibre.com>
References: <20210715120752.29174-1-andriy.shevchenko@linux.intel.com>
 <202107152356.7gQSC0vc-lkp@intel.com>
 <CAHp75VcxP6QSoATProqjqJ_kmjXr4FfjijohCyumrw_gmj904w@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <9e1c1fde-fbbc-69d4-9273-192844037cd8@arm.com>
Date: Thu, 15 Jul 2021 18:58:40 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAHp75VcxP6QSoATProqjqJ_kmjXr4FfjijohCyumrw_gmj904w@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210715_105851_144841_B90CFD1B 
X-CRM114-Status: GOOD (  14.27  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2021-07-15 17:51, Andy Shevchenko wrote:
> On Thu, Jul 15, 2021 at 7:49 PM kernel test robot <lkp@intel.com> wrote:
>> I love your patch! Yet something to improve:
> 
> Definitely!
> 
>> All errors (new ones prefixed by >>):
>>
>>>> drivers/clk/rockchip/clk.c:27:10: fatal error: clk-fractional-divider.h: No such file or directory
>>        27 | #include "clk-fractional-divider.h"
>>           |          ^~~~~~~~~~~~~~~~~~~~~~~~~~
>>     compilation terminated.
> 
> Indeed. No idea how to compile-test this on x86.
> Let me see what I can do to avoid other issues.

Ha, the individual SoC-specific parts have COMPILE_TEST support, but the 
top-level COMMON_CLK_ROCKCHIP doesn't. That could probably be fixed.

Otherwise, you can always grab a toolchain from [1] (if your distro 
doesn't offer one already) and cross-compile - defconfig for arm64 or 
multi_v7_defconfig for arm should cover it.

Robin.

[1] https://cdn.kernel.org/pub/tools/crosstool/

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
