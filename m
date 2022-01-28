Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A28CC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Jan 2022 19:03:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/IgTnJRkwG1Qap10anwaPwAloGPg0O7Ydzme8g1pAQE=; b=Mb07i8PSk/NYP6
	y/zfIRSdzKK+s4OLMgKKimn/nMgbn18b2iinr9kZK01bsPUyplZgUxPR28vyUZ0ca71gsVwVWutwG
	P3UnWRec2bJO0IJZfnKiojSgm7OzmybwodQYcYqKcQ3699h67CvjUuRxI3kAS4oQXFUCFMTMa94LF
	qcUu7sl94piFlKY4CpmGDzWJcfi4WwXmsAArE2mVp8kHfuZpzTSdgX+KGNXGi5HqxN9/JRbDs+sBh
	F+lwq3JWRPg1MJZGvQePHHITQxranQqXHiG/FJuKA4ZEM4xCcN49ZXUfW4kh5WUAAUqrq9DcUTSt0
	MixtsK6RcKcZdIDX385g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDWWk-003Nu8-8M; Fri, 28 Jan 2022 19:03:18 +0000
Received: from mail-yb1-xb2d.google.com ([2607:f8b0:4864:20::b2d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDWWg-003NtV-L7
 for linux-rockchip@lists.infradead.org; Fri, 28 Jan 2022 19:03:16 +0000
Received: by mail-yb1-xb2d.google.com with SMTP id g14so21228808ybs.8
 for <linux-rockchip@lists.infradead.org>; Fri, 28 Jan 2022 11:03:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3hlBZRfJeaaEMgpDJfGF4VXTiNMRL5u5A8XWDhcHgIU=;
 b=RB+iJtZRYF0dkmWtZQjZrE5l2GCNTyyleglmYgfhw2DfTccUOrvGv9t6I6Yk7N3fd1
 i90XCiFg/0xlIqHxlY0zFOXcxPwjk7qLfB9xsvV/FxdncdXC32oYUY+M/uVFIzbbRkHS
 sGAHLY2u0DS9/gwV0Bw8Llaky5XDQPsalA9CkpoF7O7nCYaGNpqK/b3tj5Zq48+wjJoe
 QMaTbI9e0mRXYA0VjJ2MYyLeZM271Ly4gVi94O4Z7JeGjWaG7KtuFAcrocfly191vqsq
 BP+/8tBvp4hnN0JJUQazPDSUO82daB1GopBf7zqzTLm5faaI3mAwSJt3f4JT1K0I7IBP
 yiIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3hlBZRfJeaaEMgpDJfGF4VXTiNMRL5u5A8XWDhcHgIU=;
 b=M/ffpBiR7JF5gILWizAR7zBGJ/Avz1jnG8DH+5qlIEP82wEB+CTxLQAVtNCZ0iVhB7
 3gp/qR7y7hHhvZ5CLpbT4nnhsWY3EPND5x3t3RcQE/4dLxLPkaiDDwcUGeroiXwISvE0
 67niGQFW2WLuUS0dmXnxc+bYhsSndsPXUi5iB8FzXK3sNelWkqteMbRZsSvJW48X1Hzu
 HpG3O97llMPWgmv95hBygZyeGu+b2oX1vxTvi4MBDsy3eaUkwDNVLjEprhDJYovwj5K4
 asqKnw+WuwL9hZQ/lhkg8Y0v+hA08Dd7WkCDGAzIBDJYTD4vLh/H/RBSCp4gQG3RTDpr
 vYCQ==
X-Gm-Message-State: AOAM530XtlKFTutoVvJaFcxMsQGFEYj8tiIYPG2lj4pSay5iSqIAcfKy
 mbp20FUm04C54eUtWmEEWbbxM6hkbxNHntdhmug=
X-Google-Smtp-Source: ABdhPJzzfPPKuV+kEV5XP50RjBgFVl8NGNQtLCUEqsEPQE6Z940iaylmOzR016fVVotXJrtEZoq5NTeoaKbhpkUa57Y=
X-Received: by 2002:a05:6902:704:: with SMTP id
 k4mr14250783ybt.355.1643396593140; 
 Fri, 28 Jan 2022 11:03:13 -0800 (PST)
MIME-Version: 1.0
References: <20220126202427.3047814-1-pgwipeout@gmail.com>
 <20220127093307.GJ23490@pengutronix.de>
In-Reply-To: <20220127093307.GJ23490@pengutronix.de>
From: Peter Geis <pgwipeout@gmail.com>
Date: Fri, 28 Jan 2022 14:03:02 -0500
Message-ID: <CAMdYzYomk6_PLgkWSY9owd98vPtFGiHPmAwwnrx8vchf05uYLw@mail.gmail.com>
Subject: Re: [PATCH] drm/bridge: synopsys/dw-hdmi: set cec clock rate
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <narmstrong@baylibre.com>, 
 Robert Foss <robert.foss@linaro.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, David Airlie <airlied@linux.ie>, 
 Daniel Vetter <daniel@ffwll.ch>, Pierre-Hugues Husson <phh@phh.me>,
 Archit Taneja <architt@codeaurora.org>, 
 Robin Murphy <robin.murphy@arm.com>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 dri-devel@lists.freedesktop.org, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220128_110314_715463_E4011E32 
X-CRM114-Status: GOOD (  19.88  )
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

On Thu, Jan 27, 2022 at 4:33 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> Hi Peter,
>
> On Wed, Jan 26, 2022 at 03:24:26PM -0500, Peter Geis wrote:
> > The hdmi-cec clock must be 32khz in order for cec to work correctly.
> > Ensure after enabling the clock we set it in order for the hardware to
> > work as expected.
> > Warn on failure, in case this is a static clock that is slighty off.
> > Fixes hdmi-cec support on Rockchip devices.
>
> You removed this sentence in v2, but I just wanted to mention that
> clk_set_rate() won't fail when the desired clock rate can't be
> archieved. Instead, you will get the best rate that actually can be
> reached. If you want to check that you are happy with the rate you'll
> have to do a clk_round_rate() before setting the rate or a
> clk_get_rate() afterwards.

Thanks, the behavior in v2 is actually what I'm looking for.
I dug into clk_set_rate while checking into its interaction with
clk_prepare and I came to this conclusion.



>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
