Return-Path: <SRS0=PFct=EI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ADF5C2D0A3
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2020 21:19:29 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D7FAD207BB
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2020 21:19:28 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="2vmxwjp4";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Q/xEZruW"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D7FAD207BB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-ID:MIME-Version:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Rh8FFe1Ju724gwXgrIOmTAAPagPbsIY5jK9CW/Z31RU=; b=2vmxwjp4iQTJY8iJM2FyTKoC3
	haNBv5joFAeujZa5EB6slRku0H1DCZj6agXkYFxzLqOJDHyZMlt9U43Zv98arF+qbGwmNHwDp1m5A
	d6R8qAX3IH7d3FVD+1X+a+4/OHnu3I2QKvnJPaDA5Aa+hjKxiZ7B5Ra4spYScgPPHtTb0ydFDSOwk
	boDlKwsuZu4/WuZQcInBEkAWQSc/BAvSdmBlhiPguKohKFgGLiygMO07870xURo1NsTKFsfRdmpxC
	JrXx+yq5jL7CuUgqwOAJamOdg1vot1ZuS/Jr+nJyCP//eda7Kc0DZcw6OPPuofrymZxkD8M1d9yBf
	TLknb2aJw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kZhEU-0003jW-59; Mon, 02 Nov 2020 21:19:18 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kZhES-0003j5-Ao
 for linux-rockchip@lists.infradead.org; Mon, 02 Nov 2020 21:19:17 +0000
Received: by mail-wm1-x343.google.com with SMTP id 205so3091094wma.4
 for <linux-rockchip@lists.infradead.org>; Mon, 02 Nov 2020 13:19:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:mime-version:message-id:in-reply-to
 :references:user-agent:content-transfer-encoding;
 bh=rLTI241sVjhiO7RP9cDBlUJjxn2rihkXPkzD1Jd+Bts=;
 b=Q/xEZruWERaO15T1+BgSgQa2GUi3DBA9ROebiitGqeLG3MVv+J/tHmzU6XiX5lItIu
 Q5downlkHfMUn1EsLKoQSPof1DdrktFQl41u9IhfX3eYrjeK5WeKyWguGGNBoVMAlcfR
 aUqU3GBC0/p2o2UY74kO+YlCRuo1hI6Pavmy9ftlnjQ/uiYJprGhsog+SUlJArSX3Fex
 T9Q7ZN+7zrYaolwMcneXywKzSEeMti68XVmwZtn14gc+PTqX7nI2pJr/WP/jTxWd1CcR
 Yv2+tJ5Nh727qAYSaV/BGjz3F9EfzzPwf/O34tK0IcTQ3zK2aa9uXkrHJourBVpfeqWf
 yh6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:mime-version:message-id
 :in-reply-to:references:user-agent:content-transfer-encoding;
 bh=rLTI241sVjhiO7RP9cDBlUJjxn2rihkXPkzD1Jd+Bts=;
 b=A0Oy6PdK0WH/kyWL1us6clDgzSEJhByyJQUDDhb67L6ZRCCFtDgZYoQt1esj6N1hz+
 A3IRVWXPLi5wxaUU/2VJQKvLMdxFsFCeH/IA5yzXzH+/WABCwC3VTXlDe6EERiofSbvd
 B7RwEMmQEGfYnTOY7w9nNFYIL7IKYEVooYv+XoPMdcj8Heyh5KiEV4RLb+2uCfCMFji3
 Gf/MbSjne+WZ5c4J+LPvz2GS4qwzB8AXUErtlz8NYuwWXmy+GaNG0w6GOQRhrKUIOgyJ
 ClxnuHwxokHLVZuG7UTVfLl12SsJMfXDl/nz/Ywm5cHcvbIufD5YnvlwYflOhRxlUqSU
 sCqQ==
X-Gm-Message-State: AOAM533BCoP7HKRQ5Hwji0pX7uDnfKAXKcOeHWgY0LPc3B5HDWX52FJ7
 5p0qwISuFqdOLL1oYvQW5XY=
X-Google-Smtp-Source: ABdhPJzTFxUyZFboCv0wmPw28uElDioJanriCAD082uyFacPBW5Vgf51BXGTkSDYLyuKYLyx4EZPXw==
X-Received: by 2002:a1c:4c05:: with SMTP id z5mr100925wmf.122.1604351955474;
 Mon, 02 Nov 2020 13:19:15 -0800 (PST)
Received: from localhost ([170.253.46.69])
 by smtp.gmail.com with ESMTPSA id b7sm22873824wrp.16.2020.11.02.13.19.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Nov 2020 13:19:14 -0800 (PST)
From: Vicente Bergas <vicencb@gmail.com>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [regression, bisected] no MMC on rk3399-gru-kevin with 5.10-rc1
Date: Mon, 02 Nov 2020 22:19:12 +0100
MIME-Version: 1.0
Message-ID: <f7ed6286-05c0-465a-add4-d3bb458432ed@gmail.com>
In-Reply-To: <CAD=FV=U1arH7-VRL_Xevvu_=1A9XKjqf4rZ4JqOM0ZUtWP716w@mail.gmail.com>
References: <59a5676c-cbf7-4a8e-ace1-f079e09d21a8@gmail.com>
 <CAPDyKFocOzHfaZyGPJbUDMiTrV1DoEUjdu7TMN5B1wPjBiBS2Q@mail.gmail.com>
 <CAD=FV=U1arH7-VRL_Xevvu_=1A9XKjqf4rZ4JqOM0ZUtWP716w@mail.gmail.com>
User-Agent: Trojita
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201102_161916_445715_11562BD6 
X-CRM114-Status: GOOD (  16.80  )
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
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-mmc@vger.kernel.org, Jaehoon Chung <jh80.chung@samsung.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Thierry Reding <treding@nvidia.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Uffe, Doug,

On Monday, November 2, 2020 4:38:38 PM CET, Doug Anderson wrote:
> Hi,
>
> On Mon, Nov 2, 2020 at 7:02 AM Ulf Hansson <ulf.hansson@linaro.org> wrote:
>> 
>> On Fri, 30 Oct 2020 at 23:04, Vicente Bergas <vicencb@gmail.com> wrote:
>>> 
>>> Hi,
>>> commit 21b2cec61c04bd175f0860d9411a472d5a0e7ba1
>>> mmc: Set PROBE_PREFER_ASYNCHRONOUS for drivers that existed in v4.4
>>> broke booting rk3399-gru-kevin.
>>> 
>>> The kernel waits forever for the root device to appear on MMC.
>> 
>> Waiting forever sounds weird to me.

The behaviour is expected because of the "rootwait" kernel parameter.

>>> Removing the line containing PROBE_PREFER_ASYNCHRONOUS in
>>> drivers/mmc/host/dw_mmc-rockchip.c fixes the issue.
>> 
>> I am guessing when we enable async probe, we reveal some other
>> existing error. Or, perhaps the rootfs mount point become wrong?
>> 
>> Would it be possible to share a boot log (before/after) with some
>> driver probe debugging enabled?
>
> Are you sure you haven't just got your MMC block IDs shuffled now?
> Perhaps a careful application of the newly-supported MMC aliases would
> help fix things?  When we landed, Ulf pointed to:
>
> [1]
> https://patchwork.kernel.org/patch/11747669/
> https://patchwork.kernel.org/patch/11747671/
>
> The async probe can cause shuffling of block IDs which were previously
> quite stable though never guaranteed (everyone always yelled loudly
> "use UUIDs").

I've got UUIDs everywhere (fstab and on other machines without root on MMC)
except in the "root" kernel parameter in rk3399-gru-kevin and, as you say,
the device path changed causing the issue.

So, false alarm, this is not a bug.
Still, those MMC aliases providing reliable device naming are really
welcome.

Regards,
  Vicente.

> I will also note that I just put v5.10-rc1 on a rk3399-gru-kevin and
> confirmed that it booted up OK.
>
> -Doug


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
