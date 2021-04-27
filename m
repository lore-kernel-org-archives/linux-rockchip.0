Return-Path: <SRS0=mpbD=JY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 89BE5C43460
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Apr 2021 07:56:21 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 07215613B3
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Apr 2021 07:56:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 07215613B3
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=t9XWuJZAOihFuERN5diCwl2AUCqQxvAnAOUTnmT8ssw=; b=FoWFpDOx3wtJnUe+dzPZ4cfUq
	diVEBns3j6b4aXAOefX7CFkuuylJGDm13jF+y5pBQ0XxVdOoz+K79PGeoEm7yFMvVGfl1FgQR7dyF
	pvQqGIUXUtMKqQVoYs90EFn+K0QhyGmLdxIsQVjWVmJA4WPDOquF9bQ3XZN9ND8g9Hwlxmn+oKSKf
	Iv+eqwS/jqqtxoi6DAjxmM8wjAdH5n00T67XR9csasPbnW68vZywanCvdOSSYBJK1SnL05u/M1Gvx
	wVWlTrvMsFSH5DekYWDjV9f3d0MhqwM6r02Ns/ww8SiiyxIPJSJ09rAdHVMtrOXJeK/EN1ACeHyE1
	L1w+E7uPQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbIZp-0012pt-Gv; Tue, 27 Apr 2021 07:56:13 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbIUq-0011Wa-CN; Tue, 27 Apr 2021 07:51:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:
 Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
 :Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=o2GPNqAtMu7uHZanex+rJmHnWoeVeOw5KqLI6tkEMSw=; b=LhSfUX+5PCyd/Lcj2fz5JRVWpv
 oZVTK0XYWr3zTkIqQUM3RXCGNp9k7bj0Y/r+X3S/Cc3AXWcRIIEP123lZdXicoxhn2x2HoUPRIDKi
 Ppb8Gu3FKiBKuM38nrmu3wpUhr39kYRDNp1jTXe/Kzf/PrX0tG1TY/yUZRE3WuvM6KiExep3HotAp
 j57XRrhsXVTm3CE/zyAnsVKT4kVNLZelY06EYPYYxjCCF6gjZHeQMM/cP3VFyOUYjZSdwoedbLJgL
 j7QEaq5bLs9cl7op/ke6MixDzgz75vLdiRDX1tdPdt0/LW/Ymp+sL/2inVioICDCc+H8bZR8U40Fp
 6ir9py2w==;
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbIUn-00GWHc-PU; Tue, 27 Apr 2021 07:51:02 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lbIUf-0002Gr-No; Tue, 27 Apr 2021 09:50:53 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: cl@rock-chips.com
Cc: robh+dt@kernel.org, jagan@amarulasolutions.com, wens@csie.org,
 uwe@kleine-koenig.org, mail@david-bauer.net, jbx6244@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, jensenhuang@friendlyarm.com,
 michael@amarulasolutions.com, cnsztl@gmail.com, devicetree@vger.kernel.org,
 ulf.hansson@linaro.org, linux-mmc@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-serial@vger.kernel.org, linux-i2c@vger.kernel.org, jay.xu@rock-chips.com,
 shawn.lin@rock-chips.com, david.wu@rock-chips.com, zhangqing@rock-chips.com,
 huangtao@rock-chips.com, cl@rock-chips.com, wim@linux-watchdog.org,
 linux@roeck-us.net, jamie@jamieiles.com, linux-watchdog@vger.kernel.org
Subject: Re: [PATCH v2 7/7] arm64: dts: rockchip: add basic dts for RK3568 EVB
Date: Tue, 27 Apr 2021 09:50:51 +0200
Message-ID: <3689795.CpGBqz00pN@diego>
In-Reply-To: <20210425094455.25949-1-cl@rock-chips.com>
References: <20210425094216.25724-1-cl@rock-chips.com>
 <20210425094455.25949-1-cl@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210427_005101_856828_C6C35C44 
X-CRM114-Status: GOOD (  16.46  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Am Sonntag, 25. April 2021, 11:44:55 CEST schrieb cl@rock-chips.com:
> From: Liang Chen <cl@rock-chips.com>
> 
> This patch add rk3568-evb1-v10.dts for RK3568 evaluation board.
> add uart/emmc/i2c/rk809 node for basic function.
> 
> Signed-off-by: Liang Chen <cl@rock-chips.com>
> ---
>  .../devicetree/bindings/arm/rockchip.yaml     |  5 ++
>  arch/arm64/boot/dts/rockchip/Makefile         |  1 +
>  .../boot/dts/rockchip/rk3568-evb1-v10.dts     | 80 +++++++++++++++++++
>  3 files changed, 86 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 4a6f772c1043..95ab9714af44 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -565,6 +565,11 @@ properties:
>            - const: rockchip,rk3399-evb
>            - const: rockchip,rk3399
>  
> +      - description: Rockchip RK3568 Evaluation board

please sort this below the rk3399 stuff in the file
( 3568 is a bigger number than 3399 )

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
