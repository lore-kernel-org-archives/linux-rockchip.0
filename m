Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2865C636D4
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Feb 2023 16:18:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=da7YiTwr8cJhkQ+JiiiErZyN9PCVGhMlw7ycMjLGVBA=; b=Vt70u5H3VdElIY
	qrrV7l8amqXDRmY0CEG454oG+s1CdjujS8dSWBpJXie1J8j2qrlOm6Y2WWBP1zjy5TtxRQgacqIgz
	ExwU7YOC6LAjkTvl4UdUQcUpiiBjTT0ZgtqzLMst6kk6PSR8TqiHmFNBGtwj1q4BNRqfwabHCmF20
	xGpqTfz6b8qSv6+ihbQIHQ/QtfHdn/MhckVpV85IcN48oFvlTDNhvMfV4mtSYBHzBZCu99uP3mzXH
	TASD9sqZJInHutwt68isYFmbK4jHsTKzmaZrdsXDhKCV2FfHo+48jJ5mta/+3wvJhTJDrKvgu28nP
	WtNUf7yx163y0r65QMUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pP4CW-009Gzp-9O; Mon, 06 Feb 2023 16:18:40 +0000
Received: from mail-qv1-xf32.google.com ([2607:f8b0:4864:20::f32])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pP48s-009FMl-Q1
	for linux-rockchip@lists.infradead.org; Mon, 06 Feb 2023 16:14:56 +0000
Received: by mail-qv1-xf32.google.com with SMTP id i1so3646609qvo.9
        for <linux-rockchip@lists.infradead.org>; Mon, 06 Feb 2023 08:14:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar-org.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ihwWvmM3PQe5ufFnOBU/DesfdhMbRFj4jfVbEy0lOpI=;
        b=XA/YKDBcVWQZbeVnqd8yc4/KsZWE4pJVA+T1us8o2xGjavL/JdSTMsQNm9/0w/G8qs
         arX+cUDFhFPzVTt2wHqggZ+ig7WZ59i59dbEXpAhuAAY7zy9HZDYv2Nstqr9ic6eweEx
         otPASZ7mX90Qk/p8UNSwCA4cmJA0z3aTS9w0ApzPERvebQ+jLB7iK4eXDAkwJ+YYhS84
         quQxNf0qtDXa9bYBSUCQAjZFcVbnz4KhndR+QHjgW1eHC+eIyKgijaOvN86ewKp/Yx4w
         SFb/TKWqyMcyckpwn0Y85X6QKKIzXLL2b5WunqEitBV/KpnAdCD30eogl9qwdJ1lyGaI
         BSwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ihwWvmM3PQe5ufFnOBU/DesfdhMbRFj4jfVbEy0lOpI=;
        b=2DQw/y/h3oJQjgjNy/FczInD2Lqgrf0wQNAL//H8fS8lbsM70qGF/2isiAAzPTdjIY
         5cczFvgShymc4nw2Rmkm7y+nfwBgl8PDREnwg519f9QsTl4mSOu1A4UU1IsjBULw6c4w
         M1F0x3sSt1MRGMJEFNj6s3fERiyELe5LaVCdprPAnLR775WwPecstCDI+D5w+YukX14Z
         JHpXNMxVlBeT+g4wBE/pQJ2ZzG0YRfyOhIDm0RWCs7hLIPAUS78CgSYYoZ1PQXmx++aV
         oC032thaGXEDAhG1JYsM8LwkQ+tTokntnX22QVMI4avpQzBPRtubWRx7Lpwshw4fNlQD
         vxaA==
X-Gm-Message-State: AO0yUKWez63tAj6ZEVEp0f2/iutkR48x32M2z90JIKBS9mPtEVcC7sPg
	ILbzjhdG3juLNrIhNJMENUSdPz+3Sydv+7lCSnVbxuRmYj+/ZtGJ
X-Google-Smtp-Source: AK7set8NhcLpe0QqZeDlnb9EINzY4frNALG0zMMpRDnSjJpka5bHVlm/ebtEEG1wc0RHlH3n/Pu735bATg9Dbl/JDT8=
X-Received: by 2002:a0c:e0c8:0:b0:537:7741:5b13 with SMTP id
 x8-20020a0ce0c8000000b0053777415b13mr1132857qvk.82.1675700092421; Mon, 06 Feb
 2023 08:14:52 -0800 (PST)
MIME-Version: 1.0
References: <20230118132213.2911418-1-s.hauer@pengutronix.de>
 <20230131080928.GG23347@pengutronix.de> <3C4B67628F8D73D6+63ea74ac-b8a2-45b1-5f92-8c7868906687@radxa.com>
 <20230206140448.GB10447@pengutronix.de> <20230206154851.GD10447@pengutronix.de>
In-Reply-To: <20230206154851.GD10447@pengutronix.de>
From: Daniel Stone <daniel@fooishbar.org>
Date: Mon, 6 Feb 2023 16:14:41 +0000
Message-ID: <CAPj87rM4dUbpy4qV3bnB3HgZ-Amui9f38MH87iGMBC4WXio2Lw@mail.gmail.com>
Subject: Re: [PATCH v3 0/3] drm/rockchip: dw_hdmi: Add 4k@30 support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: FUKAUMI Naoki <naoki@radxa.com>, Dan Johansen <strit@manjaro.org>, Sandy Huang <hjc@rock-chips.com>, 
	dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, 
	Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de, 
	Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230206_081455_099833_F44D9DF9 
X-CRM114-Status: GOOD (  17.77  )
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

Hi Sascha,

On Mon, 6 Feb 2023 at 15:49, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Mon, Feb 06, 2023 at 03:04:48PM +0100, Sascha Hauer wrote:
> > I guess a first step would be to limit the maximum resolution of vopl
> > to what the hardware can do. We would likely end up with 1080p by
> > default then for the applications.
>
> I did that, but the result is not what I expected. Discarding a mode in
> the connector means it won't show up in the connectors list of modes.
> Discarding it in the CRTC though means the mode is still exposed by the
> connector, but actually trying to use it then fails.
>
> This means when discarding the mode in the CRTC the screen stays black.
>
> I am not sure where I should go from here.

You've done the right thing. Userspace should detect this and try with
alternative CRTC routing. The kernel shouldn't be trying to solve this
problem.

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
