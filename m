Return-Path: <SRS0=IWi6=FF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD7E4C64E7B
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Dec 2020 16:05:39 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5EE192222A
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Dec 2020 16:05:39 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="eeiyAd8u";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="S26NKxDQ"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5EE192222A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tCegbG5iwZ81WYA/iFRIdhmq0WLIPsKtjVUzAtsIOKU=; b=eeiyAd8u16ypSYEGZn+IwziaF
	UywLIVO3vlPWhklYLjmr6XZB6FgpWT3TdkEp3hQ3Lj7IpWXQjsg88LN0+rbW3csxtir5oecYs5MML
	wZNOY/mrXvUk570esEsn18Leeo4W5lE8kKEdbcYmGp4f8G0qtH+taiIAZdk9jVTVQGzTshWabYf1o
	ROioiDeOq1hnv8nCYTHnzXPVXOQM0MydHaK8jBH7Rsj/pg2Ksb+xRYlBJpQt5MOIrEVeN/IyKJJR8
	rkLMaVNLTsC69Ds/CBKWohw843MIA3/6KlZaxM0F4pV82zE8UWRlYPUCD1KDXDHD7z8VveL18BDy6
	Vl4zpGSnw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kk89o-0007c7-0D; Tue, 01 Dec 2020 16:05:36 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kk89l-0007ag-QK
 for linux-rockchip@lists.infradead.org; Tue, 01 Dec 2020 16:05:34 +0000
Received: by mail-vs1-xe42.google.com with SMTP id x26so1188799vsq.1
 for <linux-rockchip@lists.infradead.org>; Tue, 01 Dec 2020 08:05:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OuJ+iD6xtM+VMtARqwefKzhnGpcfRpOS7XnUWAe2JEY=;
 b=S26NKxDQQMuZxt+1oFstIH0f+WpADwmUSiWsrMAdTuElMG8Tk8kY59fXqelvjthP2f
 8db5WERWrK0YCQ4FqlHnBMH/ZATTA6HxEq1tiNLnrLiqZSw/17r/KXgIXCoHSH+Gy1Ww
 SMYLtA7y7XlkxaPsi0YpsQTcdqtJX+8n/g450=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OuJ+iD6xtM+VMtARqwefKzhnGpcfRpOS7XnUWAe2JEY=;
 b=ck+du/uTN9onYUX3P6Z1fsi4TM1v+rAtk356gbLfU5Htw5og5gxacsiZC6BBQe8d49
 1WSUt4KEBo6LTew9vYQtbbJSNRxBvxvYtbnTzD7+/cgYSPWZQM7QJxgRUOxTzV2HXePS
 baJCSvEUvEbONCPBt2osXW/nYMU48StyvP4ypvsUoth+PWDV3lfiJg7R3ou9v8Q6lT0K
 63RVRYP1nAr/IdO/4V/XNWEx5y6pAYzr3UcN3FtS/Qaj2SrEwh2HaPm1X1mcP5qTkxMV
 0xL1y7Z1Zhxub5UHJbw1tKCdZN1ivFBQX4jxrovsomwfk/QIOVew5syo7NVCahPURg4G
 pbJQ==
X-Gm-Message-State: AOAM5314wWeWo3yNjlBHLy91ixo74BmiiuaynkL3y6cf2ZklEg+i4UgU
 DG5ij7y2bFeiX9YSft13uCHafSVATnTl5Q==
X-Google-Smtp-Source: ABdhPJwRm++kSvRDp0MRj3cQ5dpgUQYb+attJh3JcZRkC/W0DcXvB/vIIlX/SYvFkDRzP7u5GoDdbg==
X-Received: by 2002:a05:6102:2148:: with SMTP id
 h8mr3323020vsg.12.1606838731280; 
 Tue, 01 Dec 2020 08:05:31 -0800 (PST)
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com.
 [209.85.222.45])
 by smtp.gmail.com with ESMTPSA id g194sm6566vkf.48.2020.12.01.08.05.30
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 01 Dec 2020 08:05:30 -0800 (PST)
Received: by mail-ua1-f45.google.com with SMTP id n18so729433ual.9
 for <linux-rockchip@lists.infradead.org>; Tue, 01 Dec 2020 08:05:30 -0800 (PST)
X-Received: by 2002:a9f:3dcc:: with SMTP id e12mr3008143uaj.121.1606838729851; 
 Tue, 01 Dec 2020 08:05:29 -0800 (PST)
MIME-Version: 1.0
References: <20201201031015.23314-1-chris.ruehl@gtsys.com.hk>
In-Reply-To: <20201201031015.23314-1-chris.ruehl@gtsys.com.hk>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 1 Dec 2020 08:05:18 -0800
X-Gmail-Original-Message-ID: <CAD=FV=Wyk9BYR3cnfm=9tBh=XBxEP=udMTeaEYPzAqa5m8x=yg@mail.gmail.com>
Message-ID: <CAD=FV=Wyk9BYR3cnfm=9tBh=XBxEP=udMTeaEYPzAqa5m8x=yg@mail.gmail.com>
Subject: Re: [PATCH] phy: rockchip-emmc: emmc_phy_init() always return 0
To: Chris Ruehl <chris.ruehl@gtsys.com.hk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201201_110533_901242_0B59008D 
X-CRM114-Status: GOOD (  21.50  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 LKML <linux-kernel@vger.kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Vinod Koul <vkoul@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

On Mon, Nov 30, 2020 at 7:10 PM Chris Ruehl <chris.ruehl@gtsys.com.hk> wrote:
>
> rockchip_emmc_phy_init() return variable is not set with the error value
> if clk_get() failed. The debug message print 0 on error and the function
> always return 0.
> Fix it using PTR_ERR().
>
> Fixes: 52c0624a10cce phy: rockchip-emmc: Set phyctrl_frqsel based on card clock
>
> Signed-off-by: Chris Ruehl <chris.ruehl@gtsys.com.hk>
> ---
>  drivers/phy/rockchip/phy-rockchip-emmc.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/phy/rockchip/phy-rockchip-emmc.c b/drivers/phy/rockchip/phy-rockchip-emmc.c
> index 48e2d75b1004..75faee5c0d27 100644
> --- a/drivers/phy/rockchip/phy-rockchip-emmc.c
> +++ b/drivers/phy/rockchip/phy-rockchip-emmc.c
> @@ -253,6 +253,7 @@ static int rockchip_emmc_phy_init(struct phy *phy)
>          */
>         rk_phy->emmcclk = clk_get(&phy->dev, "emmcclk");
>         if (IS_ERR(rk_phy->emmcclk)) {
> +               ret = PTR_ERR(rk_phy->emmcclk);

I'm pretty sure your patch isn't correct and it would break use cases.
Is it fixing some bug that you're aware of, or you found it via code
inspection?

Specifically:

* The big comment block in this function says that the clock is
optional and that we're ignoring errors.

* The printout in this function is "dbg" level, which is an extra
indication that we aren't concerned with these errors.

Arguably the code could be made better.  If you want to improve it,
you could check for just the error we expect if the clock isn't
specified (probably -ENODEV, but you should check) and treat all other
failures as real errors.


-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
