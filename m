Return-Path: <SRS0=dCsk=H4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AD93C433E0
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Feb 2021 11:16:11 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E70EE64EBA
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Feb 2021 11:16:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E70EE64EBA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ryZaVzZ/QUlOLhzIT5LpSb6Tjlznc98BcdkLkx3BkWs=; b=ZZRY7JCSWAQGv0kDJK8S4ETwE
	MVdwTzjDrWLaaiBWBtNqlTj+LGghG2pU52cMUT7o/q/0e7ooiNgl6noWToOzi7st5H3Cz/eU+H7oP
	YVKRsGCwSN3bdX05qJTANn67lVAvxKV7u8iiqa9outoXIvGg7wO+sDnqr8tHFxVUkOZ254j/oJKYH
	9Iy+sVvkuS8slgQ3xFUfvxHHfh+equ5LgxqE+8CjQiwoQxycYXQJxLW8gJogSrsq/tGauGQLsqFJM
	BW4HkelRGRi55Rf1GIzE/xPqD7ryJLNmzQPd4bFfnNAPQkkhmV4q4LtWE0Vcho0uWneSOSlJRkgZn
	xjtEK4/zA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lFb6N-0007xC-F3; Fri, 26 Feb 2021 11:16:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lFb6J-0007wK-6u; Fri, 26 Feb 2021 11:16:04 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id D730664F03;
 Fri, 26 Feb 2021 11:16:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1614338162;
 bh=Tq7NSjbRAdAUuZaD3N8ugNfUFezue/5tJoEZmiouilE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=HSDB8oCeaoz1dG4ZA8Ol0WP+pHw/nmGxHXL83nYMrOu4l80vxZfAKYqMgcAo1TZiG
 26YyUWdS99K2D8XNFoOOYjtTcjzmRfD/IIC+Y0EH/PsAEM5MM8dDYrh9h3J/tVm6BD
 Qek6yDAQRYGEAj8qNsWq5a+T1kBeQbtxRAtEhDw232oQpvc3KaXqfn1MqY/azmfLAu
 aCUEi3Uq+MoAeSsmLdXq3kDj+T2+tz4+PXljT4okPQZLJ0SD7RVOuAW7D+3M86IQwY
 gXSdEpfghNjOT8oIkC5gPcLRBXhco4ZFVn3/Tw9V9p/nSjc9kVaS2GMdOQrvP1NjLd
 tKRoJ8WcTCx2w==
Received: by mail-ot1-f53.google.com with SMTP id h22so8729502otr.6;
 Fri, 26 Feb 2021 03:16:01 -0800 (PST)
X-Gm-Message-State: AOAM530zy0ZI7C1nGJ5PJYx9zM6V95BQ93MDs83dHQkOVKuamREyLj+Q
 0zYloAIKWkNSa+m933T3a1/ppMlB3tikPccq5oM=
X-Google-Smtp-Source: ABdhPJzbTD9+oRPkTWtTivkvm9UEiJBIin+bmH7bPY6EBzrYJP+wMWV0rwR2zLORG1tj9Ocwv5TU3B9IwWvguTNSaxo=
X-Received: by 2002:a9d:6b8b:: with SMTP id b11mr1870333otq.210.1614338160965; 
 Fri, 26 Feb 2021 03:16:00 -0800 (PST)
MIME-Version: 1.0
References: <20210225125541.1808719-1-arnd@kernel.org>
 <20210226081548.h5ls5fxihunzxjvx@ti.com>
 <CAK8P3a3ep7DFnMYnA7q5b-P8X7nd3TAz=t82011j8=koK3T08A@mail.gmail.com>
 <20210226110451.ijpllyczuquerfsr@ti.com>
In-Reply-To: <20210226110451.ijpllyczuquerfsr@ti.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Fri, 26 Feb 2021 12:15:44 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0C1aSgDm10gPtcognECo0tq3oRw+DbFsy+wz383qmrJw@mail.gmail.com>
Message-ID: <CAK8P3a0C1aSgDm10gPtcognECo0tq3oRw+DbFsy+wz383qmrJw@mail.gmail.com>
Subject: Re: [PATCH] spi: rockchip: avoid objtool warning
To: Pratyush Yadav <p.yadav@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210226_061603_456232_A134EAF8 
X-CRM114-Status: GOOD (  11.45  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, Arnd Bergmann <arnd@arndb.de>,
 Alexander Kochetkov <al.kochet@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-spi <linux-spi@vger.kernel.org>, Nathan Chancellor <nathan@kernel.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 Mark Brown <broonie@kernel.org>, Jon Lin <jon.lin@rock-chips.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Vincent Pelletier <plr.vincent@gmail.com>, Johan Jonker <jbx6244@gmail.com>,
 Chris Ruehl <chris.ruehl@gtsys.com.hk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Emil Renner Berthing <kernel@esmil.dk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, Feb 26, 2021 at 12:05 PM 'Pratyush Yadav' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
> On 26/02/21 10:49AM, Arnd Bergmann wrote:
> > On Fri, Feb 26, 2021 at 9:16 AM 'Pratyush Yadav' via Clang Built Linux <clang-built-linux@googlegroups.com> wrote:

>
> Returning an error code from this function (along with the dev_warn() or
> WARN_ON()) is the most sensible thing to do IMO. If the SPI layer sends
> an invalid value then the driver should be well within its rights to
> refuse the transaction. The function is currently void but making it
> return int seems fairly straightforward.

Indeed, this seems like a clear -EINVAL case. I've updated my patch, will
send after build testing.

       Arnd

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
