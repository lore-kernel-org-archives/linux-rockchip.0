Return-Path: <SRS0=jpTb=OR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 210E5C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Sep 2021 10:18:28 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BD4F060F6C
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Sep 2021 10:18:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org BD4F060F6C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=96JInnWYY8rkAztXkGSIacvJcwtWVO8D7S7KWYLmadM=; b=gXe2nkYTgr9EBrJKpi4IjkVRxX
	DMsR/Lwsom/ruiMbK9kxOxo+1iDjSSWQ4mqG9MYzq1sKHrKyRsuP+2BAEZnYpSBStW6/I9pLK6kD9
	vEpOkMK/0APt1q1YUhyvHLXwQwTfqjYKTlLaO7Czu5TXMexJRcIjN5h2XvB3BLGRFrf/Zqmx8/pvF
	w/6qe4UCQEv4A9K+IK9yYg6kM4C7YLybaaXVigR+aeGzuquE3zKWFpS4xGgOcmOL27GDzT2slCV67
	ipM1t4nhU4Z+667YLmYY+620I/TorXjwWK7fNZhbKFlk0+JlEH8QdyeTMUq7DHmTqC3SE0b4BaNPD
	AaZJk7Xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mUniJ-002Gl5-L5; Mon, 27 Sep 2021 10:18:23 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mUni7-002Gjw-EA; Mon, 27 Sep 2021 10:18:13 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: gtucker) with ESMTPSA id B21C91F427CE
Subject: Re: [PATCH v8 9/9] pinctrl/rockchip: drop the gpio related codes
To: Jianqun Xu <jay.xu@rock-chips.com>,
 Linus Walleij <linus.walleij@linaro.org>
Cc: bgolaszewski@baylibre.com, robh+dt@kernel.org,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 Collabora Kernel ML <kernel@collabora.com>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>
References: <20210816011948.1118959-1-jay.xu@rock-chips.com>
 <20210816012146.1119289-1-jay.xu@rock-chips.com>
From: Guillaume Tucker <guillaume.tucker@collabora.com>
Message-ID: <f13ff971-8af2-be9b-fa5d-7913c0ff1351@collabora.com>
Date: Mon, 27 Sep 2021 12:18:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20210816012146.1119289-1-jay.xu@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210927_031811_670618_BFBBCA20 
X-CRM114-Status: GOOD (  16.97  )
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

Hi Jianqun,

On 16/08/2021 02:21, Jianqun Xu wrote:
> With the patch to separate the gpio driver from the pinctrl driver, now
> the pinctrl-rockchip can drop the gpio related codes now.
> 
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> ---
> v8:
>  - none
> v7:
>  - none, from v1
> 
>  drivers/pinctrl/pinctrl-rockchip.c | 645 +----------------------------
>  1 file changed, 17 insertions(+), 628 deletions(-)

[...]

Please see the bisection report below about a boot failure on
rk3288-veyron-jaq which is pointing to this patch.  The issue
appears to be present on mainline but not on linux-next as of
next-20210924.

Reports aren't automatically sent to the public while we're
trialing new bisection features on kernelci.org but this one
looks valid.

Some more details can be found here:

  https://linux.kernelci.org/test/case/id/614f19a33f5497c2bc99a2df/

Please let us know if you need help debugging the issue or if you
have a fix to try.

Best wishes,
Guillaume


GitHub: https://github.com/kernelci/kernelci-project/issues/58

-------------------------------------------------------------------------------

* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* This automated bisection report was sent to you on the basis  *
* that you may be involved with the breaking commit it has      *
* found.  No manual investigation has been done to verify it,   *
* and the root cause of the problem may be somewhere else.      *
*                                                               *
* If you do send a fix, please include this trailer:            *
*   Reported-by: "kernelci.org bot" <bot@kernelci.org>          *
*                                                               *
* Hope this helps!                                              *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

mainline/master bisection: baseline.login on rk3288-veyron-jaq

Summary:
  Start:      7d42e9818258 Merge tag 'gpio-fixes-for-v5.15-rc3' of git://git.kernel.org/pub/scm/linux/kernel/git/brgl/linux
  Plain log:  https://storage.kernelci.org/mainline/master/v5.15-rc2-159-g7d42e9818258/arm/multi_v7_defconfig+CONFIG_EFI=y+CONFIG_ARM_LPAE=y/gcc-8/lab-collabora/baseline-rk3288-veyron-jaq.txt
  HTML log:   https://storage.kernelci.org/mainline/master/v5.15-rc2-159-g7d42e9818258/arm/multi_v7_defconfig+CONFIG_EFI=y+CONFIG_ARM_LPAE=y/gcc-8/lab-collabora/baseline-rk3288-veyron-jaq.html
  Result:     9ce9a02039de pinctrl/rockchip: drop the gpio related codes

Checks:
  revert:     PASS
  verify:     PASS

Parameters:
  Tree:       mainline
  URL:        https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
  Branch:     master
  Target:     rk3288-veyron-jaq
  CPU arch:   arm
  Lab:        lab-collabora
  Compiler:   gcc-8
  Config:     multi_v7_defconfig+CONFIG_EFI=y+CONFIG_ARM_LPAE=y
  Test case:  baseline.login

Breaking commit found:

-------------------------------------------------------------------------------
commit 9ce9a02039de72ec8af1bd4bff14f1780337ffcc
Author: Jianqun Xu <jay.xu@rock-chips.com>
Date:   Mon Aug 16 09:21:46 2021 +0800

    pinctrl/rockchip: drop the gpio related codes
    
    With the patch to separate the gpio driver from the pinctrl driver, now
    the pinctrl-rockchip can drop the gpio related codes now.
    
    Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
    Link: https://lore.kernel.org/r/20210816012146.1119289-1-jay.xu@rock-chips.com
    Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
