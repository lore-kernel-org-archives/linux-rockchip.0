Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79288CD128A
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Apr 2024 22:49:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KwTUD4+4uFhuWzhDAklrMX0+Rp7C9wZHGRQ5801J8tw=; b=4QAO/YMoCg/7hw
	hpskFzc7qwWH+XYZ/rILn3tHS/+TkaNmRTIRqqR16m30MnzchFX5E+Md2F4o1SsDNuVFSOElurxnU
	bXuiYX59BnV8sNAyZMjub4TGNjEPjEdRduOQ+MQY+awL6puJbrVtjmg63hhfZKlRudS+ahnGQavA6
	O45Lz4gkGs8LbWNVIeEMKX1j2RW8u8De+T7IdxLDm1b9JD1gaPzg9HGXzfcj1Q2S2VlZ13BKjodbz
	Dq1u/2b80bXqwp/1mDkHYj3E/FEWLuzLagsC1sbeAmBNC3GKhMoIoLlmtVprM9FLb3NBa62ZPiUvU
	MoGxnixvjfkWsBiF4wdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rs9Pk-00000000RPL-31a7;
	Wed, 03 Apr 2024 22:49:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rs9Ph-00000000RNc-10iw;
	Wed, 03 Apr 2024 22:49:02 +0000
Received: from i53875aaf.versanet.de ([83.135.90.175] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rs9PL-0003DP-QW; Thu, 04 Apr 2024 00:48:39 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Shreeya Patel <shreeya.patel@collabora.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: mchehab@kernel.org, hverkuil@xs4all.nl, hverkuil-cisco@xs4all.nl,
 robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, p.zabel@pengutronix.de,
 shawn.wen@rock-chips.com, kernel@collabora.com, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm@lists.infradead.org
Subject: Re: [PATCH v3 0/6] Add Synopsys DesignWare HDMI RX Controller
Date: Thu, 04 Apr 2024 00:48:38 +0200
Message-ID: <3049149.687JKscXgg@diego>
In-Reply-To: <86150c89-11d5-4d52-987e-974b1a03018f@linaro.org>
References: <20240327225057.672304-1-shreeya.patel@collabora.com>
 <35f774-660d3b80-3-513fcf80@97941910>
 <86150c89-11d5-4d52-987e-974b1a03018f@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_154901_291526_7EDD97C8 
X-CRM114-Status: GOOD (  25.27  )
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

Am Mittwoch, 3. April 2024, 13:24:05 CEST schrieb Krzysztof Kozlowski:
> On 03/04/2024 13:20, Shreeya Patel wrote:
> > On Wednesday, April 03, 2024 15:51 IST, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:
> > 
> >> On 03/04/2024 11:24, Shreeya Patel wrote:
> >>> On Thursday, March 28, 2024 04:20 IST, Shreeya Patel <shreeya.patel@collabora.com> wrote:
> >>>
> >>>> This series implements support for the Synopsys DesignWare
> >>>> HDMI RX Controller, being compliant with standard HDMI 1.4b
> >>>> and HDMI 2.0.
> >>>>
> >>>
> >>> Hi Mauro and Hans,
> >>>
> >>> I haven't received any reviews so far. Hence, this is just a gentle reminder to review this patch series.
> >>
> >> Why did you put clk changes here? These go via different subsystem. That
> >> might be one of obstacles for your patchset.
> >>
> > 
> > I added clock changes in this patch series because HDMIRX driver depends on it.
> > I thought it is wrong to send the driver patches which don't even compile?
> 
> Hm, why HDMIRX driver depends on clock? How? This sounds really wrong.
> Please get it reviewed internally first.

For the change in question, the clock controller on the soc also handles
the reset controls (hence its name CRU, clock-and-reset-unit) .

There are at least 660 reset lines in the unit and it seems the hdmi-rx one
was overlooked on the initial submission, hence patches 1+2 add the
reset-line.

Of course, here only the "arm64: dts:" patch depends on the clock
change, is it references the new reset-id.


Am Mittwoch, 3. April 2024, 12:22:57 CEST schrieb Krzysztof Kozlowski:
> Please do not engage multiple subsystems in one patchset, if not
> necessary. Especially do not mix DTS into media or USB subsystems. And
> do not put DTS in the middle!

picking up your reply from patch 4/6, there seem to be different "schools
of thought" for this. Some maintainers might want to really only see
patches that are explicitly for their subsystem - I guess networking
might be a prime example for that, who will essentially apply whole series'
if nobody protests in time (including dts patches)

On the other hand I also remember seeing requests for "the full picture"
and individual maintainers then just picking and applying the patches
meant for their subsystem.

The series as it stands right now is nice in that it allows (random)
developers to just pick it up, apply it to a tree and test the actual driver
without needing to hunt for multiple dependant series.


Of course you're right, the "arm64: dts:" patch should be the last in the
series and not be in the middle of it.


Regards
Heiko




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
