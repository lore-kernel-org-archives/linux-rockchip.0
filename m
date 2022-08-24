Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FACDC32796
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Aug 2022 16:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tz/8yH5W8ijCiV9ucD37oZ2HIfixNKaG6F4QBKvD9BQ=; b=UMTGtZYiQvi7Jz
	OUCDuuyU6xTskU/teF3GHrH2G17zf/ezTi6DTmrpeGVT2klH/8UqEULrNhJZ+yswjgutMu5FK6ib/
	vBisFKKqIBzc5N3hp36+0OAoDCXrVuXNioakWScGqYsgm+ZfJ4Uc6bsgIHIvRiATlPQ80vzgZSO2h
	W0hci6fCSz8SIPNr9bpruDVf4wFwfqssmBrTScRiVCyKc6aW0Yid7ee9rVUZHlAwp3ZTEIqEvOPmI
	MsvKkidipC/dMA2O/BBFMtcntYLkTPo2T19oeFT4NGRUjl82xmolck83VA7s80gJD8QpRKE0fKhRQ
	U6I68AHpBa2qGoriPYYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQsvE-00EHbi-GI; Wed, 24 Aug 2022 16:08:04 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQsvB-00EHYT-Ki
	for linux-rockchip@lists.infradead.org; Wed, 24 Aug 2022 16:08:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 91ED6106F;
	Wed, 24 Aug 2022 09:08:01 -0700 (PDT)
Received: from [10.57.15.180] (unknown [10.57.15.180])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 661923FAF5;
	Wed, 24 Aug 2022 09:07:56 -0700 (PDT)
Message-ID: <a279a697-6960-c517-8984-335aa207126a@arm.com>
Date: Wed, 24 Aug 2022 17:07:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH 1/2] drm/rockchip: dw_hdmi: relax mode_valid hook
Content-Language: en-GB
To: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, kernel@pengutronix.de,
 linux-rockchip@lists.infradead.org
References: <20220822152017.1523679-1-s.hauer@pengutronix.de>
 <20220822152017.1523679-2-s.hauer@pengutronix.de>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20220822152017.1523679-2-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220824_090801_788197_49D50CA9 
X-CRM114-Status: GOOD (  21.28  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2022-08-22 16:20, Sascha Hauer wrote:
> The driver checks if the pixel clock of the given mode matches an entry
> in the mpll config table. The frequencies in the mpll table are meant as
> a frequency range up to which the entry works, not as a frequency that
> must match the pixel clock. Return MODE_OK when the pixelclock is
> smaller than one of the mpll frequencies to allow for more display
> resolutions.

Has the issue been fixed that this table is also used to validate modes 
on RK3328, which doesn't even *have* the Synopsys phy? Last time I 
looked, that tended to lead to complete display breakage when the proper 
phy driver later decides it doesn't like a pixel clock that mode_valid 
already said was OK.

The more general concern is that these known-good clock rates are good, 
but others may not be even when nominally supported, which I suspect is 
the dirty secret of why it was implemented this way to begin with. I 
would really really love this patch so my RK3399 board can drive my 
1920x1200 monitor at native resolution, but on the other hand my RK3288 
box generates such a crap 154MHz clock for that mode that - unless 
that's been improved in the meantime too - patch #2 might be almost be 
considered a regression if it means such a setup would start defaulting 
to an unusably glitchy display instead of falling back to 1920x1080 
which does at least work perfectly (even if the slightly squished aspect 
ratio is ugly).

Thanks,
Robin.

> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>   drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> index c14f888938688..b6b662dabedc6 100644
> --- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> @@ -251,7 +251,7 @@ dw_hdmi_rockchip_mode_valid(struct dw_hdmi *hdmi, void *data,
>   	int i;
>   
>   	for (i = 0; mpll_cfg[i].mpixelclock != (~0UL); i++) {
> -		if (pclk == mpll_cfg[i].mpixelclock) {
> +		if (pclk <= mpll_cfg[i].mpixelclock) {
>   			valid = true;
>   			break;
>   		}

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
