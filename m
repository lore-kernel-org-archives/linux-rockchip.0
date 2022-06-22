Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEC33C43334
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Jun 2022 08:32:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TuS2etsTx+0F3kcNaw3hp6PvjZ+6zxcrel2T2yjjUTM=; b=LVpo7bFUxPFO1q
	1px3fHuucHQi38xGMty34qGgXeuWaWWVKmPSClNC5y5RK3/lbKhKOZ1rD+thdUp2SPqHxPFJZVvfH
	eBasjKpCYmNsuygn96jnGULphiScRS9aO8RAYCXJ/J+Va6NwNYP0pgBW1Zc1dT303q7wrQTX83fyG
	OYHYrLsju1Lq1/cIdsjLaPw3g+fJ8cAxq3vYXZWK5Jcal2KNsl1ivhwR+Po2+eGBjMBVXJef+Uhu6
	j+1qprML/hCKH2+MrRPEAEXcrixwV0KdMUXDFsU8v/hpxmPoH36N4LH4e4L+UYYiMJBsAU0TEZHQI
	RKotnPTxQ4jop+itqDdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3vmP-009GGw-Fj; Wed, 22 Jun 2022 08:32:05 +0000
Received: from mail-yb1-xb31.google.com ([2607:f8b0:4864:20::b31])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3vmD-009GCW-Qq; Wed, 22 Jun 2022 08:31:55 +0000
Received: by mail-yb1-xb31.google.com with SMTP id i15so24081149ybp.1;
        Wed, 22 Jun 2022 01:31:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VFrveWQWOlqWcE+PwPZMC1GnolqDyvG7Ts1DbfGLvCQ=;
        b=qMZCgEKp956uUcAUTe+B8J619t80BEuZ4z2ufxolLgnN0UpgjefaBLUZGLJ7MkQz+h
         lZmtXys0aHG6vlihf1FYI4hX92qR1UVsa5kY7j05PkODaMym/k7HXP4MgUcM87+IwLKq
         2BE+Vh+b6iIH6zWlQrdoli+7Pzc9dA25AYExTbtVZLPLDnmf0LMlCemZu38bJCLOeh2W
         fOJfhrIap5ILiYtfWBHSHZ6NY0Fw/eQQTIUOy4fqOJkeqjvWnryd9yxqxsXZ4yHU87vu
         uLDMAXGBNIHyETi/QArYYxjDj2jR49Pv/w9dCjoomBmaqabbZl9v76N3jHQd0Db1bTul
         ZWPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VFrveWQWOlqWcE+PwPZMC1GnolqDyvG7Ts1DbfGLvCQ=;
        b=NEqmULbAuZ1ORpBNiOtW5qia1OUR+aHlXQ+yg8Tx1HDWgW1yAm26/L7z2OnZfLkMVc
         6w86ovjrzTfA2EacwHR5dAbL4ofsex3M8jhOl6p1//6uD2//oc72Hr+hu5tVQzJlO07N
         kgnBniun6Kby82Q+BaugsaKj9oZs4C9uZvo6phMOjPCHU/Sz9mXgnskQBcIlOjiA5nQB
         3KeKBeg2yF9NNMPKEYjC8mck0NnKWEl+vWGerPajPk+0pHu4Kbi6P7ycZbyFJmwv5QqK
         rtS5E8a/WFUhNywT0/elOvHVpG92zBj9e9awPvJ6od5v1P63ZKyy9ohClL6ZNEM2Twp/
         smdA==
X-Gm-Message-State: AJIora+iWRO38r2z6oKo3UzyCf7l+WEf1QVYXJYH99GKb63JZw9151rn
	jonrS4qtC5bW8ong7X7jMr29A7KmOvOTO2o4KDI=
X-Google-Smtp-Source: AGRyM1s6E87UN9fAajyCnVuoFZYmpttt79hpuA32cQUOGZs0yCkUCL5v86qQ56q2D3KhgDJIaUGbrR9kQCZ2Zs9mAmE=
X-Received: by 2002:a25:c60e:0:b0:668:b55e:4a2a with SMTP id
 k14-20020a25c60e000000b00668b55e4a2amr2634974ybf.372.1655886710409; Wed, 22
 Jun 2022 01:31:50 -0700 (PDT)
MIME-Version: 1.0
References: <20220622003140.30365-1-pgwipeout@gmail.com> <f252c182-e306-174e-dd32-51c9a406d3f7@sholland.org>
In-Reply-To: <f252c182-e306-174e-dd32-51c9a406d3f7@sholland.org>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 22 Jun 2022 04:31:39 -0400
Message-ID: <CAMdYzYqUsr+orVtSbD023=GAyNLg4VdP9Wcrg6gON+Ut9FdzZA@mail.gmail.com>
Subject: Re: [PATCH] phy: rockchip-inno-usb2: Sync initial otg state
To: Samuel Holland <samuel@sholland.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, 
	"open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>, 
	arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220622_013153_911707_4D12A000 
X-CRM114-Status: GOOD (  20.89  )
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

On Wed, Jun 22, 2022 at 1:16 AM Samuel Holland <samuel@sholland.org> wrote:
>
> On 6/21/22 7:31 PM, Peter Geis wrote:
> > The initial otg state for the phy defaults to device mode. The actual
> > state isn't detected until an ID IRQ fires. Fix this by syncing the ID
> > state during initialization.
> >
> > Fixes: 51a9b2c03dd3 ("phy: rockchip-inno-usb2: Handle ID IRQ")
> > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
>
> One comment below. Either way it fixes a bug, so:
>
> Reviewed-by: Samuel Holland <samuel@sholland.org>

Thanks!

>
> > ---
> >  drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
> > diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> > index 6711659f727c..6e44069617df 100644
> > --- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> > +++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> > @@ -1162,6 +1162,12 @@ static int rockchip_usb2phy_otg_port_init(struct rockchip_usb2phy *rphy,
> >                                       EXTCON_USB_HOST, &rport->event_nb);
> >               if (ret)
> >                       dev_err(rphy->dev, "register USB HOST notifier failed\n");
> > +
> > +             if (!of_property_read_bool(rphy->dev->of_node, "extcon")) {
>
> Currently the IRQ handler does not care who created the extcon. We should at
> least be consistent between here and there.

We care in this instance because if there is an external extcon it is
responsible for setting the initial state. Our ID pin may or may not
be used in this case and if it isn't we would overwrite the initial
state with an invalid one.

>
> Regards,
> Samuel
>
> > +                     /* do initial sync of usb state */
> > +                     ret = property_enabled(rphy->grf, &rport->port_cfg->utmi_id);
> > +                     extcon_set_state_sync(rphy->edev, EXTCON_USB_HOST, !ret);
> > +             }
> >       }
> >
> >  out:
> >
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
