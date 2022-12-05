Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5AAEC4321E
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Dec 2022 13:14:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hFkHdrowtvMTzzr6Cq1jHJi11UTS1fVA2qXReJiuhAw=; b=3c4CvYSIBJX4bW
	pht9sljmF9icr1u1Y4e3FWNpGyRj71Vh/Zbio35Wps27zsoA1gcVKyKvh81a12Ta6JQIp/1cY7rtv
	4fzjXxsaod3dXLe2FNX6hcKrDvbF2qy1D7QV20vwLwGOZwPaNuvWKkv5rUUbrkc9Vubdof13DWAFL
	4Ros8T+idpVS3/RFx2G8W4oAUMVd8Vd6OPSW3tE+wBk/3Qcumc/Uk1qE6eePzk/w03Ha776mB0zoW
	Isu8mJ47pXS/hneU6iEcgGsM5AKjAGW8q//z+xHL6Wk9WPWy+4YvG1TF3jJQQz+gZhYcLVIQyDaca
	w61Fq2i/xSWcrn5MWHxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2BIM-003HS3-Qn; Mon, 05 Dec 2022 13:14:06 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2BI9-003HPf-06; Mon, 05 Dec 2022 13:13:57 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 99EF361087;
	Mon,  5 Dec 2022 13:13:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71CDAC433D6;
	Mon,  5 Dec 2022 13:13:50 +0000 (UTC)
Authentication-Results: smtp.kernel.org;
	dkim=pass (1024-bit key) header.d=zx2c4.com header.i=@zx2c4.com header.b="VVz/fQ59"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zx2c4.com; s=20210105;
	t=1670246028;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=B++/OBP5b9tao3rBjJnSn5JP+R13g8uCUXYA4vb8b6I=;
	b=VVz/fQ59+g0ixnAiSLQHtrMWFc7PZbckvhkfuwtWBgpOxGpGhujiGPk2nqgQi5gt/9fYSD
	UhmQy996dpKokjAuMZHYu+29c4sb76Y0UaBo0MgS47OLI0FmvX+prDVEujvVgumTdLYMdJ
	3POrHd2H7ASzOS9M0u6opQ+LoDAaax4=
Received: 	by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 113cf849 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Mon, 5 Dec 2022 13:13:48 +0000 (UTC)
Date: Mon, 5 Dec 2022 14:13:45 +0100
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: Aurelien Jarno <aurelien@aurel32.net>
Cc: Olivia Mackall <olivia@selenic.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Lin Jinhan <troy.lin@rock-chips.com>,
	"open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>,
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 2/3] hwrng: add Rockchip SoC hwrng driver
Message-ID: <Y43uiVo41vljLsZM@zx2c4.com>
References: <20221128184718.1963353-1-aurelien@aurel32.net>
 <20221128184718.1963353-3-aurelien@aurel32.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221128184718.1963353-3-aurelien@aurel32.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_051353_316954_BB9A6D8C 
X-CRM114-Status: GOOD (  14.13  )
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

On Mon, Nov 28, 2022 at 07:47:17PM +0100, Aurelien Jarno wrote:
> The TRNG device does not seem to have a signal conditionner and the FIPS
> 140-2 test returns a lot of failures. They can be reduced by increasing
> RK_RNG_SAMPLE_CNT, in a tradeoff between quality and speed. This value
> has been adjusted to get ~90% of successes and the quality value has
> been set accordingly.

Can't you reduce it even more to get 100%? All we need is 32 bytes every
once in a while.

> +	rk_rng->rng.quality = 900;

If your intention is "90%", this should be 921 or 922, because the
quality knob is out of 1024, not 1000.

Herbert - this seems like a fairly common pitfall I've seen all over the
place. It might be worth making a mental memo to reject or ask questions
about numbers that seem "too round", when you look at these sorts of
patches.

Jason

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
