Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4B3EC47074
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jan 2024 09:07:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ywVN/YPDQLohFulSBoboSMMYLx9sosnbJHJKPY/BLtE=; b=kWTADY97iA/upe
	TemBiJnDN0UdfXcZCcv/joq3pq0pWJay9W7doBWo45NL6lc68J4uc2ASBOkXvFoklLV91FHLN7C8P
	aA20HeoaQEk2uAOS4IEbcsQYydEO8Pj51GSljvY7eaQSLafi7Y+Xk9atJUwML2I6ktYcqQuEWNc0/
	TMhrLznqqXgvh/exp/O0JUrSJ4fC+7zLlCGS4K0jvgm5For/H12BQ+JWXQitGbYcGhFBN/YtxvU9I
	yw5MLQRDgXPaD5+Tv450QWq8m2ilNgFlKOiniluU3hbwL7WrFWCCSJ7lIhj3CV00u8F3j8m/i6GBg
	953GaN9aIJ895svdC07Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLJh9-00DJ8P-1p;
	Thu, 04 Jan 2024 09:07:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLJh5-00DJ6o-1o;
	Thu, 04 Jan 2024 09:07:17 +0000
Received: from i53875a56.versanet.de ([83.135.90.86] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rLJh3-00027h-O1; Thu, 04 Jan 2024 10:07:13 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 Kyle Copperfield <kmcopper@danwin1210.me>
Subject: Re: [PATCH] arm64: dts: rockchip: Add cache information to the SoC dtsi for
 RK3399
Date: Thu, 04 Jan 2024 10:07:12 +0100
Message-ID: <2157455.yIU609i1g2@diego>
In-Reply-To: <fc03e6046bba49b6a4b0794412e0bac6@manjaro.org>
References: <be3cbcae5c40fa72a52845d30dcc66c847a98cfa.1702616304.git.dsimic@manjaro.org>
 <0476656a-6d3d-4662-879a-1caf0efb4d9e@linaro.org>
 <fc03e6046bba49b6a4b0794412e0bac6@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_010715_593185_5CD2EDCA 
X-CRM114-Status: GOOD (  17.81  )
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

Am Donnerstag, 4. Januar 2024, 09:55:35 CET schrieb Dragan Simic:
> On 2024-01-04 09:51, Krzysztof Kozlowski wrote:
> > On 04/01/2024 09:50, Dragan Simic wrote:
> >> Hello,
> >> 
> >> Just checking, is there something preventing this patch from becoming
> >> accepted?  I'd appreciate if you'd provide some feedback and let me 
> >> know
> >> if there's something in the patch that needs adjusting.
> > 
> > Merge window? Is it a fix? If not, the cutoff is around rc5-rc7,
> > depending on your SoC maintainer preferences.
> 
> Ah, I see, thanks for the clarification.  It isn't a bugfix, so I'll 
> send the patch again during the next merge window.

no need to resend.

The main thing holding the patch back was xmas ;-) .

But as Krzysztof wrote, the merge-window is upon us, so I'll pick this up
for 6.9 .

Thanks
Heiko




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
