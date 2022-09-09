Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EEB55ECAAD3
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Sep 2022 18:34:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jj5Kw/3th6R2eRF/esbg2ksPTPC58ijbnELlMotek08=; b=a8p8/qgCqujtVP
	zM1bkc6itfcf/SgBnnVytBMlbSCBLxRRq8jUAMlT/jk6IGmfeVrMq1pD7m50vCm1HTR8yeOrQP/Hx
	HhJ2PPG5xglmiMj8FTq1huTuAMclT32JQtbJb7/0ZV5elzMXIA161ZcLwSWvQ7giXOoMCUwuoyPKl
	uamgAHA3zWgykRD5HbiPAcY+iXNGlYxKP8nS/rnJiATJ+YZznERfSQmJWwhAqJWq0JfzoexBGmfPF
	zVP5Nwtt6zgLKzOyeVqC3sCk4qiYPvAFG1x8eDu4qPQ+WsqeNM18G+Y/qd7Mu7LVPgN9s0Ms2GZsw
	Q0qNoWUEf9KhbVUhJqbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWipM-001EbR-GY; Fri, 09 Sep 2022 18:34:08 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWipK-001Ea3-RX; Fri, 09 Sep 2022 18:34:08 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oWipI-0007Ij-CP; Fri, 09 Sep 2022 20:34:04 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/2] arm64: dts: rockchip: add LED for ROCK Pi 4A/B/C/A+/B+
Date: Fri,  9 Sep 2022 20:33:50 +0200
Message-Id: <166274831283.21181.1711623361474508177.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220908031726.1307105-1-naoki@radxa.com>
References: <20220908031726.1307105-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_113406_947764_E06DDA97 
X-CRM114-Status: GOOD (  10.86  )
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

On Thu, 8 Sep 2022 03:17:25 +0000, FUKAUMI Naoki wrote:
> only user_led2 (blue) is supported.
> 
> user_led1 (green) is not connected to any gpio so it cannot be
> controlled.

Applied, thanks!

[1/2] arm64: dts: rockchip: add LED for ROCK Pi 4A/B/C/A+/B+
      commit: 7ebfd4f6b52a60820e8d03577fdb082176cd8e79
[2/2] arm64: dts: rockchip: add LEDs for ROCK 4C+
      commit: 6cbd76752791552554e5587f34781408215d1e5b

I've dropped the io-domain addition from patch2.
If that is somehow necessary, please send a new patch
with an actual commit message explaining the new io-domain.

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
