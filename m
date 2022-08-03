Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9AA3C19F28
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Aug 2022 11:51:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NasIFoHBkBz7PTLDFS8u25W3bHyLmpmVikgqBelLxK4=; b=xEununmg9w/5oq
	Ykl0xpJy5ZpqgqQxFBb8A0PUy+ztfuM+fn7pIAWu1004LoNYSVI9sg3JBiYwsI7zumfRpW/4w8PVY
	vJxg29sIHO58QjRFI4RD4islYd1vq/sQRZMHeiCW0iCPDLaIjs7n8kbs87SzygLqmtK/b4pB+lcqI
	7+q581p8US77K7WR+tqhZ/LX/cORISWI/kLESrPn0QRXyC/BThC2raD5SXdihmQZV4zR4g4jncLvs
	LbO5NQEbQflQ4UWxLJ2LbrGFxcj8Us29cBcqJpkTnYrPRruQV1TBNT+AAOdNuzLs+PTvNws75Naag
	MBBOPaO0anChTJEW+rEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJCuU-005a32-03; Wed, 03 Aug 2022 11:51:34 +0000
Received: from mail-il1-x12d.google.com ([2607:f8b0:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJCuR-005a10-IH
	for linux-rockchip@lists.infradead.org; Wed, 03 Aug 2022 11:51:32 +0000
Received: by mail-il1-x12d.google.com with SMTP id t15so8351851ilm.7
        for <linux-rockchip@lists.infradead.org>; Wed, 03 Aug 2022 04:51:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=EoTgeRCxBFuyoRmK/nVFvAZexnEido63F1iRgCjtE4I=;
        b=qBWKqHfNUzZmDs+T7fVLU/8groGDK4U0c+Nyy+uJifM9msoacv9u+Zmu0k3IAp0UNM
         uHvKfROJES2rkihqnAHchNDsEpnkt/wH14VJBPCxg6cqNzXNgTTLQ2SAyTm5/VF/7MHk
         f+FmbRF9NinVsBjyb6uCJF5Pl+VzPz59wtEuoccBWplRbJyKSMnKyTAr6dby7HFNsxRz
         lydwVBY18kXp5Ps1vtMV6swvmAEHsjTNgvQ3cCcCuyR0lp1FMSyAI3dxGx23aQ26PhZq
         eLbOJy/NZL8tvVpc5LG1kIbXW9pMliv5baIjfYae2cLFdy99LYiPeddMZNLDXVyNUdcD
         k03w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=EoTgeRCxBFuyoRmK/nVFvAZexnEido63F1iRgCjtE4I=;
        b=BNf+PUo4NjO7g1EH6Zt7irXHN7MIvVajSUD3dfJ7tCrwybjuAxRPk4tOvn5SJPtDtw
         3+t2fwCw9qiv2E0Vs85HDhFbdB9x3TpEEY7Xy5cvsZ0ogzhLN8S69FGR+RYUGyktf8hh
         y0lWx0yRo4ki/zyqlZj8ldu5C8LdBDGMr46QDVs4blKTtwHA1fR7lYi+Qx9IPk2khFy0
         p+5mXa4tsj1S+02SKFRV+wCwfE8ulBhoRN2skisfb3c/t8kPAzk5b8Ik1tonJVE8eltE
         Cuvp//pmOFSRcoX82vOLK87cBPjh6IgqJK5LNVgTUkpgGNmPb2d+xeiL1PhKM7tijmT2
         iVmA==
X-Gm-Message-State: AJIora+oXPiJhEA8f2gjDN+g7Tyu1hleP93+aIN8p+lI5YQ780T+M+3R
	jLMv3tNNVt3EMa6cxpzGmMll3lXx3aNLRfzo0tCEnfNFgHKSfS8cG/Q=
X-Google-Smtp-Source: AGRyM1sCCLNYuMs6a2Nj6JufpAZB8vlrUSi4qqDgZ+iq5JepK4E180x3DA1eYjP4c305DkZUQT3A9jYjsb25ysDe5Xo=
X-Received: by 2002:a05:6e02:20ca:b0:2dc:90fa:af35 with SMTP id
 10-20020a056e0220ca00b002dc90faaf35mr10242118ilq.302.1659527490792; Wed, 03
 Aug 2022 04:51:30 -0700 (PDT)
MIME-Version: 1.0
References: <20220731174726.72631-1-jagan@edgeble.ai> <20220731174726.72631-3-jagan@edgeble.ai>
 <4f8b8b98-c0ef-4924-6ff1-ccfeae77fc21@linaro.org> <CA+VMnFwQFLNbtgX0RR5vLq29tvU3HBpcyrtrksOsxF5s=W7=UQ@mail.gmail.com>
 <288b4d6e-68f9-26ef-c80d-cbcdaf9d2eed@linaro.org> <CA+VMnFwO41qOCSSbghynompUYMWGExeSCMKJVP9Z5Ed6pBgYDA@mail.gmail.com>
 <88a18350-33fb-81e9-7984-7490da83a4a3@linaro.org> <CA+VMnFyjwt3ojtm+42U_LzXmdgV=x=ZE7m3SWZ2_FDLR4RM2QQ@mail.gmail.com>
 <9db34922-f3e1-1536-59ce-c95d364ffe2c@linaro.org>
In-Reply-To: <9db34922-f3e1-1536-59ce-c95d364ffe2c@linaro.org>
From: Jagan Teki <jagan@edgeble.ai>
Date: Wed, 3 Aug 2022 17:21:19 +0530
Message-ID: <CA+VMnFztFsOSJW_tuQOL_j1u+_5ZVyNqhDNf2vowR9jxCiCn3g@mail.gmail.com>
Subject: Re: [PATCH v2 02/20] dt-bindings: power: Add power-domain header for RV1126
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Kever Yang <kever.yang@rock-chips.com>, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, Elaine Zhang <zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220803_045131_656488_ED2582B4 
X-CRM114-Status: GOOD (  15.74  )
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

On Wed, 3 Aug 2022 at 17:09, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 03/08/2022 13:30, Jagan Teki wrote:
> > On Wed, 3 Aug 2022 at 16:57, Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> >>
> >> On 03/08/2022 12:46, Jagan Teki wrote:
> >>> On Wed, 3 Aug 2022 at 16:13, Krzysztof Kozlowski
> >>> <krzysztof.kozlowski@linaro.org> wrote:
> >>>>
> >>>> On 03/08/2022 12:24, Jagan Teki wrote:
> >>>>>> Vendor in filename is needed.
> >>>>>
> >>>>> Yes this follows how similar rockchip vendor notation
> >>>>>
> >>>>> $ ls include/dt-bindings/power/rk3* -l
> >>>>>  include/dt-bindings/power/rk3036-power.h
> >>>>>  include/dt-bindings/power/rk3066-power.h
> >>>>>  include/dt-bindings/power/rk3128-power.h
> >>>>>  include/dt-bindings/power/rk3188-power.h
> >>>>>  include/dt-bindings/power/rk3228-power.h
> >>>>>  include/dt-bindings/power/rk3288-power.h
> >>>>>  include/dt-bindings/power/rk3328-power.h
> >>>>>  include/dt-bindings/power/rk3366-power.h
> >>>>>  include/dt-bindings/power/rk3368-power.h
> >>>>>  include/dt-bindings/power/rk3399-power.h
> >>>>>  include/dt-bindings/power/rk3568-power.h
> >>>>
> >>>>
> >>>> So when are we going to switch to vendor,device pattern if you keep
> >>>> adding files with wrong naming?
> >>>
> >>> Do you mean the above files are following the wrong naming pattern?
> >>
> >> Yes, or at least discouraged naming. The recommended naming which I hope
> >> all new files will follow are vendor,device.h.
> >
> > rockchip-rv1126-power.h
> >
> > Will this be Okay?
>
> After vendor prefix goes coma, so rockchip,rv1126-power.h

Thanks. I will fix it in v3.

Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
