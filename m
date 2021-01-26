Return-Path: <SRS0=k6cp=G5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94294C433DB
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Jan 2021 08:38:18 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9C7D7223E4
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Jan 2021 08:38:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9C7D7223E4
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3tngxpWlRSzTJvqMSfor5ZtBnM7mNzUaQIyheywPz7U=; b=BV3UL3nvTknkuRMf/2BmedJBL
	BwCzxyjOB3DnAfV76aLqAQyYZyWeH/fvfefUCL/1aLdH3V5/evcQx6Cj2YQvyksyicGFXYFx4jpMS
	HuPLjreoEPy2tqABaGkPJBti/JTWrcYgLJRCnUc18fK0a0CGzZmMITLIiENwo5csTleGrW+5P2E2x
	jDGq+6zuO999bIkZWdPNM5WOAXsxdvgQk2HvRe0MRYhougnOTgA4/GOVCq6tZkcGKFOihDqPFp+5a
	FwSXeHNcrIkv/SpKKNGJNe2caMNG4msP9KpSpFQmWBRbTwl0yrqhbghTuVUAhr/TBK+YpXn/sWUgT
	O9s0/E4Yw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l4JrX-0004p0-QX; Tue, 26 Jan 2021 08:38:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l4JrT-0004mY-9J; Tue, 26 Jan 2021 08:38:08 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1l4JrB-0000Yx-Vl; Tue, 26 Jan 2021 09:37:50 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>, Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH 1/8] dt-binding: watchdog: add more Rockchip compatibles
 to snps, dw-wdt.yaml
Date: Tue, 26 Jan 2021 09:37:49 +0100
Message-ID: <2221632.MzOyzyC30C@diego>
In-Reply-To: <d6814912-ebbe-642d-161f-a005f40634d6@roeck-us.net>
References: <20201218120534.13788-1-jbx6244@gmail.com>
 <11680602.O9o76ZdvQC@phil>
 <d6814912-ebbe-642d-161f-a005f40634d6@roeck-us.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210126_033807_461568_0A18B949 
X-CRM114-Status: GOOD (  21.06  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, linux-watchdog@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, jamie@jamieiles.com, wim@linux-watchdog.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Guenter,

Am Dienstag, 26. Januar 2021, 05:55:59 CET schrieb Guenter Roeck:
> On 1/25/21 3:40 PM, Heiko Stuebner wrote:
> > Am Samstag, 23. Januar 2021, 18:34:01 CET schrieb Guenter Roeck:
> >> On Fri, Dec 18, 2020 at 01:05:27PM +0100, Johan Jonker wrote:
> >>> The watchdog compatible strings are suppose to be SoC orientated.
> >>> In the more recently added Rockchip SoC dtsi files only
> >>> the fallback string "snps,dw-wdt" is used, so add the following
> >>> compatible strings:
> >>>
> >>> "rockchip,px30-wdt", "snps,dw-wdt"
> >>> "rockchip,rk3228-wdt", "snps,dw-wdt"
> >>> "rockchip,rk3308-wdt", "snps,dw-wdt"
> >>> "rockchip,rk3328-wdt", "snps,dw-wdt"
> >>> "rockchip,rk3399-wdt", "snps,dw-wdt"
> >>> "rockchip,rv1108-wdt", "snps,dw-wdt"
> >>>
> >>> make ARCH=arm dtbs_check
> >>> DT_SCHEMA_FILES=Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> >>>
> >>> make ARCH=arm64 dtbs_check
> >>> DT_SCHEMA_FILES=Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> >>>
> >>> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> >>> Acked-by: Rob Herring <robh@kernel.org>
> >>> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> >>
> >> Reviewed-by: Guenter Roeck <linux@roeck-us.net>
> > 
> > just to clarify, do you expect me to pick up the dt-binding patch
> > with the devicetree patches or do you want to take this individual
> > patch through the watchdog tree instead?
> > 
> 
> You'd have to ask Wim since he takes care of actually sending pull requests.
> But didn't you say earlier that you wanted to apply the rest of the series
> after this one is applied through the watchdog tree ?

Yep that was my intent, though somehow I mistook you as also being
a watchdog maintainer, hence the confusion.

So I'll wait for Wim to apply this patch and then I'll take the rest of
the series.

Thanks
Heiko


> >>> ---
> >>>  Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml | 6 ++++++
> >>>  1 file changed, 6 insertions(+)
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> >>> index f7ee9229c..b58596b18 100644
> >>> --- a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> >>> +++ b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> >>> @@ -18,10 +18,16 @@ properties:
> >>>        - const: snps,dw-wdt
> >>>        - items:
> >>>            - enum:
> >>> +              - rockchip,px30-wdt
> >>>                - rockchip,rk3066-wdt
> >>>                - rockchip,rk3188-wdt
> >>> +              - rockchip,rk3228-wdt
> >>>                - rockchip,rk3288-wdt
> >>> +              - rockchip,rk3308-wdt
> >>> +              - rockchip,rk3328-wdt
> >>>                - rockchip,rk3368-wdt
> >>> +              - rockchip,rk3399-wdt
> >>> +              - rockchip,rv1108-wdt
> >>>            - const: snps,dw-wdt
> >>>  
> >>>    reg:
> >>
> > 
> > 
> > 
> > 
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
