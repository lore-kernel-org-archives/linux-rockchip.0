Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A23DC19F28
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Aug 2022 11:30:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NQ3Aj+agddMg7972PVLFEV9Nf+RgC5iIKF1PtYrXsM0=; b=sR4S9RWLKENshP
	vu6IYsC0kuHCS34oVZ/7FDSpJZ5uhtEAIUgU4Qg0jf+46Wwh3BRihM/FlNP4u20gEksrEtH3hDXVA
	pt3xBaLJ4D0G46C3Y+SCicBBOMlXO7GjbggukVPGYL6qYBie06P3pb2YdKiCKsrf3pVma2d5L6nFH
	8my1Ac5yoBUydDClvCBE4cDP1/yad2hfxwzWvQ7ItMCp1T3WZupSUYiq0wFZOePCkN4/RbMU2/vba
	7u524Bn7idjICRNx0o+wo4T0apjjfFWSP+cg7zJYm4WL7unEu+5HNiqMHRbnAA8W3z8K/iw9hVVM0
	vTQntmXHVW2gCLDQuYRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJCaB-005MPL-Ii; Wed, 03 Aug 2022 11:30:35 +0000
Received: from mail-il1-x12d.google.com ([2607:f8b0:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJCZs-005MJN-Js
	for linux-rockchip@lists.infradead.org; Wed, 03 Aug 2022 11:30:18 +0000
Received: by mail-il1-x12d.google.com with SMTP id o14so3374149ilt.2
        for <linux-rockchip@lists.infradead.org>; Wed, 03 Aug 2022 04:30:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=bUE+pu10l7SJsezjEw0r7Eg89CEjsK94p23V+ZNAZWw=;
        b=Qb7mrEuTuWrAfV+zEzvYHPnO7lbas/P5vRxIEUo3tvpCMlbyh75WEVULA6rtySgTmN
         C4hKKoGDTiFbvEy0pUa4M5zrGzsquaNXFcfO8tPp10C59u/IMkps5uNwjWbIAbyei/FQ
         fBBTITztB/suYXl1tpx6ex4FwECBjJ0CRF2njMEffqnkfq8PLwuPAdMfFGdz/SfN9VhP
         hoiKaRpUomkCnwexXApFiUlFh22YYRVFC0/dhXB6uQWOVXwjhYZvv7/z1wN2yN7U85Mj
         ho27xUk2jm1U1HOsY6vNy1yESYPwONRNlcATM/tMfDS3je0xyLfbPuuHFCW4Wg+pAg1q
         u1xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=bUE+pu10l7SJsezjEw0r7Eg89CEjsK94p23V+ZNAZWw=;
        b=49PTiu4/7VODlMj4tECjps8S8iZyZhuRMHOV6/wLXIgF0tCJpCYG0Vrlg4f344e3g/
         9I7PRlnNbLaEoJKbmmJFuP22UUaJaDDZRGxm0NjKeed71/WkQGAF/aicgF1Yl5MFVf/P
         wrjdmt9oa7lbFQawYCgipHrx/lPVm84nud8HbpNzKC247+bMQXk4o5iV6OPMFNFjtw4f
         0N1mhpouN3WinkY1ev8EZuiGG0FBVqBTlzYyrjg5Rj7GpNiIvjcz6FXVK2Z6KXEgYzgm
         imPHBD4bbrauxHBhk5Kb/lB4A1HQ6xTo2agjpD7y971P0RGLNLc5NBjG1lrV6/R8xRiG
         uVYQ==
X-Gm-Message-State: AJIora8ftznkwZ2b1dTXwmN2OHJLyvgZAh+C3AnG2Q5y2X5KzCX/2wCr
	/5rzF9kVeMpWR7oup06ehIbYCm9c3vH2A5hGoToU5w==
X-Google-Smtp-Source: AGRyM1tii73p9HR3cz+TKCtHyyJ6E1sK+WupHgWkdeT5xdHyhpPMY4cw9ZsjhZN34srsF0d5Q623bneJEim91PUZJsY=
X-Received: by 2002:a05:6e02:19cc:b0:2dd:ad68:7443 with SMTP id
 r12-20020a056e0219cc00b002ddad687443mr10357723ill.141.1659526214730; Wed, 03
 Aug 2022 04:30:14 -0700 (PDT)
MIME-Version: 1.0
References: <20220731174726.72631-1-jagan@edgeble.ai> <20220731174726.72631-3-jagan@edgeble.ai>
 <4f8b8b98-c0ef-4924-6ff1-ccfeae77fc21@linaro.org> <CA+VMnFwQFLNbtgX0RR5vLq29tvU3HBpcyrtrksOsxF5s=W7=UQ@mail.gmail.com>
 <288b4d6e-68f9-26ef-c80d-cbcdaf9d2eed@linaro.org> <CA+VMnFwO41qOCSSbghynompUYMWGExeSCMKJVP9Z5Ed6pBgYDA@mail.gmail.com>
 <88a18350-33fb-81e9-7984-7490da83a4a3@linaro.org>
In-Reply-To: <88a18350-33fb-81e9-7984-7490da83a4a3@linaro.org>
From: Jagan Teki <jagan@edgeble.ai>
Date: Wed, 3 Aug 2022 17:00:03 +0530
Message-ID: <CA+VMnFyjwt3ojtm+42U_LzXmdgV=x=ZE7m3SWZ2_FDLR4RM2QQ@mail.gmail.com>
Subject: Re: [PATCH v2 02/20] dt-bindings: power: Add power-domain header for RV1126
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Kever Yang <kever.yang@rock-chips.com>, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, Elaine Zhang <zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220803_043016_913102_0A747A84 
X-CRM114-Status: GOOD (  14.36  )
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

On Wed, 3 Aug 2022 at 16:57, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 03/08/2022 12:46, Jagan Teki wrote:
> > On Wed, 3 Aug 2022 at 16:13, Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> >>
> >> On 03/08/2022 12:24, Jagan Teki wrote:
> >>>> Vendor in filename is needed.
> >>>
> >>> Yes this follows how similar rockchip vendor notation
> >>>
> >>> $ ls include/dt-bindings/power/rk3* -l
> >>>  include/dt-bindings/power/rk3036-power.h
> >>>  include/dt-bindings/power/rk3066-power.h
> >>>  include/dt-bindings/power/rk3128-power.h
> >>>  include/dt-bindings/power/rk3188-power.h
> >>>  include/dt-bindings/power/rk3228-power.h
> >>>  include/dt-bindings/power/rk3288-power.h
> >>>  include/dt-bindings/power/rk3328-power.h
> >>>  include/dt-bindings/power/rk3366-power.h
> >>>  include/dt-bindings/power/rk3368-power.h
> >>>  include/dt-bindings/power/rk3399-power.h
> >>>  include/dt-bindings/power/rk3568-power.h
> >>
> >>
> >> So when are we going to switch to vendor,device pattern if you keep
> >> adding files with wrong naming?
> >
> > Do you mean the above files are following the wrong naming pattern?
>
> Yes, or at least discouraged naming. The recommended naming which I hope
> all new files will follow are vendor,device.h.

rockchip-rv1126-power.h

Will this be Okay?

Thanks,
Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
