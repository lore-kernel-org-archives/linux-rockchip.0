Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1A08C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Nov 2022 10:39:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r5YMYyuPPdDCq0wS8UuC470phh75kARHCQHcTC8YIfg=; b=kydICx8M5tZodV
	YBF0ZO/CiQ4nEhv8kv+NScTg6Wx2KRhFdCEUEb/hYs+i/yxAvBOPIfBafn72J8riazM2oDDkgQYal
	la0QW2fBk3/JCs6N5fYLoRTjfeCKxmyyVwq1v5wsKIeRSQiK9KzPAYYEr1nFjSN75nb5IhYDWkBUF
	b2P7HFpgkQZBsE+B5bFRaXYYcvWqG6Is4d6LA/3yslNGwE5OGTbiMY3VHL2ih79oLzVA2STBvNcFs
	SHHaYTbsfD8kJ7v58SrMdJTrQtNlk4lDd/sky9mVilowgbFvOH0UhXuLzNK5QWvxTtadQSnOazbRU
	nqn0C4DB+sSs0D1859OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox4Ce-00CRjP-Cm; Mon, 21 Nov 2022 10:39:04 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox4CT-00CRJO-CK; Mon, 21 Nov 2022 10:38:54 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 8A18A74C;
	Mon, 21 Nov 2022 11:38:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1669027127;
	bh=yeZSBCqwbYjMQuv/msGtJ0BPU2gfPl5QD+kMloVvPJw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DzRM0NU6+oZ8I4ezHpMzoAdmQFjm8BGJLwO876U/RwWp/hHZVcVlf4YtuDZWg/h4/
	 I3EkriuBh4ME87KOy1ylOgkAZM1dJYZUVwhJPDBdXkBj/PH2fy4x1jHyOEon3/U9M9
	 0RZkCcxC7D+cNMBfpuc+eualhISWokJARniGi18o=
Date: Mon, 21 Nov 2022 12:38:32 +0200
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
Message-ID: <Y3tVKOEfxdZ+Klnh@pendragon.ideasonboard.com>
References: <20221118093931.1284465-1-paul.elder@ideasonboard.com>
 <20221118093931.1284465-3-paul.elder@ideasonboard.com>
 <ca8a6070-3888-8d42-5974-d7c2adc62417@linaro.org>
 <Y3h93cLdEvMzInXe@pyrite.rasen.tech>
 <238f7bf8-578c-5bb4-9f00-50f36334c5cf@linaro.org>
 <Y3sIAHqd8Kd/XBB/@pyrite.rasen.tech>
 <50024f2e-4820-ef78-d54d-5bfe53ccac7e@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <50024f2e-4820-ef78-d54d-5bfe53ccac7e@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_023853_603023_F99FA504 
X-CRM114-Status: GOOD (  16.44  )
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

On Mon, Nov 21, 2022 at 09:04:29AM +0100, Krzysztof Kozlowski wrote:
> On 21/11/2022 06:09, Paul Elder wrote:
> > On Sun, Nov 20, 2022 at 11:36:31AM +0100, Krzysztof Kozlowski wrote:
> >> On 19/11/2022 07:55, Paul Elder wrote:
> >>> On Fri, Nov 18, 2022 at 02:06:14PM +0100, Krzysztof Kozlowski wrote:
> >>>> On 18/11/2022 10:39, Paul Elder wrote:
> >>>>> From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> >>>>>
> >>>>> Add an example to the rockchip-isp1 DT binding that showcases usage of
> >>>>> the parallel input of the ISP, connected to the CSI-2 receiver internal
> >>>>> to the i.MX8MP.
> >>>>>
> >>>>> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> >>>>
> >>>> Missing SoB.
> >>>
> >>> I don't quite understand. I see an SoB right there.
> >>
> >> Laurent did not sent it. Did you run checkpatch before sending?
> > 
> > That's why he's on the "From:" in the beginning. checkpatch says it's
> > fine.
> 
> Ah, indeed, checkpatch misses that feature (it's part of Greg's
> verify_signedoff.sh). Anyway, your SoB is missing, as Laurent did not
> send the patch.

I thought adding an SoB was only required either when making changes or
when pushing commits through git, not when forwarding patches on mailing
lists ?

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
