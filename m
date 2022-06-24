Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D2C6C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jun 2022 23:44:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FgP0ZI7Z/53LEIvlN3eX0NfnjMJHpw+DEGLiApuzN4U=; b=YbbxN7r3CcBrfX
	8dnDALYajr8le/1K6AfN6tXx/k2lBgWeytjaOxaR2O4kPDgh846OQ8HVePJ0LiFW0ohvx3/kVCwm4
	r3c1dOX9HbPaGvtfEq36vkQ5Tgqkmqj+Ie0R77Buw0wbKvanz7oxTBAZjWjUR+1u7ci/G+ssqPxPl
	KVawl1y7BtchiCayogvoowUi71baoxuGH61c74FlOzRNtE8+P04T3vqJw3h/zRyQNdnYKLmaeTsKK
	o5KyhJiO/0T0dqWYMqCMeB02kvcN8HebmsrTBKabFq+5P11oa2dcaxMQf31L8lJKwI6RQ/+hZs7sA
	4R0SOrspUDgXhvbbhRRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4sy7-0047nC-58; Fri, 24 Jun 2022 23:44:07 +0000
Received: from mail-yb1-xb2a.google.com ([2607:f8b0:4864:20::b2a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4sy4-0047mf-L7; Fri, 24 Jun 2022 23:44:06 +0000
Received: by mail-yb1-xb2a.google.com with SMTP id o19so470941ybg.2;
        Fri, 24 Jun 2022 16:44:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=V1brg2y3JDj6U/8CjOdEq248XdYOzJ81ukpZs2/J6U8=;
        b=L5mUz/R7adkDYUiVk2Y8mAxfEW65sH5WSCnPVZqLvidJHxkq00zUfXXCrgaJLXeU0G
         TR7rTPQ+KG6YAtuMTX8GtWKTLjEwiPODRV3kz7Og/WwaDcRBfkIkIfCGPPTau/z4E2ko
         veRudcqY88uclMsw6twNecxETVIDpgpb6h9X/TgnD5usl5Wi5U5iDksSXb145bwBZ3Ue
         ZK9HMCqQqfHMn6HJB/gFMRH7XwUKNKiZbL4y+4/l8Po6DCb+XajGBL7HeKX/rdnDcLSb
         mx4sqh8Di0sTc+sdbHbpuTWpUZJU+TaT4nqAW7QttSEpOQkFKpMatP9Ztj+unehnNJRC
         DUVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=V1brg2y3JDj6U/8CjOdEq248XdYOzJ81ukpZs2/J6U8=;
        b=GXmgmu4onh+8YxfDSLoRgQGgpbpLI1o97PkuSVrqfWaK3N/uuLxtI4zSujhlfW/N42
         7qEQN1+gYULzU1sH070DH/e13P0W9yNABkBCkGmDsykGtRTYoDXjM7Vy+0gGVS8ElMmf
         WvH9UXvAtrlH2Qvn4GQBF0kEZJ1B45c6wnXRf/uMc7LaLj4ZYzkTaH3IcR0F7SLky86A
         81Kd27TMTOC0kg9hYyJSodc5G7sctsr4VH3Ay0h1B43Z4AP7K0jP6wh/pYrS+QBkkc6M
         LTh7JqsYaMyLwIB8KRp0P04iSq4IVJ4J2UfwjYyTPrKZrcooFvw83/AkoQpnMKKulyYn
         msDw==
X-Gm-Message-State: AJIora8sLtCw53Tunbd0y34IVRnJZDzABS8UEZE36OVSoOG5n4i5XruT
	ztZtqwGT8F7F4lWq7JN7Sb0SRSE2EIK71qDQIyg=
X-Google-Smtp-Source: AGRyM1sjX822X/Dsy8VIFBGvzBLqvpKs7BIx362sSa5Zd+7UmGXE/g/4Z/fcgebJhZRBeq9CHZ6VxnHhew15CUmd9fU=
X-Received: by 2002:a25:be07:0:b0:664:4210:aaf3 with SMTP id
 h7-20020a25be07000000b006644210aaf3mr1716779ybk.415.1656114243169; Fri, 24
 Jun 2022 16:44:03 -0700 (PDT)
MIME-Version: 1.0
References: <20220623162850.245608-1-sebastian.reichel@collabora.com>
 <20220623162850.245608-2-sebastian.reichel@collabora.com> <YrWdnQKVbJR+NrfH@lunn.ch>
 <20220624162956.vn4b3va5cz2agvrb@mercury.elektranox.org> <YrXryvTpnSIOyUTD@lunn.ch>
 <20220624173547.ccads2mikb4np5wz@mercury.elektranox.org> <YrX2ROe3a5Qeot4z@lunn.ch>
 <20220624201537.l7p6aoquvvadmpei@mercury.elektranox.org>
In-Reply-To: <20220624201537.l7p6aoquvvadmpei@mercury.elektranox.org>
From: Peter Geis <pgwipeout@gmail.com>
Date: Fri, 24 Jun 2022 19:43:51 -0400
Message-ID: <CAMdYzYr_EA2Oxf6Q-WkX987eWUKRokRR1EsCWM4J+BcF+OkO9A@mail.gmail.com>
Subject: Re: [PATCH 1/3] net: ethernet: stmmac: dwmac-rk: Disable delayline if
 it is invalid
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Giuseppe Cavallaro <peppe.cavallaro@st.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Jose Abreu <joabreu@synopsys.com>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Linux Kernel Network Developers <netdev@vger.kernel.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
	arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
	devicetree <devicetree@vger.kernel.org>, David Wu <david.wu@rock-chips.com>, 
	kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220624_164404_751687_31335598 
X-CRM114-Status: GOOD (  19.14  )
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

On Fri, Jun 24, 2022 at 4:16 PM Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:
>
> Hi,
>
> On Fri, Jun 24, 2022 at 07:37:08PM +0200, Andrew Lunn wrote:
> > > The Rockchip hardware supports enabling/disabling delays and
> > > configuring a delay value of 0x00-0x7f. For the RK3588 evaluation
> > > board the RX delay should be disabled.
> >
> > So you can just put 0 in DT then.
>
> My understanding is, that there is a difference between
> enabled delay with a delay value of 0 and delay fully
> disabled. But I could not find any details aboout this
> in the datasheet unfortunately.

The driver already sets the delays to 0 in case of the rgmii-id modes.
0 is disabled, even in this patch. The only thing this patch does is
change the behavior when the delays are not set. If the rx delays
should be 0, they should be defined as 0 in the device tree. There is
rgmii-rxid for a reason as well, but if they are setting the rx delay
to 0 with rgmii that implies this hardware is fundamentally broken.

Very Respectfully,
Peter Geis

>
> -- Sebastian
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
