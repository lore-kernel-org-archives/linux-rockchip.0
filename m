Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F17E2C7EE33
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Aug 2024 11:56:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y/1An6oKUkuQ9veXD9EspP3OAMlc57hyYFLql/Xa6l8=; b=uQOUkbpFRmqUnB
	zF5CiDLgS/FGgxcKW/wUtBkufPej/kQAYK88D8ZIszggKJg392EYFEKJGitxWqdgE67gG8DP2E55h
	DEI6UOAzFoC/xPBN+3LPcPTozoeXofzRJVi/+lsT0r+6tjiyi26Q8fhqhLe+D3zBVAc4jsZ90Rii4
	NI2R6qJSuI0U4hTwV20dpLEePZ07YlIMjhbnsDd9x/4kbQi7syXky4yelUKphbrnEYoTOIJx2Vfza
	g4Kdmd8kIbI66LANNfBwE8GXG1+E3BoKp2crlLfkT8XSPodpNQSRepXCsJdxvWfyzYb9h6WCsNMdr
	eWWgqe8folYhcfFtmJgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjdl6-00000001pBy-3NOV;
	Thu, 29 Aug 2024 11:56:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjdkd-00000001p2v-3YgS;
	Thu, 29 Aug 2024 11:55:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=09k5tGRHsX1lPAzdVjGE3UyjwnS3VL8JaqpnFiQJWMk=; b=N6Y8pbLpYqVMpm3S/cLI1Ugkkm
	f3w7juzI9/Dall0G7YTOR/zRPJxONg6czYbBbAjTDstBDZWgSJ/qJlCP/1w6ypFViva++G0l/Pt3m
	A1K3egH+uk88yc7TUac4dQ2CJVrRsCny1smQv0QNtSQzF7TOHM8AHccUPvUMP7YbWlENDtsMpT1Ca
	GhZLFM8/WIdNjvt2khMCpa06verSAKZX7aXUpJY5JjgZNC6XFeuxJi+j2H7qZM16zZeGLYjkYkAs9
	7q+hpa7YHlmgTnFQjtEHme/stEA3VpqJLb2p5QJvDz9XK0DOa9N6HNbAV61IfyzIiUJoi+H6fMeTy
	Aek48RCg==;
Received: from i5e861916.versanet.de ([94.134.25.22] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sjdkc-0003fK-8k; Thu, 29 Aug 2024 13:55:42 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	Conor Dooley <conor@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	kernel@collabora.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/2] Fix compatibles for RK3588 VO{0,1}_GRF
Date: Thu, 29 Aug 2024 13:55:32 +0200
Message-ID: <172493252602.1711002.13468063682788889129.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240828-rk3588-vo-grf-compat-v2-0-4db2f791593f@collabora.com>
References: <20240828-rk3588-vo-grf-compat-v2-0-4db2f791593f@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_045543_908679_C875436C 
X-CRM114-Status: UNSURE (   8.99  )
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

On Wed, 28 Aug 2024 15:40:07 +0300, Cristian Ciocaltea wrote:
> As Conor noticed recently [1], RK3588 VO0 & VO1 GRFs incorrectly share
> the compatible string, since they are not identical (though quite
> similar in terms of layout).
> 
> Provide dedicated compatible strings, as a follow-up.
> 
> [1] https://lore.kernel.org/lkml/20240821-stretch-scam-09d7adc08a4c@spud/
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: soc: rockchip: Fix compatibles for RK3588 VO{0,1}_GRF
      commit: 11746c33909b082cb3b2183dd4164eb8bdcfc3df
[2/2] arm64: dts: rockchip: Fix compatibles for RK3588 VO{0,1}_GRF
      commit: 5956ee09c8254273c587b07f5b4d42da59a0325c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
