Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04856C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Dec 2021 12:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1z0mBLGN2+YzcK/MIAg7jktfVq5azD4W7c4p4F8TY+A=; b=obQ1i5Ia5fyDge
	OWoTzYsT8jgB4iy+6JpoBNvafEGGWbc5tSGptu2Eqrq3n9sU8cx6WhyogE9Jep+TudCmVVQQzcoLT
	ttcZpdaJwzfuWQxNoZo+N/xjbcvQhpNG6VfNL/FTXIKaJloWZJ3uTLqHhNzRERTYDTbghy9Mo+WBV
	Mvx3DOEooI5JejSxuiKqHwh1cocrBs0hlxoJy+L5hlok+Kv5m0pO39Bk6ZvFjjU/rCpxKnz5a5c4W
	RVsXiXxFJsxwqcQKrVEfAdUw2XqA1wEmdw7hd6CpA9hbm2k+ug207mTk9nNs/cJ7hcDKPfRVcVX1k
	hHLf4oprdgOLkgNEfTGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwOAV-006Uw4-4x; Sun, 12 Dec 2021 12:41:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwOA1-006UmQ-OZ; Sun, 12 Dec 2021 12:41:02 +0000
Received: from ip4d17a2ab.dynamic.kabel-deutschland.de ([77.23.162.171]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mwO9v-0004Fw-L8; Sun, 12 Dec 2021 13:40:55 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
	David Heidelberg <david@ixit.cz>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, ~okias/devicetree@lists.sr.ht,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: Re: (subset) [PATCH v2 1/2] arm64: dts: rockchip: Add missing
 secondary compatible for PX30 DSI
Date: Sun, 12 Dec 2021 13:40:52 +0100
Message-Id: <163931280631.2862987.430237761887020251.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211211233818.88482-1-david@ixit.cz>
References: <20211211233818.88482-1-david@ixit.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211212_044101_829257_F4F72D59 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
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

On Sun, 12 Dec 2021 00:38:17 +0100, David Heidelberg wrote:
> Add second DSI compatible to comply with DT schema validation
> comming in the second patch.

Applied, thanks!

[1/2] arm64: dts: rockchip: Add missing secondary compatible for PX30 DSI
      commit: a39891a6e420daeb55abc99cde4278511ac861d7

I've picked the dtsi patch. We'll need to wait a bit for
a review of the yaml conversion.

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
