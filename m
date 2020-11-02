Return-Path: <SRS0=PFct=EI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC068C388F2
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2020 15:02:49 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 371E92072C
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2020 15:02:49 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="UShNyGU+";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vszG8vy6"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 371E92072C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=25ZwMW5JkEriPOoA07T8x0u88USwpF6i9yr26SeeuZg=; b=UShNyGU+asZ71ET5eub1JaMMU
	Jd/6FEBu5XoOirJanNIykK5yHbpKR9HkZZYwDaNe5T423vX9b5oyvWbXY7AhqE55lVxwsBMFMgMIQ
	oZQ/eoc3xfIC+CXzxDiFMJrgzaVaq3R2HGI43t0Lfm4m4dbfFOwD7Emx7GzEflbEuDiYQINSp1rYY
	0Onp5wYmZD4B6elrKqbSetvEooEilLkuCWg0ZLi1fS1xw7USvqlAMBxXaLi7OmTjkbCHW6y3mN1l7
	T3yDwEFD5ijsH/ACqkmqOMyF/i0dAZEUT/Et+X2ueix//zb9KZYSUXijxoVxQwk+Qw/SOWCWYz+0S
	aRPH3/b+g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kZbM3-0006Xl-EF; Mon, 02 Nov 2020 15:02:43 +0000
Received: from mail-vs1-xe34.google.com ([2607:f8b0:4864:20::e34])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kZbM0-0006XJ-FS
 for linux-rockchip@lists.infradead.org; Mon, 02 Nov 2020 15:02:41 +0000
Received: by mail-vs1-xe34.google.com with SMTP id u7so7586185vsq.11
 for <linux-rockchip@lists.infradead.org>; Mon, 02 Nov 2020 07:02:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gs96h025HZv6zxfLuQ7GPYuN1g7s81PAtEbZmQJN9Lw=;
 b=vszG8vy6AU5KXzG6+gdbGthzztozuNN71YIhOKk5pKVlqqyJvKHO2UbG3QO+IDjbU3
 lvVbPO++HwE74xPSNbJ3oKSffKH4+jM/GZbBtyXtiPY7PAaqgCEYKdoSB/TdZISFotgr
 xW1JmwsfRIbYlMKayfm4599inE6uVt5JwiwpyaDEHBbZB8iXo8+bNRiD6YIH97nNcIP1
 Hfn57HhayYjFxF1/wOTM6q8Xh1FOKooTLXmdTMulTprdIkidniSoydcnaI+50ZecwHJ5
 U8IFfnqom1NanWXMpmZa/DBlOVmAIzUPyFKRKsn3OmFzD6t5rA7cI+gXe+LvzqDvcq2K
 eMWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gs96h025HZv6zxfLuQ7GPYuN1g7s81PAtEbZmQJN9Lw=;
 b=S+8CUaSdpg4euYXeQEPQaP7bYYeGlBhtsh9l4qLvAEVnu1ZotnFzbyoAAHkM8Qq9HJ
 kJX8y7wo7dKkQ8dBOArrHiWTRHFpEDAFq979lZ/8EiXgG+2xgxsfgq/t5hKPY+AOLDOT
 CII/5JrCUXGLp7hdPQnTuFGyvEne59mvdG7KeHJeCCDPzqPrr71xIcX9nuHXw5BwfZXY
 iJLZLr+/+I91M3zKcFnAF5mq7cVOAc/6RgxIW6vxDnVu1sxxH8pD2CvjoFp9FGKhv0U3
 +OF5WpXbzuCr3JJIgh5uND/efw7X80ed2BZHzKLe4M3X7/crrj9SCEc2FpzqTCwE2naY
 LLsg==
X-Gm-Message-State: AOAM530YXcM96UZ3n0lfIz+II+FHMuvSj4Ee7eUjNE86Gzpl72kGd4bC
 7ncDtGrmaMsGy45DSPjkiaee5mTw47uDLxxcXUTOYg==
X-Google-Smtp-Source: ABdhPJzBmFOst+ae5ltttYBa9PfDVFWaUh1XOmVWONToeZg5bYsVuquTqcFKv5fua9EN2fsE8dOyGeoGPKmL61VN938=
X-Received: by 2002:a67:ec9a:: with SMTP id h26mr14745308vsp.34.1604329356567; 
 Mon, 02 Nov 2020 07:02:36 -0800 (PST)
MIME-Version: 1.0
References: <59a5676c-cbf7-4a8e-ace1-f079e09d21a8@gmail.com>
In-Reply-To: <59a5676c-cbf7-4a8e-ace1-f079e09d21a8@gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 2 Nov 2020 16:02:00 +0100
Message-ID: <CAPDyKFocOzHfaZyGPJbUDMiTrV1DoEUjdu7TMN5B1wPjBiBS2Q@mail.gmail.com>
Subject: Re: [regression, bisected] no MMC on rk3399-gru-kevin with 5.10-rc1
To: Vicente Bergas <vicencb@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201102_100240_744702_D8DED3C8 
X-CRM114-Status: GOOD (  10.85  )
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Douglas Anderson <dianders@chromium.org>,
 Jaehoon Chung <jh80.chung@samsung.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Thierry Reding <treding@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, 30 Oct 2020 at 23:04, Vicente Bergas <vicencb@gmail.com> wrote:
>
> Hi,
> commit 21b2cec61c04bd175f0860d9411a472d5a0e7ba1
> mmc: Set PROBE_PREFER_ASYNCHRONOUS for drivers that existed in v4.4
> broke booting rk3399-gru-kevin.
>
> The kernel waits forever for the root device to appear on MMC.

Waiting forever sounds weird to me.

> Removing the line containing PROBE_PREFER_ASYNCHRONOUS in
> drivers/mmc/host/dw_mmc-rockchip.c fixes the issue.

I am guessing when we enable async probe, we reveal some other
existing error. Or, perhaps the rootfs mount point become wrong?

Would it be possible to share a boot log (before/after) with some
driver probe debugging enabled?

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
