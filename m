Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAC9ACD129A
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Apr 2024 05:15:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XEY2rdN65nnJ/1EEPOSPuLC6MzwJe32nMafnKB6OXOk=; b=TRtv9wyyrpNXAE
	CTroFWPEm20AOyFeBsJP8IkImDmtfd4ta3JLJSXcbiN0bLJJ3lfJq586XeI5OTr4UQVHcVC2QZIPz
	cM+syLkeVhgBjMGQb2dnmxFcnTlt4Jq2UxjZtALjOJ9lYEll4PWMTqp6OBrvPUnVXdMRa3MUOGeb+
	lFgdLt+kCzh4spsR3PX0j1aI8823CT7Kd+2t3zW8Yz0BtM8wK1M4qubYPkijiNjgl15rmcAOKPfG+
	KDxD1GGRnG3G8AwlZvWs6jvqNCjReZ6QCHIbKGHuQ9I6jaP2MDrgYkigLwJZcJWtA5GBBnePURYf1
	rTp8+yVwcwYjUvUPGosg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruQJH-000000059BV-1JmG;
	Wed, 10 Apr 2024 05:15:47 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruQIq-000000058pB-2zhj;
	Wed, 10 Apr 2024 05:15:22 +0000
Received: from ip-185-104-138-50.ptr.icomera.net ([185.104.138.50] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ruQIm-0008Ut-Ly; Wed, 10 Apr 2024 07:15:16 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Rob Herring <robh@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	David Jander <david@protonic.nl>
Subject: Re: [PATCH v2 0/2] Add Protonic MECSBC board support
Date: Wed, 10 Apr 2024 07:15:06 +0200
Message-Id: <171272604792.1867483.1217258129041362039.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240405-protonic-mecsbc-v2-0-0a6fedc78b9f@pengutronix.de>
References: <20240405-protonic-mecsbc-v2-0-0a6fedc78b9f@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240409_221520_821260_A3527774 
X-CRM114-Status: GOOD (  11.39  )
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

On Fri, 05 Apr 2024 12:14:24 +0200, Sascha Hauer wrote:
> This series adds support for the Protonic MECSBC. MECSBC is a single
> board computer for blood analysis machines from RR-Mechatronics,
> designed and manufactured by Protonic Holland, based on the Rockchip
> RK3568 SoC.
> 
> 

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Add Protonic MECSBC board
      commit: 6eb006d7c8271d4ff811b8f13b40e527d35d88e1
[2/2] arm64: dts: rockchip: add Protonic MECSBC device-tree
      commit: 6f9dfb7358535136e49d6fe9d31409f20f8cb9a7

Adjusted the node-sorting some more to honor our alphabetical
paradigm.

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
