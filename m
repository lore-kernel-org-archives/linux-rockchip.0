Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A72C2C32774
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Aug 2022 05:46:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jd7rYPOsl17WDVXQ1lWp7FKdDnq+xSP/xezIw+dot2M=; b=0CZ7Ez5glurBvg
	Kyb9k5aejaAdYrqtXV5uwZqINL1QQp9DJFpelEgzturfNX38wxxflN695AIJHEJV0z721UgmOTdX9
	ADGStqYJ56pebIZBqR3OHVGma2EmXX3lNIXinbMUpYSSEMDvXpKnVrg7hPLUzrzBXMm3lUi4uEXbw
	KjYFKfjyaGnMhal04G0A19DYsYB1TXyB/Haf/a5GEZ8PJHbjne8Tm7320cQ5C0a4JA+kWz/LlGsXh
	aaMDoxqtP/eOk1fZBrWGqypi0xJSR64mqQu6OhemFF5hYBzsKKiSv+97BQtDv61HoJcJvHxaG2pX0
	8unRhx7e9bukknsu/zYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQMkO-002WVs-N3; Tue, 23 Aug 2022 05:46:44 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQMkC-002WLC-4x; Tue, 23 Aug 2022 05:46:33 +0000
Received: by mail-wr1-x42b.google.com with SMTP id e20so15164341wri.13;
        Mon, 22 Aug 2022 22:46:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=S3hadl3hnB3ja/rLFfnUVQHzIaI1Bjt1VSUaqwXqPhw=;
        b=PkDs6E9tNKB8nTGQHP7GsuewTj8vV23xYK6woP4pI4q7HWlzbAtjhfdZ/tleOYQfvM
         0nSEcNlZfPn55lmg2+A2oT1rMntPZSA3T3aN1LM0tlcC/JHy9ltqgH1AwkRDmN8VBHB/
         NHfDFWYxMaILhxpy5zAxdXET6ss6ymDpRo8eoTRPNApSECXxJMKcYROA8qfDDaPqbgtK
         0bA3DU4B5D61uXpiwf2ZwNdxFtccLdtmF0HyohZX05u0npzSo0gfWfPrOgRdE9370sCc
         qP0utuGqJxL6uxsK9fdrxtN+FDUp/zlo/C8HcbGMwQQLEtUVShCa7AmWwJHP7qYizkZP
         uzjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=S3hadl3hnB3ja/rLFfnUVQHzIaI1Bjt1VSUaqwXqPhw=;
        b=lCNEBvfBkecfv3MmRaNZDTsDdtfA2eUCEZ7xNu9UxLTwkfeYx1gYq7yfVFADH24VwJ
         FhDpDVd0AbA0ysODQbn3H9meYDzdTC7apfAspocPzxKXZynLUDBSdlwKcK4MFWn2+ljI
         8hmVL2aHh5RvAza/iKBHSud99BYcPXNQ5HS5dz/QPxmHKg1cSxQcv06nUtWFz3ipcOsm
         ++Q2r3qDkdVI+w8yd0typTDQjrCv1iNGy6MxrjT6dyv9MaDaXfq/4PbttZ+kmfr8bDJC
         /iIpL1zYSo6neSuIGAMJpmoqdonWuPDQsTtmSwowujXI+LZjy3XTIikLz5+u7GpcIoAk
         qGxg==
X-Gm-Message-State: ACgBeo2Pz6EISz/YtQOnN5jG6au+yGnUIPgKW4f4qbPF/SDu60odtzlv
	sKJWa+Z+pq2lb6reejt06D9ajOC6/3LbofpACag=
X-Google-Smtp-Source: AA6agR5pMCqhK5pkzZWg3wHSwh51C+FFrKVW4WSn7T110jcqvDraHFfd8D25wI1nho4Hd4/IVeYi2xD86Yb7G0qV+Q4=
X-Received: by 2002:a05:6000:1acb:b0:223:5de3:f8bf with SMTP id
 i11-20020a0560001acb00b002235de3f8bfmr12219378wry.691.1661233586555; Mon, 22
 Aug 2022 22:46:26 -0700 (PDT)
MIME-Version: 1.0
References: <20220822103219.3985075-1-pgwipeout@gmail.com> <717fe4e0-ef9c-edef-80d1-caeeae1319b9@sholland.org>
In-Reply-To: <717fe4e0-ef9c-edef-80d1-caeeae1319b9@sholland.org>
From: Peter Geis <pgwipeout@gmail.com>
Date: Tue, 23 Aug 2022 07:46:16 +0200
Message-ID: <CAMdYzYqMN93tgGmgQyHFZVw7nuru_tc=D26rKEuzmXgApwiFOQ@mail.gmail.com>
Subject: Re: [PATCH] phy: rockchip-inno-usb2: Return zero after otg sync
To: Samuel Holland <samuel@sholland.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, 
	Markus Reichl <m.reichl@fivetechno.de>, Michael Riesch <michael.riesch@wolfvision.net>, 
	"open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>, 
	arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220822_224632_215650_1999476C 
X-CRM114-Status: GOOD (  20.69  )
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

On Tue, Aug 23, 2022 at 5:41 AM Samuel Holland <samuel@sholland.org> wrote:
>
> On 8/22/22 5:32 AM, Peter Geis wrote:
> > The otg sync state patch reuses the ret variable, but fails to set it to
> > zero after use. This leads to a situation when the otg port is in
> > peripheral mode where the otg phy aborts halfway through setup. Fix this
> > by setting ret to zero after use.
> >
> > Fixes: 8dc60f8da22f ("phy: rockchip-inno-usb2: Sync initial otg state")
> >
> > Reported-by: Markus Reichl <m.reichl@fivetechno.de>
> > Reported-by: Michael Riesch <michael.riesch@wolfvision.net>
> > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > Tested-by: Michael Riesch <michael.riesch@wolfvision.net>
> > Tested-by: Markus Reichl <m.reichl@fivetechno.de>
> > ---
> >  drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> > index 0b1e9337ee8e..5fc7c374a6b4 100644
> > --- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> > +++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> > @@ -1169,6 +1169,7 @@ static int rockchip_usb2phy_otg_port_init(struct rockchip_usb2phy *rphy,
> >                       /* do initial sync of usb state */
> >                       ret = property_enabled(rphy->grf, &rport->port_cfg->utmi_id);
> >                       extcon_set_state_sync(rphy->edev, EXTCON_USB_HOST, !ret);
> > +                     ret = 0;
>
> The bug was caused by the unexpected consequence of (mis|re)using the "ret"
> variable for a temporary value. Please introduce a new variable here, else the
> use of "ret" is even more confusing. This code also wipes out any error returned
> by devm_extcon_register_notifier().

I see your point here, I also need to skip this if
devm_extcon_register_notifier() fails as well. I'll spin up a v2.

Thanks for catching that!

>
> Regards,
> Samuel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
