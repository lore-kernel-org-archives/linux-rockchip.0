Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B145C4332F
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Nov 2022 06:56:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c8e2eNrwufERpgb5JfOAsCNy71jJlVvR3GgFUPl/j6A=; b=nxwCVDkRVNowu9
	gnJstb7bn/Iqfq8J4TfrTlxwwRVEhQGfwKijqSbsd+2aXvOleP/FBnDGy+5RcOk6G1cOQt4Oh4alV
	jZpa7hI7ut1uBvnNWNJc+qtgjPd2zriBjbH2HQVpLolsB1uQrbWHjt6+rRuoKSWR1PEbZ+/5llezQ
	Z5kouOGZF8N/aGscgNy/RoGWR7K+Sgn2mN6ojDjjChX4jVD34LeQ1mQmLv1jvYON8+Eyc14N9t5JH
	9rj+FNBYSRO4tX3gX/12figXbNwhGW/3cESZX/LCIUfSN95gkztaEBK2sXUD6FXb6h4NY/uzsxKTE
	qds6Zi/1/z/CoB5t/1KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1owHm1-00Bztx-Iz; Sat, 19 Nov 2022 06:56:21 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1owHlq-00BzrZ-J6; Sat, 19 Nov 2022 06:56:11 +0000
Received: from pyrite.rasen.tech (KD106154145051.au-net.ne.jp [106.154.145.51])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id A8A0C749;
	Sat, 19 Nov 2022 07:56:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1668840968;
	bh=sDNUAGAkIzCDcXCi7GBDq63kkMWjkvQ6ooJCMrOl114=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=S9OL/S1mgZQoTuD7xGMnC5I2CIxg412BXR+zhxh2kPzfQIOmvNG/oK8heedYw248i
	 L3NKGcvJymVv4OxtsP5pkNWd9iB2z+bdpk+aHfgUqp10lJ2A/D/edtc/R2wquYvdvT
	 GM6lgGCXU/Z3ZeIDJyk8rLUSKri62SeTXkQP08ck=
Date: Sat, 19 Nov 2022 15:55:25 +0900
From: Paul Elder <paul.elder@ideasonboard.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: linux-media@vger.kernel.org,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
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
Message-ID: <Y3h93cLdEvMzInXe@pyrite.rasen.tech>
References: <20221118093931.1284465-1-paul.elder@ideasonboard.com>
 <20221118093931.1284465-3-paul.elder@ideasonboard.com>
 <ca8a6070-3888-8d42-5974-d7c2adc62417@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ca8a6070-3888-8d42-5974-d7c2adc62417@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221118_225610_790643_4FA7A912 
X-CRM114-Status: GOOD (  19.83  )
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

On Fri, Nov 18, 2022 at 02:06:14PM +0100, Krzysztof Kozlowski wrote:
> On 18/11/2022 10:39, Paul Elder wrote:
> > From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > 
> > Add an example to the rockchip-isp1 DT binding that showcases usage of
> > the parallel input of the ISP, connected to the CSI-2 receiver internal
> > to the i.MX8MP.
> > 
> > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> 
> Missing SoB.

I don't quite understand. I see an SoB right there.

> 
> > ---
> >  .../bindings/media/rockchip-isp1.yaml         | 72 +++++++++++++++++++
> >  1 file changed, 72 insertions(+)
> > 
> 
> I don't know what do you demonstrate there... usage of endpoints? That's
> the only difference. Such usage is the same everywhere, nothing specific

I guess...? Doesn't the same argument apply against the px30 example too
then?

> to this example. You already have two examples, so I don't think this
> brings anything more.

We do have usage of this in imx8mp.dtsi and overlays for the ISP, but
those patches haven't been sent/merged yet, so in the meantime I think
there is value in providing an example here for the imx8mp.


Thanks,

Paul

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
