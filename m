Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29ED4C46CA2
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Dec 2023 21:10:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p/Hc+WwDKLsLQzNMw4XSZcZU2Hiq6cwory9X6CWKMe8=; b=J8+64vwJjw4b0W
	rrvMCLkBT7w+b38P5YYit2ge2aQZf5d8a5/WTddFB7z9JN84Z5kDqB2OWC9SBajI1Vi9g/usqimO8
	oI1a5/OXWnIEDOeNEqeLg8s2vJIFJbORdClaKBGL7Oexh+/hG2A8q4LRTHw3gQcMVsyzlSQHV7IS+
	8ryYHvLsDichdcLN1QDOV4mJkEIDbPizWSWFt9RFReG0SfyoVvYub0l8ppzCuShU6XuXs86JlWCWJ
	j+5cQTpYds2GfWUubOF4Q5nGy2Qyjyw0pUTmpPsz//LkB7EJkyuJKB2jUi1wGMSnZh0ygugd4d5s8
	t8p4g08Z7U4h0Gaae9dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rEFSC-004ZsA-0M;
	Fri, 15 Dec 2023 21:10:40 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rEFS8-004Zqh-2M;
	Fri, 15 Dec 2023 21:10:37 +0000
Received: from i53875b61.versanet.de ([83.135.91.97] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rEFS3-0005kk-7s; Fri, 15 Dec 2023 22:10:31 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: conor+dt@kernel.org,
	quentin.schulz@theobroma-systems.com,
	robh+dt@kernel.org,
	Vahe Grigoryan <vahe.grigoryan@theobroma-systems.com>,
	krzysztof.kozlowski+dt@linaro.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: fix misleading comment in rk3399-puma-haikou.dts
Date: Fri, 15 Dec 2023 22:10:28 +0100
Message-Id: <170267443961.1167098.4412754848079382518.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231214122801.3144180-1-vahe.grigoryan@theobroma-systems.com>
References: <20231214122801.3144180-1-vahe.grigoryan@theobroma-systems.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231215_131036_770035_2B5D7862 
X-CRM114-Status: GOOD (  10.95  )
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

On Thu, 14 Dec 2023 13:27:59 +0100, Vahe Grigoryan wrote:
> Haikou is an evaluation and development platform for System on
> Modules (SOMs).
> 
> The GPIO0_B1 is routed to the Wake button instead of BIOS_DISABLE,
> update the comment to reflect that.
> 
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: rockchip: fix misleading comment in rk3399-puma-haikou.dts
      commit: 9050aefab15b2da2c7d65d794ca445919ae4c235
[2/3] arm64: dts: rockchip: expose BIOS Disable feedback pin on rk3399-puma
      commit: 39d95566231d483a1c89e74cbcadc4394bfd53ef
[3/3] arm64: dts: rockchip: make Haikou buttons compatible with "gpio-keys"
      commit: 4a8cd5cb583b99b06d2f3e2acb38c5957dd4e92e

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
