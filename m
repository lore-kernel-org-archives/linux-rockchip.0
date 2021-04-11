Return-Path: <SRS0=scLn=JI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 894F2C433B4
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Apr 2021 17:55:31 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8CC736109F
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Apr 2021 17:55:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8CC736109F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UrjnwZQvweW4UXerc0+ok0TK3v4ouPvYg2EVqRXVpWg=; b=QCFKLukyDOtujovFByV8qm+Dm
	CI2513VfnY6w8/DB0f5/l1kVOuxyQPZURSmGWttvREiwz7g6UGFNk8olB2if5Iel0M+0CZ1TLsDf1
	ddT6PTVKcRQfKFxR8E5U7D6icyumfemMxOi4rdA/d20k1diYVCUua8s7GDDkES7Mq3K67+TSIDawv
	Dv5TRAevU8+5B899gxUgGCgH8zAQSIL8mCfJgnR/hnrXk1QykbN0V7KVbBDB3EC7EQFgHSKAV3V5u
	cYmL3uYnz4+zxjQlv4NX1hzFlRJybn1nTLgnax7R3ZeGREaYHXN8okylzGFTRFzgnOqkfn3QMNWHB
	4HJ4z0eLg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVeIt-004rfx-DY; Sun, 11 Apr 2021 17:55:23 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVeIn-004rek-Gy
 for linux-rockchip@desiato.infradead.org; Sun, 11 Apr 2021 17:55:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:
 Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
 :Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=/VB5JzCDX57jYEKhFLn33EEibkg7SEZV2jOWFZa1wvg=; b=mAz6dJPMmPdt0VD94r5hHY9q+l
 0DXi5hthMZaiSvMSwTWrC2CeaUqbViI+JhNZI/u3A5aI4E1+GSH9zqhRHQgBE4dGohfe9Z6SdSGlv
 Lry+sf7htm0inhnvmGj/buv/YROV0CbCQ1AxG1iP24InkDQeSeDB55+UMq0Uq0Qvt1gulT7iznZ6V
 PagnyIuF+pGDaG6oxdvIs9fnZ6ozQJB1XgZ52Akl81cJtgsaT2g4GSkbUhh1r47TMhw8OZnH6WAky
 hYxHuuqhL0bieeiuSp8qjF9amA2Eg0GhvVCiN9hgK+gSh8PODivJ3VBa7Ne8kJt76OUXjlT2rG9yT
 qpFBIkjQ==;
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVeIl-005d4M-4u
 for linux-rockchip@lists.infradead.org; Sun, 11 Apr 2021 17:55:16 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lVeIe-0005oy-5c; Sun, 11 Apr 2021 19:55:08 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Peter Geis <pgwipeout@gmail.com>, Jianqun Xu <jay.xu@rock-chips.com>,
 huangtao@rock-chips.com, kever.yang@rock-chips.com, linus.walleij@linaro.org,
 Johan Jonker <jbx6244@gmail.com>
Cc: linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/7] gpio: separate gpio driver from pinctrl-rockchip
 driver
Date: Sun, 11 Apr 2021 19:55:07 +0200
Message-ID: <3591437.LM0AJKV5NW@diego>
In-Reply-To: <5308a59c-29e9-75a4-2c9a-4aeb3d37bf6e@gmail.com>
References: <20210411133030.1663936-1-pgwipeout@gmail.com>
 <20210411133030.1663936-4-pgwipeout@gmail.com>
 <5308a59c-29e9-75a4-2c9a-4aeb3d37bf6e@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210411_105515_220521_546CFBC7 
X-CRM114-Status: GOOD (  17.57  )
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

Hi Johan,

Am Sonntag, 11. April 2021, 19:51:52 CEST schrieb Johan Jonker:
> Hi,
> 
> When I check "rockchip,gpio-bank" with YAML it turns out that
> rk3288-veyron-XXX has 'gpio-line-names' as 'extra' property.
> It is not defined in the "rockchip,pinctrl.txt" document, but in
> ~/.local/lib/python3.5/site-packages/dtschema/schemas/gpio/gpio.yaml
> 
> Where is that in use?
> In this driver or external?
> Can it be removed from mainline dts?

gpio-line-names gets defined in devicetree/bindings/gpio/gpio.txt
which isn't converted to yaml yet:

Optionally, a GPIO controller may have a "gpio-line-names" property. This is
an array of strings defining the names of the GPIO lines going out of the
GPIO controller.


So that property is perfectly fine where it is.

Heiko


> 
> Johan
> 
> /arch/arm/boot/dts/rk3288-veyron-fievel.dt.yaml: gpio7@ff7e0000:
> 'gpio-line-names' does not match any of the regexes: 'pinctrl-[0-9]+'
> 	From schema:
> /Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
> 
> On 4/11/21 3:30 PM, Peter Geis wrote:
> > From: Jianqun Xu <jay.xu@rock-chips.com>
> > 
> > Separate the gpio driver from the pinctrl driver.
> > 
> > Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> > ---
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
