Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF85FCCF9EE
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Oct 2025 02:50:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DwLh8VY+GA7kiaJzXiUdpSrWxBuYFltKChHviWBhm+w=; b=wsLdUy/R9GIzll
	yGhckCN44KRhCK/SU+wgsS2m43J4/NEjxEYUQWmxCNmt+OXx6rP1a2MJZ80QHTL0l3rTkfj+QWpC0
	JI0XKAAoWbHBODghWNi6Z8pINB/SLU85PFp4SAYWeTqa8gOto4c6ymqQLMGPHdBt+09pznEXDIj2H
	Fu4KuNpfd2MlkIUDoSTLCPSn8dB0Bdm3yVtWSAUWt6sJdcWzwzMcZiAFsMv5s2s9Zt5StWile0wbt
	GWm2uMD2I2iUv0VPHNviZamTOsbYXOMQ8PMbTANN5kyUL91fkuwYfH6ZN9vgBwI4FoAy6y1jly+VT
	ggKmCMZ+LqcjnO0GK6uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEIkB-00000003OEF-025Z;
	Thu, 30 Oct 2025 02:50:31 +0000
Received: from mail-yw1-x1131.google.com ([2607:f8b0:4864:20::1131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEIk7-00000003OCq-1hQl
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Oct 2025 02:50:29 +0000
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-783fa3aa35cso8334227b3.3
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Oct 2025 19:50:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761792626; x=1762397426; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=49j9QrYlm4qxZHbvYSYUJsJt0aMp426fig3D6hH+fj0=;
        b=RjFaqvbQQVIDPxnxkMUBRrFD5iXa9xILxEHh+h0XTa6Gy6j7iETuGSV7hZFhSpFb3S
         ZljjAVg3hF+yxyXL+VNrR5F/RKwlEayFTRfSfCeW+2gMqgEwMEyjZmAa/ncWm4UsFSQw
         l6riOl/vpWdsc8n480A/AryB+d8UNe1dHLvnkFTgCuwGPxZAejNd8mHJz2GZ5rsqfZhg
         5OMsQl0JmoU1eDJNa5E53rpfD3gTxZSDmIhC1wCQSoNdjszMY0GcPKsqluzz3SbRfwrv
         aTtdEvL/nqIoNXDRwCYxuKQ+1M1N67c4DMCMlBfjPy6J5Gx8jGTGvwg+p1m68Sb2jSwl
         CO4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761792626; x=1762397426;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=49j9QrYlm4qxZHbvYSYUJsJt0aMp426fig3D6hH+fj0=;
        b=F3bn2yhzKemTIAcW88m7Hr36JMi9U4+6ketMMSoeJ7o7GUcH5+y2U+cZ8OnUl1Jq1+
         dCeMVDGeQL0SOd68EH+dvLQvYFOtpirohOzdTsnql9g1uEkypaPBYbeXyt3Ao8y/yXjy
         mlwG7P3LzZtj9CdKmWBB/NSUdc6g3UuasYh2BHtbfFuz++IDAURPo8kiWrHVnTuDles3
         HVLpKRxcAKagmLShcV4qRE/4a4KSwdv/JMXVFk6NuXPvEOviyGuMlmJOy3psL/VV5fH2
         MVy01jsm/0ip9ewmWq5OO/KxXRcov+qplW6FO0ft+fvdsBgZgKuNudzK0Ttj7th8IXqS
         puLQ==
X-Forwarded-Encrypted: i=1; AJvYcCW0CNCk/M31QO/qYpKIpL0nJlTV04/KPss+MKsqgsaNx+MEXATaEecVMLaSvPpiU/LdxvFoDhDYCmYi8o0NeQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxQcArkQC/rpKpgrOwiPC9UJ4WnrArynAAYFNS550oQOC7g03Dy
	owR9f/CO/COukJLDk4pOhisVDit/NTxlubSutSeWhTsxavYRBZ7rmhQjE8gzFzQ8dZYU9sncQse
	7vm7jhw2D+MTwXIOqWDlb5xCuSruhQH8=
X-Gm-Gg: ASbGnctd+XMLjed3/jmuzqG2PZa4ZbVdxpYUZCbdBQhRN6/vBbFtdnA9yNoahTeUPuP
	btd9Yroa924MYpLFb7ufxEMhFOa8oRD1j3gvyRtVeI0DeMOGbOdtKa1GLEmj9lrXLZZcYTVyZrK
	Vz6Sy305XueFWqFbB0viw8XJcFhJuIBiVElHMtt0EEpuwHbeb9me7AZ/n8Wwikm7CzUT77wyeKO
	QRN7vTdj3Jur58/WcwdiCt7KzsutqqVWMuoi69CPcccwX5riDiEmETrWgdDfLxmlTzW2w==
X-Google-Smtp-Source: AGHT+IHyoJ9K1Vnf2DZwS2Kk6JM2P4IoAuduJ5ZhKYBvP2Erk/Knw6rAfD9/QlPYp3ts6NwBBaU6zsVdEYEe2Nqfv+s=
X-Received: by 2002:a05:690c:22c2:b0:784:8a26:b74 with SMTP id
 00721157ae682-78628cf728dmr50871897b3.0.1761792625956; Wed, 29 Oct 2025
 19:50:25 -0700 (PDT)
MIME-Version: 1.0
References: <20251029071435.88-1-kernel@airkyi.com> <20251029071435.88-11-kernel@airkyi.com>
 <CAL411-o6mF71oBeRsJ-OPZNbLegn4iJ_ELN9xVdppTM3ssUPOw@mail.gmail.com>
 <cc8b583a-77ec-4a7f-97cc-2d148f7fee9f@rock-chips.com> <e0c5bda3-7428-49e0-9955-fa23f1e4f35d@rock-chips.com>
 <CAL411-oXfvp-iqN+uRmFHijdmW=1omKwozKOoZ2shxukMHmwPg@mail.gmail.com> <C6253E8254C80B0F+839b71d0-1bd8-40b7-9515-7ce4a1eb8673@airkyi.com>
In-Reply-To: <C6253E8254C80B0F+839b71d0-1bd8-40b7-9515-7ce4a1eb8673@airkyi.com>
From: Peter Chen <hzpeterchen@gmail.com>
Date: Thu, 30 Oct 2025 10:50:15 +0800
X-Gm-Features: AWmQ_bl1mNxPmQHnKmASAzhusTRjlDlCn6q9Kp_CyHmpybtPIUgHFck3iJTK_U4
Message-ID: <CAL411-pULVu4AYybW9oW7kmr4M_kJhdytgBjLPb4y6w_2dj+0w@mail.gmail.com>
Subject: Re: [PATCH v8 10/10] arm64: dts: rockchip: rk3399-evb-ind: Add
 support for DisplayPort
To: Chaoyi Chen <kernel@airkyi.com>
Cc: Chaoyi Chen <chaoyi.chen@rock-chips.com>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>, 
	Andy Yan <andy.yan@rock-chips.com>, Yubing Zhang <yubing.zhang@rock-chips.com>, 
	Frank Wang <frank.wang@rock-chips.com>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Amit Sunil Dhamne <amitsd@google.com>, Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>, 
	Diederik de Haas <didi.debian@cknow.org>, Peter Robinson <pbrobinson@gmail.com>, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251029_195027_459883_CF239D15 
X-CRM114-Status: GOOD (  20.64  )
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

> > Okay.  My question is basic: USB2 PHY supplies DP/DM, and the DP/DM is
> > short for Type-C connector,
> > and no control is needed for Type-C application.
> > Why is there a remote-endpoint connection between USB2 PHY and Type-C connector?
>
>  From the perspective of Type-C, this should not be added.  Is the approach in v2 correct [0] ?
>

Have you tried debugging based on upstream code?
v2 is correct, but the dts needs to improve.
- There is a remote-endpoint connection for USB role switch between
Type-C connector
device and USB controller device
- There is a remote-endpoint connection for orientation and lane configuration
between Type-C connector device and USB/DP PHY device.

Peter

> [0]: https://lore.kernel.org/all/20250715112456.101-6-kernel@airkyi.com/
>
> Or is the following approach correct?
>
>
> port@0 {
>      reg = <0>;
>
>      usbc_hs: endpoint {
>          remote-endpoint = <&tcphy0>;
>      };
> };
>
> port@1 {
>      reg = <1>;
>
>      usbc_ss: endpoint {
>          remote-endpoint = <&tcphy0>;
>      };
> };
>
> port@2 {
>      reg = <2>;
>
>      usbc_dp: endpoint {
>          remote-endpoint = <&tcphy0_typec_dp>;
>      };
> };
>
>
> >
> >>>>> +                               port@1 {
> >>>>> +                                       reg = <1>;
> >>>>> +
> >>>>> +                                       usbc_ss: endpoint {
> >>>>> + remote-endpoint = <&tcphy0_typec_ss>;
> >>>>> +                                       };
> >>>>> +                               };
> >>>>> +
> >>>>> +                               port@2 {
> >>>>> +                                       reg = <2>;
> >>>>> +
> >>>>> +                                       usbc_dp: endpoint {
> >>>>> + remote-endpoint = <&tcphy0_typec_dp>;
> >>>>> +                                       };
> >>>>> +                               };
> >>>>> +                       };
> >>>>> +               };
> >>>>> +       };
> >>>>> +};
> >>>>> +
> >>>> .....
> >>>>>    &u2phy0 {
> >>>>>           status = "okay";
> >>>>> +
> >>>>> +       port {
> >>>>> +               u2phy0_typec_hs: endpoint {
> >>>>> +                       remote-endpoint = <&usbc_hs>;
> >>>>> +               };
> >>>>> +       };
> >>>>>    };
> >>>>>
> >>>> There is no switch and mux, how to co-work with Type-C?
> >>> I checked the phy-rockchip-inno-usb2.c but did not find any switch or mux. Does this mean that we need to implement them? Thank you.
> >> Wait a minute, actually we have multiple hardware interfaces, one of which is Type-C, eventually connected to USBDPPHY, and the other is micro-usb connected to U2PHY.
> > I assume the Micro-USB connector does not use Type-C/PD IC, is it
> > right? Does it relate to this patch?
> >
> > Best regards,
> > Peter
> >
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
