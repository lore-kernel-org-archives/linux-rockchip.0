Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DE96C4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 17:26:03 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2E5A86101E
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 17:26:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2E5A86101E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fGotQCIrssu/A8/LHAIg5omHqpcYLwhih4Ayo9PNjRY=; b=jbsZ2+uwN1qov+
	Zg6UOjK5SXXvYUM/jcHy9k+jXgaKwk9X+hibaGitj+NQuU8fexVrRko+7I6Xzp4NLBgMECik7K1SO
	eC89Gk3we+K9LaQbOXbnAqCIuQkWkOM84BIG25U3qirO2YxEVAq/IzqeHdKO0smIQhPuiwhiDrUx2
	6OxwpxwEowJXpiozolt5KVAeexYK1E1/hBrrQZca25xoLsdA10lu3R79bTFeW3Zh1PyqCgj8/MSmg
	SLcYslSICFu2G/C9X3VE1fxo8mKzWf5FK54Rq3CGSFORwNUKkB8rRTFou7BZi9Knb4t21lqqK41Vy
	kWT+vwD7hJsyWXDk+erg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8nJf-001ohv-VN; Wed, 28 Jul 2021 17:26:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8nJM-001oeL-FM; Wed, 28 Jul 2021 17:25:41 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 155B16103E;
 Wed, 28 Jul 2021 17:25:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1627493140;
 bh=LOPa9M/VXLESqMP09wMrmR6ALvHacP6UNwwzwnDINFo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=nKbnqqp7ZAL1TVU2KCxlMI0NE963f7igidLLFS54z9dWN91j7Ao5CQuouUHBqHl+g
 dcCAZiIM9aFkGdraEMQt3hhUCMOEgfKMNRIoky6FMxnE649cPuDK6bWfWDEVGarh9T
 FxFNSY5syj2f6ZruMOO1DLMGeDNpnypBzwP8XLuSsdWAZs1u8KJZTGNlOmMkIMZvM7
 zm5vUf6Aa/0MGK9fr5zCGO3K/lbs0w/G/ucNmvsz7JI/kKz7gLFWCQVHKmo4IJ7R9F
 +VuTBuQMxDL3G1VGL2SyJiQfd6JlsAaynGvHnnNYJdNn6XaMy2mvVku7PpBNgl0ZBH
 Q4+FWgtC1mARg==
Received: by mail-ej1-f52.google.com with SMTP id jg2so5919163ejc.0;
 Wed, 28 Jul 2021 10:25:39 -0700 (PDT)
X-Gm-Message-State: AOAM532lAbVogqPd1c8zFDPHB6jMM3w4RkA3GzOD5bNrnOKIc2dDuUFx
 Swl0EJ82J/zuc1gkuSJLydCwO9bky/vZSmJNBA==
X-Google-Smtp-Source: ABdhPJwjV6JnpxeDQO/A1R1Vv9Ly6bfQZtLChu6Kyy9z+4HlfXjFG80f0I7SA2bQNHDFom/M3452cC52BHRDuhUNS+s=
X-Received: by 2002:a17:906:af7c:: with SMTP id
 os28mr507805ejb.341.1627493138663; 
 Wed, 28 Jul 2021 10:25:38 -0700 (PDT)
MIME-Version: 1.0
References: <20210710151034.32857-1-pgwipeout@gmail.com>
 <20210710151034.32857-5-pgwipeout@gmail.com>
 <20210715162131.GA1184545@robh.at.kernel.org>
 <CAMdYzYpXNdmHKBOOgC6DL-_7qrZyifnDPB=WuU0vAY8qPj1_ww@mail.gmail.com>
In-Reply-To: <CAMdYzYpXNdmHKBOOgC6DL-_7qrZyifnDPB=WuU0vAY8qPj1_ww@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 28 Jul 2021 11:25:26 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJxutcEjDC6Fv1BTnsx6PqL1Th3hNfEOt+WeR8=cgK9ow@mail.gmail.com>
Message-ID: <CAL_JsqJxutcEjDC6Fv1BTnsx6PqL1Th3hNfEOt+WeR8=cgK9ow@mail.gmail.com>
Subject: Re: [RFC PATCH 4/4] arm64: dts: rockchip: add basic dts for Pine64
 Quartz64-A
To: Peter Geis <pgwipeout@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>,
 Liang Chen <cl@rock-chips.com>, devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_102540_592417_F30EC28F 
X-CRM114-Status: GOOD (  15.97  )
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

On Tue, Jul 20, 2021 at 10:19 AM Peter Geis <pgwipeout@gmail.com> wrote:
>
> On Thu, Jul 15, 2021 at 12:21 PM Rob Herring <robh@kernel.org> wrote:
> >
> > On Sat, 10 Jul 2021 11:10:34 -0400, Peter Geis wrote:
> > > Add a basic dts for the Pine64 Quartz64 Model A Single Board Computer.
> > > This board outputs on uart2 for debug.
> > >
> > > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > > ---
> > >  .../devicetree/bindings/arm/rockchip.yaml     |   5 +
> > >  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
> > >  .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 321 ++++++++++++++++++
> > >  3 files changed, 327 insertions(+)
> > >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> > >
> >
> > Acked-by: Rob Herring <robh@kernel.org>
>
> Thank you!
> I need to split the dt-bindings out into a separate patch, and the
> quartz64-a dts has some mild changes.
> Are you okay with me using your ack still?

Yes.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
