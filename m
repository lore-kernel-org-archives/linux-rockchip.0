Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 13861C432BE
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 15:22:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D993C60C41
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 15:22:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D993C60C41
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CKx+AXH0JNnb5eXsWabBmPgW7avzOmemO4SdLChVjjY=; b=hc0OZdS4tW4qEF
	wYWfFgbVr+OhLJtuZcOv4lmoj0oI6X9rhDWGqD7aRt8tall440bCghi8dBD8VLDdazHwzLmYTfTud
	cp8gd7JvxcLpeBqjRXiSei4oQ803nd3AZ7Xr8OjVHsDRyf58yOwjQn3HIT8Y/Up2Kxkj9hwSMaUE+
	uuD5O46rXTlbW2vPFYlKVEkbHr7YGai3qxLP6Kk7guW56Wzxl3HulGwXY6oM1k9qaMJcGGaUMTile
	zdkQjD4rwcO1s3z1jpQ9nag+4XWQEO4A2N2DLLV2eV+fG05hGt0Ny3BLLmVLHpBtShUc7AVq7pBXY
	9pAZgdqTlE8qa7AGIWCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8lOC-001HE3-HP; Wed, 28 Jul 2021 15:22:32 +0000
Received: from mail-yb1-xb31.google.com ([2607:f8b0:4864:20::b31])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8lMI-001GMF-EE; Wed, 28 Jul 2021 15:20:35 +0000
Received: by mail-yb1-xb31.google.com with SMTP id g76so4574141ybf.4;
 Wed, 28 Jul 2021 08:20:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=o9J+anRamv6ZCWPr2DTuO0dYhbRAoT47jmndMUGMGBQ=;
 b=UggwyPzjXdcBMG8TySoKOtZjIhO8R7LZQMde0mv/Gh+M/kY52rug4sfyhs4EJ3Acmn
 vkO9JOmwfywaRhuqBidq7oQb9C1iv9OY+559Io/YjxITg/Yrjm9fhkpFz1gQyxMyeePz
 Rie0EgTdmG/NeVFLZBxbX9TbcSeTiEEGJFiEpuWzEnlEJp+LOrV9AgNeeSS4Sel/blEK
 GpK1msonPpPyX0gwWSHgJiMcOzniahcpCNu3se0JmcmqSZuoGCqMbieqSkhRz2NQC7zp
 mQWYSZD84d93iU7awOz5YNASVssf7jhaLLIAjRFRW5C35lCHwMjUQWvbcNJ+H7DHzNSM
 xHlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=o9J+anRamv6ZCWPr2DTuO0dYhbRAoT47jmndMUGMGBQ=;
 b=IGL2nZq2pXUAPargxHiKREXADif+jDzuXRfhlhMO61t4UqfiAOkC4iNN7gyJts5/4l
 GTLBwGXRas0ZXIa28tcHeeiLjOHk9YJfWJOEr5GJKkKNLoGSkTxfjwEY4dbqyQWfMn19
 T5hR2uiB7XWD0LkypTTQTWsLxbh5kdpBnev5xdqx260PEKIkXIf+MCR/87yKTyUXbdA+
 BoO+a3n4Q9ftYJGjH/l99ivlZW1IGLAp3ke06X06IiIv9NN4mXYF7sTvewfgFIYO6eef
 Ioc0bGhQVEXM9tTnkfsGtZJXBoM6p1scyYSCd4tM0WOAyuzghthlGY4AOXmB3mRxcSlK
 oW/Q==
X-Gm-Message-State: AOAM533MpxfmD0NW8K/E7JFGP5TAxbUq141gUlVTpZ+mvjjERQDrITfb
 ANfYG378qXr3sQ9zTZAXZsFuSwO+C7/EKviIyf4=
X-Google-Smtp-Source: ABdhPJwHvxq0H0nZe5Ndm0BwQ5cEN3PjYE0YO7anNFQzBR78w7F1CnBqZGfrYvOK7HLhsRcHm3GfAYkaLn2SJYAY+TQ=
X-Received: by 2002:a25:808b:: with SMTP id n11mr293584ybk.141.1627485633743; 
 Wed, 28 Jul 2021 08:20:33 -0700 (PDT)
MIME-Version: 1.0
References: <20210728122606.697619-1-pgwipeout@gmail.com>
 <20210728122606.697619-2-pgwipeout@gmail.com>
 <fc6d5b02-707b-aa0e-9ef0-2984bbb1f5b8@gmail.com>
In-Reply-To: <fc6d5b02-707b-aa0e-9ef0-2984bbb1f5b8@gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 28 Jul 2021 11:20:21 -0400
Message-ID: <CAMdYzYoB0t6dB7BuZv7AFOQ7oYLbbPVQNybRxM_2y8MDTfXmyA@mail.gmail.com>
Subject: Re: [RFC PATCH 1/9] dt-bindings: soc: rockchip: add rk3568-usb2phy-grf
To: Johan Jonker <jbx6244@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 devicetree@vger.kernel.org, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_082034_546152_691C0792 
X-CRM114-Status: GOOD (  16.55  )
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

On Wed, Jul 28, 2021 at 10:36 AM Johan Jonker <jbx6244@gmail.com> wrote:
>
> Hi Peter,
>
> On 7/28/21 2:25 PM, Peter Geis wrote:
> > Add the documentation for the rk3568-usb2phy-grf node, which is separate
> > from the usb2phy node on this chip.
> >
> > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > ---
> >  Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> > index fa010df51a5c..3b0e06b6ea61 100644
> > --- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> > +++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> > @@ -16,6 +16,7 @@ properties:
> >            - enum:
> >                - rockchip,rk3288-sgrf
>
> >                - rockchip,rv1108-usbgrf
> > +              - rockchip,rk3568-usb2phy-grf
>
> Could you sort this in alphabetical order?

Will do, thanks.

>
> >            - const: syscon
> >        - items:
> >            - enum:
> >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
