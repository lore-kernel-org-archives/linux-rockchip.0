Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05575ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Sep 2022 23:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=goA49rKoTWuk4mOxqe0YhncN7TM1x4Sb2RVagDxi8hc=; b=MZ5m22IyV8Fb0X
	zwZ+sCsWQW3vpk5jmRvotYTyiKnLbqf398TXSz96/g5SxU6hme5J7NrinBolVl/NG/9cgqhG1VxBy
	FK+y+pNlXJWqNgRcdR2GO22ejKTUWVoTywPn6oMszWovBIqvuMS2KhMRoLy1w2vii5pBV7kqsKd5n
	5XaGp+Jb/stbg0YNYXV2KBGDJt5qZTNJFW+bn8tQrRKeoDgNVg6i7DocQe/UY3+syA2A5z3FpkbhY
	oIpSkZTYjLrQY8nzg5SYa6s1Q9XCynMmDRzfVeQlWWIFEhbL9DYE21noq4uvbXj2Pnas7Pmvgda3X
	95GZM/hsAFD77+xC7T5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWn9k-003iKs-8c; Fri, 09 Sep 2022 23:11:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWn9R-003iCO-N8; Fri, 09 Sep 2022 23:11:10 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oWn9I-0000Qa-A7; Sat, 10 Sep 2022 01:11:00 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Michael Riesch <michael.riesch@wolfvision.net>
Subject: Re: [PATCH] arm64: dts: rockchip: add RTC1 to rock3a
Date: Sat, 10 Sep 2022 01:10:52 +0200
Message-Id: <166276502654.27767.10625288685700972592.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220726023046.5876-1-amadeus@jmu.edu.cn>
References: <20220726023046.5876-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_161109_767905_7E02F1E7 
X-CRM114-Status: UNSURE (   8.90  )
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

On Tue, 26 Jul 2022 10:30:46 +0800, Chukun Pan wrote:
> Add devicetree node for hym8563 rtc to
> Radxa ROCK3 Model A board.

Applied, thanks!

[1/1] arm64: dts: rockchip: add RTC1 to rock3a
      commit: 1b8d4233f51632cb3134b373b5727e26ab7e0a49

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
