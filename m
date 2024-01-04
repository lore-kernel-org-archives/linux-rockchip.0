Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CD03C47073
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jan 2024 08:15:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sxWJad80ybrMQNnrSpVCdgE0ghBEVK//o872DQEGk/A=; b=GUhHLMTLtUWgBX
	DjNWfJZthjA/x+jtb6QVH5eBFKuBkU6pWcrN9lDjeRhfObc/K2OVuAcXdh/oSVAg1ngG8PmHrQcN5
	ZbP11QaxbmtznweAzaENMNqfqjpQvU7uSOWXwUGBJ5qhkcJqIqMOQUk1qw9kaH146sLXf4Y5LDzrq
	Wuu3kIwEHa5jlE7GeIBdcbj2CjkiPomohphYVCNh5B3YrTtz7Fi1kQwr9e9tv8CKdCGdmyfwEUHP4
	XbUE6fhcN0D/E8ugumyx1zSjmyMqVB4mXml/KPDY+jPH82e/Sm398J7SsRHstON3nWU4AeadUrNX2
	2mdUN9KiQW4s/NFBJbFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLIsO-00DAk2-1q;
	Thu, 04 Jan 2024 08:14:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLIsL-00DAhh-0h;
	Thu, 04 Jan 2024 08:14:50 +0000
Received: from i53875a56.versanet.de ([83.135.90.86] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rLIs9-0001V5-5A; Thu, 04 Jan 2024 09:14:37 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>,
	Lucas Stach <l.stach@pengutronix.de>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	patchwork-lst@pengutronix.de,
	dri-devel@lists.freedesktop.org,
	kernel@pengutronix.de,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] drm/rockchip: analogix_dp: get encoder port ID from DT
Date: Thu,  4 Jan 2024 09:14:34 +0100
Message-Id: <170435598415.3166964.13191960299780787341.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181301.3339595-1-l.stach@pengutronix.de>
References: <20240103181301.3339595-1-l.stach@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_001449_250131_BB34A006 
X-CRM114-Status: UNSURE (   8.72  )
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

On Wed, 3 Jan 2024 19:13:01 +0100, Lucas Stach wrote:
> The VOP2 driver needs this port ID to properly configure the
> display data routing.
> 
> 

Applied, thanks!

[1/1] drm/rockchip: analogix_dp: get encoder port ID from DT
      commit: bb056046c2139c72e20a5b6fc39c9caaf9eac2b8

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
