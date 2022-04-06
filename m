Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08B39C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Apr 2022 02:27:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dajY8tQPWHSLoq8YFaDl3y4c8lsn8nI+6OJkob9eCz0=; b=r/KztGdn7jFKcp
	kZK/Zm8YVk0LRQdvLnfBpbNOSNtNhtLzYrh2ac4AnxiDYVxNCWxrIhjxncwFOWoDL2B6XdW7Ad5uN
	xp9pqC8sLdkZHlXyEMHemMiaH9cceaYXCk8Gwg+PLDEP+26nuiLEzXUzqiykhnYLwADs8o3ZmOrQR
	Kn8asJi5TphWpqWuv+Z+HFD19Q157sjA4gLYVAhhv5+ohFMlH4bq3LixcCNJC0oxYtqhmb9faOdDn
	HojcLkHzAAyrNfeeRVEcUNpK+V0630Uaj3AH+eZwBul5qPbiM1vhk5jmOeKi1q+JXjwZapcjP6VkB
	+AKqDRXkMAdl4ASUjXpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nbvNs-003Q0x-1r; Wed, 06 Apr 2022 02:27:00 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbvNe-003Pwk-Ga
 for linux-rockchip@lists.infradead.org; Wed, 06 Apr 2022 02:26:47 +0000
Received: by mail-ej1-x634.google.com with SMTP id n6so1321354ejc.13
 for <linux-rockchip@lists.infradead.org>; Tue, 05 Apr 2022 19:26:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wVrhTvL07JA+qLuxrHPB76KlfjN/HKd1U84mtNSDmA0=;
 b=T0BGJvEhCp1XVdquKEt/pKpKuXICocX/83Jn1wmpWHLF+zAcgvEjroM6jN40LltZzX
 eMGubAQqVa1BAfUAJ6zJ44VHTiXyP35A/O3aT2a9JHsAVd9eFDNtGArHLbyUm08Qfrok
 /pQJpFIXc2NeHopH7wDHcDYOA8JpjD92gDXmQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wVrhTvL07JA+qLuxrHPB76KlfjN/HKd1U84mtNSDmA0=;
 b=E/vk+1E4GgNHa3pXe4sTSeXc4yUSE40jt97CXrSzPNxlaFr9L4+znmnNKU9/cXyaeF
 bH5+sWaboDHCX1eDE7ncuKm7De4tf7pDYiuk8V2eHvGxETQrmOYQUDf1U9Zyxy399Wnj
 x8P9yZ7Y22ANG1VTe8LdmzIvp4+GQhybCN+1rEGTLDYRezzXy1aVgINLBPLZXMQUMYPa
 +yYP+Y2e27FGw6xasmO+tYnhaUZxuXwkU6L2bXKVl7teUIoBtjw3l/B8SYq27pysbanO
 HmZZ2ia8ZNVHwzvjk/gWaCGoLV6AJvjAimu/hlAtoguwu+5GRIPd3hNokeYwk9TpReDz
 kTLg==
X-Gm-Message-State: AOAM532NNV3ibeuCZDjZSP8Z1x7b5JfqSx+oFO4iY3u4ZRWX82Xr6rcp
 wmbe5LNNf44qLwxcELaPmJV/Kdk5VaNf/dOh678=
X-Google-Smtp-Source: ABdhPJwia1DvkeahOOrupcT/fLwLcUb/3L3hwVcjvPFzyIc05NK96UHfoMZtVLj7avCNSm53UuG0lg==
X-Received: by 2002:a17:906:99c3:b0:6df:a289:ed3a with SMTP id
 s3-20020a17090699c300b006dfa289ed3amr6216040ejn.660.1649212003629; 
 Tue, 05 Apr 2022 19:26:43 -0700 (PDT)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com.
 [209.85.221.43]) by smtp.gmail.com with ESMTPSA id
 dd6-20020a1709069b8600b006df08710d00sm6208507ejc.85.2022.04.05.19.26.42
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 05 Apr 2022 19:26:42 -0700 (PDT)
Received: by mail-wr1-f43.google.com with SMTP id w4so1041370wrg.12
 for <linux-rockchip@lists.infradead.org>; Tue, 05 Apr 2022 19:26:42 -0700 (PDT)
X-Received: by 2002:adf:e591:0:b0:206:1202:214 with SMTP id
 l17-20020adfe591000000b0020612020214mr4789813wrm.342.1649212001620; Tue, 05
 Apr 2022 19:26:41 -0700 (PDT)
MIME-Version: 1.0
References: <20220406014842.2771799-1-briannorris@chromium.org>
 <20220405184816.RFC.2.I2d73b403944f0b8b5871a77585b73f31ccc62999@changeid>
In-Reply-To: <20220405184816.RFC.2.I2d73b403944f0b8b5871a77585b73f31ccc62999@changeid>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 5 Apr 2022 19:26:28 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Wdp5ax_MhGg-=ocSPS=cs1nUCRcz+E81Z2V-w_YVuzUw@mail.gmail.com>
Message-ID: <CAD=FV=Wdp5ax_MhGg-=ocSPS=cs1nUCRcz+E81Z2V-w_YVuzUw@mail.gmail.com>
Subject: Re: [RFC PATCH 2/2] PM / devfreq: rk3399_dmc: Block PMU during
 transitions
To: Brian Norris <briannorris@chromium.org>
Cc: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Heiko Stuebner <heiko@sntech.de>, 
 LKML <linux-kernel@vger.kernel.org>, Elaine Zhang <zhangqing@rock-chips.com>, 
 Linux PM <linux-pm@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220405_192646_582550_96272667 
X-CRM114-Status: GOOD (  13.39  )
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

Hi,

On Tue, Apr 5, 2022 at 6:49 PM Brian Norris <briannorris@chromium.org> wrote:
>
> See the previous patch ("soc: rockchip: power-domain: Manage resource
> conflicts with firmware") for a thorough explanation of the conflicts.
> While ARM Trusted Firmware may be modifying memory controller and
> power-domain states, we need to block the kernel's power-domain driver.
>
> If the power-domain driver is disabled, there is no resource conflict
> and this becomes a no-op.
>
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
>
>  drivers/devfreq/rk3399_dmc.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
