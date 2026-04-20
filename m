Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7666F588EE
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Apr 2026 16:03:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/APg9OxiKsOqg9z4CuwtLHnjYb1qjpQ6PkjOfuKRBJ4=; b=Xnk+KSY5T6isKmOEu1Mr4jlfz4
	6TYmgKi7Fh8WDcZsqByJUshVixWrDNAv0RPESV5BbXn7dye4DeISjU1/z8Quw7mpe2b6TtnJjA627
	aPfrRq5Eax2RT7HB209CzftAUfGqClGPHGjhP4NXsJsG134y64VBuADYYHEc1gEVIQsSeT8Gxo7lq
	TQqLdU5f0XNEn1TC8lY2rj1hZk/ppT7/TmIEoOX/CwX/Mj88srmvJiq/UPlK6AHzYrzddOOBB1Ok1
	1S5zfjUaIcpXMCpI2hqZUTLxuR5n28ogIq+8TZO7CITIAVD3DF/MrkKMgg8Ln3CyThvawPb8kXWLT
	13l0ne7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEr5g-00000007OGJ-1DlF;
	Mon, 20 Apr 2026 16:03:16 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEr5d-00000007OE6-2klh
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Apr 2026 16:03:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1776700986;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=xEDfs81Jd47iepqrBF7xNRmRtmHijqCc+ulFumY0y9g=;
	b=bO0FXgK1Z0vn0o2LuwctxRdeHmNDZ2nvqUsvwawurksW08UyYrameM2zYBl9whQ4H6Ux/Q
	jYuuKxvH9w8IBlXv2akxrdwdwrJzipMuqnmtWVOj3p4k413URqUVR0V/flYZ1c1JNV/z5y
	Xov9jfe0+6P5WEKu3ZKYzmi4yTfmN10=
Received: from mail-ua1-f70.google.com (mail-ua1-f70.google.com
 [209.85.222.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-204-gMvomZilNni_uClSLuJa6A-1; Mon, 20 Apr 2026 12:03:03 -0400
X-MC-Unique: gMvomZilNni_uClSLuJa6A-1
X-Mimecast-MFC-AGG-ID: gMvomZilNni_uClSLuJa6A_1776700983
Received: by mail-ua1-f70.google.com with SMTP id a1e0cc1a2514c-948476b92e8so1137108241.3
        for <linux-rockchip@lists.infradead.org>; Mon, 20 Apr 2026 09:03:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776700983; x=1777305783;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=h9/x0FxU8GBGhtJj7ey+dB7jEGAG86JGELTylQtF5nc=;
        b=GemxESIjEy4VIPZe+6S72OiSivt3PZE0Q80pb93Z3WsF/yvQi3xbrSuWgMJiHVdk+w
         E5CA1t9Aiy9Weu73QscQ1iK10qZnA9bG63T/c+pWyAeQb8tu8iDYshB9sevNZPXhoBeL
         LmPN0GDZHEiOQDzN0cJHNaT7PFOkNVm30rha3/v/zCImTdB2Ui8TevHj66N0Wff5TRcc
         aRr8igpMWjm8xY6dqkLds3UCm1pc72NJKL9GBTaaSaDXg8Zla02UN2Cub9YfpyhBrTAS
         7U6vp15POhxIB3YShkF5xiMsRg/Ur9jl1nwBA/EYhoLg02GxanfmKMZ2FBArIOPX20ax
         xvzw==
X-Forwarded-Encrypted: i=1; AFNElJ8VdM4VZFFE4GC9/tnHMBlGvAeVU7L0QlAJKoNPiiTIe3SxA8sPwn9vYLPOpKr+LEh20xiayu+S5MkEJTfvQg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxuoKmT6vW0E3XpC7OyhpSf2kqxDv2MVcJ83CpcMw9QFXXit9TD
	DEjJ3YeHcMnF/+xZOa2PfRvwMhng9yhdkwTxiMqG9VmA40iwrF/0/gebkqHR10Jc+htjsjCT1uB
	2mfTueqU8h5iMEZFuUG+L+V7iKptFsnBRSE+31ppo61itvlL5sJ2sRhTmPJonTMMOx90m4kSs/g
	==
X-Gm-Gg: AeBDieuieDY2ml0gvpLNnSLC7keMSClnRM4Ah1y3HQhLali0I1ZJD6cCJuJ6UZWWZa2
	QsJE9wpmpCUzWA3L4pZt5nX5BfYYjZmky0jz/6Pjl7yuFFuog52/EMH5tM3FBZPhhuojJiYGIhf
	zjMV3oF1I8QQcpnIBCX3CJcYXDO5meprN3NMyqDSFXO43QgWToIx68Uv+yq11l3nul6ydauUj1f
	+qtik/hOGcx0AEIwTUUgePadeYLTBI+ZjbOt5lc4YhzDM5ZFcflTBTpvxPDhv12hQ72V75ILmJ2
	esUsAd1l2MlUA4GdEDQjAe8KCGiIbPHXacZaI9ZagXgZpmkgrSId+CfynWox0Eu0MG8DVy0yfwZ
	FoLmsXZintE4Oq4aGTvE7HiEgu0nzTSt0gna/owHTgJfCXt8a9IUVOZhMjkEfGonBmYw=
X-Received: by 2002:a05:6102:5e98:b0:602:8ccb:c993 with SMTP id ada2fe7eead31-616f89b2062mr5555892137.24.1776700982374;
        Mon, 20 Apr 2026 09:03:02 -0700 (PDT)
X-Received: by 2002:a05:6102:5e98:b0:602:8ccb:c993 with SMTP id ada2fe7eead31-616f89b2062mr5555813137.24.1776700981596;
        Mon, 20 Apr 2026 09:03:01 -0700 (PDT)
Received: from redhat.com (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8e7d5fe9638sm840199685a.1.2026.04.20.09.02.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Apr 2026 09:03:00 -0700 (PDT)
Date: Mon, 20 Apr 2026 12:02:58 -0400
From: Brian Masney <bmasney@redhat.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
	Alexey Charkov <alchark@flipper.net>
Subject: Re: [PATCH RFC 0/4] arm64: rockchip: The hunt for exact pixel clocks
 on RK3576
Message-ID: <aeZOMnZfBcBHzR8c@redhat.com>
References: <20260417-rk3576-dclk-v1-0-26a9d0dcb2de@flipper.net>
 <aeKtNf8CCAWduI-f@venus>
MIME-Version: 1.0
In-Reply-To: <aeKtNf8CCAWduI-f@venus>
User-Agent: Mutt/2.3.1 (2026-03-20)
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 6OFAt8bWCadh39098h1D1BKmbwNDFCE0jD0v5rh1aus_1776700983
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="vZqQeRlEnk8S7HaS"
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260420_090313_794635_35F20A9B 
X-CRM114-Status: GOOD (  60.67  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org, Pavel Zhovner <pavel@flipper.net>, linux-rockchip@lists.infradead.org, Maxime Ripard <mripard@kernel.org>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--vZqQeRlEnk8S7HaS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Alexey,

On Sat, Apr 18, 2026 at 12:24:57AM +0200, Sebastian Reichel wrote:
> On Fri, Apr 17, 2026 at 07:11:43PM +0400, Alexey Charkov wrote:
> > Dear all,
> > 
> > Need the help of the collective wisdom of the community.
> > 
> > The problem I'm trying to solve is reliably obtaining the exact pixel
> > clock for arbitrary display modes supported by the RK3576 SoC.
> > 
> > Rockchip RK3576 has three display output processors VP0~VP2, each
> > supporting different ranges of display modes, roughly as follows:
> > - VP0: 4K 120Hz
> > - VP1: 2.5k 60Hz
> > - VP2: 1080p 60Hz
> > 
> > Each one obviously needs a pixel clock. The required frequencies for the
> > pixel clocks vary greatly depending on the display mode, and need to be
> > matched within a tight tolerance, or else many displays will refuse to
> > work. E.g. the preferred (maximum) display mode out of VP1 is particularly
> > awkward, because it requires a pixel clock of 248.88 MHz, which cannot
> > be obtained using integer dividers from its default clock source (GPLL
> > at 1188 MHz), and the nearest approximation is 237.6 MHz, which is well
> > outside the tolerance of e.g. DP specification, resulting in a blank
> > screen on most displays by default.
> > 
> > The clock sources are of course configurable, in particular there are muxes
> > connected to each VP for selecting the source of the pixel clock:
> > - Each VP can take the clock either from the (single!) HDMI PHY or from
> >   its dedicated dclk_vpX_src mux
> > - The dclk_vpX_src mux can select the clock from a number of system PLLs
> >   (GPLL, CPLL, VPLL, BPLL, LPLL)
> > 
> > While the system PLLs can be configured to output a wide range of
> > frequencies, they are shared between many system components. E.g. on the
> > current mainline kernel on one of my RK3576 boards I've got the following:
> > GPLL: 1188 MHz, enable count 20
> > CPLL: 1000 MHz, enable count 17
> > VPLL: 594 MHz, enable count 0 (yaay!)
> > BPLL, LPLL: 816 MHz, enable count 0 (but these last ones don't have
> >             predividers, so are less flexible)
> > 
> > So ultimately there is exactly one free fractional PLL (VPLL) which can be
> > used to generate arbitrary pixel clocks, but we have up to three consumers
> > trying to drive different display modes from it (e.g. HDMI on VP0, DP on
> > VP1 and MIPI DSI on VP2). We also want to be able to adjust the PLL output
> > frequency on the fly to satisfy the requirements of the selected display
> > mode.
> > 
> > And this is where I'm stuck. Trying to satisfy the requirements of up to
> > three consumers while changing the PLL frequency on the fly sounds like
> > a poorly tractable mathematical problem (is it 3-SAT?). We can take the
> > HDMI output out of the equation, because it can be driven from the HDMI
> > PHY (which is capable of arbitrary rates) instead of the mux, but that
> > makes the decision of which dclk source to use for a VP block dependent on
> > which downstream consumer is connected to it (HDMI vs. something else).
> 
> It becomes more messy: The HDMI PHY cannot be used as clock source
> for modes exceeding 4K@60Hz.
> 
> > Even then we somehow need two devices to cooperate in picking a PLL
> > frequency that satisfies the requirements of both of them, and change to it
> > without display corruption. I'm not even sure if the CCF has mechanisms
> > for that?..
> > 
> > What follows is a brief set of patches which illustrate a partial solution
> > for the case of "I just need 2.5k60Hz on VP1 via DP and don't care about
> > the rest". It switches the VP1 unconditionally to use VPLL as the source
> > for its dclk mux, allows changing the VPLL frequency on the fly, and also
> > changes the frequency calculation logic to allow for nearest-match
> > frequencies which are not necessarily rounded down. These are not meant
> > to be merged as-is, as I see the following issues:
> > - The flag allowing the PLL to change rate is in the clock driver, while
> >   the reparenting to an unused PLL is in the device tree. If these go out
> >   of sync, we might end up trying to change the frequency of a PLL which
> >   is used by other consumers (I presume that could be dangerous)
> 
> It is a problem, see e.g. this patch from Heiko removing the flag
> for an RK3588 VOP source clock:
> 
> https://lore.kernel.org/linux-rockchip/20251008133135.3745785-1-heiko@sntech.de/
> 
> Also note, that there is some more general ongoing work regarding
> this:
> 
> See: https://lore.kernel.org/linux-clk/20260327-clk-scaling-v8-0-86cd0aba3c5f@redhat.com/

I'm working on the patch set above to fix the clk scaling issues. You'll
have issues on clks that have CLK_SET_RATE_PARENT enabled, and there are
multiple children under that parent. Patches 2 and 4 in my series has
kunit tests that demonstrates the current behavior.

I attached a patch to drivers/clk/rockchip/clk-pll.c that adds support
for the v2 rate negotiation logic. You'll need to apply this on top my
clk scaling patch set. I only compile tested this, however it should work
based on the changes that I made to clk-divider.c.

You'll also need to add the flag CLK_V2_RATE_NEGOTIATION to your three
display clks. Otherwise, without the flag, it will just fall back to the
existing behavior.

Hopefully this will let you be able to use one of the PLLs that has a
high enable count as the parent.

Feel free to reach out to me if you have any questions or issues with
my patch set.

Brian

--vZqQeRlEnk8S7HaS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment;
	filename=0001-clk-rockchip-pll-add-support-for-v2-rate-negotiation.patch

From 66b44d756dba0152b415cc8eb8528b55c4253058 Mon Sep 17 00:00:00 2001
From: Brian Masney <bmasney@redhat.com>
Date: Mon, 20 Apr 2026 11:13:53 -0400
Subject: [PATCH] clk: rockchip: pll: add support for v2 rate negotiation logic
Content-type: text/plain

Signed-off-by: Brian Masney <bmasney@redhat.com>
---
 drivers/clk/rockchip/clk-pll.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
index 6b853800cb6b..30e0722f872f 100644
--- a/drivers/clk/rockchip/clk-pll.c
+++ b/drivers/clk/rockchip/clk-pll.c
@@ -66,8 +66,20 @@ static int rockchip_pll_determine_rate(struct clk_hw *hw,
 {
 	struct rockchip_clk_pll *pll = to_rockchip_clk_pll(hw);
 	const struct rockchip_pll_rate_table *rate_table = pll->rate_table;
+	struct clk_hw *parent = req->best_parent_hw;
 	int i;
 
+	if (parent && (clk_hw_get_flags(hw) & CLK_SET_RATE_PARENT) &&
+	    clk_has_v2_rate_negotiation(parent->core)) {
+		unsigned long lcm_rate;
+
+		lcm_rate = clk_hw_get_children_lcm(parent, hw, req->rate);
+		if (lcm_rate > 0) {
+			lcm_rate = clk_hw_round_rate(parent, lcm_rate);
+			req->best_parent_rate = lcm_rate;
+		}
+	}
+
 	/* Assuming rate_table is in descending order */
 	for (i = 0; i < pll->rate_count; i++) {
 		if (req->rate >= rate_table[i].rate) {
-- 
2.53.0


--vZqQeRlEnk8S7HaS
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--vZqQeRlEnk8S7HaS--


