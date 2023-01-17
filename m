Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED24BC63797
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Jan 2023 13:18:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5YI27kQw/d9DIQLShhhgeP4zw8KaGi8Gnjs0Fw8Q1dQ=; b=RvP5gEB+mXNM15
	tG/jRqZ6uJjwwowTwCW//JSFP+10E+f/MkqblIOCFm3mNNmtrQ5gFBG6zmyFrA8e9tozYbJ+LiqZJ
	YCjiRaAU//nGvMpAFz8LVLZ/gPEl0JfKRphT42Lo5nEf4movPiihJGGEb4yaXYAJxD11DgR9KX8Yn
	Mdcc8vQH8rMuyFyu7WeQw9PHQA+krlhyyiTAo94g70XtD7MyGjYl6BJKAVqVO2eA2lqSfp8HY8+cW
	y4XWSTHTERyGGNmgc5cSDiZwv3Gz1PZ5rTbSU0abEHUT0+GQa69l0ANP2BxfqQ/cHPCxI2wdrN1Vs
	1AVxVciEjCdPhGWm5J4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHlqm-00EKXS-Sq; Tue, 17 Jan 2023 13:18:04 +0000
Received: from mail-yw1-x1134.google.com ([2607:f8b0:4864:20::1134])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHlqj-00EKSw-AE
	for linux-rockchip@lists.infradead.org; Tue, 17 Jan 2023 13:18:03 +0000
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-4e4a6af2d99so102046987b3.4
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Jan 2023 05:17:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bUJBsht1LCslMFYdFKdEQEWjO6qOnqb0dKRr7V+rz1s=;
        b=uH657sJ96vyYmomeeAy9rjbmKABv8Mt7N2OJToJoDYNjELfnltO/kVT/5ai5qdsiOR
         Wxpi811dWS8nwDf5BgU1qNX/nDtzdjRHues5ANdJu62dibPkiY8W5qj9WZtkkvMcqhSq
         akODpqd2dRsn+U4lq8rHmQ4y2yn76tX/TWr46xktzxmHK1CnX+a8jhCUP6uyP9f6lrSC
         xe9r06s9KOocdu+7xaqfVLWDdSX+Ao+JtZ6SzAt4v6vw+6QhkUkuUmfIC7FPORvMWTdE
         GeKXCbOc+VvtzoKqiLvoRA6GwEf1qIV4NOZhF+HCVZ6YGJmY3/BpaRsUvOt5YPR0mqZR
         Nhng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bUJBsht1LCslMFYdFKdEQEWjO6qOnqb0dKRr7V+rz1s=;
        b=VJs9KxOx4MrWGonI8w0v+o29zBxiwsBsAo/vjuRKvcM63OUM/sWVJ0jAlUCCnL5azv
         ZnTUufhlVjTHzc+Nc3O5cbbhhYBm6hOdZWuIf0XkvgnZo2ZUlFndWHcZeN4PPsc019lv
         N+/qu9fDYni1XCmUNoOKfqbogflyloKa6Kjw3KeO6t3kIT7JceUHrPUb3KQXI0fJOFZc
         QWRivkwGduoR6vFPaqYC/zLZe1LRNIlgTif3MQyRckhreM9WE5q3c2IJc/Xy+L5ZHPmD
         oSo3EzGIXo+6pzduxTeG7aPdK7DaAjjDxNoFYVzvnNeo6I0VqOxPu3Hmx6M++f26H9+Z
         omew==
X-Gm-Message-State: AFqh2kodjKgTZ+VcaORBTR6sFRuVyYu/zbpOgzrzR/HhD+dNuRnXxQSn
	Ccm1DXH14MSQdenZ5drUvJmBMtNSpfijGbc/TS5aGA==
X-Google-Smtp-Source: AMrXdXvCau06WdWXAr4lq44sOWKLJC6ryOzfbmLnbjwTbwgo3Cks2NTb/dw9TZi45VpxAg/KejdNFI+rymFMe9uTbhA=
X-Received: by 2002:a81:9b14:0:b0:4dd:ff06:1358 with SMTP id
 s20-20020a819b14000000b004ddff061358mr413851ywg.488.1673961454031; Tue, 17
 Jan 2023 05:17:34 -0800 (PST)
MIME-Version: 1.0
References: <20230110084636.1141740-1-jonas@kwiboo.se>
In-Reply-To: <20230110084636.1141740-1-jonas@kwiboo.se>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 17 Jan 2023 14:17:22 +0100
Message-ID: <CACRpkdbJvTB5VeyfM7gruB3MrDMXNo3XezmcVyZGH0Vro=kVTQ@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: rockchip: fix mux route data for rk3568
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>, Jianqun Xu <jay.xu@rock-chips.com>, linux-gpio@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_051801_394652_DF1F6802 
X-CRM114-Status: GOOD (  10.56  )
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

On Tue, Jan 10, 2023 at 9:46 AM Jonas Karlman <jonas@kwiboo.se> wrote:

> IO mux selection is configured in PMU_GRF_SOC_CON4 and GRF_IOFUNC_SEL0-5
> regs on RK3568. pwm0-2 is configured in PMU_GRF reg and the rest is
> configured in GRF_IOFUNC regs according to TRM [1].
>
> Update mux route data to reflect this and use proper detection pin for
> UART1 IO mux M1.
>
> This fixes HDMITX IO mux M1 selection and makes it possible to enable
> HDMI CEC on my Radxa ROCK 3 Model A v1.31 board.
>
> [1] http://opensource.rock-chips.com/images/2/26/Rockchip_RK3568_TRM_Part1_V1.3-20220930P.PDF
>
> Fixes: c0dadc0e47a8 ("pinctrl: rockchip: add support for rk3568")
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>

Patch applied for fixes!

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
