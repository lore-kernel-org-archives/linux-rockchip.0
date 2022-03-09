Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E76B3C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Mar 2022 14:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sH7ImO8VooEnzWoZSKuaCo8Ym1TUcTLUVU6SYhZiu1E=; b=yyiVUCAG455ZCF
	3HqNlYiBJGSdqv7MCI79TvNQQof6MBXUb9awLCaDwsZjnm0IJ6VwenXhxikfx+olJ5G+49jqmi6FJ
	ItotCSah0UvcX0TinPmcmyUCanpU3fA1KM8+xus9P5333wzWvP1/A14FsURkfNXhhRfReNiWSeFRM
	Dam28RIBbTEZR3BFBFpmK/JR1ku66sSSL0BqPnALgwfrrR9iq1gmitsACEMdsY2usk+XfxlwcX3t0
	IEUybpUn5CK6DzGKCmqN5blkhEsKzudyEcIxdyyysM55A0xHjbzXQCBRWzV4iNkluaNmyndo0XyPN
	n7BXSJpQhbhZc94esQnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRxZb-0093KI-8F; Wed, 09 Mar 2022 14:45:55 +0000
Received: from mail-yb1-xb31.google.com ([2607:f8b0:4864:20::b31])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRxZQ-0093DV-Hi; Wed, 09 Mar 2022 14:45:46 +0000
Received: by mail-yb1-xb31.google.com with SMTP id h126so4868164ybc.1;
 Wed, 09 Mar 2022 06:45:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DDxwxI7sXDfb+b36liCBjMX3NW7CAhbvcM5a4UCs5v4=;
 b=i7W91ZT+engSvxyFtitwW4zJoC2KJUH7GAoAeYnyBpSwStQEEQ/Bt2ZPndrmmXFsaO
 SsLBfPJbwfzEbp/wz46GBMErlD2L2WZEIImm7VsCRGt1X07GsDEyM1coyhR8i6mnOUu4
 9wso3n2Bs4AjvFg0MP2q34vrvW1lLTiXpwegmpTr3Mp9LEawsZSMB+Ks1eJWqJLQRDWS
 XyYIB3ObyHBjVVcM2iujZ5q7d0vXuDd7kbHHFsl0PJy4R3LYLrpZOsflS+3lJrOE1Yf4
 XF3nQi6sxWKYxDM72bwcjYM0g6t+haBgmTB1M136HKO8++mbKENP5zHOBuvsy3Scw6uU
 rOBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DDxwxI7sXDfb+b36liCBjMX3NW7CAhbvcM5a4UCs5v4=;
 b=rTnlS6pU2+u67HIm67XrgYDXBVKk1l5JmhVZIKm8wsW/IqHVhclRIorz4A1T7nrcl4
 IwrLvNf9X2Qh3L/ZgDQZpnYR+M1D21fL5duxOmLRtORdOp6u7iFknUfT/GnEfrHoM0Ir
 JuZOMzOBSlb6WpPcrlnJ6tpN11WSReu9n7ZJbuEPCz0v5KGijOx8B4v/LPc/SOGxXjPT
 qKYknz6i/sFq86LA71Z+WwmEYdbetSY+wO4PqwRrVqAbAL7Qk6zUcNoNVJkHAJki/NdN
 wgpRXbzzhbvmDVaqmHDP9u66kbX3Q5sZPbP1NL+WNjtLCenv9409YgNmlHYfZlUPbLM6
 kPgA==
X-Gm-Message-State: AOAM530mM35qOu5JSREiQnMYiJdlo8iXgdkX6vfjBTjYF52LixMCqr1z
 5G5B9pBlVFOeD82TohqmrX+HRqg2+tv0AOoa2Sjn1a5k
X-Google-Smtp-Source: ABdhPJyJ4ZlBOxxqgJg5t84MuLjlLqtsmqVAaSTchLmm8kQRhAwvtLzf/tmkTFVdgMHjStEAfGt8JYiqQwzL0WNk4qg=
X-Received: by 2002:a05:6902:603:b0:625:989:c675 with SMTP id
 d3-20020a056902060300b006250989c675mr16523687ybt.470.1646837142397; Wed, 09
 Mar 2022 06:45:42 -0800 (PST)
MIME-Version: 1.0
References: <CAK4VdL3-BEBzgVXTMejrAmDjOorvoGDBZ14UFrDrKxVEMD2Zjg@mail.gmail.com>
 <1jczjzt05k.fsf@starbuckisacylon.baylibre.com>
 <CAK4VdL2=1ibpzMRJ97m02AiGD7_sN++F3SCKn6MyKRZX_nhm=g@mail.gmail.com>
 <6b04d864-7642-3f0a-aac0-a3db84e541af@gmail.com>
 <CAK4VdL0gpz_55aYo6pt+8h14FHxaBmo5kNookzua9+0w+E4JcA@mail.gmail.com>
 <1e828df4-7c5d-01af-cc49-3ef9de2cf6de@gmail.com>
 <1j8rts76te.fsf@starbuckisacylon.baylibre.com>
 <a4d3fef1-d410-c029-cdff-4d90f578e2da@gmail.com>
 <CAK4VdL08sdZV7o7Bw=cutdmoCEi1NYB-yisstLqRuH7QcHOHvA@mail.gmail.com>
 <435b2a9d-c3c6-a162-331f-9f47f69be5ac@gmail.com>
In-Reply-To: <435b2a9d-c3c6-a162-331f-9f47f69be5ac@gmail.com>
From: Erico Nunes <nunes.erico@gmail.com>
Date: Wed, 9 Mar 2022 15:45:31 +0100
Message-ID: <CAK4VdL28nWstiS09MYq5nbtiL+aMbNc=Hzv5F0-VMuNKmX9R+Q@mail.gmail.com>
Subject: Re: net: stmmac: dwmac-meson8b: interface sometimes does not come up
 at boot
To: Heiner Kallweit <hkallweit1@gmail.com>
Cc: Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, 
 Jose Abreu <joabreu@synopsys.com>, Kevin Hilman <khilman@baylibre.com>, 
 Neil Armstrong <narmstrong@baylibre.com>, linux-amlogic@lists.infradead.org, 
 netdev@vger.kernel.org, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-sunxi@lists.linux.dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220309_064544_670551_C347BAAB 
X-CRM114-Status: GOOD (  16.48  )
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

On Sun, Mar 6, 2022 at 1:56 PM Heiner Kallweit <hkallweit1@gmail.com> wrote:
> You could try the following (quick and dirty) test patch that fully mimics
> the vendor driver as found here:
> https://github.com/khadas/linux/blob/buildroot-aml-4.9/drivers/amlogic/ethernet/phy/amlogic.c
>
> First apply
> https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/?id=a502a8f04097e038c3daa16c5202a9538116d563
> This patch is in the net tree currently and should show up in linux-next
> beginning of the week.
>
> On top please apply the following (it includes the test patch your working with).

I triggered test jobs with this configuration (latest mainline +
a502a8f0409 + test patch for vendor driver behaviour), and the results
are pretty much the same as with the previous test patch from this
thread only.
That is, I never got the issue with non-functional link up anymore,
but I get the (rare) issue with link not going up.
The reproducibility is still extremely low, in the >1% range.

So at this point, I'm not sure how much more effort to invest into
this. Given the rate is very low and the fallback is it will just
reset the link and proceed to work, I think the situation would
already be much better with the solution from that test patch being
merged. If you propose that as a patch separately, I'm happy to test
the final submitted patch again and provide feedback there. Or if
there is another solution to try, I can try with that too.

Thanks


Erico

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
