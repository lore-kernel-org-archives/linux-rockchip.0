Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E10FC55171
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Aug 2026 18:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HcHD14z+YKJ09juDecuVjpZjVKe06Y+OKVctePrg3fA=; b=AREeqRcICzRll1
	G6uHI5Z19V9bOPDYFoqCkyhqCxs+fZ817KdTyF1aXLy59w/Xv65FE264l/fI7L6UJ8NOYk4UGGSVW
	Ew0XOwHffMm58o/Kj1jxf0kr2JB7bR53siy52fIsQUmTu16HDEDszyW2zRtIInuLWG1iVTNdu/2Zs
	IOrPYHj2YtJotNIrvz3rXtbUBHXtbxhNIl2WwujHPIpwek+ab9fIuQeQNbeIT6+yI7o9IKj8LLZX7
	lq6d/VfOs9Xe3gDskIUpXhgmnredPH8DO9fEae+QWh57h+n8ykvr1jL7YhPdsfkOWoY097tteP0dk
	G3joprVBm9ir5CPGBmkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqb3P-0000000FwgF-3y19;
	Sun, 02 Aug 2026 18:36:55 +0000
Received: from mail-pj2-x04.google.com ([2607:f8b0:4864:39::4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqb3N-0000000FwfE-37d1
	for linux-rockchip@lists.infradead.org;
	Sun, 02 Aug 2026 18:36:54 +0000
Received: by mail-pj2-x04.google.com with SMTP id d9443c01a7336-2cabf1f1051so6604495ad.0
        for <linux-rockchip@lists.infradead.org>; Sun, 02 Aug 2026 11:36:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785695813; x=1786300613; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:message-id
         :references:in-reply-to:user-agent:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=aG1bOt8IUbOOdwkN9+W7WbkC/YNxezey+sMvkLFdoso=;
        b=IhXwRaDb08je22l6F+6mKbSaRn4ddD4GpKUSx+OSe61uvwkxQK6tPUm8quhLQQQjdl
         AIop3Qe4aTRjW15HYeJ+r/iuk6At0j31YMmJPw2dhJeROA1Kji7C/QC2pg5Ksdyojxfk
         PRChH/Bczfv5nCUdJaOcHpDvK2FD3IlXpaY3/7iiGpOQOWDnTG/8sWXczOLDas3XxpW+
         gwSZp1o5HvjNyczYpXO7otUOk+tEkG92tjXD2kYpx/7MBA87nc8NkZldvsanGKekpTwM
         SjBumj4v+PGQJbshXVyyfcPuH6tI9WYB8uCvEWMsMA2SuwpQxxXlki9r40OjeHCHeOwc
         dHYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785695813; x=1786300613;
        h=content-transfer-encoding:content-type:mime-version:message-id
         :references:in-reply-to:user-agent:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=aG1bOt8IUbOOdwkN9+W7WbkC/YNxezey+sMvkLFdoso=;
        b=tRU+tbLY4CkNERTb0Y918kEFgnJ7vcrpHlJCHssaH7Eem1c4xX6X4gMFbV4lXIaIhW
         cmAGUygAgBhzcx5N0UGWPu5X6dY4FsP7EbGhmrr8Y+jdvQhrZb3xPS/EqdAmhrfAsQyL
         bx1FlogieJbJdHDo8ZlFVhpaHLR3lAS4JnwWp5v1366sG1ZC+Mgl1LHwpnRRf66aEhtr
         kb4x7IVyuoSLPJk+HlUMGLI6DAJguG63mBMo42EJsLQciozWA1E2Rrv1fkKWTo9O96OQ
         NoOTzwF1UbAI+D08qY+jO0yKqiyCCwI03JC8eoW/t3Xb8IS3YhpVZRP+1+CKMRg4tc4r
         N1Vg==
X-Forwarded-Encrypted: i=1; AHgh+Rqck4r6xZS6HVqvOQMRZiuICzVngY1o/PEmSNszpYeTdWAnEkGcFu/MXCOvaWRO/lkDCjwdFAG7jrBE8dmK/A==@lists.infradead.org
X-Gm-Message-State: AOJu0YxCbRCrsVhwq0y3aFU6og8gYLH09KLP8CP5svqHc3Gb6XAxWvir
	kyfLC+YBWqa7tENoec4ME8xDfKId7g0mpH54qAgCGM9NC77EismL0jOI
X-Gm-Gg: AR+sD10e/P9wt/U+ohhD6D+5OBb4WqAt6+ud71PDUoaW9r7xnN96giVUnIdzClPRAJY
	RG0lLLuSnalnvRMxRxw0rzLCndtAExEot5371OgwAsnYp9d/6AEc27CK0RvbTZGHJQ6z79t+EvF
	G7rREL9oYNMk8w4wQ6qNX632nrxT+C5YR9Im1m2JoOsydOZEEYGgbfoEctZp/GA1l5enPtyiYNS
	D0n0Pv6Atkg/VzBeZ6Z4/L+8IszcLE8mC2nK84MIGeC1sx932RbZIq5MJnHBtJWE2d7RO1COqaN
	7V167R7uudCGYQYLM992IUxBkDkaOqhRArkkjmwguLcquT6FzVbQygRmTD/mgRhiCQf2qhChIld
	Rm4tZHrM2RtCejgTwId4YMvJ6ndurILFj+5aDXOQxvYVXUtPEXjD4JPepDXCSpJr+lKzgyccYOL
	QgfVT3hlCLEVAduY27HN87blvQ2+OhjiexRdTjYiFoEvtzrd0sdlh/xA==
X-Received: by 2002:a05:6a00:ad1:b0:847:9518:a6fe with SMTP id d2e1a72fcca58-84ee4824d25mr6884770b3a.26.1785695812531;
        Sun, 02 Aug 2026 11:36:52 -0700 (PDT)
Received: from ehlo.thunderbird.net ([2401:5a0:1000:10:233::14])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84edc2d7ff7sm2615191b3a.49.2026.08.02.11.36.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 02 Aug 2026 11:36:52 -0700 (PDT)
Date: Mon, 03 Aug 2026 02:36:43 +0800
From: Coia Prant <coiaprant@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
CC: =?ISO-8859-1?Q?Heiko_St=FCbner?= <heiko@sntech.de>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Romain Gantois <romain.gantois@bootlin.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Shawn Lin <shawn.lin@rock-chips.com>,
 David Heidelberg <david@ixit.cz>, netdev@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-renesas-soc@vger.kernel.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_v2_05/10=5D_arm64=3A_dts=3A_rockchi?=
 =?US-ASCII?Q?p=3A_rk3568=3A_add_XPCS_and_fixed-clock_nodes?=
User-Agent: K-9 Mail for Android
In-Reply-To: <4106e359-aec0-4f38-b74f-e9757a48eebb@lunn.ch>
References: <20260801142244.679437-2-coiaprant@gmail.com> <20260801142244.679437-7-coiaprant@gmail.com> <2847036.GUH7pLUipS@diego> <CALj3r0gqvFZPb2SKRMPwf9chCx076rwCnXEoOMFch_V-fOKV6w@mail.gmail.com> <0e9d16df-7332-446b-9321-ce3de3111ffa@lunn.ch> <CALj3r0guMmNRN4EBbKz7stPNMSqkLBvms643YXBEDMzqHHM=FA@mail.gmail.com> <4106e359-aec0-4f38-b74f-e9757a48eebb@lunn.ch>
Message-ID: <2810D16E-6D32-4D01-846A-65A853279603@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260802_113653_787427_F09B1252 
X-CRM114-Status: GOOD (  23.72  )
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

On August 2, 2026 11:19:37 PM GMT+08:00, Andrew Lunn <andrew@lunn.ch> wrote:
>On Sun, Aug 02, 2026 at 11:28:12AM +0800, Coia Prant wrote:
>> Hi Andrew,
>> 
>> Thanks for the detailed questions. I've looked into the clock tree
>> more carefully.
>> 
>> > Do you have documentation for these Combo PHYs?
>> 
>> Yes, the information is available in the Rockchip RK3568 TRM
>> (Technical Reference Manual).
>> The relevant clock tree details are also mentioned in upstream
>> discussions and patches.
>> 
>> > Can these clocks be enabled/disabled?
>> 
>> The 100 MHz input clock to the Combo PHY is a prerequisite for its operation.
>> It is generated by the SoC's internal PPLL and fed to the PHY through
>> a fixed divider.
>> It is not a gate that can be individually enabled or disabled by
>> software; it is part of the
>> PHY's fundamental operating conditions.
>> 
>> > And how is the Combo PHY fed with a clock? Does it have an external oscillator/crystal?
>> 
>> The Combo PHY is fed by an internal 100 MHz clock derived from the PPLL.
>> Specifically, the PPLL runs at 200 MHz, and this is divided by 2 to provide the
>>  100 MHz clock input to the Combo PHY.
>> So, it does not use an external oscillator or crystal for its main
>> reference clock;
>> it's generated internally by the SoC.
>> 
>> To summarize:
>> - The 125 MHz clocks (xpcs_gmac0_clk / xpcs_gmac1_clk) are outputs
>> from the Combo PHY.
>> - The Combo PHY itself is clocked by an internal 100 MHz clock from the PPLL.
>> - This is all internal to the SoC and does not involve a board-level oscillator.
>> 
>> I hope this clarifies the clock architecture.
>
>So what is the purpose of the fixed-clock DT nodes?
>
>If you want to describe the hardware, is the PPLL in DT? Should you
>then add a fixed divider to give 100MHz? And then a fixed multiplier
>to give 125MHz?
>
>   Andrew

Hi Andrew,

Thanks for the follow-up.

The fixed-clock nodes (`xpcs_gmac0_clk` and `xpcs_gmac1_clk`) serve as
clock inputs to the GMAC controller. From the GMAC driver's perspective,
the 125 MHz clock is a fixed, external input. The fact that it's
generated internally by the Combo PHY from the PPLL is an implementation
detail of the SoC, not something the GMAC driver needs to be aware of.

In the device tree, the principle is to describe the hardware
interfaces, not the entire internal clock generation pipeline. The
PPLL configuration (200 MHz) is already set up in the CRU node via
assigned-clocks. The Combo PHY's internal PLL that generates 125 MHz is
part of the PHY's own operation, not something that the system clock
framework needs to manage or represent as a separate clock node.

If we were to fully model PPLL -> divider (100 MHz) -> Combo PHY PLL
(125 MHz) in DT, we would be overcomplicating the DT for no real gain.
It would also make board variations harder to handle (e.g., if a board
uses an external oscillator instead of the internal path, we'd have to
rewrite the entire clock tree). This approach is consistent with how
other similar SoCs (e.g., pcs-xpcs-plat) handle fixed reference clocks.

I think keeping these as fixed-clock nodes is the right balance between
accuracy and simplicity. If you still have concerns, I can add a comment
in the DT to clarify that these clocks are outputs of the Combo PHY.

Thanks,
Coia

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
