Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90E42C44501
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Jul 2026 17:55:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hxeKMGOv0uy83VyCS63QqErUBookKOxIHbUgI6u+00U=; b=mPdmerUkm9cuYX
	63z9C7mGhpnKL7b9nnBaZf02tbwKgg26SStgN+s7a5kWA2EG4eGLoYRC4F2RVLI8Rp0TFoGmLi4Vj
	JX/jPbneQGQjnrl+1haIAwZHmavjdTXEKhwNIONcbvt2sUitJL9mL9icitg2VvCPKr75UEiTJgPL0
	yHAHXUjnB4/F3a6dEsN+ynsjYLB2566lGjnSF3MOAepAMAgDJZ5RlA+gYV3rSsxMLVvfx9IwElR89
	Pw+yVye8y6kKo4nyY4/6fYnTCNcpUjMOu3d+nOgURvamJ3RImcLZ8jt5TKqlFqTwk8nBB2vRBsEGB
	/iUgUzcC9U7xVkoEWapw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiyOX-00000007eRw-1RBW;
	Sun, 12 Jul 2026 17:55:13 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiyOS-00000007eQm-3WXc
	for linux-rockchip@lists.infradead.org;
	Sun, 12 Jul 2026 17:55:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1783878907;
 bh=+cz4TC7FYuAA1MNLgolPmcFRysJt6pzD3nfMB9W3q7M=;
 b=pJrFCxHgXdDD8DS2BgBSF+y4pu2HdgMaoJfuDf5X7FyYohKL8OmaSgVD/fPtgf+t1nKhPORc8
 ck47yK/BoVpgq50Hirdofdb9xovmbTPIbosWrgEDmXFHZsXrTaheiOqJ5iHJigNx1zLAerc1TMk
 kaUZ/a2PoPVMZPeszaXzCdtDQEN/kjLLR1YwLC0qAmsy/9GJi64DMs997y22wPQ047QMLWKL45i
 u/xwRUjTed6TH8vHuJ59TR0w3cxB4RrPkhlu/vCcgfHowcT+xJRkGwxgtUsDB2SycXt5iDs8if0
 ptZ24LmNEFKGEyLpVNQVpzQ4FE8UK1kTgo49V7zsPvlg==
X-Forward-Email-ID: 6a53d4f81f631853be4f2d47
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 2.10.2
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <e2ed95ee-8044-4a44-9775-9f36b10e727f@kwiboo.se>
Date: Sun, 12 Jul 2026 19:55:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/12] pinctrl: rockchip: Add RV1106 pinctrl support
To: Simon Glass <sjg@chromium.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@nabladev.com>, linux-arm-kernel@lists.infradead.org,
 Jeffy Chen <jeffy.chen@rock-chips.com>, Linus Walleij <linusw@kernel.org>,
 huang lin <hl@rock-chips.com>, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260706195818.3906949-1-sjg@chromium.org>
 <20260706195818.3906949-5-sjg@chromium.org>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20260706195818.3906949-5-sjg@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260712_105509_198392_74CF295F 
X-CRM114-Status: GOOD (  16.28  )
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

Hi Simon,

On 7/6/2026 9:58 PM, Simon Glass wrote:
> Add pinctrl support for the Rockchip RV1106, taken from the vendor
> kernel in the Luckfox Pico SDK [1] at commit 824b817f8 (a Linux
> 5.10.160 kernel tree). The IOC registers are spread across several
> blocks, addressed through per-bank offsets, with the GPIO0 block in the
> PMU. The drive strength uses the RK3568-style exponential encoding.
> 
> The RV1103 is a package variant of the RV1106 with fewer pins and uses
> the same pin controller.
> 
> [1] https://github.com/LuckfoxTECH/luckfox-pico
> 
> Signed-off-by: Simon Glass <sjg@chromium.org>
> ---
> 
>  drivers/pinctrl/pinctrl-rockchip.c | 208 +++++++++++++++++++++++++++++
>  drivers/pinctrl/pinctrl-rockchip.h |   1 +
>  2 files changed, 209 insertions(+)
> 
> diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
> index 7e0fcd45fd26..f9cbcb955853 100644
> --- a/drivers/pinctrl/pinctrl-rockchip.c
> +++ b/drivers/pinctrl/pinctrl-rockchip.c
> @@ -1725,6 +1725,166 @@ static int rv1103b_calc_schmitt_reg_and_bit(struct rockchip_pin_bank *bank,
>  	return 0;
>  }
>  
> +#define RV1106_DRV_BITS_PER_PIN		8
> +#define RV1106_DRV_PINS_PER_REG		2
> +#define RV1106_DRV_GPIO0_OFFSET		0x10
> +#define RV1106_DRV_GPIO1_OFFSET		0x80
> +#define RV1106_DRV_GPIO2_OFFSET		0x100C0

This, and remaining offsets, should likely be from the related GPIOx IOC
base and not from GPIO1 IOC base.

The regmap_base should likely only cover GPIO1 IOC, else it would cross
boundary into the GPIOx+1 controller regmap space.

See my review comment on pinctrl dt-bindings, we likely need to define
the IOC reg space for each GPIO controller for this SoC and adjust this
driver accordingly.

Possible something like following:

  gpio2: gpio@ff540000 {
	reg = <0xff540000 0x10c>, <0xff548000 0x8000>;
	reg-names = "base", "ioc";
  };

or

  gpio2: gpio@ff540000 {
	reg = <0xff540000 0x10c>;
	rockchip,grf = <&gpio2_ioc>;
  };

  gpio2_ioc: syscon@ff548000 {
	reg = <0xff548000 0x8000>;
  };

Regards,
Jonas

> +#define RV1106_DRV_GPIO3_OFFSET		0x20100
> +#define RV1106_DRV_GPIO4_OFFSET		0x30020

[snip]

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
