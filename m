Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8298BC04A68
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Jul 2022 07:10:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ZxBAGrd0C+Uynn2DlSqp1aA78TEd9tNaZDnDfe6DAI=; b=DPDXhKvndVzhTp
	AdmI54zewH/EmJs93AHkkW4yOdHFIhghHgr14zoRC5/LykiHBcEtMqvp3UCDjDz3TMzS76O2Kwp1l
	DldBOs+kJELK5jLrt9x/k+xTXwiEWtZpu9s7ipRpc2u5pRY4MFyNjmltfEsc9OWk1JrfOArxXo+C+
	IbOeyrz/kzRqwYZcMQP+ei36ihupCT0ed61nU/pdOAP2kzerx7acCaMnHMOR8D9D0qZvy5kE84Vrd
	dg94uOTqaer/fIBaroEIA05EKBFZcYSQBgGjgcKVnTVueDi25auTJXsHtknMZvqUkvxUsg01wBysB
	viyRYDnarTB5VWV0ZsZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oGbB1-00AMIS-MF; Wed, 27 Jul 2022 07:09:51 +0000
Received: from mail-il1-x12b.google.com ([2607:f8b0:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oGbAx-00AMF0-J0
	for linux-rockchip@lists.infradead.org; Wed, 27 Jul 2022 07:09:49 +0000
Received: by mail-il1-x12b.google.com with SMTP id w16so8488581ilh.0
        for <linux-rockchip@lists.infradead.org>; Wed, 27 Jul 2022 00:09:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ym5PL6IKBpEk4cAV7KXiTLIEtkfx7CIk1VK2BN9v/Do=;
        b=EokX00qthJp/Vc5qrDq5CSaFSVLOQtxKetI3btAH4cOdEAonl07ckawUcO3jKfPiEZ
         WWs0ra5GVpPhv79lMhHcHD4hTBVOnnYigIbbL1LwcaxJX6VvvfuMBf/eaxl+T/X/6807
         gvWngX+/YtZOdGpz1Pglw+wQn8bVprrVT8f/m1La6PNJuGboT/LbCK0u+CyXMfvxiHY9
         Q8Sg0oshPxrj1oZOO1o4/fXeMmrUFhl/lNQp85BQswOK5/g5HRofnI9MwM30AnjKv8TW
         +6qmgo0t+2rb4Vn12zhoHXVOK3GHQjRtOMReAYLnv/HrAj9q7FUM/jcsqbO4ZUxNHyOo
         gSqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ym5PL6IKBpEk4cAV7KXiTLIEtkfx7CIk1VK2BN9v/Do=;
        b=eI73PMQJnQs/UFJcagE4nCRW+euoZUeFm1GIKo4n1vyoAz1qSz/eZ+aYUTUP9/4s/n
         N6SIvW4FTslO7KcAG4L6k7OZj3v7yVntxk8MJcoqNpWPtwbXyfKvq+TmD+eA3JDXR6S3
         nE8yLdGXu9f/LCF1r2MSSZHa1YVXSXroWtpgN10AVBShCdOVXZx/tlb2QfHL6y9+J4hL
         mlD3W/776HmZFSdrFSAky/PHsRpriLe1VZ1b3rxge7Ur1HvvsfMdDkb8i6DPqjXriSqm
         RcezsW19ybJN0GUp6ZKc7dn/CpNUQU341ftGyxGGJqoggeVJKMGzuTQJ5HmuKngSb8H3
         /RhQ==
X-Gm-Message-State: AJIora94dx9UdI2JDOEaRWGJaojTnynlAvxMqOIFq0gHkpb6R7RM25G1
	VR0dPsCFKIOvc6P335RP3lJRNGjkrfBpHZB5YpQj+w==
X-Google-Smtp-Source: AGRyM1u2Ixt5LYNut3xjACGU6+A4H5ueNqZ8jLaTGn9yigNXFcNvkAWo3ueMhhTg4T4z8/EFQrNlW1R9F8olN21Y7dk=
X-Received: by 2002:a05:6e02:19cc:b0:2dd:ad68:7443 with SMTP id
 r12-20020a056e0219cc00b002ddad687443mr2025463ill.141.1658905785835; Wed, 27
 Jul 2022 00:09:45 -0700 (PDT)
MIME-Version: 1.0
References: <20220723204335.750095-1-jagan@edgeble.ai> <20220723204335.750095-3-jagan@edgeble.ai>
 <e1d57de9-060b-bd58-2cea-85f41f75e7be@linaro.org> <CA+VMnFwNqm57StGj_JyTT2TM56uD-nFjxCekEH6aKYDMhEuxjw@mail.gmail.com>
 <360f7d11-96f4-369e-1289-6c9dc3c49ca4@linaro.org> <CA+VMnFzAjif9Af0305B919Dwadgq7MUjiuKJQ3oXwZztTWNX5w@mail.gmail.com>
 <bc7f2302-92f2-de6c-6102-b2cb388c9906@linaro.org>
In-Reply-To: <bc7f2302-92f2-de6c-6102-b2cb388c9906@linaro.org>
From: Jagan Teki <jagan@edgeble.ai>
Date: Wed, 27 Jul 2022 12:39:35 +0530
Message-ID: <CA+VMnFynxRL7ynLh4ZwGWYj-97pHP4+me8CvCCbm36Sg=4K9AA@mail.gmail.com>
Subject: Re: [PATCH 02/22] dt-bindings: power: Add power-domain header for RV1126
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Kever Yang <kever.yang@rock-chips.com>, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, Elaine Zhang <zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220727_000947_663857_E1F6947A 
X-CRM114-Status: GOOD (  26.08  )
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

On Wed, 27 Jul 2022 at 12:31, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 27/07/2022 08:52, Jagan Teki wrote:
> > On Tue, 26 Jul 2022 at 19:22, Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> >>
> >> On 26/07/2022 15:44, Jagan Teki wrote:
> >>> On Sun, 24 Jul 2022 at 02:28, Krzysztof Kozlowski
> >>> <krzysztof.kozlowski@linaro.org> wrote:
> >>>>
> >>>> On 23/07/2022 22:43, Jagan Teki wrote:
> >>>>> Add power-domain header for RV1126 SoC from description in TRM.
> >>>>>
> >>>>> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> >>>>> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> >>>>> ---
> >>>>>  include/dt-bindings/power/rv1126-power.h | 34 ++++++++++++++++++++++++
> >>>>>  1 file changed, 34 insertions(+)
> >>>>>  create mode 100644 include/dt-bindings/power/rv1126-power.h
> >>>>>
> >>>>> diff --git a/include/dt-bindings/power/rv1126-power.h b/include/dt-bindings/power/rv1126-power.h
> >>>>> new file mode 100644
> >>>>> index 000000000000..f15930ff06f7
> >>>>> --- /dev/null
> >>>>> +++ b/include/dt-bindings/power/rv1126-power.h
> >>>>> @@ -0,0 +1,34 @@
> >>>>> +/* SPDX-License-Identifier: GPL-2.0 */
> >>>>
> >>>> Dual license and a blank line,  please.
> >>>
> >>> Yes, all rockchip power includes (at least here) are GPL-2.0 what is
> >>> the issue with it?
> >>
> >> The headers are part of bindings and all bindings should be dual
> >> licensed, so they can be used in other projects.
> >>
> >> Of course if copyright holder does not agree to release it on BSD, then
> >> it would be fine as exception. Also would be fine from us not to accept
> >> such bindings. :)
> >
> > I don't hold anything here to use dual-licensing. The only thing I'm
> > wondering here is none of the rockchip power includes (which are
> > merged) are using dual-licensing they simply have GPL-2.0 which is
> > used in BSP.  Let me know what you suggest?
>
> Hm, I think you asked this above and I answered that dual license should
> be used. Maybe we misunderstand each other?

Sorry, I'm asking again as I'm liable to change the license here or not.

>
> Do you include in this header any work which cannot be licensed on BSD
> (e.g. is derivative of existing GPL-2 work)?

Yes, it is from BSP
https://github.com/rockchip-linux/kernel/blob/develop-4.19/include/dt-bindings/power/rv1126-power.h

Thanks,
Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
