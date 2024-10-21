Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C27ABD15DB3
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Oct 2024 15:50:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lxR+WQy9sJRQTFspM2EhdiFXLJwOeEpxaKEFt3ZLE6o=; b=EKhwNSaeJ8Mq32
	s3wsmj0Bh2LZE6SzNKbXQDiIWJj/Gb0iGv0+bKewig/u9w7T5qaXeRT2seIKKCPA+BoYkuKl/9kzg
	qNT+HLI/+zdj+iE2YRTUkkmQs/nrwpB0D31+cDUDnpKiElXZf4AqzHFXhh6GiV6p+AfE5GwjyMghX
	70kOm2a5nLboQf98X/UhJlsG2eusiiK0KKLCl78psTPf6xnpFTBt9mcEeZlqorvK9ZoGYTgNlY82J
	Ah73MyptWK2iUnP8ydfNvj1/ooUoEhuje9bIVgH/KYNtYywy1Ds9OGaQhI5CjPTFvSAWVzolDrZUm
	gx8cq9kr4HV+W41jU/FA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2ugG-00000007rdw-1iWs;
	Mon, 21 Oct 2024 15:50:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2uaS-00000007qFX-1988;
	Mon, 21 Oct 2024 15:44:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=0oWtOYnA73loOhyV40IAoAues5z9mLwqAuV3XkIA9qA=; b=AqyZg8lCW5dKB1h3bICL9RhXsE
	RGHyfYY7ecSs9HlkuE/jLmn5t3loN4rOTiipaJwxecaDW+Nzw+TInaAATl8XO+xRFSBujGGNCwuFH
	kVS0a+nnizjYvEkZvmlHb15j9SPQWVfsr70lLCDV/rQOdcLFxEFEifsrgP+XZi3UyGrG+azy2vb1R
	8Cz7EMmsSEqfaQx0JIHb7WUrslUmGI9Ztl2cE4WAU7T+Vp0jgzNJmnkZElry+9we9cABBcnaSUA+N
	oB6LF4NsZY7HnvZHNHWb0G/vLshsNZctPTudhJaTKywUO/S79j43e7ABDdMwPA4htJrUhY5wtY0dt
	HktEJhRw==;
Received: from i53875b34.versanet.de ([83.135.91.52] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t2uaH-0005jR-Rj; Mon, 21 Oct 2024 17:44:41 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Diederik de Haas <didi.debian@cknow.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Dragan Simic <dsimic@manjaro.org>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Correct GPIO polarity on brcm BT nodes
Date: Mon, 21 Oct 2024 17:44:34 +0200
Message-ID: <172952545662.1342338.14959789702494070152.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241018145053.11928-2-didi.debian@cknow.org>
References: <20241018145053.11928-2-didi.debian@cknow.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_084452_330422_E10DC365 
X-CRM114-Status: GOOD (  11.00  )
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

On Fri, 18 Oct 2024 16:45:50 +0200, Diederik de Haas wrote:
> Paragraph "3.4 Power up Timing Sequence" of the AzureWave-CM256SM
> datasheet mentions the following about the BT_REG_ON pin, which is
> connected to GPIO0_C4_d:
> 
>   When this pin is low and WL_REG_ON is high,
>   the BT section is in reset.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Correct GPIO polarity on brcm BT nodes
      commit: 273070dad96f046e622173b595e4719b82188376

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
