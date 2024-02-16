Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CC9EC48BEB
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Feb 2024 12:48:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n/KUHEtrk4GehpocHvcwTfjoq9xgfgBv6M9iK2Nz/IA=; b=xWJcZ4qEdPE/bj
	wj4N+LBdkwSbQEJr+DuCknTjY1D/WK4DChoqgekKaILgoyqYWnJfe/aJsmiMEIHesEEFgJgqlTSQO
	xDHpgHzsza2jzlEccjv7Y/pxM3RR0xEFSzDWjQpcixJCqh/vdfsNUZbcQyIJh64gGj+CTGzuFah7B
	Xfze0wYADV5T9FB2RjE6/JccBibmeWLuty8gOBBPEaJ4RkbIwrevqriE92qutXCJCx48kZLiQ0mUj
	TVEbGRB+atrcaJAQYoXESiXTCZUcqM3lpoUDS8c+QkeKtZsvQm8IuDHgJ9rmjOJ5w5hukVdKMDIel
	lt4imE1+OiaU6dnu298w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raxda-00000002LLw-0fun;
	Fri, 16 Feb 2024 12:48:18 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raxdW-00000002LLJ-0TLO;
	Fri, 16 Feb 2024 12:48:15 +0000
Received: from hamburger.collabora.co.uk (hamburger.collabora.co.uk [IPv6:2a01:4f8:1c1b:c794::1])
	by madrid.collaboradmins.com (Postfix) with ESMTP id 4636B3780626;
	Fri, 16 Feb 2024 12:48:10 +0000 (UTC)
From: "Shreeya Patel" <shreeya.patel@collabora.com>
In-Reply-To: <237e690a-2f49-4046-b054-3a878eed6748@linaro.org>
X-Forward: 127.0.0.1
References: <20240216094922.257674-1-shreeya.patel@collabora.com>
 <20240216094922.257674-2-shreeya.patel@collabora.com> <237e690a-2f49-4046-b054-3a878eed6748@linaro.org>
Date: Fri, 16 Feb 2024 12:48:10 +0000
Cc: heiko@sntech.de, mchehab@kernel.org, robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, p.zabel@pengutronix.de, jose.abreu@synopsys.com, nelson.costa@synopsys.com, dmitry.osipenko@collabora.com, sebastian.reichel@collabora.com, shawn.wen@rock-chips.com, kernel@collabora.com, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org, linux-dt@vger.kernel.org, linux-arm@lists.infradead.org
To: "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Message-ID: <30d2-65cf5980-3-2ec9f500@242931553>
Subject: =?utf-8?q?Re=3A?= [PATCH 1/4] =?utf-8?q?clk=3A?==?utf-8?q?_rockchip=3A?=
 =?utf-8?q?_rst-rk3588=3A?= Add BIU reset
User-Agent: SOGoMail 5.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_044814_297794_04DC3C89 
X-CRM114-Status: GOOD (  14.23  )
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

On Friday, February 16, 2024 15:33 IST, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:

> On 16/02/2024 10:49, Shreeya Patel wrote:
> > Export hdmirx_biu soft reset id which is required by the hdmirx controller.
> > 
> > Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
> > ---
> >  drivers/clk/rockchip/rst-rk3588.c               | 1 +
> >  include/dt-bindings/reset/rockchip,rk3588-cru.h | 2 ++
> 
> Please run scripts/checkpatch.pl and fix reported warnings. Some
> warnings can be ignored, but the code here looks like it needs a fix.
> Feel free to get in touch if the warning is not clear.
> 
> Please do internal review. The internal Collabora review would tell you:
> YOU MUST run checkpatch. Then you see errors, so why do you send patch
> with errors to the mailing list?
> 

I am sorry but what errors are you talking about?
I don't see any errors reported by checkpatch :-

shreeya@shreeya:~/collabora/rd/rockchip/torvalds$ ./scripts/checkpatch.pl hdmirx/0001-clk-rockchip-rst-rk3588-Add-BIU-reset.patch
WARNING: DT binding docs and includes should be a separate patch. See: Documentation/devicetree/bindings/submitting-patches.rst

total: 0 errors, 1 warnings, 13 lines checked

NOTE: For some of the reported defects, checkpatch may be able to
      mechanically convert to the typical style using --fix or --fix-inplace.

hdmirx-v1-1602/0001-clk-rockchip-rst-rk3588-Add-BIU-reset.patch has style problems, please review.

I see the above warning but that looks like a false positive to me.

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
