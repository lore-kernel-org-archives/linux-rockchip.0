Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6867C6FA82
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Sep 2022 21:05:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MWoV5C4Q5E1QPdzqhgKNq+MWG3zy/jaRpWtSHVOa490=; b=izCiM1jWmFRIiv
	t4NSNrYz0x60kQn5strjlqkE47tywERcQSqs4MzgkPPLu2aM+Fj7gAOnoQ7eK+7hiUIGAb/tKkf4+
	KSWIIwfEOzgp2sj5sL4zNvFzeJyfTWgs05dQsVcsEeAdeKCpqFP8qKeMgwhNPAofCWEVsp0IGwl33
	GiJeMCDwClKedEe7CTfXkj3ziGt4whU6Qh6XRJW4zfqULYbexRxS2y//sNjm+Wl+FQp6VZPqDq4hL
	bH+Ad5RVSANLucZzXWgpNGKBQIOLYicJFItDL8uMhjKTddnP+u/wxYuvPkSS8IPVodCLZ6362IKvZ
	hvImr8/bP6gEXRD8ZH8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUDqz-00AzHy-Ii; Fri, 02 Sep 2022 21:05:29 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUDqw-00AzED-4K
	for linux-rockchip@lists.infradead.org; Fri, 02 Sep 2022 21:05:27 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id BDB0AB82D9A
	for <linux-rockchip@lists.infradead.org>; Fri,  2 Sep 2022 21:05:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 696E6C433B5
	for <linux-rockchip@lists.infradead.org>; Fri,  2 Sep 2022 21:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662152722;
	bh=qsStvP91ihR00dZ3kRmIXS3gp2oRIvI8e0UNRUUK9iU=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=vAJhH9VGjiTcp8aOmKgoX2qbddBxsvkgr2d6lCX/VRYDIE/oguVxxJOd/jijB7cQF
	 oR1O8LNuncj7abV5/XBJTKfieox1lMWGsI4VgTwLCk61T6RyTHGKFSAdlyRe+NmM5Q
	 8y/plzRcnodjc6wckvFYL7q7uVdcxp8a6rgoK1CkjIcc28UYmtWjhstYbQV0ITlAEJ
	 cCZgrPPU+uhjhtmmVTBSr9inXHgSEuyjT1LGrWcQbsHgKrK9GHqUcKmvPYbyT1M2CX
	 0FYRj4AdT3XVfPT28xY31lCgROOpPV+b135QkLsI7nvUmrqeMJyR9kQzdyeoEtytFy
	 SXLZzXUUZOPNw==
Received: by mail-vk1-f180.google.com with SMTP id i129so1548847vke.3
        for <linux-rockchip@lists.infradead.org>; Fri, 02 Sep 2022 14:05:22 -0700 (PDT)
X-Gm-Message-State: ACgBeo1cdNgJonRCwbOq0ef03bP0SD3Mcgc1y64dIS+/aaGlf+9xKio4
	CaREI7n7Iar5jDQO3ZTumGCSdbp6vnUuQp9UbA==
X-Google-Smtp-Source: AA6agR79pK/SefjTsDIGybHBwpAL12OW8gkE42VozV7uuODUesaBGzPfzSjt1j5VQri5uu5iiMGzNCMQcvSX6NfVS3U=
X-Received: by 2002:a1f:d241:0:b0:398:3e25:d2dd with SMTP id
 j62-20020a1fd241000000b003983e25d2ddmr359225vkg.15.1662152721285; Fri, 02 Sep
 2022 14:05:21 -0700 (PDT)
MIME-Version: 1.0
References: <20220902060426.2980951-1-jay.xu@rock-chips.com> <20220902060426.2980951-2-jay.xu@rock-chips.com>
In-Reply-To: <20220902060426.2980951-2-jay.xu@rock-chips.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 2 Sep 2022 16:05:10 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJ4vXG5b5m5631Jb0ESbjn5z0u2sgKOrXf1BR-qOgeV_w@mail.gmail.com>
Message-ID: <CAL_JsqJ4vXG5b5m5631Jb0ESbjn5z0u2sgKOrXf1BR-qOgeV_w@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: gpio: rockchip: add clock-names
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, "heiko@sntech.de" <heiko@sntech.de>, 
	devicetree@vger.kernel.org, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	"open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220902_140526_342408_CEB64F1E 
X-CRM114-Status: GOOD (  14.15  )
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

On Fri, Sep 2, 2022 at 1:04 AM Jianqun Xu <jay.xu@rock-chips.com> wrote:
>
> Add 'clock-names' to the gpio dt node. so the driver could get clocks by
> a const char id, this patch names the clock-names as
>   - 'bus': the apb clock for cpu to access the gpio controller
>   - 'db': the debounce clock for cpu to set debounce clock rate
>
> Since the old dt nodes may have no clock-names, this patch not make them
> as part of 'required properties'.
>
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> ---
>  .../devicetree/bindings/gpio/rockchip,gpio-bank.yaml        | 6 ++++++
>  1 file changed, 6 insertions(+)

Can Rockchip please address DT binding header licensing:

https://lore.kernel.org/all/20220630220409.GA3396626-robh@kernel.org/
https://lore.kernel.org/all/20220902210141.GA403234-robh@kernel.org/

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
