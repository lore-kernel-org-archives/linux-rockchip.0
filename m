Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62CF7C4321E
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Nov 2022 13:51:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zn6Gm9np1JdJiWhS8nqsd3sSJW5fAHWTTzZzKwD9QXo=; b=d6LBL1v1ZyTrzd
	HuyXJJZW16uhy+dZqrU9mqajUxkKfzc87mHJcsZ2A7PZxzLpTbhXZJweqKJUqZHHoaP9G2+RrtoGR
	rln4xDj+PPRxvqXBgPhxhS/Qi5Icg8dN3hMcsaNlOZ4Fne2cF68S7mbbe3iU2Q+2z3tPeD7mFmr01
	l+OTTu7lBG8p5mLCK8S4/FOu042SQT1W0I3aUs9gInKSvQZUoyufZGutsTXtKRbpCG4+7bD4ZgdoI
	gVMnSCoRe8HPVuBbbJTCTsO7Iizoz68ytFPzjS3bqGts5oM+J0h0dTA5zL6M4muFG3h4n9Wv6XgCW
	U2/B8usfPgwmYV51KkIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox7Ci-00E6xr-1M; Mon, 21 Nov 2022 13:51:20 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox7CV-00E6rC-TE; Mon, 21 Nov 2022 13:51:10 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id C063525B;
	Mon, 21 Nov 2022 14:51:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1669038662;
	bh=XcBq95S/ocbQuYtsQHOYDFbxJwIk2fRPU1hrNjPp58I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rGusc9FJWQGoQlouzveeNLYJT1esLk4+2LygTgaSF4PCQOADjMCo/lkh/ekneO5Xj
	 gITFnM1s4tudLCGSP0mTi93dntA5ng8lK4FgOsFrF/8GWGEu6kONh7IaNn9z6NDyrk
	 fYpK0ClzjsGO47wyoaxcgV1ixTCj7QtNoBSJO+Qs=
Date: Mon, 21 Nov 2022 15:50:47 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Paul Elder <paul.elder@ideasonboard.com>, linux-media@vger.kernel.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 02/14] dt-bindings: media: rkisp1: Add i.MX8MP ISP
 example
Message-ID: <Y3uCN59bBwTw6dc9@pendragon.ideasonboard.com>
References: <20221118093931.1284465-1-paul.elder@ideasonboard.com>
 <20221118093931.1284465-3-paul.elder@ideasonboard.com>
 <ca8a6070-3888-8d42-5974-d7c2adc62417@linaro.org>
 <Y3h93cLdEvMzInXe@pyrite.rasen.tech>
 <238f7bf8-578c-5bb4-9f00-50f36334c5cf@linaro.org>
 <Y3sIAHqd8Kd/XBB/@pyrite.rasen.tech>
 <50024f2e-4820-ef78-d54d-5bfe53ccac7e@linaro.org>
 <Y3tVKOEfxdZ+Klnh@pendragon.ideasonboard.com>
 <9389201b-22d4-1229-7e26-5f046d18e15f@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9389201b-22d4-1229-7e26-5f046d18e15f@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_055108_112773_9CD5EDBC 
X-CRM114-Status: GOOD (  21.77  )
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

On Mon, Nov 21, 2022 at 12:16:41PM +0100, Krzysztof Kozlowski wrote:
> On 21/11/2022 11:38, Laurent Pinchart wrote:
> > On Mon, Nov 21, 2022 at 09:04:29AM +0100, Krzysztof Kozlowski wrote:
> >> On 21/11/2022 06:09, Paul Elder wrote:
> >>> On Sun, Nov 20, 2022 at 11:36:31AM +0100, Krzysztof Kozlowski wrote:
> >>>> On 19/11/2022 07:55, Paul Elder wrote:
> >>>>> On Fri, Nov 18, 2022 at 02:06:14PM +0100, Krzysztof Kozlowski wrote:
> >>>>>> On 18/11/2022 10:39, Paul Elder wrote:
> >>>>>>> From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> >>>>>>>
> >>>>>>> Add an example to the rockchip-isp1 DT binding that showcases usage of
> >>>>>>> the parallel input of the ISP, connected to the CSI-2 receiver internal
> >>>>>>> to the i.MX8MP.
> >>>>>>>
> >>>>>>> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> >>>>>>
> >>>>>> Missing SoB.
> >>>>>
> >>>>> I don't quite understand. I see an SoB right there.
> >>>>
> >>>> Laurent did not sent it. Did you run checkpatch before sending?
> >>>
> >>> That's why he's on the "From:" in the beginning. checkpatch says it's
> >>> fine.
> >>
> >> Ah, indeed, checkpatch misses that feature (it's part of Greg's
> >> verify_signedoff.sh). Anyway, your SoB is missing, as Laurent did not
> >> send the patch.
> > 
> > I thought adding an SoB was only required either when making changes or
> > when pushing commits through git, not when forwarding patches on mailing
> > lists ?
> 
> Anyone touching the file should signed it off. You cannot send it
> without touching (e.g. git format-patch).
> 
> https://elixir.bootlin.com/linux/v5.19-rc5/source/Documentation/process/submitting-patches.rst#L397
> 
> https://elixir.bootlin.com/linux/v5.19-rc5/source/Documentation/process/submitting-patches.rst#L420

The second link states

  SoB chains should reflect the **real** route a patch took as it was
  propagated to the maintainers and ultimately to Linus, with the first
  SoB entry signalling primary authorship of a single author.

This series will (eventually) be upstreamed by me through a pull request
to Mauro. Paul's SoB will thus not be needed. Of course you have no way
to know this when reviewing the series on the list.

Adding a SoB line when taking a patch in a git tree is standard
practice, but when posting unmodified patches to a mailing list, there's
more of a grey area. Look at
https://lore.kernel.org/all/20221024113058.096628238@linuxfoundation.org/
for instance, posted by Greg, but without his SoB.

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
