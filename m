Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07D85C79F82
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Sep 2026 13:32:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7HWGbONpxkMa0w8TWV06MKHCRgp8gtJ73mykJpmV5bQ=; b=Ov3JeiqkQAW+xq
	ccDYuBP99MzBfUTwymnPOVBo7XMRiCEXNvjo36L6bpQ1c/qjLcNr1FOkCkuZy2r50fdMQ66enIxkw
	3JcS+OqQkV8l9wNbj4JljtCrSxswfdS0TQJKWDZpIIyikQBLLqYfvden/HHHQRulmFcrmnClEJFt2
	sahsCQzuUzoUdPVmcOHoETDfc71wgkQpzzSMaVOveBSBwXhvW1ZbLYd6G7D82vNJ1dmp4YYGw2LcU
	wtBBA+a0pZ5z+D+sUQD4GoQrugVTPz6g0hcorY6/GEM5HYMHyyEL8STaJpOyk6X9jHom/WPVxm+QY
	uCnKkY5r4Vbm57l0iMqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3vvw-000000099tQ-357h;
	Tue, 08 Sep 2026 13:32:20 +0000
Received: from mail-ej2-x10.google.com ([2a00:1450:4864:34::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3vvn-000000099ph-3A0A
	for linux-rockchip@lists.infradead.org;
	Tue, 08 Sep 2026 13:32:19 +0000
Received: by mail-ej2-x10.google.com with SMTP id a640c23a62f3a-c25085f2422so50204766b.0
        for <linux-rockchip@lists.infradead.org>; Tue, 08 Sep 2026 06:32:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788874329; x=1789479129; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=c09duG40XUDjljTKKEnm8AMSUZjhNe4OtYQ1ssenbDY=;
        b=sCLh6dbyJ6gFWlVJA3+RSlw3EGSJtsCr1dkokaYWFZJOR5xbPS2g1/Vft/1MgrcAL5
         7hNk0U9Q6kHGR4a2xqf1zMyy2Pii41mE8DCqANtIUG+aG7A3xDomd7YQL+3nulKCCqp2
         4uSVGDpK4cBSOdkX8ZOAzzUQv4Si2TRhEquydT7N7pzL74gD8iyObzuwi9782MYOzFHW
         elfQKLBFcPkCmxA34uMWsUcOoZOF5D6lgqeN6dqN6LtO7pufjDEhSvG2l2GsQSfeRdpz
         FSrq8S6h5YTVzYpMB3/iQPG84MF/ylANmTGNHkkS1QWrF1iUSv/mRGOKskhtHVY+NAW3
         sDGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788874329; x=1789479129;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=c09duG40XUDjljTKKEnm8AMSUZjhNe4OtYQ1ssenbDY=;
        b=Ch+4Jd7r6w4SQaMTQjgbki4MI33XiyUy30ZyF4e9nzgHZkdDf44CZU5/abwpnaZEnU
         cSdnhkBmrGSuOdsXnkkl4InQyo9MRECRWfd29XpE+oyZQPToG8nlw/LN5RmnRRzYyBYu
         +trQ0jcrOb1ZXRT0I3xJq1LmUZ3SWhlJekv+UcIqDs7NwMtuSofumKENKfAFtdtEaGNg
         vFLZsZngHFNGsyz+VPveL+Q6E5JJxoUDIR4oaToqBzG2z4Nw6IWFs77ySQz1ufR65ksl
         b6yXLQWgZgMbGGS18kptscCMNiKfxub26tQ8JWtS/DkFYc/dmqeg0WtwMEjvt0cEBH8g
         abIg==
X-Forwarded-Encrypted: i=1; AKwUvByG9/JVsqGuSyIGp/KB4XI4DJfYNeMYu+iiaxpUnW4Wvi9U31JQabOS1NW/2wV0Ys/40DrBUHvXMH6sb7B92w==@lists.infradead.org
X-Gm-Message-State: AFuF++ksICEptJU6Gj4RTvqZIy4esehulnR/z11g4ZUilleHpjYcaXXk
	PG2Q2LLS8JOWN8IJ0xW7AMr+NUbJFXdnujZ2n7g3wVjDzAk3s2AJwbab
X-Gm-Gg: AYBFou2ZNM1lDomVotyR/CGjJNxjcGeWgEic+aT9UEzqSvhIMhRRIO6xSZUsnOKUmfC
	Oqt43cpSJgPAppyMRzPuFNn1Do58nt+mtKe07ejD5+t8jqdZF5bqUkopmWhHLaMdlGRmJI6wQG0
	vgm7HVyapPGhSv2bJmD+by5ayQVry55QVXWiFk/Viip4XJoKRbRK38KIUxYLuN9Y1BZdrQqCDVH
	3n5n7t2h5Xh0yY/4/X20/cVUvOWhkMYevo0MMPlv+7aJtoUQ6QNcVn7sTj6MEL9GfrDJ8dd7HrT
	S+Xh9D6eYRH/uD7Jnwd2fZFu5ljSXRQWeBQRYFvPsX0rOfU5mWiyjJZxoIV2W/pKxBpuvlyrzX5
	dxFD5nKb1mVGsfDUi1ikmLxMV8IjHUm8BE08swjQlaYXtNsqd2RgptH5Pe63UNrLndcHgihMIuC
	5Gd2e6Q+ZcVaeKssUYpCRtKv2cRagt1mqh9Uyi/fHeXnmBYDITjBUUA0H8iz7YE1V8FgYw2N7YC
	1DpOfOHPWA+ype9a2aAGNSxzh53JxcWa6Vka7X941iNBasdgeTc86Pt+IjQcng8G/Xm2WNhJuIM
	YOcM
X-Received: by 2002:a17:907:3f8d:b0:c25:ca8a:8e25 with SMTP id a640c23a62f3a-c2624eef698mr794013366b.1.1788874329043;
        Tue, 08 Sep 2026 06:32:09 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B825D0079B84A36A788F67A.dsl.pool.telekom.hu. [2001:4c4e:1b82:5d00:79b8:4a36:a788:f67a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-485881353e8sm36163217f8f.1.2026.09.08.06.32.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Sep 2026 06:32:08 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Vinod Koul <vkoul@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-usb@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: s2idle resume hangs in ohci/ehci on RK3588: HC registers touched before the USB2 PHY is powered back on
Date: Tue,  8 Sep 2026 15:31:46 +0200
Message-ID: <20260908133147.8291-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <ap__5zeUakMSLWOQ@venus>
References: <20260907190000.s2idle-usb2-resume-royalnet026@gmail.com> <ap__5zeUakMSLWOQ@venus>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260908_063211_804352_6468C1D1 
X-CRM114-Status: GOOD (  17.63  )
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

Hello Sebastian,

Thank you, that is a much better place to fix it than either of the two
options I asked about, and it matches what the board shows: the OHCI
that hung was the one whose 480 MHz clock had it as the only user, so
the clock was gated on suspend and the PHY was left in suspend when the
controller came back and touched its registers.

I read 53014abc in the rockchip-devel branch. One data point in case it
is useful for the version you send: on RK3588 the early return does not
get in the way.

    /* Limit to single port; it's unclear how multi-port should be handled */
    if (rphy->phy_cfg->num_ports > 1)
            return 0;

All four entries in rk3588_phy_cfgs[] have num_ports = 1 (0x0000 and
0x4000 as OTG, 0x8000 and 0xc000 as HOST), so the new code does run on
RK3588, including u2phy2 at 0x8000, which is the port whose controller
(fc840000, host0) hung for me. The num_ports = 2 configs are the older
SoCs, so as far as RK3588 is concerned that guard costs nothing.

I will build the patch for my test kernel and report back. My setup
should be a reasonable test case for it: with all four USB 2.0 hosts
bound, s2idle resume hung every time and needed a cold reset, and with
the four hosts unbound the same cycle completed 4 out of 4, so there is
a clear before/after to measure rather than an intermittent one. The
driver is a module in my configs, so this is a single module rebuild.
If it holds up I will send a Tested-by.

One observation on your second point. On this board s2idle is entered:
the machine goes down, the hym8563 RTC alarm wakes it ("PM: Triggering
wakeup from IRQ 52"), and only then does the resume stall in the USB2
hosts. So PCIe did not block suspend here, even though the board has
NVMe, two r8169 NICs and an rtw89 card on PCIe. I do not know why my
case differs from yours; if that is interesting for your PCIe suspend
series I can dump whatever state you want from before the suspend.

The RTC pin fix I mentioned is now v2 on the list [1], with megi's
Reviewed-by. Without it there is no wake source on this board at all,
so it is a prerequisite for anyone else trying to reproduce this.

If you would rather I wait for the version you post this week instead of
testing the branch commit, just say so and I will wait.

[1] https://lore.kernel.org/all/20260908111908.19371-1-royalnet026@gmail.com/

Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
