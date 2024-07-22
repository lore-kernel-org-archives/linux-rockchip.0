Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF2EAC3DA5D
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Jul 2024 20:27:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EKU3CM32Qv4T8PcK/1HzEtK//l9Sjsx+ymiXjIcs+X4=; b=FpBEuT/HL5HWsW
	mKwp14AuRYsfhWl4ReMUqCY2L0kOnHxDgRXlFkhHSRv4IU1/GTGm7q5o5QpJKsQj5DhT1G1CGPbZp
	+GOnA1WYWpotkTrpivtriS/FeYqmSXigowRrO1nUlhKIzDzmOQyBTW7AExVQfbJdueeG+E/X7wUMG
	tAoUGNLf1Pc3U+PYFOIfijx4GR15jfLFhf45Tqx9RLE0D3YRb0VMI9cHYz7nx4q0/91l8m+IeZzQX
	YyTqQ+T3COCuFLM1oohuvzu5TwVOgQsNChsVFkgI+oY+kRvVBlf2bdxE3PMAUUEKBtHVDBUqWkjcH
	8UECXXxNq/ymU8qBierA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVzco-0000000AUJy-23Vp;
	Mon, 22 Jul 2024 20:27:14 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVzcP-0000000AUEm-1y5r;
	Mon, 22 Jul 2024 20:26:51 +0000
Received: from harlem.collaboradmins.com (harlem.collaboradmins.com [IPv6:2a01:4f8:1c0c:5936::1])
	by madrid.collaboradmins.com (Postfix) with ESMTP id A2DE53780692;
	Mon, 22 Jul 2024 20:26:45 +0000 (UTC)
From: "Shreeya Patel" <shreeya.patel@collabora.com>
In-Reply-To: <20240722193946.1246372-1-hoff.benjamin.k@gmail.com>
X-Forward: 127.0.0.1
References: <20240719124032.26852-1-shreeya.patel@collabora.com> <20240722193946.1246372-1-hoff.benjamin.k@gmail.com>
Date: Mon, 22 Jul 2024 21:26:45 +0100
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, heiko@sntech.de, hverkuil-cisco@xs4all.nl, hverkuil@xs4all.nl, jose.abreu@synopsys.com, kernel@collabora.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, mchehab@kernel.org, mturquette@baylibre.com, nelson.costa@synopsys.com, nicolas.dufresne@collabora.com, p.zabel@pengutronix.de, robh@kernel.org, sboyd@kernel.org, shawn.wen@rock-chips.com
To: hoff.benjamin.k@gmail.com
MIME-Version: 1.0
Message-ID: <354380-669ec080-1-27ae20c0@20216750>
Subject: =?utf-8?q?Re=3A?= [PATCH v4 4/4] =?utf-8?q?media=3A?=
 =?utf-8?q?_platform=3A?==?utf-8?q?_synopsys=3A?= Add support for hdmi input 
 driver
User-Agent: SOGoMail 5.10.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240722_132649_662233_D5C243B9 
X-CRM114-Status: GOOD (  16.86  )
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

On Tuesday, July 23, 2024 01:09 IST, hoff.benjamin.k@gmail.com wrote:

Hi Benjamin,

> > Add initial support for the Synopsys DesignWare HDMI RX
> > Controller Driver used by Rockchip RK3588. The driver
> > supports:
> >  - HDMI 1.4b and 2.0 modes (HDMI 4k@60Hz)
> >  - RGB888, YUV422, YUV444 and YCC420 pixel formats
> >  - CEC
> >  - EDID configuration
> >
> > The hardware also has Audio and HDCP capabilities, but these are
> > not yet supported by the driver.
> >
> > Reviewed-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
> > Tested-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
> > Co-developed-by: Dingxian Wen <shawn.wen@rock-chips.com>
> > Signed-off-by: Dingxian Wen <shawn.wen@rock-chips.com>
> > Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
> > ---
> >
...
> > +
> > +static const struct of_device_id hdmirx_id[] = {
> > +	{ .compatible = "rockchip,rk3588-hdmirx-ctrler" },
> > +	{ },
> > +};
> > +MODULE_DEVICE_TABLE(of, hdmirx_id);
> >
> >
> According to the platform_driver struct, they like the `remove_new` over remove. 
> When I was compiling for Armbian, I was getting a type mismatch that prevented compililng
> 
> See here: https://github.com/torvalds/linux/blob/933069701c1b507825b514317d4edd5d3fd9d417/include/linux/platform_device.h#L236
> 

This patch series is based on linux-next and there seems to be some recent changes
related to .remove and .remove_new. New drivers are supposed to use .remove()

See the reason here :-
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/include/linux/platform_device.h?h=next-20240722#n239

If you apply the patches on top of linux-next then there shouldn't be any
compilation error.

> >
> > +
> > +static struct platform_driver hdmirx_driver = {
> > +	.probe = hdmirx_probe,
> > +	.remove = hdmirx_remove,
> > +	.driver = {
> > +		.name = "snps_hdmirx",
> > +		.of_match_table = hdmirx_id,
> > +		.pm = &snps_hdmirx_pm_ops,
> > +	}
> > +};
> > +module_platform_driver(hdmirx_driver);
> > +
> > +MODULE_DESCRIPTION("Rockchip HDMI Receiver Driver");
> > +MODULE_AUTHOR("Dingxian Wen <shawn.wen@rock-chips.com>");
> > +MODULE_AUTHOR("Shreeya Patel <shreeya.patel@collabora.com>");
> > +MODULE_LICENSE("GPL");


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
