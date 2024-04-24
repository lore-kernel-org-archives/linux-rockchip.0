Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 239D2C4345F
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Apr 2024 16:55:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=c6aoy2CCXX2jn7KYN5x0r4xcqA3YvEXT3++nbtkHJfo=; b=EzBs2PMjkuZV9n2HvpYzilVgEE
	yusn/Wb5bAw84z9J1vKxDMp7Zm8pSDf77oGKuGGzpS9Z27AblPOvqY7no47Y/xLMlcfn/83SK5rfi
	Dc9v2LV3Tne6B+HT7Mm+uTNoJqszUo+xogk0rnqRsGGzXYGJNJDQVTjvYZc3vIFxtEci1E7qt6J0H
	sC+iNL09DzPquoGml7Mmft451phf8dTPzLrG9ieI19mpHULRrq2iJVZS5LVTwyRIohLGfBJmxAjo8
	jwFepACmorJV2s39eRM31hiBnnHLDwnefKncHSdNu2LyP7LsXAYeN3YCE8pX0pRGpJczkjERN4FO1
	aWaBVGvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzfu4-000000052JJ-3hiy;
	Wed, 24 Apr 2024 16:55:28 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzfu0-000000052HK-3MbC;
	Wed, 24 Apr 2024 16:55:26 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1713977720;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ogBBso8nor4u8LQLxTzG+t+K0wGeTpPjTgVKmH2TARY=;
	b=lkJPaNyXhIHCKrzHRCjWdvqgSYsbyp5MAAwj1U/Us9VRUItvTeuvKYQ7HivCjbojxeN2uL
	yKjl5r5vZoPby5YaRgzkjsWxGyVCtIBB+iSWSGLxnygYE+NGqmWQgAAunlEQ0YQXdXNMyc
	hwmNDtfc6oap71Dd9SN48h6deRstTu6rMYwmmmGqv03+3zMZ+HZdUpUskb2b3rQKZPIftW
	HJPCYrnPPkfJmGZRZGlLaxcRFsz0fgI1JCmkF+zNHBSI7HUzq8WSMkW3H/zWIv7RMY9eRo
	ATEVf2X/IpYsIBJaB5Faeeg3KRZ/rZsZebn83psZmiXLb2mu9uzQc5qX4KNSVw==
Date: Wed, 24 Apr 2024 18:55:20 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>, Heiko
 Stuebner <heiko.stuebner@cherry.de>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] arm64: dts: rockchip: add PCIe3 support on
 rk3588-jaguar
In-Reply-To: <9baa0835-9cac-4bb8-b172-9e1351ffa6c9@theobroma-systems.com>
References: <20240422133502.2592975-1-heiko@sntech.de>
 <f33c0c0b-979b-4f50-89f7-976832968494@kwiboo.se>
 <9baa0835-9cac-4bb8-b172-9e1351ffa6c9@theobroma-systems.com>
Message-ID: <148523703cd2dc2e03c102894ebb9870@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240424_095525_377674_E2532EAD 
X-CRM114-Status: UNSURE (   6.10  )
X-CRM114-Notice: Please train this message.
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

Hello Quentin,

On 2024-04-23 11:10, Quentin Schulz wrote:
> Wondering if we couldn't have some kind of constant to make it more
> readable in DTSes? E.g.
> 
> #define 1K	1000
> #define 1Ki	1024
> #define 1M	1000000
> #define 1Mi	1048576
> 
> And in the DT we could simply have <(100 * 1M)> wherever appropriate?

Hmm...  Perhaps "<(100M)>" would be even better?  It would require
more thorough changes, though.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
