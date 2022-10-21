Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B464C433FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Oct 2022 15:40:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yoPaT4rWVg07qu+a3ISwrDRLA9BFqD7oXcg2Fe/2FXs=; b=HYTKevHmI15cXE
	izIOLps6RnKnArqMuhc9gy+HwU2i5f40p8B9Sw7KtxrxTUBaRzAQc9vkcPRBJirBZttpUSMeMgTwJ
	eAtzuHDwO5CacTP/oiAWANTFCVV3KSEtjGnWVi00uAbzHl0jI599c7Kla0MrIwg4zyl5nsX79OHY8
	QSUeJddj4TjQNotIC4lavL5RJbi4aBH2RIAsB1WPoKLOTgi0LAiazB7LGIR6+Gx5gvmKGd4Cdz2VY
	E4wP+Pa/WCm3bvdPPkckrDcOq4xshMt0FF/dTJWlgX523a4mkKcl5hkQ2GQ4MCR8kfgBPQp2rU3rR
	1jchWZgaD9AzWjHQUvmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olu7W-008iL0-KW; Fri, 21 Oct 2022 15:39:38 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olu7J-008iFq-4G; Fri, 21 Oct 2022 15:39:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1666366753; bh=CMrmPvkFy9Rnj6R3j7QT0enTO4XoE0Vw26Epmtis0+g=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=AOEvKLBb8mH5u5eqhb3ggdx4wGRkJSHhVMZlbDA6lj7TZ23qsX+M5kXwKbXYSA7zL
	 dm61z2GB1I3COTwrpB0emSpvNhhxGFJJY9AzPLkoIQO9CvBW+OTXGJrXefYDfdhOCF
	 GZoHMuRtRf2OZMAAscspxS669F9IH1l5GhgTp+5I=
Date: Fri, 21 Oct 2022 17:39:13 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Frank Wunderlich <frank-w@public-files.de>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>,
	Johan Jonker <jbx6244@gmail.com>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>,
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2] arm64: dts: rockchip: rk356x: Fix PCIe register map
 and ranges
Message-ID: <20221021153913.l5ry6v4mcnzcmj2v@core>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>,
	Peter Geis <pgwipeout@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Frank Wunderlich <frank-w@public-files.de>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>,
	Johan Jonker <jbx6244@gmail.com>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>,
	open list <linux-kernel@vger.kernel.org>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20221005085439.740992-1-megi@xff.cz>
 <CAMdYzYrEXEqOmMeozGBbAAvrujZcOxLh4VYOmu5DSjPWTS-5zQ@mail.gmail.com>
 <20221005220812.4psu6kckej63yo2z@core>
 <4679102.Wku2Vz74k6@phil>
 <CAMdYzYq3S2rR3Kb61irpV9xHYijNiJY0mkVnJwPrpXzxg_Zh9g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMdYzYq3S2rR3Kb61irpV9xHYijNiJY0mkVnJwPrpXzxg_Zh9g@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221021_083925_970344_D848931C 
X-CRM114-Status: GOOD (  13.69  )
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

On Fri, Oct 21, 2022 at 09:07:50AM -0400, Peter Geis wrote:
> Good Morning Heiko,
> 
> Apologies for just getting to this, I'm still in the middle of moving
> and just got my lab set back up.
> 
> I've tested this patch series and it leads to the same regression with
> NVMe drives. A loop of md5sum on two identical 4GB random files
> produces the following results:
> d11cf0caa541b72551ca22dc5bef2de0  test-rand.img
> fad97e91da8d4fd554c895cafa89809b  test-rand2.img
> 2d56a7baa05c38535f4c19a2b371f90a  test-rand.img
> 74e8e6f93d7c3dc3ad250e91176f5901  test-rand2.img
> 25cfcfecf4dd529e4e9fbbe2be482053  test-rand.img
> 74e8e6f93d7c3dc3ad250e91176f5901  test-rand2.img
> b9637505bf88ed725f6d03deb7065dab  test-rand.img
> f7437e88d524ea92e097db51dce1c60d  test-rand2.img
> 
> Before this patch series:
> d11cf0caa541b72551ca22dc5bef2de0  test-rand.img
> d11cf0caa541b72551ca22dc5bef2de0  test-rand2.img
> d11cf0caa541b72551ca22dc5bef2de0  test-rand.img
> d11cf0caa541b72551ca22dc5bef2de0  test-rand2.img
> d11cf0caa541b72551ca22dc5bef2de0  test-rand.img
> d11cf0caa541b72551ca22dc5bef2de0  test-rand2.img
> d11cf0caa541b72551ca22dc5bef2de0  test-rand.img
> d11cf0caa541b72551ca22dc5bef2de0  test-rand2.img
> 
> Though I do love where this patch is going and would like to see if it
> can be made to work, in its current form it does not.

Thanks for the test. Can you please also test v1? Also please share lspci -vvv
of your nvme drive, so that we can see allocated address ranges, etc.

kind regards,
	o.

> Very Respectfully,
> Peter Geis

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
