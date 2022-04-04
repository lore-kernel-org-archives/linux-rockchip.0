Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69914C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Apr 2022 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:
	Message-Id:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ie1tzSRvaQX1qeoUunYITUu6nehls8UtbeQIhnyhLnM=; b=lZTtFzd/dqZ8ZS
	smAO33jKoyJizvBYOq3Vw+NKGRj3DNWm0oHnQDCF7x1fdZwCU+5Hhy80gn+uKHfBnFXJcyLJj99AD
	PgQ1FbeBslUug+QoLrbfk9R4e2m4BiiMJP+83nzMTle1mlfMw9yzYlJ5hn5QUr62EJrmb2HlZu+CX
	msF0LjqJ+Jf83VUmFNM6ajExdfXlDZfeL7/FnkIEf/H7c/JWRT7wj8lmHiqQSPSD9/kJ1HnImlcsF
	JZTCfE2U6t3gJEIU25MXlTBa4uXng9RIR/m8lBAeGTmDY2JrlR/p9DRNG9+Hle2p/SIDm9AUzbRlF
	ZEXa56/v3IPoJqDlBhcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nbQHx-00FxvO-NT; Mon, 04 Apr 2022 17:14:49 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbQHX-00Fxn4-1d; Mon, 04 Apr 2022 17:14:25 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 8B76A60DC6;
 Mon,  4 Apr 2022 17:14:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3919C3410F;
 Mon,  4 Apr 2022 17:14:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649092462;
 bh=RvGj2Q18LJfQT9XlPp3IkvaWjSaTqyvITK0kRJD8u9Q=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=UXPYPaMHgSRwaVFvCkHj2vb20E9SLLRr7qYSmd1t2Pp64ld5EJLNs6jp6f6syeEJ3
 O2tjaIF+Jles/YBIhjLBLdjEHvDwg4bv9Q/1++Ro5JHPWrdlOA3yx6U+Mta/6YtM5t
 oA8Fs2sopE/LDLB0XfZUsrXovAv9VDP334L6x0PtooO3iE42BCnKpFrlvwj5g5ZLSa
 OVQXxQTJwDHuME0PD3rRb8Kt27OOvFoVEjchpbQQOuUJU8obz4vaJ8dFFKckzVjDuL
 bBLZZ2Rq89wtyoMtfekJ6zngldJQVsYtOmg1jjOuhlzaaPMny1ZgKR0kmYxUFYbhTT
 ZjYkpjbHMRh7g==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 C68F5E85AE7; Mon,  4 Apr 2022 17:14:21 +0000 (UTC)
MIME-Version: 1.0
Subject: Re: [PATCH 0/4] mfd/pwm: dt-bindings: google,
 cros-ec: include generic pwm schema
From: patchwork-bot+chrome-platform@kernel.org
Message-Id: <164909246180.14329.3397709419938843373.git-patchwork-notify@kernel.org>
Date: Mon, 04 Apr 2022 17:14:21 +0000
References: <20220214081916.162014-1-krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220214081916.162014-1-krzysztof.kozlowski@canonical.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc: lee.jones@linaro.org, robh+dt@kernel.org, bleung@chromium.org,
 groeck@chromium.org, thierry.reding@gmail.com,
 u.kleine-koenig@pengutronix.de, matthias.bgg@gmail.com, agross@kernel.org,
 bjorn.andersson@linaro.org, heiko@sntech.de, dianders@chromium.org,
 devicetree@vger.kernel.org, chrome-platform@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220404_101423_174540_34DE4DFD 
X-CRM114-Status: GOOD (  11.46  )
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

Hello:

This series was applied to chrome-platform/linux.git (for-next)
by Heiko Stuebner <heiko@sntech.de>:

On Mon, 14 Feb 2022 09:19:12 +0100 you wrote:
> Hi,
> 
> DTS patches are independent. Not tested, but I really hope no downstream kernel
> depends on pwm node naming... If it does, please change it to compatible. :)
> 
> Best regards,
> Krzysztof
> 
> [...]

Here is the summary with links:
  - [1/4] dt-bindings: pwm: google,cros-ec: include generic pwm schema
    https://git.kernel.org/chrome-platform/c/6b94ee669e8a
  - [2/4] arm64: dts: mt8183: align Google CROS EC PWM node name with dtschema
    (no matching commit)
  - [3/4] arm64: dts: qcom: align Google CROS EC PWM node name with dtschema
    https://git.kernel.org/chrome-platform/c/1e49defb8636
  - [4/4] arm64: dts: rk3399: align Google CROS EC PWM node name with dtschema
    https://git.kernel.org/chrome-platform/c/a0024f55eb5b

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
