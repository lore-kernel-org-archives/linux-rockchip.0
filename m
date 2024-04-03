Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D34CCD128A
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Apr 2024 21:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TqXxv1wN02VaaIPbNhqT7IUytg6ASSkzApcVCG7BGfI=; b=Vn2SXVqbVH69vZ
	Vv+7kpreWP5DiHnljsb0kpi0Ak0cFz5vwEKLfXLdQCnTGWDCtC2rBgPyvWDTk2VKnI91XDgGCYpbL
	zjBt+FeHqJQpIdphlu2beaolD0QenX6cKPGiBJWrJQv/avpWllGDBY5ghHb0JxkITOvjav7R/n8Zx
	cqNQhQd+/LEe4xHC08Z+KEu7Y/rtgwc+Co4DvFEULEUXAK7i1MD/0zJabCbzGqalF4aIoYWe+P/13
	cvvvRUXlmUyhxAErIgtOHX3sIEwWQoWF2ENZf9608aBiexEfLqf8pcXSIkh9twsde+SztKlaPRhnF
	vkcuf+7fYVBP4JcSgEkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rs7ve-00000000D0p-1w0J;
	Wed, 03 Apr 2024 21:13:54 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rs7vZ-00000000CxL-3bOx;
	Wed, 03 Apr 2024 21:13:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1712178826;
	bh=A63swF0NGtwa4y1vtkAq5Zk0Yp4g068uJTxXmn8Afd8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qcAhwz51NDjcmLMjMRi/zox0xmX5lsI1Rr2tTZrzWWWz/9mA7LSbVYz7Hci7Ew4id
	 1F7eNbZHsZso1j8597z0gnhOB8G6qhf/bEoC9OWds0qh41gOSYgucuV2xsD/fMBtBq
	 OUT4w3neJyVb2a/SrrOFqhS/EuYHrGwnz8POAoWXEp0BYpbCkDysX374Ltr6fVCcWR
	 2UCnKyQUGH4Ux70SdvGPzJxtCnvKogTLbbZe4ZSOWA/hW2oh9jnF983jUT8Jj8KG8N
	 1bodhTlhcLUDNF/q4hDH4lT9A5jg7ZBffRxgBM/5OB0beTb8wHbhUyQ4qNMqohTONx
	 AhEn/qVTSBHrA==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dbrouwer)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id C1DD237813DC;
	Wed,  3 Apr 2024 21:13:45 +0000 (UTC)
Date: Wed, 3 Apr 2024 14:13:43 -0700
From: Deborah Brouwer <deborah.brouwer@collabora.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Shreeya Patel <shreeya.patel@collabora.com>, mchehab@kernel.org,
	hverkuil@xs4all.nl, hverkuil-cisco@xs4all.nl, heiko@sntech.de,
	robh@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
	p.zabel@pengutronix.de, shawn.wen@rock-chips.com,
	kernel@collabora.com, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org,
	linux-arm@lists.infradead.org
Subject: Re: [PATCH v3 0/6] Add Synopsys DesignWare HDMI RX Controller
Message-ID: <Zg3Gh8P97GaBtgAB@mz550>
References: <20240327225057.672304-1-shreeya.patel@collabora.com>
 <35e566-660d2080-1-7eb9eb00@16488675>
 <a2f88176-b4e1-4202-843c-a00c5a2b1622@linaro.org>
 <35f774-660d3b80-3-513fcf80@97941910>
 <86150c89-11d5-4d52-987e-974b1a03018f@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <86150c89-11d5-4d52-987e-974b1a03018f@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_141350_226129_6733EEAC 
X-CRM114-Status: GOOD (  24.93  )
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

On Wed, Apr 03, 2024 at 01:24:05PM +0200, Krzysztof Kozlowski wrote:
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
> 
> > 
> > Since you are a more experienced developer, can you help me understand what would
> > be the right way to send patches in such scenarios?
> 
> I am not the substitute for your Collabora engineers and peers. You do
> not get free work from the community. First, do the work and review
> internally, to solve all trivial things, like how to submit patches
> upstream or how to make your driver buildable, and then ask community
> for the review.

I don't think Shreeya was asking for "free" work from the community.
Her question wasn't trivial or obvious since reasonable people seem to sometimes
disagree about where to send a patch especially if it's needed to make a series compile.
I heard the issue was already resolved but had to say something since this accusation
seemed so unfair.

> 
> Best regards,
> Krzysztof
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
