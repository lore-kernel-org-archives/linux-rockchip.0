Return-Path: <SRS0=2K8y=II=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 00319C433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Mar 2021 20:58:36 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 438C764EE8
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Mar 2021 20:58:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 438C764EE8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+Hz7MEN0x/8JNgcgEibFLFC9IDHfmierqpF4havjjAA=; b=F99JtYOpLF8OoKZ+H54SVefG8
	V6LYHuqnaggVCen1VSv67kRB4f76+lbik5x4ohX9pgLqBtdCV19HWaXiZVx8MrL4y8XXMYw6eG2u6
	b3e55kQt14Fi+TmdyaWetHV87ashFm60O/n6bczhsCSHmiCW0Zhj09LcrZMV13HdArQH7iQrWBiQY
	KBxOS001fcVqLkt1xkzHAuY8PRy74cyI+dVEGivqv9KDBSsFFe6ImUJIQ5hCa8o1tOOpwrds0nJg2
	lrUiPKvz27cL8rOl55JX9IxH/pCMkqLrzm0+rrsD0kbGzIK2KqsxgE4nny3d0ScD1gAdH7sbbbx06
	eHlNrz+tA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lK5uX-007i7I-UM; Wed, 10 Mar 2021 20:58:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lK5uQ-007i6d-2c
 for linux-rockchip@lists.infradead.org; Wed, 10 Mar 2021 20:58:27 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id E8F2064FC9
 for <linux-rockchip@lists.infradead.org>; Wed, 10 Mar 2021 20:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1615409900;
 bh=pRdp6Or+xWH9uQm/XD+ddLGeOs+oJVy1HPUmgvyVhfI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=qnrnn+ZvxH0YHuXXsI/nLVbDxnrjE+Gd1pmUDVRXEvwgTHJ3jIUdNaUuKbC0djob7
 2ZAMcvq+dzH14VfYeQ7QMIQQ/iE4u+E02BhRY9Fj+3BWAVEl9sH6S913pa5tuFQ8AK
 kFmQSJaHycvKKwhtnxMN5efcyzK9GLSUjNcvwukMMe7V6TJFWlOM8QgBClHGUTdAO8
 tj7g2amwdfwoaj0bkSUq4F8IjyVeJcsm50Dzoecdk1G6g50C8ihD/HYmair0eTvOHj
 Ml+D+Aq5hOJYmQQcZ/nb1tM2lBbt25lUem1PnIr7Gy/1SCFGTVrVlIdYyT2az9JScA
 Ixh2FLDot/W3A==
Received: by mail-ej1-f45.google.com with SMTP id c10so41461956ejx.9
 for <linux-rockchip@lists.infradead.org>; Wed, 10 Mar 2021 12:58:19 -0800 (PST)
X-Gm-Message-State: AOAM531sLkYsHQ/acTp9Jjm1PVGXlPekPUzg/uAjAxJIEunn18KsXCvd
 xyzGzewX1IF3ZYFL4UTsI4Jd6DxaIA/Qd0hOYQ==
X-Google-Smtp-Source: ABdhPJw0cfBK+wxXYoeL+KV83s9r5gdTg3TpXOSPGEAiK5qMN3apGPP2k4JS/2HWZwYXB2MoQtWXYO1Wozz1AHBqMzY=
X-Received: by 2002:a17:906:7d48:: with SMTP id
 l8mr333166ejp.108.1615409898298; 
 Wed, 10 Mar 2021 12:58:18 -0800 (PST)
MIME-Version: 1.0
References: <1615254990-192784-1-git-send-email-shawn.lin@rock-chips.com>
 <1615254990-192784-2-git-send-email-shawn.lin@rock-chips.com>
 <20210310030122.GA1664258@robh.at.kernel.org>
 <9f8b3be6-d87e-d944-d5db-67f3bcf0fad0@gmail.com>
 <7573e8c1-3f55-9925-bc14-534455f1ffa3@rock-chips.com>
In-Reply-To: <7573e8c1-3f55-9925-bc14-534455f1ffa3@rock-chips.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 10 Mar 2021 13:58:06 -0700
X-Gmail-Original-Message-ID: <CAL_JsqKTvzmskPL5eNVCzMmS7YO4oiyGdrf1+73ET1_DfgjPyQ@mail.gmail.com>
Message-ID: <CAL_JsqKTvzmskPL5eNVCzMmS7YO4oiyGdrf1+73ET1_DfgjPyQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] dt-bindings: mmc: sdhci-of-dwcmhsc: Add rockchip
 support
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Johan Jonker <jbx6244@gmail.com>, Ulf Hansson <ulf.hansson@linaro.org>, 
 linux-mmc <linux-mmc@vger.kernel.org>, Adrian Hunter <adrian.hunter@intel.com>,
 devicetree@vger.kernel.org, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Heiko Stuebner <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_205825_575725_2CA5CB45 
X-CRM114-Status: GOOD (  19.76  )
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

On Wed, Mar 10, 2021 at 2:37 AM Shawn Lin <shawn.lin@rock-chips.com> wrote:
>
>
> On 2021/3/10 15:00, Johan Jonker wrote:
> > On 3/10/21 4:01 AM, Rob Herring wrote:
> >> On Tue, Mar 09, 2021 at 09:56:29AM +0800, Shawn Lin wrote:
> >>> This patch adds rockchip support in sdhci-of-dwcmhsc.yaml
> >>>
> >>> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> >>> ---
> >>>
> >>> Changes in v3: None
> >>>
> >>>   .../bindings/mmc/snps,dwcmshc-sdhci.yaml           | 24 ++++++++++++++++++++++
> >>>   1 file changed, 24 insertions(+)
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> >>> index f99fb9f..43989f2 100644
> >>> --- a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> >>> +++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> >>> @@ -16,6 +16,7 @@ allOf:
> >>>   properties:
> >>>     compatible:
> >>>       enum:
> >
> >>> +      - rockchip,dwcmshc-sdhci
> >
> > Compatible strings are supposed to be SoC orientated.
> > What SoC was this change for? rk3568 ?
> > Could Shawn confirm that?
>
> Yes. We are inclined to use this controller from now on for a
> long time for up-coming SoCs. Should we tag compatible for rk3568
> specified? One of the negative things I could come up with is that we
> do this for dwmmc-rockchip, but we end up doing nothing else,
> except for adding new compatible string again and again in Document.

Yes, you should make this SoC specific.

It's one line patches if nothing else changed.

> >
> >           - rockchip,rk3568-dwcmshc-sdhci ??

I'd shorten it to 'rockchip,rk3568-dwcmshc'.

> >
> > Could Rob advise here?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
