Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE04AC41513
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Oct 2023 20:12:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oZBQNj5DRJx5OSxQX4EG0NT7bFON5U5A9X4Oz0YhfPA=; b=sFUXvP9qwQW8pB
	6IQQOADE88+iygnojdnDcDADAMfgo5khEcOTePhGG8euKrGLuaU3ZYeUn/3OeWEWJ0s7imGIiwM7s
	QlG0v2yyFAJs4PZn+Lo/94Nyykzhuj/pPOEPYuy4CNJGlcsIN5AbDjvaqWPzfegk8FNYt6SF+PNf8
	W0WpkXt/Q/CmX37ppJC1JppIwry0cO+mAiNT/byfRCaz2cSKckAgNFw08y1+lyATmKimIUECLobgQ
	mc5FzpmMSRbGqcW7Or6e4uPFSjqbbyEvRpBtj/fkP0DSR0qnFxqWbo2wkNqGXvIrwTc01Ls8baiNZ
	qj9Gtrh2dZI9M6KfVZfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qsTx6-00AT39-2d;
	Mon, 16 Oct 2023 20:12:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qsTwz-00ASuK-1q;
	Mon, 16 Oct 2023 20:12:32 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qsTwu-0000QB-9U; Mon, 16 Oct 2023 22:12:24 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: robh+dt@kernel.org,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH v3] arm64: dts: rockchip: rk3588s: Add AV1 decoder node
Date: Mon, 16 Oct 2023 22:12:17 +0200
Message-Id: <169748713691.982818.8183459865936380442.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231006065334.8117-1-benjamin.gaignard@collabora.com>
References: <20231006065334.8117-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231016_131229_633164_99DFB641 
X-CRM114-Status: UNSURE (   8.30  )
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

On Fri, 6 Oct 2023 08:53:34 +0200, Benjamin Gaignard wrote:
> Add node for AV1 video decoder.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: rk3588s: Add AV1 decoder node
      commit: dd6dc0c4c1265129c229e26917bf4de1d97ff91f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
