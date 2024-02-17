Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8E07C48BC4
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Feb 2024 10:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ul0nlxR3PtgZw2qMGMXhTACmnbfjH9lFm28uDqbOzxE=; b=RKSbylGMJpn/pK
	/kMVKvlOlv3oKOARvbsAbVEIhc0mKDYChH3JsufJIdaWFwNm9INRj2XHZuJ/kuCYa4GzHSLEn71nd
	quY8vbFfFshnN/6/OMR/w1oV4aCApk6kMOrYZLbT8IA0KC85qZbqGSkW4ReT+vlApRPC86dah1/g3
	4KauDV30TkKFuEp7Ws63U8IQNYxT5LRKTulIdwtrIil+Yzb8bGa465upC52993Kq67YuEquLTUHRG
	zXW7DYPA/S8ATx5ObZC1v2nYJRTMTRwhFhXCrUyXotfsg9MyAH8g7OqqKg/6aiGusKJOdh1HHX3wd
	kKkqTriCsR/qdRRXT8fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbI41-00000005QHq-2i52;
	Sat, 17 Feb 2024 10:36:57 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbI3x-00000005QFA-0i0o;
	Sat, 17 Feb 2024 10:36:55 +0000
Received: from hamburger.collabora.co.uk (hamburger.collabora.co.uk [IPv6:2a01:4f8:1c1b:c794::1])
	by madrid.collaboradmins.com (Postfix) with ESMTP id 2999A3780A0B;
	Sat, 17 Feb 2024 10:36:47 +0000 (UTC)
From: "Shreeya Patel" <shreeya.patel@collabora.com>
In-Reply-To: <c8cb8fd4-a67d-4982-b1f8-6fedbb7e9a4f@linaro.org>
X-Forward: 127.0.0.1
References: <20240216094922.257674-1-shreeya.patel@collabora.com>
 <20240216094922.257674-2-shreeya.patel@collabora.com>
 <237e690a-2f49-4046-b054-3a878eed6748@linaro.org>
 <30d2-65cf5980-3-2ec9f500@242931553>
 <0c2f4d92-afa9-46f1-844e-994bd45924ef@linaro.org>
 <1b9-65d08800-3-19290580@120474537> <c8cb8fd4-a67d-4982-b1f8-6fedbb7e9a4f@linaro.org>
Date: Sat, 17 Feb 2024 10:36:46 +0000
Cc: heiko@sntech.de, mchehab@kernel.org, robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, p.zabel@pengutronix.de, jose.abreu@synopsys.com, nelson.costa@synopsys.com, dmitry.osipenko@collabora.com, sebastian.reichel@collabora.com, shawn.wen@rock-chips.com, kernel@collabora.com, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org, linux-dt@vger.kernel.org, linux-arm@lists.infradead.org
To: "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Message-ID: <1aae-65d08c00-1-625abd00@109408603>
Subject: =?utf-8?q?Re=3A?= [PATCH 1/4] =?utf-8?q?clk=3A?==?utf-8?q?_rockchip=3A?=
 =?utf-8?q?_rst-rk3588=3A?= Add BIU reset
User-Agent: SOGoMail 5.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240217_023653_349954_C52EA769 
X-CRM114-Status: GOOD (  23.53  )
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

On Saturday, February 17, 2024 15:50 IST, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:

> On 17/02/2024 11:18, Shreeya Patel wrote:
> > On Saturday, February 17, 2024 13:47 IST, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:
> > 
> >> On 16/02/2024 13:48, Shreeya Patel wrote:
> >>> On Friday, February 16, 2024 15:33 IST, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:
> >>>
> >>>> On 16/02/2024 10:49, Shreeya Patel wrote:
> >>>>> Export hdmirx_biu soft reset id which is required by the hdmirx controller.
> >>>>>
> >>>>> Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
> >>>>> ---
> >>>>>  drivers/clk/rockchip/rst-rk3588.c               | 1 +
> >>>>>  include/dt-bindings/reset/rockchip,rk3588-cru.h | 2 ++
> >>>>
> >>>> Please run scripts/checkpatch.pl and fix reported warnings. Some
> >>>> warnings can be ignored, but the code here looks like it needs a fix.
> >>>> Feel free to get in touch if the warning is not clear.
> >>>>
> >>>> Please do internal review. The internal Collabora review would tell you:
> >>>> YOU MUST run checkpatch. Then you see errors, so why do you send patch
> >>>> with errors to the mailing list?
> >>>>
> >>>
> >>> I am sorry but what errors are you talking about?
> >>> I don't see any errors reported by checkpatch :-
> >>>
> >>> shreeya@shreeya:~/collabora/rd/rockchip/torvalds$ ./scripts/checkpatch.pl hdmirx/0001-clk-rockchip-rst-rk3588-Add-BIU-reset.patch
> >>> WARNING: DT binding docs and includes should be a separate patch. See: Documentation/devicetree/bindings/submitting-patches.rst
> >>
> >> Here.
> >>
> >>>
> >>> total: 0 errors, 1 warnings, 13 lines checked
> >>>
> >>> NOTE: For some of the reported defects, checkpatch may be able to
> >>>       mechanically convert to the typical style using --fix or --fix-inplace.
> >>>
> >>> hdmirx-v1-1602/0001-clk-rockchip-rst-rk3588-Add-BIU-reset.patch has style problems, please review.
> >>>
> >>> I see the above warning but that looks like a false positive to me.
> >>
> >> Why for your patch it would be false positive and for all others would not?
> >>
> > 
> > OK, now I see what you meant. Since we are touching the include file and C file together, this warning was generated.
> > It was a bit confusing to interpret this as the warning also talks about Documentation which we didn't touch at all.
> 
> Really, no documentation touching? Care to check the full path of the
> files you are changing?
> 

Well, I meant the dt-binding doc for rst-rk3588

> 
> > 
> > Anyway, I will create two separate patches for this in v2.
> 
> I think rules cannot be clearer:
> https://elixir.bootlin.com/linux/v6.8-rc4/source/Documentation/devicetree/bindings/submitting-patches.rst#L13
> 

right, it was my mistake and I think after this nice and kind feedback, I'll never make the same one again :)

Thanks,
Shreeya Patel

> 
> Best regards,
> Krzysztof
> 
> _______________________________________________
> Kernel mailing list -- kernel@mailman.collabora.com
> To unsubscribe send an email to kernel-leave@mailman.collabora.com
> This list is managed by https://mailman.collabora.com


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
