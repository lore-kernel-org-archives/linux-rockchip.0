Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E27DCCF9E3
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Nov 2025 07:39:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sDUrfoZxJGbmc1ON7ju7tVbdtfi/++Q9eFxnVSCDCwE=; b=k57AA5F9ddVaWy
	FeUSTkxeuVo5d/r1JENrrUdYIR5j32fn1DMF8YGL8DMHS6GklDZ522T0jR7a5Y0RkHk+z6HdFqbUg
	KpHwKgvfpgykeXZGDIpAyyitC/s2qmVJcTBQRXil9NNp9eUAU+gLGPJYGToAQx1Dp0eVI3PNrsLj3
	SU9muagDo1517paHQjsYNNyS+19aZTp0btXU9iClFOe6ig6cX8rkvPBC7oCc6zTF7UVzqqGWw1OAP
	EL4C1NrhHPnH/7hzzQE8/PJ2g2qd0MkJhhQldU5rGF198wx0HOlsEenF1PzAxyu0bJJdQ1ZAGMjtO
	T0zEpN3JPf+LA8eW3PKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIMUL-00000004uCb-1ARw;
	Mon, 10 Nov 2025 07:38:57 +0000
Received: from mail1.manjaro.org ([142.132.176.110])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIMUI-00000004uBf-2hYf
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Nov 2025 07:38:56 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 81FF940ED0;
	Mon, 10 Nov 2025 08:38:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1762760331; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=97BThzbzJ5g4tsS6IHLfH1gqfVXUwxAiYiBXaKPJD8w=;
	b=wscAjVSLeXmIx5vmNo+icIt215WkJWY7vNPs6aompATz9Ng1y9Tf+VmwJrnmqBu3wSSpz0
	9ziLsgF/X/piYUbwc0tteamYytKjZhyek9uaLxcHmu/QaxgURPvFvIvnHIR+wAIs31Cblu
	Ra6iCVT0Gt/N40agzmU7T/ODi0sIN59sGz8bchNx1vK8OxbB2xGPS2WdscC2lpVmpR653a
	DR4j0pa/zfaMsDpxF0pK+VaMCf3gbE+TlggM8NBlcjizDZKXcP3mG5m4uZwpz9h0sIz+St
	32vvM3ATwfBq2DqqBLLNhbLJ6rLlV8DbYMDoCmkWb9MIARhCdEX2RL0nJ96K3w==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <38861A00B4F4BA62+e3221913-43e5-4335-9aaf-9b9eed5834ac@radxa.com>
References: <20251110035455.839863-1-naoki@radxa.com>
 <20251110035455.839863-2-naoki@radxa.com>
 <36843804-433a-5c0c-4961-451b44d70bc4@manjaro.org> <38861A00B4F4BA62+e3221913-43e5-4335-9aaf-9b9eed5834ac@radxa.com>
Date: Mon, 10 Nov 2025 08:38:46 +0100
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jbx6244@gmail.com, pbrobinson@gmail.com, kylepzak@projectinitiative.io, damon.ding@rock-chips.com, sebastian.reichel@collabora.com, amadeus@jmu.edu.cn, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "FUKAUMI Naoki" <naoki@radxa.com>
MIME-Version: 1.0
Message-ID: <65f17890-c052-f303-4731-f882946df1f1@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH 2/2] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Make eeprom read-only for Radxa ROCK 5A
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251109_233854_910821_49C61E21 
X-CRM114-Status: GOOD (  24.99  )
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

On Monday, November 10, 2025 08:05 CET, FUKAUMI Naoki <naoki@radxa.com> wrote:
> On 11/10/25 14:17, Dragan Simic wrote:
> > On Monday, November 10, 2025 04:54 CET, FUKAUMI Naoki <naoki@radxa.com> wrote:
> >> Make EEPROM read-only as it may contain factory-programmed
> >> board-specific data.
> >>
> >> Fixes: 89c880808cff8 ("arm64: dts: rockchip: add I2C EEPROM to rock-5a")
> >> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> >> ---
> >>   arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 1 +
> >>   1 file changed, 1 insertion(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> >> index 19a08f7794e67..ae7b03488c9e7 100644
> >> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> >> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> >> @@ -254,6 +254,7 @@ eeprom: eeprom@50 {
> >>   		compatible = "belling,bl24c16a", "atmel,24c16";
> >>   		reg = <0x50>;
> >>   		pagesize = <16>;
> >> +		read-only;
> >>   	};
> >>   };
> > 
> > I've checked the board schematic and making this BL24C16 chip
> > read-only makes sense to me.  However, I think that the patch
> > description should be expanded to contain a better description
> > of what might be found in the chip, such as a factory-programmed
> > MAC address.  Also, providing a link to the board schematic, as
> > a reference, would be a good idea.
> 
> ----
> arm64: dts: rockchip: Make eeprom read-only for Radxa ROCK 3C/5A/5C
> 
> Make the EEPROM[1][2][3] read-only. Board-specific data written to the 
> EEPROM at the factory includes, but is not limited to, the SKU (~ 
> product name), BOM version (~ board version), and MAC address.

Thanks for the improvements!  I'd just suggest that the opening
sentence above is rewritten like this:

  Make the BL24C16 EEPROM chips found on Radxa ROCK 3C, 5A and
  5C SBCs [1][2][3] read-only, because they contain factory-
  programmed data that isn't supposed to be modified by the end
  users.

This would also be perfect timing for Radxa to officially release
the layout of the board-specific data that goes into these EPROM
chips, so the data can actually be used.

> [1] 
> https://dl.radxa.com/rock3/docs/hw/3c/v1400/radxa_rock_3c_v1400_schematic.pdf 
> p.13
> [2] https://dl.radxa.com/rock5/5a/docs/hw/radxa_rock5a_V1.1_sch.pdf p.19
> [3] 
> https://dl.radxa.com/rock5/5c/docs/hw/v1100/radxa_rock_5c_schematic_v1100.pdf 
> p.18
> ----
> 
> > With these remarks addressed in a v2, please feel free to include
> > 
> > Reviewed-by: Dragan Simic <dsimic@manjaro.org>
> > 
> > Additionally, it would make sense to squash this patch and your
> > other patch that addresses the ROCK 5C together.  They're very
> > similar and having them together in a single commit might actually
> > help the people browsing the repository understand it better.
> 
> I'll drop eeprom patch from ROCK 5C v7 patch series, and squash eeprom 
> patches for ROCK 3C/5A/5C.

Thanks!


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
