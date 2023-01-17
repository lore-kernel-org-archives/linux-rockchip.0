Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA4E3C3DA78
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Jan 2023 12:56:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cSwePkSHP2eyOswnoHJIT9G+27vawz7xuPjTtctJ9CQ=; b=eVcnCXwe/IV20k
	oCFqmM0VFrOyyjP8aJzCnIUXLfBkzJS3VuvRxYQfpyZtS+mPa233OdaN/93OCbELXX2Ur744Fyc9/
	IeR1IVNXyEJAiSY5TurvXfVY2geyZ4+em2DJJ/BSVzGRLEIfCdEaqy2EbQLhsJhYDt0SxXYpJidkp
	cZUTPKPaJuXGwr+1RR7W1d044pJqVP5aKw04gMBTx9hgMHmyDbrNcFOjBcZOKF6fBmv7ASmtkJLzv
	tTsq1VzmV+uTk9z2N8Rlm7AbF44g6ocujQS9tz+9t0Os0sqGutWISUmBl7Aljpp0M3ydiP6v27c7e
	wj9dfsGrDyxcJ4OdtqBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHlVS-00EGmS-8t; Tue, 17 Jan 2023 12:56:02 +0000
Received: from mail-yb1-xb30.google.com ([2607:f8b0:4864:20::b30])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHlVP-00EGk2-A4
	for linux-rockchip@lists.infradead.org; Tue, 17 Jan 2023 12:56:00 +0000
Received: by mail-yb1-xb30.google.com with SMTP id p188so33872595yba.5
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Jan 2023 04:55:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=r8xCLHLWVwPFFkZ7TOx5xM7KcS2r+Wpana/4i2E+sQU=;
        b=F08mw2PlvSgwJqK0kbeyWHrtqPYgzxdGfohxFDwjoRpIVQbDQsnim7BPaOb58LUmnj
         hg52ZwLerjlU08obdGx5qjgVjcsKtEKRQisT+FwK6iNFnlecV7K+rx5eWzDq7D40WQJ6
         WPOO29PLGh7U7+Xb2BFFWf34ilB95LcRakAHE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=r8xCLHLWVwPFFkZ7TOx5xM7KcS2r+Wpana/4i2E+sQU=;
        b=A2JVVqMRKB088Jqp1sDiEXVOx3jsxEdXhKWFykH0PWGLdhHcSa0bImBzra0P6Yku/r
         3Ly8h47KKud/7HpZam3qqIM7u/1/fNsna515n846xMN1e8lokWsDeZMoESu8BmwwvY0n
         H03J/mQPHBBIKo1VR0cYJLwJJ6P1a7VwqXmv4dHqngltQk+6sfC+d+2bdH7YoXaZEd51
         32AyAzxQpxRgZqCD9JKdp3+Cjx+LYfk22JvZFeezdZON2l3u8kuw0H6Q+DP1z/40loCN
         vlgTnXnQYwHd3eMGLyqzyUgw63NdSuzvspLsgv52hDvNhn9Hn+t2NvabnMgwXrifIKid
         KbEw==
X-Gm-Message-State: AFqh2koWt5HJ9ZR+Cq578W6c1AIYWit5Z+ImQwobSG/PAzcPiye0j4N9
	Z+xcOof3ijm6jYoaVNnk0cQFhsbSTOQzB5rVr0qV9g==
X-Google-Smtp-Source: AMrXdXvPvoCqAQG2BqWk87cM7kJJ0ivEMPWBPWHpmS8kYwK4TmK/gcjHWUrLUlDJp8VRy5Obx54DWd3q+ndQ1Nsee7o=
X-Received: by 2002:a25:bccb:0:b0:7b9:daf2:4117 with SMTP id
 l11-20020a25bccb000000b007b9daf24117mr488591ybm.408.1673960156182; Tue, 17
 Jan 2023 04:55:56 -0800 (PST)
MIME-Version: 1.0
References: <20230117105504.18296-1-jagan@amarulasolutions.com>
 <20230117105504.18296-3-jagan@amarulasolutions.com> <592dab00-9e4d-4445-2f77-ecff12b8ca70@linaro.org>
In-Reply-To: <592dab00-9e4d-4445-2f77-ecff12b8ca70@linaro.org>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Tue, 17 Jan 2023 18:25:44 +0530
Message-ID: <CAMty3ZD9f+_LB+vF+gnOcBTWMkNTVnRVzz8UaVqk9P_oOv_rUA@mail.gmail.com>
Subject: Re: [PATCH 3/7] dt-bindings: arm: rockchip: Fix description and
 compatible for Radxa CM3i
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Chukun Pan <amadeus@jmu.edu.cn>, FUKAUMI Naoki <naoki@radxa.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_045559_369442_424F64D0 
X-CRM114-Status: GOOD (  18.28  )
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

On Tue, Jan 17, 2023 at 4:36 PM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 17/01/2023 11:55, Jagan Teki wrote:
> > Fix the dt-bindings for Radxa CM3i SoM based boards with proper
> > description and compatible strings recommended by Radxa.
> >
> > Fixes: ae9fbe0b1f96 ("dt-bindings: arm: rockchip: add Radxa CM3I E25")
> > Cc: Chukun Pan <amadeus@jmu.edu.cn>
> > Reported-by: FUKAUMI Naoki <naoki@radxa.com>
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> >  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > index 3d3c59624483..6f276d787e50 100644
> > --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> > +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > @@ -628,11 +628,11 @@ properties:
> >            - const: radxa,radxa-cm3   # Radxa Compute Module 3(CM3)
> >            - const: rockchip,rk3566
> >
> > -      - description: Radxa CM3 Industrial
> > +      - description: Radxa Compute Module 3 Industrial(CM3i) SoM based boards
> >          items:
> >            - enum:
> > -              - radxa,e25
> > -          - const: radxa,cm3i
> > +              - radxa,radxa-e25      # Radxa E25 Carrier Board
> > +          - const: radxa,radxa-cm3i  # Radxa Compute Module 3 Industrial(CM3i)
>
> No, it does not match your patch 2/7. It also does not make sense to
> duplicate vendor prefix.

2/7 follows the existing bindings and that one is incorrect as the
actual product name is radxa-cm3i not cm3i. This patch is trying to
fix that.

Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
