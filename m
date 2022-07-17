Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BA47C43334
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Jul 2022 18:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=glafE6VqCGj3rq9/e/DYEVpCZj0LD8upgZ3OXQ2epsA=; b=uJOmv5ZhFt8xP5
	KcemN1l0fcYmEdcQf5RVr2HE4kiok59/UjRhRGKxs1Z/vGRrDRWwN1hI4WoGdTbUyNLFDQ2+8Ef3U
	9OvAClBUYHZKdvHHt+Rr6jqNeKIxoeXkcwtCPpEXj2trSXLBFv2sIl15n5fiXAH8UBgK0JogddrTh
	AUMh1LzCYo+eLh4Zh6EVt8U3i/4v1QaGjpzr9LxMwfr0QGkeNxoMbpR9kgTtApUa/p3yLFnZ8sD69
	b+bJj0GX0pRqtoix3JXXFk4X0l7ujObJfZ5CLDo/OJqkWMqoeVjMcrs0zIxGnODIoO9JYezRnYe77
	qQhvIOUMCmdtyN1GiOsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oD8dL-0080E4-0L; Sun, 17 Jul 2022 18:04:47 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oD8dI-0080CK-Ft
	for linux-rockchip@lists.infradead.org; Sun, 17 Jul 2022 18:04:45 +0000
Received: by mail-ej1-x62f.google.com with SMTP id l23so17674708ejr.5
        for <linux-rockchip@lists.infradead.org>; Sun, 17 Jul 2022 11:04:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ud+TiF4m7po1mW1dB/x6b4A3m6M8l0fbva/VpZQi14c=;
        b=FxNWquaV+Q2u3r53vP3PvbW3SUDtJj1N3as3fbawmSweX+S4JIs9G56MhAXbCdFtPS
         i89HzEmOa702OM5Swsr7Rmx3JOddculd2jzyQsR+O4C30lnTHQS6QOWgcA3Btb7rkmb7
         C5kTCpHyiHF8W7L/o6KNDq09I24aUv9t/6GDrpC/G3vTkMGeWLvOQU/0SLRXEQE1FTck
         p5OLjv1nMlpV8fa1X6KzNDyokIU/IY+vKJxhmMZLmRaivx1REmESBnjBMfPIl20FjuIM
         oaB4X5NWbUzFkb3clks0JSNgw4c11OkDJ20D5JEWHOKXXUFV1YQj/9IzRuKtXRY9UH2w
         om9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ud+TiF4m7po1mW1dB/x6b4A3m6M8l0fbva/VpZQi14c=;
        b=xk2GeekYBnIJCmgp3NgOTdVHI7H7D+S2BdyRTdz51CQ54fq9gvPsTI1lwqnxiOLZbo
         VBjEe4y+lqKK80qMelNE03gDnRNNgce4yGo4jRzUfwAMFg+3KMdYu1cxTvKD7pvZ+6vv
         vTEg+B1btd8TTSckqxpUXXnzwI6CcgIdWOYzrJ2b4LgbwZj0xlksPYwc61HrE/g8uJ5z
         HvSAs1vUt5YwZ1oVAZLSgRTtMbp891Ss/rYU4dxhetj7aOREM8lMapKFMkhpND38Qqpb
         ou9aa0EbBY+4LcqvlvLFq7m3VZmm/vrf+H6GO2QFDy4sb/ZFLSdEsQRbRCgW8tGCv1aO
         0gnA==
X-Gm-Message-State: AJIora9OXyr9WxXLdo+KLH04zYhrZN04LF1/sz29DWhpVY0XIsR+bHwF
	aUjcJjZ5m+F3Yv1fw3f5T6uSfFOsVYsJRGj7dN0=
X-Google-Smtp-Source: AGRyM1sggsKtIoIR3xT/PdFqUXyUnRgGplbzzeIJ9XlVHsoJIJaQT6uK7ehAMmkwjuzx/TSF4Fr2QNAkBhqLkbPBmU0=
X-Received: by 2002:a17:907:3f89:b0:72b:60ee:29cf with SMTP id
 hr9-20020a1709073f8900b0072b60ee29cfmr22624401ejc.316.1658081081230; Sun, 17
 Jul 2022 11:04:41 -0700 (PDT)
MIME-Version: 1.0
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
 <20220630230713.10580-49-laurent.pinchart@ideasonboard.com>
 <CAHCN7xKVzrExUvK+fEKiTXV71J5K-VOcqxVFrew0f2dN5mjAOQ@mail.gmail.com>
 <YtQjN6/hQpJautjv@pendragon.ideasonboard.com> <YtQpXg87MorpTnRd@pendragon.ideasonboard.com>
In-Reply-To: <YtQpXg87MorpTnRd@pendragon.ideasonboard.com>
From: Adam Ford <aford173@gmail.com>
Date: Sun, 17 Jul 2022 13:04:30 -0500
Message-ID: <CAHCN7xJn8MENsPVxW6qUGBRJHx4=ZR6exJWVGWVFzHdxz-1jKg@mail.gmail.com>
Subject: Re: [PATCH v2 48/55] media: rkisp1: Add match data for i.MX8MP ISP
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media <linux-media@vger.kernel.org>, 
	"open list:HANTRO VPU CODEC DRIVER" <linux-rockchip@lists.infradead.org>, Dafna Hirschfeld <dafna@fastmail.com>, 
	Heiko Stuebner <heiko@sntech.de>, Helen Koike <helen.koike@collabora.com>, 
	Paul Elder <paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220717_110444_595697_A00A9C37 
X-CRM114-Status: GOOD (  33.20  )
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

On Sun, Jul 17, 2022 at 10:23 AM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Adam,
>
> On Sun, Jul 17, 2022 at 05:56:56PM +0300, Laurent Pinchart wrote:
> > On Fri, Jul 15, 2022 at 06:56:57AM -0500, Adam Ford wrote:
> > > On Thu, Jun 30, 2022 at 6:27 PM Laurent Pinchart wrote:
> > > >
> > > > From: Paul Elder <paul.elder@ideasonboard.com>
> > > >
> > > > Add match data to the rkisp1 driver to match the i.MX8MP ISP.
> > >
> > > I am testing this series on an i.MX8MP with two Sony IMX219 cameras in
> > > 4-lane mode.
> > > From what I can tell, the ISP_1 doesn't enumerate if ISP_0 is already
> > > enumerated.  My guess is that the name of the ISP is hard-coded so the
> > > second instance isn't able to load because the names conflict.  I
> > > don't see any errors, so it's just a guess.
> >
> > I'll have a look.
Thanks!
>
> Both ISP instances probe successfully for me, with two different sensors
> though (IMX327 and IMX296). Can you share more information about your
> issue ?

I'll double check the repo I am using as my starting base when I get
back into the office tomorrow.  I'll rebase my device tree changes if
I don't have the latest and let you know what I am seeing.

adam
>
> > > > Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> > > > ---
> > > >  .../platform/rockchip/rkisp1/rkisp1-dev.c     | 22 +++++++++++++++++++
> > > >  include/uapi/linux/rkisp1-config.h            |  3 +++
> > > >  2 files changed, 25 insertions(+)
> > > >
> > > > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> > > > index f2475c6235ea..a41f89807dd7 100644
> > > > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> > > > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> > > > @@ -496,6 +496,24 @@ static const struct rkisp1_info rk3399_isp_info = {
> > > >         .features = RKISP1_FEATURE_MIPI_CSI2,
> > > >  };
> > > >
> > > > +static const char * const imx8mp_isp_clks[] = {
> > > > +       "isp",
> > > > +       "hclk",
> > > > +       "aclk",
> > > > +};
> > > > +
> > > > +static const struct rkisp1_isr_data imx8mp_isp_isrs[] = {
> > > > +       { NULL, rkisp1_isr },
> > > > +};
> > > > +
> > > > +static const struct rkisp1_info imx8mp_isp_info = {
> > > > +       .clks = imx8mp_isp_clks,
> > > > +       .clk_size = ARRAY_SIZE(imx8mp_isp_clks),
> > > > +       .isrs = imx8mp_isp_isrs,
> > > > +       .isr_size = ARRAY_SIZE(imx8mp_isp_isrs),
> > > > +       .isp_ver = IMX8MP_V10,
> > > > +};
> > > > +
> > > >  static const struct of_device_id rkisp1_of_match[] = {
> > > >         {
> > > >                 .compatible = "rockchip,px30-cif-isp",
> > > > @@ -505,6 +523,10 @@ static const struct of_device_id rkisp1_of_match[] = {
> > > >                 .compatible = "rockchip,rk3399-cif-isp",
> > > >                 .data = &rk3399_isp_info,
> > > >         },
> > > > +       {
> > > > +               .compatible = "fsl,imx8mp-isp",
> > > > +               .data = &imx8mp_isp_info,
> > > > +       },
> > > >         {},
> > > >  };
> > > >  MODULE_DEVICE_TABLE(of, rkisp1_of_match);
> > > > diff --git a/include/uapi/linux/rkisp1-config.h b/include/uapi/linux/rkisp1-config.h
> > > > index 583ca0d9a79d..40677d47825c 100644
> > > > --- a/include/uapi/linux/rkisp1-config.h
> > > > +++ b/include/uapi/linux/rkisp1-config.h
> > > > @@ -140,12 +140,15 @@
> > > >   * @RKISP1_V11: declared in the original vendor code, but not used
> > > >   * @RKISP1_V12: used at least in rk3326 and px30
> > > >   * @RKISP1_V13: used at least in rk1808
> > > > + * @IMX8MP_V10: used in at least imx8mp
> > > >   */
> > > >  enum rkisp1_cif_isp_version {
> > > >         RKISP1_V10 = 10,
> > > >         RKISP1_V11,
> > > >         RKISP1_V12,
> > > >         RKISP1_V13,
> > > > +       /* TODO Choose a better version for this */
> > > > +       IMX8MP_V10,
> > > >  };
> > > >
> > > >  enum rkisp1_cif_isp_histogram_mode {
>
> --
> Regards,
>
> Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
