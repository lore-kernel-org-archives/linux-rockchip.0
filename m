Return-Path: <SRS0=pRwE=CY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C5FC43461
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Sep 2020 17:30:04 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2EBA220936
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Sep 2020 17:30:04 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="AjGQaHxB";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=google.com header.i=@google.com header.b="jndKH7zP"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2EBA220936
Authentication-Results: mail.kernel.org; dmarc=fail (p=reject dis=none) header.from=google.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dnNUNND4zCfC8+fRGt3MlXH80+lBFhOBBtObl0RhRVs=; b=AjGQaHxB5COYdq4uMIeLcErSN
	D3Su3fas+YEFJdsz3eJI4eyl0w0k1HmyvWrbHWLe4sc3YXjzAeuCJ8waMlIdRBLyP0JbbhSTSMMDv
	Zb4t+/UpGvLa96xEG41nzBvblY7BPmwRbRVgQ2vfT5/rK/f3QSdbzeifJdlcVLZ6elEhhLvaLefxM
	griXE7ePtbdKUhaF0ZbEc0IBGIxUADVaSyg298icD/LZiE/i/hPlFLvxvv+E9TW1vNag8CsnAtC4Q
	MSy1EL8m9X13VXnHSLp87iyYFIbYhbJyQgyW4Cd6NKBrGV1ko7UUdQnR1q/8rhQDkBDFVX/u8Dkdz
	dqjg7pEmg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kIEmB-0001pd-TK; Tue, 15 Sep 2020 17:29:56 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIEm9-0001oU-T3
 for linux-rockchip@lists.infradead.org; Tue, 15 Sep 2020 17:29:54 +0000
Received: by mail-ed1-x541.google.com with SMTP id g4so3887363edk.0
 for <linux-rockchip@lists.infradead.org>; Tue, 15 Sep 2020 10:29:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SlyX5qFvMN3KiboyllxLciToK2Eq4o7JzV2O6OwBIsw=;
 b=jndKH7zPjuT+Yy8CprIBxo1iTRcTUheSW1BJZMKuVBjDMhYq0L3y4DaJALchKU0bWV
 /DG6HGyrAEcz92/BEzogfoheUq2NoOqWgUDoFeeALWTSjU7t6cmDtPMvcMOFw3IakuWp
 gTraMfBlRb4r8fMQ5MmQhdTGA8v2635Dv7yTHmUW7c4FifhvFkeow+fmjxnyULOz9cNa
 h1HY7N4mglhjyAyOCRnfI4Cdt1T65RO98WM5J4PiOI3ffCzhLE0AI3h6weRFWLf3hKMm
 EKJFo5+5hvJXNo5Y4rFLV8xJX6gMUJcVSH99V+Jsd8X0JKE85PLJ2LMkkl1g2xhe0pJp
 aGxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SlyX5qFvMN3KiboyllxLciToK2Eq4o7JzV2O6OwBIsw=;
 b=RIcksaHHYrnjn6oQgVd3e42b3Hjs9DK7260bqu8TbTFaBFLQTLplmkW9h++v+IDzzU
 Gi6Uhx+Ab770cTm21BWHJZK5GjUHjZY6QMmBHjs1FSdz8CMj6YcI+XMlUveezIdD+w21
 ojXQH/7zQoVev3Q3Xwyx4jGVMhgMogFwpEq+hs0D3+b3KMGrqmUhz3VhTuRd1yF3Y8ES
 9SJL2OXsoC39Qw5Ege1C01DhNtnzLImsaximn+q9mo16siEZZL9qfPO80istf8lJSF8f
 O2rIxGu5R/dXQ4gHN9dYqREqkyewTECFkFIqvfFUnd62OnK2RXnRzBYkUWLvF7EDLTbI
 0b3A==
X-Gm-Message-State: AOAM531/iOq6WN66TIMHdgJmncgV7/XMIs94lNxXrYsXUNdlCju+o4TW
 nIjORllItiBSanc5mqj/HqhyZTm2hmF6YhKjGQ24Gw==
X-Google-Smtp-Source: ABdhPJyTXQP46Cu/TV0meUS7Ki8Jvai2uP0B7f5/avU/VxUKH5b+mSAJAXEN/96XuLNIG/fdWfb7f8IfAIdjG+sZPvs=
X-Received: by 2002:a50:e78f:: with SMTP id b15mr23870682edn.104.1600190989874; 
 Tue, 15 Sep 2020 10:29:49 -0700 (PDT)
MIME-Version: 1.0
References: <20200915162049.36434-1-colin.king@canonical.com>
In-Reply-To: <20200915162049.36434-1-colin.king@canonical.com>
From: Guenter Roeck <groeck@google.com>
Date: Tue, 15 Sep 2020 10:29:39 -0700
Message-ID: <CABXOdTcnAzFh81GuJ0Niqu6t2pF5AmwgFoXHf766XcXct_F+5g@mail.gmail.com>
Subject: Re: [PATCH] drm/rockchip: cdn-dp: fix sign extension on an int
 multiply for a u64 result
To: Colin King <colin.king@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200915_132954_041107_F59299B7 
X-CRM114-Status: GOOD (  18.68  )
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
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 David Airlie <airlied@linux.ie>, kernel-janitors@vger.kernel.org,
 Sandy Huang <hjc@rock-chips.com>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Guenter Roeck <groeck@chromium.org>, Sean Paul <seanpaul@chromium.org>,
 Daniel Vetter <daniel@ffwll.ch>, Chris Zhong <zyw@rock-chips.com>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Sep 15, 2020 at 9:20 AM Colin King <colin.king@canonical.com> wrote:
>
> From: Colin Ian King <colin.king@canonical.com>
>
> The variable bit_per_pix is a u8 and is promoted in the multiplication
> to an int type and then sign extended to a u64. If the result of the
> int multiplication is greater than 0x7fffffff then the upper 32 bits will
> be set to 1 as a result of the sign extension. Avoid this by casting
> tu_size_reg to u64 to avoid sign extension and also a potential overflow.
>
> Addresses-Coverity: ("Unintended sign extension")
> Fixes: 1a0f7ed3abe2 ("drm/rockchip: cdn-dp: add cdn DP support for rk3399")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

Reviewed-by: Guenter Roeck <groeck@chromium.org>

> ---
>  drivers/gpu/drm/rockchip/cdn-dp-reg.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/rockchip/cdn-dp-reg.c b/drivers/gpu/drm/rockchip/cdn-dp-reg.c
> index 9d2163ef4d6e..33fb4d05c506 100644
> --- a/drivers/gpu/drm/rockchip/cdn-dp-reg.c
> +++ b/drivers/gpu/drm/rockchip/cdn-dp-reg.c
> @@ -658,7 +658,7 @@ int cdn_dp_config_video(struct cdn_dp_device *dp)
>          */
>         do {
>                 tu_size_reg += 2;
> -               symbol = tu_size_reg * mode->clock * bit_per_pix;
> +               symbol = (u64)tu_size_reg * mode->clock * bit_per_pix;
>                 do_div(symbol, dp->max_lanes * link_rate * 8);
>                 rem = do_div(symbol, 1000);
>                 if (tu_size_reg > 64) {
> --
> 2.27.0
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
