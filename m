Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E557EC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Feb 2022 16:58:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pxBdPbRVOVh7/Uq6lJBve9weY3tUMWW8S7gJr/oNOjk=; b=WXMnuycYlCexzv
	9gQI40rr56VdJ8IXvX76tHlnC5VLuQ/7FEL0PnPUFQX4vZKTILoB3waElEXKzRedbAGOmkVXvG8Ag
	uROK4GBk7Z1oKeErkgEX4GzYbrMn1yqgrJdx+LR+DxE3M67EFnLkLhEx+coFSeb4uFV08rSGX+qcs
	9yAHl3+g1LLihYro9HJEtj8UJb8neV/H5v2HjB0+PMixy/0ABZsbYYd76SGUiw+YkO4gsSu3JSBQq
	whtdFMQQsX6E3qnRfK7O0XFq+5P5XC/uHaSgXjThPLMIT+rfX/5Q//BhxZn81XO4ULVwa6Lz8u6HR
	K3TZ+oUzaCqV8G1pB23A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNdvP-0065bv-Qj; Fri, 25 Feb 2022 16:58:35 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNdr8-0063UH-53; Fri, 25 Feb 2022 16:54:14 +0000
Received: from mail-wr1-f52.google.com ([209.85.221.52]) by
 mrelayeu.kundenserver.de (mreue012 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1M4KFF-1nNMju3jpB-000P4R; Fri, 25 Feb 2022 17:54:07 +0100
Received: by mail-wr1-f52.google.com with SMTP id j22so5365578wrb.13;
 Fri, 25 Feb 2022 08:54:07 -0800 (PST)
X-Gm-Message-State: AOAM533qlrhzOn582K1LUJ42YOkcW9Mk9yMBM32f5iuX0Ijt4GlC/bCQ
 LyEvPqCF3fkWWqcpsZ3bvlKmpOiGUD0EMwQgkhQ=
X-Google-Smtp-Source: ABdhPJzBE/88fgepeIkLrgP+6ufSjJXxTY3orPcH5E65v66JIJxC3/5Pi3lZHiE47if+E3yc0ip25xY+M5vKqX6CMlE=
X-Received: by 2002:adf:a446:0:b0:1ed:c41b:cf13 with SMTP id
 e6-20020adfa446000000b001edc41bcf13mr7239380wra.407.1645808047500; Fri, 25
 Feb 2022 08:54:07 -0800 (PST)
MIME-Version: 1.0
References: <9977257.a15B8eIVjX@phil>
In-Reply-To: <9977257.a15B8eIVjX@phil>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 25 Feb 2022 17:53:51 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2=-wg_LFtOoeN47EoxnAhG+39sgFsVvH+mvNQpKvrOww@mail.gmail.com>
Message-ID: <CAK8P3a2=-wg_LFtOoeN47EoxnAhG+39sgFsVvH+mvNQpKvrOww@mail.gmail.com>
Subject: Re: [GIT PULL] Rockchip driver changes for 5.18 #1
To: Heiko Stuebner <heiko@sntech.de>
Cc: arm-soc <arm@kernel.org>, SoC Team <soc@kernel.org>, 
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>
X-Provags-ID: V03:K1:Ry9f+7Mtr5TaCj/sifMzRRU5uTru3ADcVh89pey9rqIF0MVC6IH
 wcXPU3B8Us9Toyvfx4f0d0KAxhWKnn44b07GLDU+WEM1VuP/s6/q6xSPvZO2WvG6mUWQ1Tm
 62TCF0Dv1KEF885P5f4Rxcn/oSK50F+635e76rDe7o+F5DIPRAn+hczlzduF1grT5gpdSkJ
 wK2oVEgpzmbgIEbR9696g==
X-UI-Out-Filterresults: notjunk:1;V03:K0:WIDUNI4rnGA=:e6N8SsiVJ/QzKZCnE7yNss
 RBZs75Dl6SoX0wRYTrBlXauN0g2qGqrwBaMGUgENHXQ4F+CVWzgo+x6JfB3nmx817JjB1qHzj
 I/aT0kfSr9r39mWa+z5/FgpWu+mkegYOJYDZoRoUFETyh3kE8V5Lyb1AwQwGhPW1oO4554ZF2
 aZc+Wv5rJ+M/UQTfWH/ssYefR4tgYBYYifp29/S3/vKwa5KRFGXKkXQsKBbYsOGbDSGDdGOsw
 Xfqawh5nuudL1zNXiKiISjjQjDPEDshBN57xCCL+1s3VO3swfmQYLzVCB3dwE+9B7ZH5zIyHJ
 fFalqVn7NXqoFzwaHFnRP49NtJcP/abT4s1j520thMLDROwMFSsXJeJdSJ8Bi8ARQy1ETYKNg
 bihZ+XAeKXuu9FdjHc7ZzO4KlyXS2YvwyrEpZGS440hQFDH9bIirqfjB+Bd8d5vM4x/VgAHaQ
 cEFX10N5wWqFY91VbSdqm0ALiZbJblmE+lDFJCZOFZXEYrG28b/HZXfMAn7nGtcY1IpM+VUqJ
 pOWHyG4CGFnNdnVhBkzL8AXa4ppnTVbp9fdj3BX9J8dpwcNgO0Vz4GRKqlxj52vSSfR/bwiYH
 XIyx78MyQOoZkXhBT7dOOkNA2zdDsWXgr3sqdyaCDgFzuAAmSSupHzGFDUBBItBkHFF7QCNzo
 hJ9LocnyUvRUVC5FJnZw/+7jDyvnm54yr6pV/8Ql0FV1p2tk6xBvWx0AI8GU2R3rNPlQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_085410_583593_D3E0DC90 
X-CRM114-Status: GOOD (  14.89  )
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

On Fri, Feb 25, 2022 at 12:20 AM Heiko Stuebner <heiko@sntech.de> wrote:
>
> The following changes since commit e783362eb54cd99b2cac8b3a9aeac942e6f6ac07:
>
>   Linux 5.17-rc1 (2022-01-23 10:12:53 +0200)
>
> are available in the Git repository at:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.18-rockchip-drivers-1
>
> for you to fetch changes up to 7dbb47d64acf4aac131a2aaade726913aa62abe7:
>
>   dt-bindings: soc: rockchip: add rk3568-usb2phy-grf (2022-01-23 13:35:06 +0100)
>
> ----------------------------------------------------------------
> Compatible for the rk3568-usb2phy-grf.
>
> ----------------------------------------------------------------
> Peter Geis (1):
>       dt-bindings: soc: rockchip: add rk3568-usb2phy-grf
>
>  Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
>  1 file changed, 1 insertion(+)

I've merged this into the arm/dt branch along with the dts changes.
Generally speaking, any binding changes can go through either
the driver or dts branches, or both. In this case putting it into the
dt64 branch would have been easier.

         Arnd

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
