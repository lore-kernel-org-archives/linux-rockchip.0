Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3D05C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Apr 2022 17:16:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OlEVybhBFNnNvHRjr6IH1S1zTQw+sS7ylF4On8c0BBo=; b=mHlFoHqilG8sGf
	921M9d9tq75ub9UXyiZEbIzX/CmM1aRH7HnE296ixpIsQwcKE1s2E2FWiUPYIoYM9k1Q6H03N0sWf
	OmNInBWD1BL26GSaHXp8yGwx8T/MDIcm5PYPmiR6hjgxdc/LMm75kLhE2R+FkiG0179a286q776Q9
	hCGhoV4vQHmfD3gLKQKXLZOCAwmg8FmjrZEzhRsWcqKgblr0SfxmZ/uhWbQLDLalfwFHtKvZbTQZx
	5u/VVIXsyxIUH4QMNQgPUYtWHu7gS1dslBl9DrkDwR5DdfGUJB40yG9EcUyNH2hOvHuFh1CezgTLn
	lSnyZ/pbfx2Weokhvm2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nbQJk-00Fyc3-IA; Mon, 04 Apr 2022 17:16:40 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbQJQ-00FyTt-BO; Mon, 04 Apr 2022 17:16:21 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nbQJC-0002Kh-2L; Mon, 04 Apr 2022 19:16:06 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 patchwork-bot+chrome-platform@kernel.org
Cc: lee.jones@linaro.org, robh+dt@kernel.org, bleung@chromium.org,
 groeck@chromium.org, thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de,
 matthias.bgg@gmail.com, agross@kernel.org, bjorn.andersson@linaro.org,
 dianders@chromium.org, devicetree@vger.kernel.org,
 chrome-platform@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-pwm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 0/4] mfd/pwm: dt-bindings: google,
 cros-ec: include generic pwm schema
Date: Mon, 04 Apr 2022 19:16:03 +0200
Message-ID: <2259298.ElGaqSPkdT@diego>
In-Reply-To: <164909246180.14329.3397709419938843373.git-patchwork-notify@kernel.org>
References: <20220214081916.162014-1-krzysztof.kozlowski@canonical.com>
 <164909246180.14329.3397709419938843373.git-patchwork-notify@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220404_101620_470453_9EC633D9 
X-CRM114-Status: GOOD (  16.18  )
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

Am Montag, 4. April 2022, 19:14:21 CEST schrieb patchwork-bot+chrome-platform@kernel.org:
> Hello:
> 
> This series was applied to chrome-platform/linux.git (for-next)
> by Heiko Stuebner <heiko@sntech.de>:

does someone know what goes on here?

I did apply only patch4 back in feburary and I definitly don't have any
access to a chrome-platform tree ;-)


Heiko

> On Mon, 14 Feb 2022 09:19:12 +0100 you wrote:
> > Hi,
> > 
> > DTS patches are independent. Not tested, but I really hope no downstream kernel
> > depends on pwm node naming... If it does, please change it to compatible. :)
> > 
> > Best regards,
> > Krzysztof
> > 
> > [...]
> 
> Here is the summary with links:
>   - [1/4] dt-bindings: pwm: google,cros-ec: include generic pwm schema
>     https://git.kernel.org/chrome-platform/c/6b94ee669e8a
>   - [2/4] arm64: dts: mt8183: align Google CROS EC PWM node name with dtschema
>     (no matching commit)
>   - [3/4] arm64: dts: qcom: align Google CROS EC PWM node name with dtschema
>     https://git.kernel.org/chrome-platform/c/1e49defb8636
>   - [4/4] arm64: dts: rk3399: align Google CROS EC PWM node name with dtschema
>     https://git.kernel.org/chrome-platform/c/a0024f55eb5b
> 
> You are awesome, thank you!
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
