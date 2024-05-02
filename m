Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67AD4C04FFE
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 May 2024 11:29:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CogMij7eTFWU73t7lPLQRoyTk8rxCPlFQ0W8fO5HO4c=; b=CMiUG5Rtq0OQ5r
	S0bO+V1K6flgovtBLS3xRf9+YWbe6WUTMqFbc4DKqs9sVaA5RR13yzLr8RVqJTZOMMcZYfa1FIOtB
	zThToJg8unfc0I2xWqajHoiNV41oMh6UuvC0/bzpCy3dU0yB7pG8cXT2m6ZwKC4L1O22ZINaolsyf
	kpd5hDoJAwyy14JsCoUbR6gj9EGr42lDKUnY0EyYbUsFRLJdCKmsO1s4Kw8XPO+rxmzXvn4F31gc5
	k85CpO1EyzjXgqQ2WzthxIK8MqB1gWwGkw8PNtLGcb0hQQKGrnfRXrG0i2m1IqwSTGImRxMaYhIaA
	JssyK1B85xhNrOfs+8bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2UdG-0000000CWi5-2Vq8;
	Thu, 02 May 2024 11:29:46 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2UdD-0000000CWh5-2QCB;
	Thu, 02 May 2024 11:29:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 6931461A14;
	Thu,  2 May 2024 11:29:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8390CC113CC;
	Thu,  2 May 2024 11:29:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714649382;
	bh=sFaNlOmGEeVD3nYHw0uf/YVM65vnE+n2alDOQR8Xux8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ESlSRyPfuggpHlVgObOH64jFR9a8f9GIZCEhVT8gPmkobRlLYwAUiNRPfLbKhZwzW
	 v7ynMJzCeC3YDHZQGy1Q/mS6f3TG5Qn8hnFAIHQSm32cuRdykxx6YOM7yco+HfAKf4
	 SHaKiTPRAfmytRm0NPO+SKEUr04uz4iJG4jgPSVoxiiZTOrGtBPL9YTrVMvZjbNoNA
	 hpfZSUbfu5x4dgJf3pv98nxFDT5uDOnpz3xK1za+KYGS+AiHdyoHiFFSauA8N8KIVL
	 WWTfVYzc0t6o6VrvByrKuloKxF38CiRBT0qqJVhTi3bXJyhPvG5z1dB5AGwXshKh5j
	 kw6XFUPZ5oEXg==
Date: Thu, 2 May 2024 13:29:38 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-i2c@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-mips@vger.kernel.org, linux-omap@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH 00/15] i2c: use 'time_left' with wait_for_*
Message-ID: <6zrly2hk2vqljiuo3niehym74pqdgfv77fzjb63shgg4iiwhnt@zcnrqrke663b>
References: <20240427203611.3750-1-wsa+renesas@sang-engineering.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240427203611.3750-1-wsa+renesas@sang-engineering.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240502_042943_738855_2D8B190A 
X-CRM114-Status: GOOD (  15.35  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Wolfram,

On Sat, Apr 27, 2024 at 10:35:52PM +0200, Wolfram Sang wrote:
> There is a confusing pattern in the kernel to use a variable named 'timeout' to

there was a little checkpatch warning here for the line being
over 75 characters, but I went ahead anyway and pushed the whole
series to i2c/i2c-host.

Thanks,
Andi

> store the result of wait_for_*() causing patterns like:
> 
>         timeout = wait_for_completion_timeout(...)
>         if (!timeout) return -ETIMEDOUT;
> 
> with all kinds of permutations. Use 'time_left' as a variable to make the code
> self explaining.
> 
> This is the I2C part of a tree-wide series. The rest of the patches can
> be found here (slightly WIP):
> 
> git://git.kernel.org/pub/scm/linux/kernel/git/wsa/linux.git i2c/time_left
> 
> Because these patches are generated, they need manual audit. So, I will
> send them step by step. This is part 1 and also a call for opinions if
> this is a desirable change. But at least in the I2C realm, I really want
> to have it proper.
> 
> Build bot is happy with these patches and I also compile tested them
> (except two). No functional changes intended.
> 
> Wolfram Sang (15):
>   i2c: amd-mp2-plat: use 'time_left' variable with
>     wait_for_completion_timeout()
>   i2c: digicolor: use 'time_left' variable with
>     wait_for_completion_timeout()
>   i2c: exynos5: use 'time_left' variable with
>     wait_for_completion_timeout()
>   i2c: hix5hd2: use 'time_left' variable with
>     wait_for_completion_timeout()
>   i2c: imx-lpi2c: use 'time_left' variable with
>     wait_for_completion_timeout()
>   i2c: omap: use 'time_left' variable with wait_for_completion_timeout()
>   i2c: st: use 'time_left' variable with wait_for_completion_timeout()
>   i2c: stm32f4: use 'time_left' variable with
>     wait_for_completion_timeout()
>   i2c: stm32f7: use 'time_left' variable with
>     wait_for_completion_timeout()
>   i2c: synquacer: use 'time_left' variable with
>     wait_for_completion_timeout()
>   i2c: jz4780: use 'time_left' variable with
>     wait_for_completion_timeout()
>   i2c: qcom-geni: use 'time_left' variable with
>     wait_for_completion_timeout()
>   i2c: rk3x: use 'time_left' variable with wait_event_timeout()
>   i2c: s3c2410: use 'time_left' variable with wait_event_timeout()
>   i2c: pxa: use 'time_left' variable with wait_event_timeout()
> 
> -- 
> 2.43.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
