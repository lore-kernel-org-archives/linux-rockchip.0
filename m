Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99A1DC6379F
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jan 2023 10:49:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v+SAORgAuQlStX/CT9K8Y5Sw03rCsgyGjM4jNwTp5kc=; b=fEDxpLYzCSzASy
	JkYtHfDjxsTNbVSthP82gXrXNQ9k0hdlQGuLa2UQ/1+0zdCLp8hkQp9wpl14nvbK1JuYRvff9KEMm
	41Df+hfAbnCqbYUIIUAnSfsU/rcP22fyrx3pIPbTGjiSX9GQjT3o8Uvb7Wovvloet2PO5LikbWsNw
	fIs6JAYRt73KFcWxwgMK8ZEvIjI5Qf6wsP/6uKsUIRZPRCOuRjzxPk3aBeSCuSdrh+R9aU6KxaGvu
	4jrQgwDd/vwQs/2iSR9l7llnviGNo9cx0V6fYZB84dnx/cQqlyq6lfrGghsINfbMfYR4vNqIwmQvV
	c5WDD+o7fn25SlD/uGXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFYfQ-00AtnE-B5; Wed, 11 Jan 2023 10:49:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFYeq-00AtVr-HY
	for linux-rockchip@lists.infradead.org; Wed, 11 Jan 2023 10:48:38 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pFYeo-0004Wz-JG; Wed, 11 Jan 2023 11:48:34 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Chris Morgan <macroalpha82@gmail.com>,
	devicetree@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	krzysztof.kozlowski+dt@linaro.org
Subject: Re: [PATCH V2] arm64: dts: rockchip: add Hynitron cst340 for Anbernic 353 series
Date: Wed, 11 Jan 2023 11:48:30 +0100
Message-Id: <167343400179.2680857.10228201038673251457.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221128231528.23360-1-macroalpha82@gmail.com>
References: <20221128231528.23360-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_024836_601932_4EA8B1C6 
X-CRM114-Status: GOOD (  10.56  )
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

On Mon, 28 Nov 2022 17:15:28 -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the Hynitron cst340 touchscreen driver to the Anbernic
> RG353P and RG353V devices. Note the RG353VS device does not have a
> touchscreen.
> 
> https://lore.kernel.org/linux-input/Y1y9e9sgE%2FDck9fB@google.com/
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: add Hynitron cst340 for Anbernic 353 series
      commit: 31a47014902d7fe1da9028336b6f189648ec28ac

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
