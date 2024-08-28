Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C58BFC54FAA
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CA/iALm+rmIfb0Inxbw35j9/wNU+hMI8IQQteaRzzKw=; b=vduzN+z1hJEqUJ
	p0PS04AG/A0kJ2ex9NZX9R3Pv/iLvabRXR48Ux5dIszPU5qCYbGxlf9Y5KggF8YyF8n9fWhPKfHuS
	bnrfJ3Aexr3AS+8/7elIiHGCD8ujL51IkJLj4lTiJD5utVNFgI9gQMl+1hfnqoKt/v+h2et0d0szD
	oYcaWZSs49qa/5zezSAZFBdIZndAPtAeSTZngZLe5VQRi4vhjS1uNy1xt51FCj6dC3WFvG/PNByoM
	XwvjH9C7pA9RAvW1HJjiwcc73zRXgWT/4j9lPDYeNNV4NT+5/g1rJVfL8Jh0qPHxJV5OW29ZT8yAN
	iLKDh34jxdVNFQrhFrtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjIFY-0000000FQWb-2aW4;
	Wed, 28 Aug 2024 12:58:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjIDv-0000000FPws-04v1;
	Wed, 28 Aug 2024 12:56:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=KRJdnybl7IHbrPfCbf0p/UNsAWFxCeqGC4Mko0BsWAE=; b=T5uwzijtI+WSiADmTXJavU0O8i
	OzLaxBL7vq06GDedNqm5TW6DL3QV0w9dHRbyUHe5MYOdfuWQWDUHdkdlk3NKwhQNY+Hxeal3A/amM
	+8/ubwZj8JgjCSO3o4up0YSMSXvradCm3Qy9g8A3JOXJkSUbXO/mx6tBxm7Xo2gZ6WM+Eu/e3ZFQ8
	dXPAR4Dkdru5Qqmm4E5jotLwNFq04AsvWlA01onOqY24MVNM4BH12fjfeR1JllM9BWUkic67yTSlq
	QoP4Pr3cX7uGTXOIn56uugOC7uwFeOg5trGgpZRvRJg4YfWFMhz2iOkzlXLlA1ZGyABZoQLWSnNDU
	izuq1Ysw==;
Received: from i5e8616cd.versanet.de ([94.134.22.205] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sjIDr-0005MB-SI; Wed, 28 Aug 2024 14:56:27 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Jonathan Liu <net147@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	FUKAUMI Naoki <naoki@radxa.com>,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Enable RK809 audio codec for Radxa ROCK 4C+
Date: Wed, 28 Aug 2024 14:56:23 +0200
Message-ID: <172484978177.1499193.15230984745564646842.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240828074755.1320692-1-net147@gmail.com>
References: <20240828074755.1320692-1-net147@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_055631_135391_106D294D 
X-CRM114-Status: UNSURE (   8.99  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, 28 Aug 2024 17:47:53 +1000, Jonathan Liu wrote:
> This adds the necessary device tree changes to enable analog audio
> output for the 3.5 mm TRS headphone jack on the Radxa ROCK 4C+ with
> its RK809 audio codec.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Enable RK809 audio codec for Radxa ROCK 4C+
      commit: 174c306321355d8a189b8f01fcc3f897ba13f227

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
