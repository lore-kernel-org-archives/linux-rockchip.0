Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF852C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Nov 2022 05:09:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GIcXdWwtg6Lpku4SElpWrOpWHl/Lbc3EmWR1icm0bFs=; b=Y8xKmpnedPlPe9
	TVd/8BCPkOmMPoc2JcgtKVOJ9MGCF6Cg7Hp9381oAIeZsw5f5XplRLVM6vHxa71hH7POEafz0TFLp
	RHOYkeN528Uoh6/K8KUP9oVQJe1dPKhT94nk458fuqkQJsjTVZKCvYDCvLTDJTC3TnM/xRHUurJIJ
	rua1VRt8gDWiuaIaIeic3TVkcDbji2CjUVpgI+zKJvgD5BbaQibq2v/mL/jY/pDTLCIyzsh7gUZn9
	KZWJfcAtGRenXIXS7z9ipbfpfnBGl7sIk2cHYhsqU3NgNn+4pei4eLhC/qhLgippWTXw3Ybiwe6rl
	9UfhSPxKlRcX2JQdwJlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1owz40-009UAV-Te; Mon, 21 Nov 2022 05:09:48 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1owz3o-009U3P-SZ; Mon, 21 Nov 2022 05:09:39 +0000
Received: from pyrite.rasen.tech (h175-177-042-159.catv02.itscom.jp [175.177.42.159])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 53C3025B;
	Mon, 21 Nov 2022 06:09:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1669007371;
	bh=vv1rZHG/fF4H9au2oTKj46t13Jo9FjmsThfxsJJVBT4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YYNntyABD1FshzHCGEeRY4rYzXD7jyuscNvi20SEFdpbFo/kG2YQrrBYuo8pyUhWn
	 1Y8y99hGB9xsOOFpLBYi/iyNPd505Dm8I6yuvJFKE7eU7aPTsWRb2kYrOhdpbVkHqD
	 viDX8BRMuIBqnDBUxb9h7plytGciuWjiXIBlsx14=
Date: Mon, 21 Nov 2022 14:09:20 +0900
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
Message-ID: <Y3sIAHqd8Kd/XBB/@pyrite.rasen.tech>
References: <20221118093931.1284465-1-paul.elder@ideasonboard.com>
 <20221118093931.1284465-3-paul.elder@ideasonboard.com>
 <ca8a6070-3888-8d42-5974-d7c2adc62417@linaro.org>
 <Y3h93cLdEvMzInXe@pyrite.rasen.tech>
 <238f7bf8-578c-5bb4-9f00-50f36334c5cf@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <238f7bf8-578c-5bb4-9f00-50f36334c5cf@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221120_210937_106890_333F6DE0 
X-CRM114-Status: GOOD (  25.81  )
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

On Sun, Nov 20, 2022 at 11:36:31AM +0100, Krzysztof Kozlowski wrote:
> On 19/11/2022 07:55, Paul Elder wrote:
> > On Fri, Nov 18, 2022 at 02:06:14PM +0100, Krzysztof Kozlowski wrote:
> >> On 18/11/2022 10:39, Paul Elder wrote:
> >>> From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> >>>
> >>> Add an example to the rockchip-isp1 DT binding that showcases usage of
> >>> the parallel input of the ISP, connected to the CSI-2 receiver internal
> >>> to the i.MX8MP.
> >>>
> >>> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> >>
> >> Missing SoB.
> > 
> > I don't quite understand. I see an SoB right there.
> 
> Laurent did not sent it. Did you run checkpatch before sending?

That's why he's on the "From:" in the beginning. checkpatch says it's
fine.

> 
> > 
> >>
> >>> ---
> >>>  .../bindings/media/rockchip-isp1.yaml         | 72 +++++++++++++++++++
> >>>  1 file changed, 72 insertions(+)
> >>>
> >>
> >> I don't know what do you demonstrate there... usage of endpoints? That's
> >> the only difference. Such usage is the same everywhere, nothing specific
> > 
> > I guess...? Doesn't the same argument apply against the px30 example too
> > then?
> > 
> >> to this example. You already have two examples, so I don't think this
> >> brings anything more.
> > 
> > We do have usage of this in imx8mp.dtsi and overlays for the ISP, but
> > those patches haven't been sent/merged yet, so in the meantime I think
> > there is value in providing an example here for the imx8mp.
> 
> The examples are not for demonstrating imx8mp or any other soc, but this
> one given binding. Changing compatibles and few properties is not a
> different example - from "exampleness" point of view it is very similar.

Ah okay, I see.


Paul

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
