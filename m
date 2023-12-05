Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13148C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Dec 2023 00:06:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JwNs6A+LF/SycBV/hNjrsSHIpcQV96v/qkiGXQ4JKjg=; b=A1/5ZwxX/TwSgw
	8rQqCfe+d5PN7Gbb5siuo1h9hNlhISHIM1XMptBzYEaDkiX1c3ZLdUCkHF3OWMYv088apgmmWqcRA
	weL9WLLiudRrel0xf4aWdjIs1qY/cPM7PDW86SQH3yBSfSwYC9L+HtoNLE/Rk7RfcULWCwYFzwpAa
	8zRuBF+IHbr6+Utea/T8twUxMFnpvEpnH+DQWoT0t56b4q5wwu4EHqxsDKTBkjf3d05bw3BxQjMuL
	d7uWdUlwX7TjXmD0Gonh1JPApRDaLdoMVCZuWBaqAEkY8+RGFtNKBEvYMX+egL4XDv+a0U2qJb4Dk
	gZm57VMmQnSyWgj8MvBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAIx4-005qZi-0X;
	Tue, 05 Dec 2023 00:06:14 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAIww-005qWw-28;
	Tue, 05 Dec 2023 00:06:09 +0000
Received: from i53875b61.versanet.de ([83.135.91.97] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rAIws-0001qb-FJ; Tue, 05 Dec 2023 01:06:02 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>
Cc: s.hauer@pengutronix.de,
	linux-arm-kernel@lists.infradead.org,
	Heiko Stuebner <heiko.stuebner@cherry.de>,
	jagan@edgeble.ai
Subject: Re: [PATCH] arm64: dts: rockchip: drop interrupt-names property from rk3588s dfi
Date: Tue,  5 Dec 2023 01:05:57 +0100
Message-Id: <170173468935.501889.16956893001604637055.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231201134859.322491-1-heiko@sntech.de>
References: <20231201134859.322491-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_160606_925987_15ACAFFE 
X-CRM114-Status: UNSURE (   8.28  )
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

On Fri, 1 Dec 2023 14:48:59 +0100, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@cherry.de>
> 
> The dfi binding does not specify interrupt names, with the interrupts
> just specifying channels 0-x. So drop the unspecified property.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: drop interrupt-names property from rk3588s dfi
      commit: 815f986f33eeb06652d59d8a4d405d4fdb4e59a8

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
