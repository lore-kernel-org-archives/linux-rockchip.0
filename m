Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F7AEECD980
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Feb 2026 15:37:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aKPyh+sQOjdF+LDd6BVOZ1EkySHIjWaRPk7o6cBrY3M=; b=eR6CLfpDuQQuOr
	vP8enz+opj1lbo0kYMBbl8km6IwvpMa+apsUlW7+gsQLXD4RgMyLV25iCIX5UtHH8tZEqW14SlEX1
	K8ijD2SYr4WKi2TAYtEVc6tqB7KofVulLqos7wcvJYnUST8Uk5L4gTG24qXOwm3aPiy4AkS+8Ex+c
	cD283TvdsGtZiPsZr7zCGwSxP5mJWYN2+EUmZPaBajpVZe2Tadtctz5N4yqKefPusfmZAH9b6W4I6
	aH5R4sz0jZbEeaLdYilV7omnwbAxygNcr/8+tSLg4wH0+cZms0nPzwdPom4x1quRWvQeGoJ2n+BOT
	+lYnuOYQvPEslA5cAXcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vo1PT-0000000A9CJ-1Cwd;
	Thu, 05 Feb 2026 15:36:47 +0000
Received: from mta1.formilux.org ([51.159.59.229])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vo1PN-0000000A9BF-005F;
	Thu, 05 Feb 2026 15:36:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=1wt.eu; s=mail;
	t=1770305795; bh=bDG6JUw0vcIRR0kyBBhmEXyGARwRCtNfBmiWb++p9+c=;
	h=From:Message-ID:From;
	b=X5TWe283hcU9qCzxp/Q8l1S2heYWS4UvpZ6MAqfiSS9O9rEO9mxN8lVFR6YG2Zrfi
	 wb482IoVIPe7SxK1BtPivi3SeI9sSfF3h8TUZ3GT58VGHo+uPhztYPXnWlB7UDHj34
	 pEODenMJvaTT2kEdaFUgC9rCSqKHQT9jst0ouAMs=
Received: from 1wt.eu (ded1.1wt.eu [163.172.96.212])
	by mta1.formilux.org (Postfix) with ESMTP id 26F58C0BAA;
	Thu, 05 Feb 2026 16:36:35 +0100 (CET)
Date: Thu, 5 Feb 2026 16:36:33 +0100
From: Willy Tarreau <w@1wt.eu>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: Kever Yang <kever.yang@rock-chips.com>, linux-rockchip@lists.infradead.org,
        Finley Xiao <finley.xiao@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: Re: [PATCH v3 3/3] nvmem: rockchip-otp: Add support for rk3562
Message-ID: <aYS5ATObatoDnKFs@1wt.eu>
References: <20250415103203.82972-1-kever.yang@rock-chips.com>
 <20250415103203.82972-4-kever.yang@rock-chips.com>
 <20250728190154.GA24527@1wt.eu>
 <3080333.vCJZsxu672@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3080333.vCJZsxu672@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260205_073641_470878_F7376986 
X-CRM114-Status: GOOD (  22.13  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Heiko,

On Thu, Feb 05, 2026 at 01:50:34PM +0100, Heiko St=FCbner wrote:
> Hi Willy,
> =

> Am Montag, 28. Juli 2025, 21:01:54 Mitteleurop=E4ische Normalzeit schrieb=
 Willy Tarreau:
> > On Tue, Apr 15, 2025 at 06:32:03PM +0800, Kever Yang wrote:
> > > From: Finley Xiao <finley.xiao@rock-chips.com>
> > > =

> > > This adds the necessary data for handling otp on the rk3562.
> > > =

> > > Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> > > Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> > =

> > Successfully tested with Jonas' patches on top of it on my
> > Radxa E20C (RK3528):
> > =

> > Tested-by: Willy Tarreau <w@1wt.eu>
> =

> as you replied to the rk3562 variant, does that mean the rk3528
> uses the same variant data?

Now you make me doubt, I'll have to recheck the original message
in its series and the patches that I had applied. I seem to
rememeber there were certain common patches between the two but
I don't remember which ones, and it's also possibly that I replied
by accident to the wrong message in the series or that I mistook
one patch for another when comparing them :-/

Ah, I seem to have found it, there's indeed the 3562 in my local
patches and the 3528 as well, both of which rely on the 3568 one:

  commit a68433c468c8a9d4789641eb6a40ae571fb7f01f
  Author: Finley Xiao <finley.xiao@rock-chips.com>
  Date:   Tue Apr 15 18:32:03 2025 +0800

    nvmem: rockchip-otp: Add support for RK3562
    =

    This adds the necessary data for handling otp on the rk3562.
    =

    Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
    Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
    Reviewed-by: Heiko Stuebner <heiko@sntech.de>
    Signed-off-by: Jonas Karlman <jonas@kwiboo.se>

and:

  commit 249b07e24d3d1d47b7ec23d5f09a56837b66d7f5
  Author: Jonas Karlman <jonas@kwiboo.se>
  Date:   Sun Mar 16 00:05:45 2025 +0000

    nvmem: rockchip-otp: Add support for RK3528
    =

    Add support for the OTP controller in RK3528. The OTPC is similar to the
    OTPC in RK3562 and RK3568, exept for a missing phy clock and reset.
    =

    Signed-off-by: Jonas Karlman <jonas@kwiboo.se>

It's very possible that I visually mistook one for the other when
responding to the series, and if so, I'm really sorry about that!

The former relies on rk3568_data and the latter on rk3528_data, which
is defined like this:

+static const char * const rk3528_otp_clocks[] =3D {
+       "otp", "apb_pclk", "sbpi",
+};
+
+static const struct rockchip_data rk3528_data =3D {
+       .size =3D 0x80,
+       .word_size =3D sizeof(u16),
+       .clks =3D rk3528_otp_clocks,
+       .num_clks =3D ARRAY_SIZE(rk3528_otp_clocks),
+       .reg_read =3D rk3568_otp_read,
+};

Looks like the patches originally come from this branch that I
manually cherry-picked:

  https://github.com/Kwiboo/linux-rockchip/commits/next-20250620-rk3528

I have one extra E20C that's not yet in prod if you're interested in
me running some specific tests. It will not happen quickly but just let
me know if I can help, as it's a nice little machine.

Willy

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
