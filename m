Return-Path: <SRS0=C2RB=CM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E7E5C433E9
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2020 16:47:31 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2017220716
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2020 16:47:31 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="MRlsYHIa";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="DrefXjNN"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2017220716
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NdzkATjHrwUS/RxW5pnBT/gdfNEHftR3c4tmonpxaNo=; b=MRlsYHIa2s7v94aH+InihIxRZ
	I3DGCM1GLqN2RFT9Eg/RDGFVF/aRc4yEF9D/s0q3vh1EldNL5rodtD1w7408SdzjWzUgUeof8eMEx
	+znFtGotcr7vwZE1qFrVC5zTCviL/DzuQw90PSr0YYgToskTCIAaZPL4IvK3M7iLtCXv5QknD8Vdq
	RwOPZTaFC8Wr7N9XhzZQA+OE0VALGs6gOKhA0+7gr/B/RfFDwsiZmJbQ/74aLgykRXNR4WuS1HBvj
	um3XwG5CXwsQNOQ9dHc/nJfRpU40eOoi2MAeiaWEuLPrdhCod6RwT0c+Ud6fmD6aTKJ10Ml9Ql3Ig
	XJsN8i0Eg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kDsOV-0003Nl-1s; Thu, 03 Sep 2020 16:47:27 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kDsOO-0003KP-7w
 for linux-rockchip@lists.infradead.org; Thu, 03 Sep 2020 16:47:21 +0000
Received: by mail-ed1-x544.google.com with SMTP id ay8so3335033edb.8
 for <linux-rockchip@lists.infradead.org>; Thu, 03 Sep 2020 09:47:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BoOsmQ2rBW+EbnUHAzVo+1cABtO0sjJmNcwrCxNVF/A=;
 b=DrefXjNN8klAxwkDEtDXlFK8vggfcZ/C/CRF+LX12Ix1TZ08f0o81Izumvko0Z2jVF
 LycY29rD0Pxs+7jbEPJZloKwDB2Uc4g/PH8c5khbTdNmIPWrx8dHYNHOeJMvQMQQB1qJ
 HwAKRNQ2jz9daw1E8VUsyq24UC6Mcxb74XxIs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BoOsmQ2rBW+EbnUHAzVo+1cABtO0sjJmNcwrCxNVF/A=;
 b=WeSQB8aKn9OvHMhP7o5xhnspoD8omnmIRjVJoXrMnT3/8U7yihOEHMRg2s9Iihb2j4
 /3TfahHVxB1TL2AqtEioINPC/Sc+7rBes3ZM/j73N/o3tLkw5W+iIFPbeHFherERQRdA
 qeKALWWir/Qolromke/xFn9wPb9ynrflEaYdLbhmNjlpQ5vp0VTEBPysQyaJf69+5ZJa
 zt4is0F5xNKNEd8u/amOcdoh2ks7dKqlYiBS0zn5LCTQ+M+vNJFIuA1jBWkvDXsqA84M
 8AeGph67+VILFizZSza/8ZTB/ypwN6/k3UTx+hNOd9cj3wkBw0L09EGEjy+TdNWmPTNN
 zTpQ==
X-Gm-Message-State: AOAM532epJVeI81Y/DCtBdKAPhvu4SmDzhom2JXeYqQQ02PP9857YUdF
 T1hFy2kvVQ3256t0qbbdL36hCezoNtevIIl6uDwd7g==
X-Google-Smtp-Source: ABdhPJxMeFogkFas77zemMlntf263DD9ilLv7Qd6K+YljkScZccbQgYQDbdCP80JMCHM2uxPrdDdTxdUYKasre4/cYA=
X-Received: by 2002:aa7:d750:: with SMTP id a16mr4221514eds.362.1599151637185; 
 Thu, 03 Sep 2020 09:47:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200831082917.17117-1-jagan@amarulasolutions.com>
 <20200831082917.17117-6-jagan@amarulasolutions.com>
 <20200903162550.GA2896127@bogus>
In-Reply-To: <20200903162550.GA2896127@bogus>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Thu, 3 Sep 2020 22:17:05 +0530
Message-ID: <CAMty3ZCXV9=VzVKiKJ740RcR+uYA7CHUzjrDL0vwQ1NOw9n4FQ@mail.gmail.com>
Subject: Re: [PATCH v3 5/7] dt-bindings: arm: rockchip: Add Engicam PX30.Core
 C.TOUCH 2.0
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200903_124720_561296_6597CD3E 
X-CRM114-Status: GOOD (  19.37  )
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
Cc: devicetree <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Suniel Mahesh <sunil@amarulasolutions.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Sep 3, 2020 at 9:55 PM Rob Herring <robh@kernel.org> wrote:
>
> On Mon, 31 Aug 2020 13:59:15 +0530, Jagan Teki wrote:
> > PX30.Core is an EDIMM SOM based on Rockchip PX30 from Engicam.
> >
> > C.TOUCH 2.0 is a general purpose carrier board with capacitive
> > touch interface support.
> >
> > PX30.Core needs to mount on top of this Carrier board for creating
> > complete PX30.Core C.TOUCH 2.0 board.
> >
> > Add bindings for it.
> >
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> > Changes for v3:
> > - none
> > Changes for v2:
> > - new patch
> >
> >  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
>
>
> Please add Acked-by/Reviewed-by tags when posting new versions. However,
> there's no need to repost patches *only* to add the tags. The upstream
> maintainer will do that for acks received on the version they apply.
>
> If a tag was not added on purpose, please state why and what changed.

Yes, it's on purpose. The previous binding was about C.TOUCH with LVDS
board and this one is C.TOUCH carrier only. ie the main reason I have
not included. I did mention in the cover-letter saying previous one
dropped and the C.TOUCH carrier added.

Hope this answers your query.

Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
