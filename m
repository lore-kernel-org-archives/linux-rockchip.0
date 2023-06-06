Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50D90C7EE29
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Jun 2023 17:07:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jQDIlz/Z8J2O4A55Nn7eHASKnasiOMgfxj8PTK5nkDw=; b=QqlK+KQOB0Lxur
	lwxE5DQULxUeipgUm/R8ByypyvGii+IHA8o8lmNV+DAnqG1mUDtI3SdbhXiTZHgA4oAXmY7+ihrLt
	G186biFmVuzTZp2rAD9FKbfk+1UreiNNdlYiaTd+Rwa0Y0ger2b6eskyPsXAfv2Uyje8KJSAU0j5l
	ZUYEcWoxiSM4V39wxErmpzzDfaplA7swE0M1p7KSaj+fEjeEyy6LV8BimPaWYGIv70SzPKOhg+TQ0
	VC6fuNZg3PJnVrdsN0IjV9i1AkCx4PbiXKyPJLwc7BwiC75HOe3Tz0lzpTJaivGUy/fisAytmYd5k
	lShR/Pr4dEwmcvdFa3zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6a9U-002XHB-2O;
	Tue, 06 Jun 2023 17:07:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6a9S-002XF2-1E
	for linux-rockchip@lists.infradead.org;
	Tue, 06 Jun 2023 17:07:23 +0000
Received: from [91.65.34.120] (helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1q6a9O-0001ED-JJ; Tue, 06 Jun 2023 19:07:18 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	kernel@collabora.com,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v1 1/2] arm64: dts: rockchip: rock-5b: add PMIC
Date: Tue,  6 Jun 2023 19:07:12 +0200
Message-Id: <168607097312.1436521.15824413081309384373.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230529170532.59804-1-sebastian.reichel@collabora.com>
References: <20230529170532.59804-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_100722_417393_73F8188A 
X-CRM114-Status: UNSURE (   8.09  )
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

On Mon, 29 May 2023 19:05:31 +0200, Sebastian Reichel wrote:
> This adds PMIC support for the Radxa ROCK 5B
> 
> 

Applied, thanks!

[1/2] arm64: dts: rockchip: rock-5b: add PMIC
      commit: db242e8240b5dc8bd3709dceb194bd49cd3aac2e
[2/2] arm64: dts: rockchip: rock-5b: Add SD card support
      commit: 2a6d4af5f157b1540e7a49f7fdbbf517b0d0d5b7

I've adapted the fixed regulator nodes, to add the
"-regulator" suffix.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
