Return-Path: <SRS0=0DM3=MO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD3DFC63793
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jul 2021 09:39:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 909CB6121E
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jul 2021 09:39:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 909CB6121E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NjvtnW6I6iJ5X3uckzWNyPNZuZdXMkcFp84Tdom8PFE=; b=bXA7Fm37BTOgc9
	cWcpnE97v7aufuH1XbHIzTggdh4vdkI/aTIbx6AhAwLsq53XoX2Ac2ZeP7jVKVVwpFVj5aj+/ngH0
	ZS1f/d/Nn5q1+n2gieMYhjm1VH65Q910o8dHJKv6pWkdz6Z+lmFQR9KMTtxtj7xLf54gpoHcYKpqn
	DhOy+/qG5poaVSaXV0EiomLQyvH5LD8Hz9p8AUGdP3s87YCPP0Chgbyepa5Y8kidytBBP1/vLCPea
	Q7vEQSzFXDznQzR8csVUplQ5ax9uXBINONpO7sxLv+0g6C3Kzo0jtLSqp4BS22ryNIzenhLV+/Knz
	c876vSET2yBblOqGWE2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m6VAi-000xL8-Km; Thu, 22 Jul 2021 09:39:16 +0000
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m6VAO-000xFT-EC; Thu, 22 Jul 2021 09:38:57 +0000
Received: by mail-pj1-x1032.google.com with SMTP id cu14so5382005pjb.0;
 Thu, 22 Jul 2021 02:38:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MuMbiBM7YxAW87DH+qAJXu3APZbrJ75lW5QQXZfYU58=;
 b=ajsfwRT77Z9EbNaVAyA9I8jZs3BGroEX6WOi0qane/rs14eli9dewk2pAfpz8+X5HS
 MtTAhJ3j3UMZtcKTjtMbrdMlDq4vi4gEFeAr5GGCf9oj0s0nsIySOKsw5sJ3uLrmZe2X
 fWnADyjgnxDkNTOKTTe6JJwAQ4tWVdd45f7bdxhe0j6LEklVk+8g+6nC4mUvoV8VH42A
 Jm5q1MDUiggF8dXIMqceZCBG1atwLlxTwjXsXQO+OIGu2HE/LYCygEdiC9ujPfhBfNMk
 xMAvjfxjs1ABEdRKz1lCug4NiQhmW7udUIUERo8jaeNy+VN4p5Fukn+ygkd9UkRwLJV5
 DvAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MuMbiBM7YxAW87DH+qAJXu3APZbrJ75lW5QQXZfYU58=;
 b=RRMM86CQSjUGQdJgdu2V+P3oNb0QEpsiehxdpzIW5f4r/e72aH1JiqMJK1CpQidXK8
 XLsnHu70gUAwJwfVmUl5jtLmMzAyHkxTHcXXrHwSUmtcDnt5h7yzG6XIOFNqUmElPiBg
 b+sv5hbH4TJEweRxa2YBvgzS0RE8IZlM1gReHGy/LUBMCOabebkJ62cMeZoWuwKUIbt5
 /a5uofKykAUwBckQheI0zuPbVFjgtEjI8eeTZsp181S511+uEyDOq/qDqlwiWOiR5ewa
 PJjyvskf4ZofWyiU9thdsrHXXFZKbN5yHokTCJgx4hDLRapAA8n+pi3Uovh0RHCoYIBg
 iQsw==
X-Gm-Message-State: AOAM533sXiEXoupYOkvCgDcrBTTOYcf99wy4oPhDfj5s6aSmGh5LeT8m
 ngw1mNYefVhSbjNebXNVHM3ZRt+wHdVEKH+rRM4=
X-Google-Smtp-Source: ABdhPJyzhzXA/hG7Rr1mBzyRkHYgREWpgxUI1OzzB5MR3T7ZAB+Szt3xEBP3jbpwYoMfsgxa8AtdYgJHpcudOKg+mKE=
X-Received: by 2002:a63:5a5b:: with SMTP id k27mr40486739pgm.74.1626946735354; 
 Thu, 22 Jul 2021 02:38:55 -0700 (PDT)
MIME-Version: 1.0
References: <20210716133448.24890-1-andriy.shevchenko@linux.intel.com>
 <20210716133448.24890-2-andriy.shevchenko@linux.intel.com>
 <9117e5212a3b743ca541918ec2b701c159ac752c.camel@nxp.com>
In-Reply-To: <9117e5212a3b743ca541918ec2b701c159ac752c.camel@nxp.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 22 Jul 2021 12:38:15 +0300
Message-ID: <CAHp75Vdm8nO-zT0vyKcB1hOXkR7_2RY-2P_fnkjV5BCc+uoqXQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] clk: fractional-divider: Introduce NO_PRESCALER
 flag
To: Liu Ying <victor.liu@nxp.com>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Heiko Stuebner <heiko@sntech.de>, 
 Elaine Zhang <zhangqing@rock-chips.com>, Stephen Boyd <sboyd@kernel.org>, 
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 Michael Turquette <mturquette@baylibre.com>, NXP Linux Team <linux-imx@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210722_023856_562561_AC391AAC 
X-CRM114-Status: GOOD (  19.77  )
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

On Thu, Jul 22, 2021 at 12:33 PM Liu Ying <victor.liu@nxp.com> wrote:
> On Fri, 2021-07-16 at 16:34 +0300, Andy Shevchenko wrote:
> > The newly introduced flag, when set, makes the flow to skip
> > the assumption that the caller will use an additional 2^scale
> > prescaler to get the desired clock rate.
>
> As I mentioned in v1 comment, it seems to be good to decouple the
> prescaler knowledge from this common fractional divider clk driver.
> This way, we'll make it simpler and easier to maintain. Also, then, the
> NO_PRESCALER flag is not needed at all.  However, it seems that two
> Intel drivers which use the frational divider drivers will be affected
> and rate negotiation logics need to be implemented for them.  Please
> consider if it's doable or not.

The current driver works for the certain hardware without this change.
If you think it's better, submit a proposal we will discuss.

> If we ultimately keep the prescaler knowledge here, please consider to
> add the NO_PRESCALER flag for i.MX7ulp as it hasn't the prescaler IIUC.

You mean there is a code which is currently using this driver w/o
taking into account this prescaller flavour? Can you, please, point
out, I'll definitely update it. Thanks for the catch!

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
