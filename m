Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8343AC5321E
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 14:53:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5pt8VgNluvVDWMJ6oteCdVa0LZrJgzaRsD61EDUiXzA=; b=oal2kid/ALPGKQDQ1io8Iexu7f
	AjPsKqUd8cBKmCbBV3bEa3alvLL+IHROQtNu04nc/Ty1O7rFKBWC4ntxS5h5ffqS1DK4aAPWxnVaU
	7tbwTUg8b6V4JcwBZquiJg1fV7lpd+9nT0nIgoBzY6mXh0jiats+chuwY5cXAARZ3zNaPB0r5Y/gD
	sZKDFmNIcld5hShetyVwI84ASi8AC0Jp49mVLL9c5bSwRVagANJ4jYXW1OKg2FRzMme/UYdn0BOHe
	t7/8hBtYMeqYjGhehMm1icH5eDSHSTcXh55XxBKxZMKi5YyPMvIhjFJQsNqLyQRaSwgzueCJ/5mDC
	+Aj/Z40g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sib6M-00000007jGO-3GT7;
	Mon, 26 Aug 2024 14:53:50 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sib53-00000007j4m-1gDX;
	Mon, 26 Aug 2024 14:52:30 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1724683947;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=zsLtJ21GMVO6oT89oMRfFsmwIaUm0tSl7H1ZIrPPfoM=;
	b=KRxz8lztdXHXbtlweF6zWPEUz3/LYc5LCCYGpTLWet9hzCUGjVOSHLYu4qybICQEuaY9sB
	LUbubrSZmp8tX6JmvyVNLgq7T6VgCznLzlGLjgSRRVrwTLtP7LepB5icYthDXO/OgMo8NY
	ym9WDi8UAiNyYV39jrkE1vP+gLhH6KL9I9+LVFO01XT1zV8IUC3dG3Kyk4I+fLHAKRTVH/
	AaqXcbVlmRZ+fAvSumcRJPJRuhZPSYuNqg+KPqbeU6XXgAMQo4gEQntJkF29tj/eKdYiKm
	4J3U02Hx8av6IURlPGOEylBjk3yjWNpJEJSqiD9YVZGNC9efCtWJP9HSCsFtFA==
Date: Mon, 26 Aug 2024 16:52:26 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Jaehoon
 Chung <jh80.chung@samsung.com>, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com, Shawn Lin
 <shawn.lin@rock-chips.com>
Subject: Re: [PATCH v4 3/4] mmc: dw_mmc-rockchip: Skip all phases bigger than
 270 degrees
In-Reply-To: <1894989.tdWV9SEqCh@trenzalore>
References: <20240822212418.982927-1-detlev.casanova@collabora.com>
 <20240822212418.982927-4-detlev.casanova@collabora.com>
 <711f2561ac3d84bcd5bbe26723869b47@manjaro.org>
 <1894989.tdWV9SEqCh@trenzalore>
Message-ID: <38952ff6affa5929612aaabbae3ca996@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_075229_766668_C2FF75CF 
X-CRM114-Status: GOOD (  24.15  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Detlev,

On 2024-08-23 15:59, Detlev Casanova wrote:
> On Friday, 23 August 2024 01:45:07 EDT Dragan Simic wrote:
>> Hello Detlev,
>> 
>> On 2024-08-22 23:15, Detlev Casanova wrote:
>> > From: Shawn Lin <shawn.lin@rock-chips.com>
>> >
>> > Per design recommendation, it'd better not try to use any phase
>> > which is bigger than 270. Let's officially follow this.
>> 
>> Would it be possible to provide a reference to the actual design
>> specification?  This change affects all users of the dw_mmc-rockchip
>> driver, so in case any regressions are found later, having as much
>> detail as possible can only be beneficial.
> 
> I don't have the reference and only trusting rockchip on this. This 
> could be
> specific to rockchip hardware.
> Anyway, the drivers works well on my side on my rk3576 armsom sige5 
> without
> this patch, so I'm willing to drop it completely.

I think it would be better if you'd drop it in this series, and submit
it later separately, as a follow-up patch, to reduce the chances for any
possible regressions.  Maybe we'll also have more background information
available by then, who knows.

>> > Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
>> > (cherry picked from commit 2a53aab5cfa43065b2e979959d727332a8a03c03)
>> > Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
>> > ---
>> >
>> >  drivers/mmc/host/dw_mmc-rockchip.c | 3 +++
>> >  1 file changed, 3 insertions(+)
>> >
>> > diff --git a/drivers/mmc/host/dw_mmc-rockchip.c
>> > b/drivers/mmc/host/dw_mmc-rockchip.c
>> > index 2748f9bf2691..1458cb5fd5c7 100644
>> > --- a/drivers/mmc/host/dw_mmc-rockchip.c
>> > +++ b/drivers/mmc/host/dw_mmc-rockchip.c
>> > @@ -310,6 +310,9 @@ static int dw_mci_rk3288_execute_tuning(struct
>> > dw_mci_slot *slot, u32 opcode)
>> >
>> >  	/* Try each phase and extract good ranges */
>> >  	for (i = 0; i < priv->num_phases; ) {
>> >
>> > +		/* Cannot guarantee any phases larger than 270 would
> work well */
>> > +		if (TUNING_ITERATION_TO_PHASE(i, priv->num_phases) >
> 270)
>> > +			break;
>> >
>> >  		rockchip_mmc_set_phase(host, true,
>> >
>> >  				       TUNING_ITERATION_TO_PHASE(
>> >
>> >  						i,

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
