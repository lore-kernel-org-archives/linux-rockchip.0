Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E315C04A68
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Jul 2022 06:53:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uiIjMjG8NVpwAOGl9Tp8riYMKldJjrpVBZ0fr7qT99w=; b=Jvy9rk9Tg3eTaM
	/eegkg8I7m+FMVXg7ybq+3ib4Srhso0ucOFOje0+vsRccUtETuXdlTsDAA14v58i9ADCwhIyLrG61
	O/ePF96iASmMisEELHTTxejzibH5hbh0PsJNqgC8jx6BVvaIVvJYDX6hTq4K4W/msOwvVp0/TnGIH
	MpwFc5v+CyLOXVFwh4zpzPW+gOFvIdmILk6CoP6S9UD4LWW+qDobYA426NMRVBzI3GhOcJjOjIR1C
	HqP9lwOtFVJfTABOva1rejDJ/22IRJzbwsjA8T9KmM8dLSyCKJxqZ5MBPeN70YbChOdSpc25V3oBX
	do1jVG7jxOmAJ+LZ/mRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oGauu-00ABon-PS; Wed, 27 Jul 2022 06:53:12 +0000
Received: from mail-il1-x129.google.com ([2607:f8b0:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oGaur-00ABlF-7j
	for linux-rockchip@lists.infradead.org; Wed, 27 Jul 2022 06:53:10 +0000
Received: by mail-il1-x129.google.com with SMTP id d4so8425851ilc.8
        for <linux-rockchip@lists.infradead.org>; Tue, 26 Jul 2022 23:53:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=EVHPMBJtqujxX/VBmofI9sTd6D/nAjo4TTOcZSUMhtA=;
        b=gyAWVFXUV2K9BGouMBR57rE/DDHvORc3YKzyFA6kvcsUYwH0R1RzvccLA50GHzepQ8
         yXeP9I0hpk+J6K7KgRl66nhGerdhX17r5PZbCSI7fkxZNsnPkfn/qsXmePDZeGqQZILQ
         Q6Pkwltg7Qtgf89wyZwymgIp/eMf/jmj66gNCsHsXrrH2sidGjCTSXfcbI3gW7UQTNzn
         WlmyCsSWZXRRvosEQqXGMT/vltu4NPKLs+fxsimlAxdmAoZgDwPt4fJ/8BStluUNYaJn
         jOj1U+hmpCWWkGWlKSL/Z1uIpbUSkAlaraAPGPeTI2yAdVZFvubIopKTrvYivBOkbqMQ
         IURA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=EVHPMBJtqujxX/VBmofI9sTd6D/nAjo4TTOcZSUMhtA=;
        b=YZzeEsqz3JawwcDu95k3H1S8pCSrRql5rD4XBN03pKmBBUJwj/BCYjQW3+Dtq/9GMb
         pdoLBN9ndxaTQ2RPmK413zN2+G2HKX0kPxGZf4M2TYDZIf0RQgCz3bIqSQLvPgO7j+Xg
         sjpeGe8P3YxYa/YjSC1NyFvoLstsp3AUXLi4dkdwkLzBGhN0BnGD79hqM454Dkz3PXHI
         Gg0s/1xOdaCjr8kJVptwRJrZmmL6x9Kkr2vqeHnwqpdMtbhg3JYtW3S0SiDdQhJHroR9
         iKX53SDdWWDVNZG30b03r/Hlo/AGzpCG2fdDMSqaZTsWfk7F9b8aXDJBBWAxdYggJnwq
         vllA==
X-Gm-Message-State: AJIora/HDFjIjn05UeQ4rC9E1i5OWH+7TKQvbgEtuoecW76JGSOzcpmF
	TahULWsJHUGlOP6rM3Lcl2hr4PB1dMbXR0zAYqEa9g==
X-Google-Smtp-Source: AGRyM1trz0hjoHAOEd8djqlRxj55j0RShp1tsDTS/u4EmP/r1ce83f00Q6Bx/LPCahv1h04wegwx8mMUNs2TFsynZew=
X-Received: by 2002:a05:6e02:2186:b0:2dd:14dc:8049 with SMTP id
 j6-20020a056e02218600b002dd14dc8049mr8695401ila.79.1658904787366; Tue, 26 Jul
 2022 23:53:07 -0700 (PDT)
MIME-Version: 1.0
References: <20220723204335.750095-1-jagan@edgeble.ai> <20220723204335.750095-3-jagan@edgeble.ai>
 <e1d57de9-060b-bd58-2cea-85f41f75e7be@linaro.org> <CA+VMnFwNqm57StGj_JyTT2TM56uD-nFjxCekEH6aKYDMhEuxjw@mail.gmail.com>
 <360f7d11-96f4-369e-1289-6c9dc3c49ca4@linaro.org>
In-Reply-To: <360f7d11-96f4-369e-1289-6c9dc3c49ca4@linaro.org>
From: Jagan Teki <jagan@edgeble.ai>
Date: Wed, 27 Jul 2022 12:22:56 +0530
Message-ID: <CA+VMnFzAjif9Af0305B919Dwadgq7MUjiuKJQ3oXwZztTWNX5w@mail.gmail.com>
Subject: Re: [PATCH 02/22] dt-bindings: power: Add power-domain header for RV1126
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Kever Yang <kever.yang@rock-chips.com>, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, Elaine Zhang <zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220726_235309_314326_A033D917 
X-CRM114-Status: GOOD (  20.63  )
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

On Tue, 26 Jul 2022 at 19:22, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 26/07/2022 15:44, Jagan Teki wrote:
> > On Sun, 24 Jul 2022 at 02:28, Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> >>
> >> On 23/07/2022 22:43, Jagan Teki wrote:
> >>> Add power-domain header for RV1126 SoC from description in TRM.
> >>>
> >>> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> >>> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> >>> ---
> >>>  include/dt-bindings/power/rv1126-power.h | 34 ++++++++++++++++++++++++
> >>>  1 file changed, 34 insertions(+)
> >>>  create mode 100644 include/dt-bindings/power/rv1126-power.h
> >>>
> >>> diff --git a/include/dt-bindings/power/rv1126-power.h b/include/dt-bindings/power/rv1126-power.h
> >>> new file mode 100644
> >>> index 000000000000..f15930ff06f7
> >>> --- /dev/null
> >>> +++ b/include/dt-bindings/power/rv1126-power.h
> >>> @@ -0,0 +1,34 @@
> >>> +/* SPDX-License-Identifier: GPL-2.0 */
> >>
> >> Dual license and a blank line,  please.
> >
> > Yes, all rockchip power includes (at least here) are GPL-2.0 what is
> > the issue with it?
>
> The headers are part of bindings and all bindings should be dual
> licensed, so they can be used in other projects.
>
> Of course if copyright holder does not agree to release it on BSD, then
> it would be fine as exception. Also would be fine from us not to accept
> such bindings. :)

I don't hold anything here to use dual-licensing. The only thing I'm
wondering here is none of the rockchip power includes (which are
merged) are using dual-licensing they simply have GPL-2.0 which is
used in BSP.  Let me know what you suggest?

Thanks,
Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
