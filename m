Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D5B4C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Mar 2022 19:31:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mpg/A5XYSDZt4OqxQG2THSH9Ye6ZYAwD+ss2alpqYFU=; b=3N5mWD7V7v5wnu
	5tyZzMMkOjXjVHosBGot5Ii+f8vLNnvPbS7uQhapMwXXMjbQYUJhLDMijGSGpSaY6ep4TCkdqN3Ee
	1So8bpqdFpnHDIfZNxmwe2esru4xvpMwBhEyYUFuAzen0DSq+4izsHiiO72WxwAFwk2VFLkYV6uxz
	+XaDce6OeJjfODK2R2+4NOFSwgVyjhhP5W5uVKikF8HGyNSFYBt8H01Xy/bunQ0EDwL988YhPtJ5S
	LYzqeDGBVUWfLUsvCYzEdyRUrHBod3rieTWibzit935OjhqQDKoWYQs+dBotCkZFUP8h8HqZm6cqs
	Md430XepTM0kWbOrKCjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSkyj-000646-5f; Fri, 11 Mar 2022 19:31:09 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSkyf-00063G-Rn
 for linux-rockchip@lists.infradead.org; Fri, 11 Mar 2022 19:31:07 +0000
Received: by mail-ej1-x62d.google.com with SMTP id p15so21190545ejc.7
 for <linux-rockchip@lists.infradead.org>; Fri, 11 Mar 2022 11:31:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5pENNfk6bc2nGlwicpGUDds63KS1W6V762Xf7fCpcvQ=;
 b=Imx1uzK26VGbc+4KEp1KW9BlSny/ZIUOSDbViPgTzrWG92xcSsWGGUD7jYIZKjdHOo
 aHZHfFLgKhWrX6THfyNjXMlo7RjccRo5hhitsmJf6kO460xS1HO0TjqX5BRW06s4hgO5
 GV19j/mP2dcx80aphr/w4pp2cYK4W8uqtyn8w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5pENNfk6bc2nGlwicpGUDds63KS1W6V762Xf7fCpcvQ=;
 b=2eJTIUuKgybsgQ3NBnHVCSmWQQe8hSeZh8L33BZbYZ5UgyVwFHK9eCm+sz8YfqmTjH
 5+b2suXvQjySomfCmcDABvyB09l+H3iedvAT0PKyd2T2ZKLA8LePo8KFBO68flH+oYRZ
 9Jq4Y4SUfJh12zfcCxJ/80HUh3vtJetoQVwlOR9peI6BNICMeHprZPTjlh7S0hwrHIGg
 SqnM+3s11CGqd9NC7LXQcsdOkXM3NgNfFBgXU/ws/Z6rtyYqa5Mpbcoj7g+ZCwodI0Y4
 nXKnyB2okNsz4luwjTHgNrocJisbpeQCNwpFmKbmPE6a1AnHm1XZKctX33OUEBXju/xA
 v9JA==
X-Gm-Message-State: AOAM530IuDiArVXMI6Fa1NfP4gpmatnnyr56iZ01TvanLf7Kx2WYJyWF
 Hlfo0yQYBbEGyFGU6kJgGTuSRB9qKnX6Spg5llHbPA==
X-Google-Smtp-Source: ABdhPJzM78KxAWy5oYUySCMyKMW6StyAAghPyLKmyPfNxk4xKkcMq3N+7p9XQSQJ0seiAFHkAAYtNaaLtYAw28gc5Oo=
X-Received: by 2002:a17:906:848f:b0:6cf:7234:8ae with SMTP id
 m15-20020a170906848f00b006cf723408aemr10173369ejx.620.1647027064071; Fri, 11
 Mar 2022 11:31:04 -0800 (PST)
MIME-Version: 1.0
References: <20210630162251.7378-1-jbx6244@gmail.com>
 <20210630162251.7378-6-jbx6244@gmail.com>
In-Reply-To: <20210630162251.7378-6-jbx6244@gmail.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Sat, 12 Mar 2022 01:00:52 +0530
Message-ID: <CAMty3ZCV3HKzqro_m-oZGcmwmzXhR7sjLMm-3sKqa4d+HnzQWg@mail.gmail.com>
Subject: Re: [RFC PATCH v1 5/6] rockchip: rk3318: add a95x-z2-rk3318_defconfig
 file
To: Johan Jonker <jbx6244@gmail.com>
Cc: kever.yang@rock-chips.com, sjg@chromium.org, philipp.tomsich@vrull.eu, 
 heiko@sntech.de, mail@david-bauer.net, ldevulder@suse.com, wens@csie.org, 
 banglang.huang@foxmail.com, matwey.kornilov@gmail.com, u-boot@lists.denx.de, 
 linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220311_113105_924227_8092B98D 
X-CRM114-Status: GOOD (  15.09  )
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

On Thu, Jul 1, 2021 at 12:20 AM Johan Jonker <jbx6244@gmail.com> wrote:
>
> This commit adds the default configuration file and relevant description
> for A95X Z2 board
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  board/rockchip/evb_rk3328/MAINTAINERS |   6 ++
>  configs/a95x-z2-rk3318_defconfig      | 102 ++++++++++++++++++++++++++++++++++
>  doc/board/rockchip/rockchip.rst       |   2 +
>  3 files changed, 110 insertions(+)
>  create mode 100644 configs/a95x-z2-rk3318_defconfig
>
> diff --git a/board/rockchip/evb_rk3328/MAINTAINERS b/board/rockchip/evb_rk3328/MAINTAINERS
> index 14fda46e8f..a4573c2ff9 100644
> --- a/board/rockchip/evb_rk3328/MAINTAINERS
> +++ b/board/rockchip/evb_rk3328/MAINTAINERS
> @@ -1,3 +1,9 @@
> +A95X-Z2-RK3318
> +M:      Johan Jonker <jbx6244@gmail.com>
> +S:      Maintained
> +F:      configs/a95x-z2-rk3318_defconfig
> +F:      arch/arm/dts/rk3318-a95x-z2-u-boot.dtsi
> +
>  EVB-RK3328
>  M:      Kever Yang <kever.yang@rock-chips.com>
>  S:      Maintained
> diff --git a/configs/a95x-z2-rk3318_defconfig b/configs/a95x-z2-rk3318_defconfig
> new file mode 100644
> index 0000000000..cba0f6c659
> --- /dev/null
> +++ b/configs/a95x-z2-rk3318_defconfig
> @@ -0,0 +1,102 @@
> +CONFIG_ARM=y
> +CONFIG_ARCH_ROCKCHIP=y
> +CONFIG_SYS_TEXT_BASE=0x00200000
> +CONFIG_SPL_GPIO_SUPPORT=y
> +CONFIG_NR_DRAM_BANKS=1
> +CONFIG_ENV_OFFSET=0x3F8000
> +CONFIG_ROCKCHIP_RK3328=y
> +CONFIG_TPL_ROCKCHIP_COMMON_BOARD=y
> +CONFIG_TPL_LIBCOMMON_SUPPORT=y
> +CONFIG_TPL_LIBGENERIC_SUPPORT=y
> +CONFIG_SPL_DRIVERS_MISC_SUPPORT=y
> +CONFIG_SPL_STACK_R_ADDR=0x600000
> +CONFIG_DEBUG_UART_BASE=0xFF130000
> +CONFIG_DEBUG_UART_CLOCK=24000000
> +CONFIG_DEFAULT_DEVICE_TREE="rk3318-a95x-z2"
> +CONFIG_DEBUG_UART=y
> +CONFIG_TPL_SYS_MALLOC_F_LEN=0x800
> +# CONFIG_ANDROID_BOOT_IMAGE is not set
> +CONFIG_FIT=y
> +CONFIG_FIT_VERBOSE=y
> +CONFIG_SPL_LOAD_FIT=y
> +CONFIG_DEFAULT_FDT_FILE="rockchip/rk3318-a95x-z2.dtb"

This would eventually break the build as the dts added in the next
patch, squash both.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
