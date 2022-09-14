Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E661ECAAD8
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Sep 2022 09:07:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=opf3Ij1xtBBllG8X0MhI9oL01GlFIOLmIU/1tF6HiQE=; b=JwDZYqvMdwOER7
	IjJGQmMxwkJXDG2rBV500T/UiLAbQrt3W/ztbwLMIjNlX/0QmAt+0+nZ5IL4OgLEAC0OCavpgsPf3
	5sug/QvUuADUB6jtzd9z5gy1muwdAiR+Z7hynawRqSKozQCrd3oCK+ljdenoH4KNu4PxcHJYT/pMR
	QJJs9YD1r7j73S0qFMSd9zaX86WuVy+HPV8/ZpEtkT6WamtLh89mSZSHRDzPW7WfBRpu0BVHeO+Bi
	RSHHMKvquR/FevCShnIgcFA+uYg7IyUnw/wA5GApwjzhNqGLdP5mP1pPSjUJMxgmcMU53cycnTMvH
	UA48iYWqdnlEwe5H9wfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYOMq-00DuEO-Sk; Wed, 14 Sep 2022 09:07:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYO8V-00Dj3k-2B; Wed, 14 Sep 2022 08:52:50 +0000
Received: from [89.101.193.68] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oYO8L-0004ae-5u; Wed, 14 Sep 2022 10:52:37 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>,
	kever.yang@rock-chips.com
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	vkoul@kernel.org,
	vigneshr@ti.com,
	linux@roeck-us.net,
	ulf.hansson@linaro.org,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-watchdog@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	u.kleine-koenig@pengutronix.de,
	linux-mtd@lists.infradead.org,
	zhangqing@rock-chips.com,
	linux-pwm@vger.kernel.org,
	jamie@jamieiles.com,
	krzysztof.kozlowski+dt@linaro.org,
	linux-spi@vger.kernel.org,
	gregkh@linuxfoundation.org,
	thierry.reding@gmail.com,
	sjg@chromium.org,
	philipp.tomsich@vrull.eu,
	kishon@ti.com,
	richard@nod.at,
	linux-kernel@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	robh+dt@kernel.org,
	linux-mmc@vger.kernel.org,
	broonie@kernel.org,
	wim@linux-watchdog.org,
	linux-serial@vger.kernel.org,
	miquel.raynal@bootlin.com
Subject: Re: (subset) [PATCH v1 01/11] dt-bindings: serial: rockchip: add rockchip,rk3128-uart
Date: Wed, 14 Sep 2022 10:52:33 +0200
Message-Id: <166314554237.197444.11513118217413767473.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <4f283231-2ed4-202b-0c23-157bce0841ee@gmail.com>
References: <20220909212543.17428-1-jbx6244@gmail.com> <4f283231-2ed4-202b-0c23-157bce0841ee@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220914_015247_162593_3905D6D3 
X-CRM114-Status: UNSURE (   5.55  )
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

On Sat, 10 Sep 2022 00:01:28 +0200, Johan Jonker wrote:
> Add rockchip,rk3128-uart compatible string.

Applied, thanks!

[08/11] dt-bindings: arm: rockchip: pmu: add rockchip,rk3128-pmu
        commit: 9c2f4521344f3b14fa0be050100ef726edc36cbc
[10/11] dt-bindings: soc: rockchip: grf: add rockchip,rk3128-grf
        commit: adc4f190260a6c004f950992d8c9ee3aec8da38b

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
