Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B56E5C28CF5
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Jan 2022 17:03:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4pE8lc2njHKCJjgo12qCpoZOTcticsHCFcemlklr3Lc=; b=pZLN7s8HtXa5AD
	oCYwMU1fbNpc9eTWrd03jE5WB/gqN7FI7l+3uEPo6+/g1weAm7lFFu+73JpnZBhMhOwJpRFWYePz9
	7CC1Q3qjBSwq9tW5cclhyQpENxBfbcWXYn1m6qxBywFKxAB6POwSO3TBjnkNhHf8lPZlrv6zQfnoI
	BZ+lt2th0h0JL1jMSaZzOdWZVrbN33ZBcITc7dh+rrmHesBvYnhnhl15eTPMV8HSLVb6/Xo+VfBmv
	toyAxWSG9KEaNmCqMgks7scCRnRtkfrc70KwS7G9jRhcfSP0jbvTst/vVML0nBTXmhxsSmgh7emI2
	XtIWgsihkrEQqcx2Usbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nClhn-00CqjR-Dm; Wed, 26 Jan 2022 17:03:35 +0000
Received: from mail-io1-xd2e.google.com ([2607:f8b0:4864:20::d2e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCkRt-00CNM3-LM
 for linux-rockchip@lists.infradead.org; Wed, 26 Jan 2022 15:43:07 +0000
Received: by mail-io1-xd2e.google.com with SMTP id h23so27704580iol.11
 for <linux-rockchip@lists.infradead.org>; Wed, 26 Jan 2022 07:43:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yAKLAxMEs2s6OrJ3pa4cx9PTkR+o5F/ZiccP0DlaJjY=;
 b=U3rXYwAr7EUCDTiIcY4gOCab99RYN1iHfQmfjJicIYZksZtQmg/cChGiZ8WtTbEYMN
 kFoan3HFEAaZI7XDJRVeB9sQwohId0ITWtX9z9laolWmpOE0khd2vvSYZAbtD8Hf/Kjt
 +1p6Q8Y0CvOUr5jcV3Bd1P5fseAkngVdrooBE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yAKLAxMEs2s6OrJ3pa4cx9PTkR+o5F/ZiccP0DlaJjY=;
 b=LL1ru766D86MyQoEDOyvsMnALNcb2B69jrzp7UE3DS9WL87g33MaegDAX+WGA1XB6b
 LhKVrkVM8corRtzuqNbjYn2MCP+dbbdRC2R7GIYPFAnW3RHWlC33Lmnyf52+L0dxyk1A
 LNkyF0LQ78Dat0T4589RYCoY8SypnmfF+O6sS8PR/iK9d6sS8m/5vfmz7UZE5yUYq9V9
 Tx6j4TDiBmhnKalXTknh80owvH7SUJTVSGWD9Gz3teF5Ix776astUExSwA+Gv/dt4id6
 G7Q10q4/iLjrsxfWvlcfqaBnTfgjawEju134gxHWv35+r4IV9LG2SBG4gvWLRgmCviKa
 uNYw==
X-Gm-Message-State: AOAM532jQGRDYEC9dw3z00xgZon0pKQQ3mb/EOfnEJupDVeiRsLGh5Ut
 uC6Msyq3Xrw/RPk9soehi0Bpw6thRP5k+Q==
X-Google-Smtp-Source: ABdhPJzBoNQZ22RvKYW8StHp0YD7GG7KQR9ijZhzSBbGVeq4UXx0t1CAbvMBDqU6aFW3hNmNnUCKHQ==
X-Received: by 2002:a05:6602:1483:: with SMTP id a3mr672915iow.6.1643211782189; 
 Wed, 26 Jan 2022 07:43:02 -0800 (PST)
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com.
 [209.85.166.52])
 by smtp.gmail.com with ESMTPSA id n9sm11821808ilk.27.2022.01.26.07.43.00
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 26 Jan 2022 07:43:00 -0800 (PST)
Received: by mail-io1-f52.google.com with SMTP id z199so13305803iof.10
 for <linux-rockchip@lists.infradead.org>; Wed, 26 Jan 2022 07:43:00 -0800 (PST)
X-Received: by 2002:a05:6638:ec8:: with SMTP id
 q8mr8000709jas.44.1643211779964; 
 Wed, 26 Jan 2022 07:42:59 -0800 (PST)
MIME-Version: 1.0
References: <20220126145549.617165-1-s.hauer@pengutronix.de>
 <20220126145549.617165-10-s.hauer@pengutronix.de>
In-Reply-To: <20220126145549.617165-10-s.hauer@pengutronix.de>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 26 Jan 2022 07:42:48 -0800
X-Gmail-Original-Message-ID: <CAD=FV=VCWW4c3iqfzezU5=KKVFNP+EhPGTBZ7uZdQ=bSCJHQVA@mail.gmail.com>
Message-ID: <CAD=FV=VCWW4c3iqfzezU5=KKVFNP+EhPGTBZ7uZdQ=bSCJHQVA@mail.gmail.com>
Subject: Re: [PATCH 09/27] drm/rockchip: dw_hdmi: Set cur_ctr to 0 always
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel <dri-devel@lists.freedesktop.org>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Peter Geis <pgwipeout@gmail.com>, Sandy Huang <hjc@rock-chips.com>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sascha Hauer <kernel@pengutronix.de>, 
 Yakir Yang <ykk@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220126_074305_743051_0EF03720 
X-CRM114-Status: GOOD (  18.07  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hi,

On Wed, Jan 26, 2022 at 6:58 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> From: Douglas Anderson <dianders@chromium.org>
>
> Jitter was improved by lowering the MPLL bandwidth to account for high
> frequency noise in the rk3288 PLL.  In each case MPLL bandwidth was
> lowered only enough to get us a comfortable margin.  We believe that
> lowering the bandwidth like this is safe given sufficient testing.
>
> Changes since v3:
> - new patch
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> Signed-off-by: Yakir Yang <ykk@rock-chips.com>
> (am from https://patchwork.kernel.org/patch/9223301/)

Probably remove the "am from" line? It's not standard in upstream and
that link doesn't seem to go anywhere anymore...


> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 16 ++--------------
>  1 file changed, 2 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> index c44eb4d2e2d5..77f82a4fd027 100644
> --- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> @@ -176,20 +176,8 @@ static const struct dw_hdmi_mpll_config rockchip_mpll_cfg[] = {
>  static const struct dw_hdmi_curr_ctrl rockchip_cur_ctr[] = {
>         /*      pixelclk    bpp8    bpp10   bpp12 */
>         {
> -               40000000,  { 0x0018, 0x0018, 0x0018 },
> -       }, {
> -               65000000,  { 0x0028, 0x0028, 0x0028 },
> -       }, {
> -               66000000,  { 0x0038, 0x0038, 0x0038 },
> -       }, {
> -               74250000,  { 0x0028, 0x0038, 0x0038 },
> -       }, {
> -               83500000,  { 0x0028, 0x0038, 0x0038 },
> -       }, {
> -               146250000, { 0x0038, 0x0038, 0x0038 },
> -       }, {
> -               148500000, { 0x0000, 0x0038, 0x0038 },
> -       }, {
> +               600000000, { 0x0000, 0x0000, 0x0000 },
> +       },  {

This is what we did for rk3288. I can't personally vouch for the
effects on other SoCs.

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
