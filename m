Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DD77C2BD09
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jun 2024 19:27:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bWl6p2MjFpW4jOhU5Qv4Li2Z5tbm2LCy2gZKKF8QsC0=; b=xI12SA9ZEr935N
	k3NOTtp90gI2eIX30mtqjkYbMEpAtBH0WutaH+v8nl0bXaEJbOlxPiATiehQxStx+Saw2zNJwjkv9
	wvZYUywc6clmAlh1Gc98/Oe13/FQiOybo7v4txm/nmBrvw/VRl+9l89ALUS+igQoXK8eKJiVzjUpt
	wTc+JOlG3VdUk9jOqSL+AEyAgnBPSE8l+5q0Rz0c1rDHaGrSw5D0W7cOZ0Dn0nH6C/fhxVEleC3Q0
	F6dxkfyza9OyB3cC+G+OOzR8EJOOSHpCV6mdfv3ChxGPUs9Nw9G1c61F4Zobxnp8KeNwc47+uxr7D
	PzYsot9jik9QcSNOK+cA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMumV-0000000BV6d-2M7Z;
	Thu, 27 Jun 2024 19:27:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMumT-0000000BV5n-0Zk4;
	Thu, 27 Jun 2024 19:27:42 +0000
Received: from i53875b6a.versanet.de ([83.135.91.106] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sMumM-0000wK-1r; Thu, 27 Jun 2024 21:27:34 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v1] ARM: dts: rockchip: rk3128: add #sound-dai-cells to hdmi node
Date: Thu, 27 Jun 2024 21:27:29 +0200
Message-Id: <171951643515.1057727.16469934160399671556.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <9d0fabb0-70b0-4b4b-ac7c-389b1c7afe20@gmail.com>
References: <9d0fabb0-70b0-4b4b-ac7c-389b1c7afe20@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240627_122741_198752_01246446 
X-CRM114-Status: UNSURE (   9.65  )
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

On Mon, 24 Jun 2024 19:26:48 +0200, Johan Jonker wrote:
> '#sound-dai-cells' is required to properly interpret
> the list of DAI specified in the 'sound-dai' property,
> so add them to the 'hdmi' node for 'rk3128.dtsi'.
> 
> 

Applied, thanks!

[1/1] ARM: dts: rockchip: rk3128: add #sound-dai-cells to hdmi node
      commit: 313da6f69fa41d044b03f2ea37e56fe49f1e8a42

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
