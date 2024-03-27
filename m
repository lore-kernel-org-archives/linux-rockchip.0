Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70DC5C54E67
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Mar 2024 13:33:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wmUGXjrJvLN7Mw4yaA4CN7q/YDiORj9e/9ofouTwMjo=; b=A3lm8qvtlJTPQB
	HJEW5NPMQnyuZOfvkEQP+NB+MZCfvgN0MQntp1sMUWkoM/8olslcElKJHA8RG2VF+//BiXOP5fSLp
	yINCN7ZO+qrjXSwd9r8qu8XpjXzmTth9fiBNi+ft9UeKufq4RZzAIRUTikp14EIMB1a8jc/HLoBPy
	mFXKQbwiKsv73pcHjpsJKnjHaGUpiF6S2IaRq1mFNY7zl7sD8vnNcQv/fHl9V9cj8g9HU0rsuRNFI
	ublH9gKQdoqNWrxQ7FIrqVwTw4TIcG2r6keduzH8i5DO4ZksmYrtTzXzNNjC7B8yKVfrIcoDUetif
	UY6hZmph89dhQZKwP+Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpTPD-00000009DBC-1c6c;
	Wed, 27 Mar 2024 13:33:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpTP9-00000009D88-3048;
	Wed, 27 Mar 2024 13:33:25 +0000
Received: from i53875aaf.versanet.de ([83.135.90.175] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rpTP1-0008Pk-FZ; Wed, 27 Mar 2024 14:33:15 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: quentin.schulz@theobroma-systems.com,
	Heiko Stuebner <heiko.stuebner@cherry.de>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: enable gpu on rk3588-jaguar
Date: Wed, 27 Mar 2024 14:33:13 +0100
Message-Id: <171154636318.1191179.15763718442771383531.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240327112120.1181570-1-heiko@sntech.de>
References: <20240327112120.1181570-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240327_063323_771093_0245D78F 
X-CRM114-Status: UNSURE (   8.56  )
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

On Wed, 27 Mar 2024 12:21:19 +0100, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@cherry.de>
> 
> Enable the mali gpu node and add the board-specific supply-regulator.
> 
> 

Applied, thanks!

[1/2] arm64: dts: rockchip: enable gpu on rk3588-jaguar
      commit: 51ca6a22c52b10a787fa3fad2343279f11da27bb
[2/2] arm64: dts: rockchip: enable gpu on rk3588-tiger
      commit: f5256f8ed4b729c3ab9d9cd7d406313773484b59

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
