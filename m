Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14D73C6FA82
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Sep 2022 13:38:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DqVxI2U1UIS795CT7tMeC5+M2x+wwM1/R+0iL0yQX8U=; b=ISKPCNPNoVSnTN
	DFwnkHKqse0DrEw8GeXZUrFVid4cIUUMVlC6YHsTrSbhvEfL4Pe5nzLKTZBWJvkLgGq2PRmEjd7oE
	O7jQ3Tcve9bloUh9YiisaGAoa9OzPrgMujZ75B5jIQZVjZvzl9l8AGygRMvoS1HqSjR5+8gS2+/vG
	Cno8n8kDE5L8QtSsdDapblDqiUbl9yIximNkwkJIZcUqxktFfF0SosUdG41OO1vu1bdwteVhnUOZF
	0LDpV4aU2Pd2ms1v1iBShTNGBEjlrEjGIX8ZXAiXCAz0nTCJQrMlwS4hFvJCQ7Hti/er4W7Raufu7
	wd3qMCbOYWfETofYs6dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obit4-004T9N-Dq; Fri, 23 Sep 2022 13:38:38 +0000
Received: from mail-io1-xd32.google.com ([2607:f8b0:4864:20::d32])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obisw-004T6t-GE
	for linux-rockchip@lists.infradead.org; Fri, 23 Sep 2022 13:38:33 +0000
Received: by mail-io1-xd32.google.com with SMTP id d8so10289442iof.11
        for <linux-rockchip@lists.infradead.org>; Fri, 23 Sep 2022 06:38:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=t07WrpGgH9zQ3JsN1ciJKsWIHRrIB4n3PcU+0kooYgU=;
        b=7U1/AvCXmbHrsyviV8u9ugQwR90APbY1VPaflnkN9E5DFGAz2ecYtypdVFaOEmysx8
         NI1TZzn7TgBW4tvsnerC7NvM60M2DFgC+HpUuqpMFFKoLoTt3lo9w2EsFo5e0e3i6/xY
         +MqEB3TQNMeBuVYDQp2GcW55YeOL9jYhcRa6WicgCuveURS+1acAYYTPezQLDYxuefIb
         el8wqT8hfmHY5idHKijuuJWun1GF4aHvmWw8jij20hyoU6mpjKf6/ebulKGSRLWf66xX
         LmyR3ibZ9mxxfCbVliplWyrDBFxbYtQ4cYsFdUVc7YmuEbrHrjnsrbJfPJEbFlfcgXdJ
         Oi6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=t07WrpGgH9zQ3JsN1ciJKsWIHRrIB4n3PcU+0kooYgU=;
        b=BfOblze3eXDxym0jbbXXMojjyfvKXTFuFvvgY6foyS0kMvW3I/FEQzkAs/rQXDUkqu
         Ap8vTnw/E15h/Kwt4vc2vHdty32VPU1Qf/12ZSNo0z1zZ1OnFDO0+f/cujVD9uBR+LNj
         5JrV1nYdjBXX/FjOiVDumtDB/W7dH2/QVtZ0HWhGzqHu/0HPzGdWcGzHfUpEc/69aF3g
         sT4YPif5dtx73ymdS6SFsYYwKoZfNwxxrnli9kEejEUtONzOoHUFHtldFeBMvcbiElyI
         ntqXVVuaJTKK68dUt9XVepaWlF3D0Dz1dG4is8HpMGARQVvVPvR0j32G+h9+GyiTEYgb
         9m4Q==
X-Gm-Message-State: ACrzQf0RcZGwrVgR1fIYOmNyeYQ55GYtdFPTLB/V4pN6COVBLDywamuN
	Bx9eijsmqNDiPCqwuwAIGmjvP8BLWBMvj3mwhOXxtx7QjggfaNMY
X-Google-Smtp-Source: AMsMyM7+IyjoXeiW8RnHRVF3z7riQUHGobH4BHuPZ+W9VikWPAzSOPcwTCdcDKYLRjLeePvphhqOawnmhrHuwWuaCG0=
X-Received: by 2002:a05:6638:d51:b0:35a:5808:41ff with SMTP id
 d17-20020a0566380d5100b0035a580841ffmr4749975jak.45.1663940306854; Fri, 23
 Sep 2022 06:38:26 -0700 (PDT)
MIME-Version: 1.0
References: <20220915163947.1922183-1-jagan@edgeble.ai> <20220915163947.1922183-7-jagan@edgeble.ai>
 <2439124.NgBsaNRSFp@phil>
In-Reply-To: <2439124.NgBsaNRSFp@phil>
From: Jagan Teki <jagan@edgeble.ai>
Date: Fri, 23 Sep 2022 19:08:16 +0530
Message-ID: <CA+VMnFx8FHEqqbmv-tWxostrMd+yDadr5yaJXXJUeE9h0C2M2w@mail.gmail.com>
Subject: Re: [PATCH v5 6/6] ARM: dts: rockchip: Add Rockchip RV1126 SoC
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Kever Yang <kever.yang@rock-chips.com>, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, Jon Lin <jon.lin@rock-chips.com>, 
	Sugar Zhang <sugar.zhang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220923_063830_854417_DE6D908D 
X-CRM114-Status: GOOD (  14.72  )
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

On Fri, 23 Sept 2022 at 19:03, Heiko Stuebner <heiko@sntech.de> wrote:
>
> Am Donnerstag, 15. September 2022, 18:39:47 CEST schrieb Jagan Teki:
> > RV1126 is a high-performance vision processor SoC for IPC/CVR,
> > especially for AI related application.
> >
> > It is based on quad-core ARM Cortex-A7 32-bit core which integrates
> > NEON and FPU. There is a 32KB I-cache and 32KB D-cache for each core
> > and 512KB unified L2 cache. It has build-in NPU supports INT8/INT16
> > hybrid operation and computing power is up to 2.0TOPs.
> >
> > This patch add basic core dtsi support.
> >
> > Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
> > Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> > Signed-off-by: Jagan Teki <jagan@edgeble.ai>
>
> hmm, this series doesn't really provide any board for the rv1126,
> so we essentially don't even get any compile-time tests, as nothing
> is using this dtsi. Can we please change that?

Yes. Got it. I will send these dtsi and board dts file patches together.

Thanks,
Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
