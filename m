Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA8F5C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Jul 2022 00:25:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RpE1p51W0CY5bHNjlb9dFsf6Oa14yZ/mjtbVbjMp4Fg=; b=kP/P3pDO/gVO9C
	DmUl8S0HOMHxLozrVCMkFbU3xbJvTiTVsLCOEmCUR5ZVYDJhno+daNclCY2ZPBAMRU8K8/+KW+A9W
	/oJGleqhsePwt9nwLydisP3KG7MgFZUE5EK2zRnBC5fcVazs+r6gYyZDtTWcX6OBG5bGhT4ElYRXd
	lWSbbj/bxjlv2eJRr1+B/nj2eKtKDxVYf+4iQStXyY927nlbIY0GrfuqEvOAHbAylRNmZonx0X8yh
	p/yF5HP95u6rpLNUcp3ey3DESCE25n56YCmu5PcxYtBFb5StrOKDoKGbVSOZiIQSVsAH5uUMk3gh7
	gDOEHZKuQ9h/ntJcpK5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCVcA-00BSQU-Ku; Sat, 16 Jul 2022 00:24:58 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCVc7-00BSOU-5a
	for linux-rockchip@lists.infradead.org; Sat, 16 Jul 2022 00:24:57 +0000
Received: by mail-ed1-x530.google.com with SMTP id t3so8259593edd.0
        for <linux-rockchip@lists.infradead.org>; Fri, 15 Jul 2022 17:24:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kohlschutter-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=8jfxx4RE1L6PObFpgYLe3VGx/xPkN6IIKKF2vyixvto=;
        b=ttBa2UbBKeBcedM5VCbE2dF8Fb8R/tnG19G+WXwTVbSTqG1oTp0u3QXSuu1yDvokh5
         QXrrUTBTPgr3mZoAe3NujogoGOPhJdD2szIDo2vVUq3JJk2MePiO/6tGLzFXgX44/krw
         LMaZ469mjAQqsvWglYLYkHeSrFiElKTVV43gRkho0rZagwiCj71D7bKSEmJK93pf6XQQ
         Rnbc1PfQESfvMLcDXLcxF5mkioWaARjstUxs1yJ/rlWOPxYXGtUzwiXDFL1eg5WnBe+C
         g5TVlKenKgBYv06m4uUJCVYS9n02AocDoDUnJ/tFBuW+kUj+wFYw7atCNe8IJ18JXRUx
         wrnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=8jfxx4RE1L6PObFpgYLe3VGx/xPkN6IIKKF2vyixvto=;
        b=1NUqJAv8iYGqzOWCi7MEYpmPQ6lOJjt4rSQs5BFuHOtJHe9lGOUwBI9u98IuOkLk9z
         uqp8VFYWG9LVbT+N22kj1WsAgXymquQ3lr1AVjlJUghuBOjqCqr3F/QPBTnTQdRJOkIL
         YlKCreRdi5WcTwlzwCKJDWEWzIx8+4GHp4QcHchMk8qedi54NEEq4PPOszrLtZMkhP9j
         91HLw3l3CUOkgwn6AUTwgLF+SD3UO83Rzm9SkpqussZskSdb0MEeGvRi4g99GTiovSOI
         ls+u74k7RnAVnaQRsVW1pcKsnX9ERlQkx8LbDyBjLpGpq8A+VjDb9V1vk1mnaVazULEd
         T27w==
X-Gm-Message-State: AJIora8q7ur6mQ6YjZfIxxanSMvuxhX0h4FB4KgBotOffYM18FX/KgT8
	bcII3UY5t7nHvWkBQFdWwCSwrA==
X-Google-Smtp-Source: AGRyM1tNcup+VZRbETUlw1suyFlV8QtfS2LSShbACHnJArc2NkI0rR1/KyBV9KTkE5dfB2Ut08q/Cw==
X-Received: by 2002:a05:6402:148d:b0:43a:8f93:1d1 with SMTP id e13-20020a056402148d00b0043a8f9301d1mr22124080edv.57.1657931091445;
        Fri, 15 Jul 2022 17:24:51 -0700 (PDT)
Received: from smtpclient.apple (ip5b434222.dynamic.kabel-deutschland.de. [91.67.66.34])
        by smtp.gmail.com with ESMTPSA id gj10-20020a170907740a00b00726c0e63b94sm2547537ejc.27.2022.07.15.17.24.50
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Jul 2022 17:24:50 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
Subject: Re: [PATCH v4] arm64: dts: rockchip: Fix SD card init on
 rk3399-nanopi4
From: =?utf-8?Q?Christian_Kohlsch=C3=BCtter?= <christian@kohlschutter.com>
In-Reply-To: <CDF716FC-F6CF-44A9-84D9-B48C46E6AC2C@kohlschutter.com>
Date: Sat, 16 Jul 2022 02:24:49 +0200
Cc: wens@kernel.org,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Markus Reichl <m.reichl@fivetechno.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Linux MMC List <linux-mmc@vger.kernel.org>
Message-Id: <3912A668-9F73-40FD-8993-5060F632238A@kohlschutter.com>
References: <C639AD88-77A1-4485-BAEA-2FF8FC15A844@kohlschutter.com>
 <12878108.O9o76ZdvQC@diego> <103b714c-b07c-f016-1062-84bd94786b22@arm.com>
 <9AF1E75F-5947-49B0-887D-82C426527B99@kohlschutter.com>
 <590f7a08-a6ca-be54-4254-363343642a52@arm.com>
 <A6B896E5-CD25-4441-B6A5-0BE1FA284B2C@kohlschutter.com>
 <A9634366-A012-43D2-B253-8BB9BF6005C7@kohlschutter.com>
 <CAGb2v65Ehbu1wrib2CzF1fDZuD3fHZQDhKfVusyUF9KnxTvi+Q@mail.gmail.com>
 <5ca9bd94-54d9-04f8-0098-a56ffb6f5fe1@arm.com>
 <502b3fbe-3077-407e-6010-a8cb3ffce7d6@arm.com>
 <449292CA-CE60-4B90-90F7-295FBFEAB3F8@kohlschutter.com>
 <73F9AED0-D2A8-4294-B6E1-1B92D2A36529@kohlschutter.com>
 <115AD6A4-021B-4879-BFB5-BC7689A0203E@kohlschutter.com>
 <17a4c6f6-d79c-a7b2-860f-e5944b778f9f@arm.com>
 <9405b97a-6758-ad4e-ccff-eed072096539@arm.com>
 <BF7CC548-88C9-4889-8A41-8E99C31EF81C@kohlschutter.com>
 <daf3b61c-d886-98eb-0443-de233d742041@arm.com>
 <CDF716FC-F6CF-44A9-84D9-B48C46E6AC2C@kohlschutter.com>
To: Robin Murphy <robin.murphy@arm.com>
X-Mailer: Apple Mail (2.3696.100.31)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220715_172455_453116_E2C10E6A 
X-CRM114-Status: GOOD (  16.24  )
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

>> 
>>> There may well be another bug slumbering in the codebase that is circumvented by 1. adding a delay in the code and 2. not turning the regulator off upon shutdown.
>> 
>> Yes, it seems suboptimal that the regulator core allows this glitch where an always-on regulator which is already on gets turned off at all, but I guess that's its own problem. In the meantime, off-on-delay-us sounds like the most likely property to bandage this locally. I'm seeing a fall time in the order of milliseconds (attached), so we'd probably want a fair chunk of that to be safe.
>> 
>> Robin.<SDS00003.png>
> 
> I think we have a way where there's no need to pick a delay value that may ultimately not work in all cases.
> Following up with "[PATCH] regulator: core: Resolve supply name earlier to prevent double-init" [1]
> 
> Thank you so much for helping me getting that far! It would be great if you'd keep following the thread.
> 
> Best,
> Christian
> 
> [1] https://www.spinics.net/lists/kernel/msg4440365.html

@Robin,

oddly enough, setting off-on-delay-us with values of up to a second (1000000 us) still results in failed inits.
I hope we can find another bandage until the regular-core patch gets merged.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
