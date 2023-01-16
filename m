Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54490C46467
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Jan 2023 12:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5pEcU9Ostg6sDy6A7aVagOZs1Hc4b4zlS5i1t3D8PJ0=; b=kiCXmtuw4tGEC9
	hHJDB2NzY50uvihW5o97VwuuF3e6HJfPPpzCzCPOz7sUFbfKmqt3qEp0ArUO2EfYYH8PvHhrzUX2c
	krReMGJPQEUtIFb/t3G8Lb+S/LvLXKoFvZ+UP2QRsoyF5eMa9FUdUrEEHyXVOgE9F9CqcGSZPu+3s
	ABwDwf04p08JBA8ne+Xs8GWB1wjcoEaSAzqK9AA6oTJ3R8K6vzG63a0tG3y9U7yz2rNG0MslL0zX4
	8mZjljRiU4WGAAKZmFfiP61YYEynYQorAUYpwsrWvJRvNisEb7o5SMpp3BHZmN9fzOkhr1Z0WQuLf
	ZYtWky1pyIeqQrKYokDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHOmE-00A7uA-MW; Mon, 16 Jan 2023 12:39:50 +0000
Received: from mail-yw1-x1131.google.com ([2607:f8b0:4864:20::1131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHOmC-00A7tG-Ck
	for linux-rockchip@lists.infradead.org; Mon, 16 Jan 2023 12:39:49 +0000
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-4e4a6af2d99so59263127b3.4
        for <linux-rockchip@lists.infradead.org>; Mon, 16 Jan 2023 04:39:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=21EV7MGKC5QObOMnPy3UW40c0DLw32rJogBwJT3MIds=;
        b=zZehO8ZzFJKe6Z8JfQ+jziUUss6hBb1odzJ7fSddRhyWsBKi3p7AC67YQgHqFDmX03
         CYAcsix0MeJvzcfJchvoN/gakM1Euc4gGhUVSMfZfV+25PO13Mg4L58wBN4OJwGwq7Hl
         BzKHo1qXV0ccwQMyhCx/cm6b3CG3Ui9A3iCG51KiSrCp1d5ZYjaCr2lyKloFtlCUHTov
         C+MxNWkrYVM72ArBXBvQ8giE6pLX6/2gy4h53AJrw9Hu8MnRRnOm42b74eA7KJcxGdYz
         PwZdI6Zq9T7c2t8RiugGsdy/emwL6vN/uXyQk0Z+MlHVSSJlYneQblKmgAA20T/Y7chi
         Eocw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=21EV7MGKC5QObOMnPy3UW40c0DLw32rJogBwJT3MIds=;
        b=PZuxyW968foTOanQ69A9vfAvMVz8AIjIHn4ZOFm0CqTId4Gij2wSnjDKZbAJ9CnpZ6
         j5qHg03WD9vlio4bghJ+aLG7pcLTctxTe6We6Ol5EvnPY/IPcH/O7w3XZcBTz6mMpxhD
         Q2JFzRpcxkZClmolOuCi8Dq1E+cSYYoAJTJociMvDgRVhWdWTOtydggkWBRAhbvkumcn
         QeUKrdpORlPLWgnWYjt5sTZh3HdMkXItCnktwbZPov8Hks0uzvP8T0PXffMElRy+SeWH
         /FZdkqejQRtPE1OkC5MoWxLP5WgR6mpjGaM4v0eMgi1/z44jbEPdeGM6WVfeuVJvpGtL
         4RQA==
X-Gm-Message-State: AFqh2krgfpLbIbBV+kdCQ56ccVwwLtITJJ8KhPZUPlAUfuaeplTyW9lq
	CoOi4F28vjJEkTl+XefVDPY+LMS7WWiNsTI2HAd5IQ==
X-Google-Smtp-Source: AMrXdXsHbKcpLGxxCwS2tNq4ORQ3SaOOFWwMExjuHj1/QZaDfCO1C+FG9rSuUZs4REjmxPH5L4xtiVgoWJ8OxgrrLdA=
X-Received: by 2002:a81:484c:0:b0:36a:de9d:825e with SMTP id
 v73-20020a81484c000000b0036ade9d825emr4504610ywa.477.1673872786348; Mon, 16
 Jan 2023 04:39:46 -0800 (PST)
MIME-Version: 1.0
References: <20230110084636.1141740-1-jonas@kwiboo.se> <2023011017420455469534@rock-chips.com>
 <DB9P190MB1594C0CEEF186240558D58EDACFC9@DB9P190MB1594.EURP190.PROD.OUTLOOK.COM>
In-Reply-To: <DB9P190MB1594C0CEEF186240558D58EDACFC9@DB9P190MB1594.EURP190.PROD.OUTLOOK.COM>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 16 Jan 2023 13:39:35 +0100
Message-ID: <CACRpkdYRr_WDC59LC3iGqpTEcyGErdyCBLmB4Ox5ZQH3M70Lgw@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: rockchip: fix mux route data for rk3568
To: Jonas Karlman <jonas@kwiboo.se>
Cc: "jay.xu@rock-chips.com" <jay.xu@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	linux-gpio <linux-gpio@vger.kernel.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_043948_446277_D582A9B3 
X-CRM114-Status: GOOD (  14.56  )
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

On Wed, Jan 11, 2023 at 9:42 AM Jonas Karlman <jonas@kwiboo.se> wrote:
> On 2023-01-10 10:42, jay.xu@rock-chips.com wrote:
> > Hi Jonas
> >
> > A patch from https://github.com/rockchip-linux/kernel/commit/55aa440fb85377a8b8c7e4bbc367463c235da804
> > can you try it ?
>
> Good that this was fixed in vendor kernel long time ago.
> Could have saved me some hours of troubleshooting if it would have been upstreamed to mainline :-)

Hm hm some technical debt to pay off here I see. It happens
to us all.

Jonas is your patch identical or do you want to send a more
inspired version with more of the fixes from the vendor tree?

I'm certainly not going to sit and wait for the patch to come
from another source, so I would like to apply some version of
this patch.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
