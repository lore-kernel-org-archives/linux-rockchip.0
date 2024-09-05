Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E930ECE7A99
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Sep 2024 20:17:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mi+uvDkgoT6B4C7N6iS4OByLFwXCL8WiERKJ754qi00=; b=5C+5DAILK8nfYz
	OaaQS4JCahHxi67AwaX6sZcDNOULyvLDqFaXaV8zcxCu4MUvfa4DP+RpPLZj/jJqnOMyqDeukNG8U
	AwAOMrb12MQf4tO6TNl64OdcHezX94jGZQdgpwTqAoFyvtrYVkVOWx2zPkz8O7q3zhHgynVO/iCAO
	kAqKcY/x55ZtaBxLqbblqZY8SWex6KvHcDAtl+1pjUKf1NfG2Uz98IH65NBJOJzPaVe6vBNEOs9U1
	v9wA7mbX4ACE9XUosmBzc5jn8W7191dr7MoRuWvMhql1/zWbIgjpvLroV0w+9WaHRB120VCuiw4/p
	TecQkEVambhZIH0Q2nGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smIv1-00000009ijY-0k1F;
	Thu, 05 Sep 2024 20:17:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smItl-00000009iLS-3ZMe;
	Thu, 05 Sep 2024 20:16:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=CFKa3QArvI4ZsME8fxVIP0fQhge8CdtbHTdaKcYYbxA=; b=VjVLeKRq8dDevG/Pgf82iMjFHW
	d3SlhMsrctomJpOXWlFl7C2HRwkWxfzBf+602tm4Ks5+MRNQT1U2GWgQVZ4vK3XR2zdgqDm8FjHHO
	D08O2OI4zPU1tAAgb6m+gJOiXzqiIWH3Zu9E2OvO8LRtioujWJqUr6IxiUFssa7n6RXzDUzblaz5w
	PeaXS5i1M1Jc37QrhHoCFTKjdK4j7Yw+BVou4FJ+1Pq9SuL0aqvSTjeTGu6wBMOVIGiXcD1hWrEue
	WCItGnFcePwUCOKn7qwzQ2WAzKBeigEClVfBSVVtNo2DtRriDuaqFvFzhU4muD8i2rbIbgd3FcA9Q
	Ns39419Q==;
Received: from i5e860d0f.versanet.de ([94.134.13.15] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1smItd-0004Ph-Vj; Thu, 05 Sep 2024 22:16:02 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Marc Kleine-Budde <mkl@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Alibek Omarov <a1ba.omarov@gmail.com>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@pengutronix.de,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	David Jander <david@protonic.nl>
Subject: Re: [PATCH 0/2] arm64: dts: rockchip: rk3568: add CAN-FD controller
Date: Thu,  5 Sep 2024 22:15:59 +0200
Message-ID: <172556734994.2907703.16804162938733944876.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240904-rk3568-canfd-v1-0-73bda5fb4e03@pengutronix.de>
References: <20240904-rk3568-canfd-v1-0-73bda5fb4e03@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240905_131609_931405_C82EE666 
X-CRM114-Status: GOOD (  11.48  )
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

On Wed, 04 Sep 2024 16:07:55 +0200, Marc Kleine-Budde wrote:
> This series first adds the CAN-FD controllers nodes to the rk3568
> devicetree, then it enables the CAN-FD controllers on the
> rk3568-mecsbc board.
> 
> The DT bindings for this series are going upstream via
> can-next/net-next into v6.12 with this PR:
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: add CAN-FD controller nodes to rk3568
      commit: 687d6009ae28d51a081c3d6f66c29d195a5cda2f
[2/2] arm64: dts: rockchip: mecsbc: add CAN0 and CAN1 interfaces
      commit: e00bf11185033456f3d4345bcd366df1f7cc7255

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
