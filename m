Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A050C5B552
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Jun 2025 10:54:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wici8nKWnKnRpnFEtOYPFfx8Tsm3LSulp59qB1W8fQs=; b=026VvmZNSKZL0I
	qPgvI4ovB9E9QheexXWvWfXM+hl1nq7nlI4o0hzcJ6EJ4c0LgFpKy1Lfbs12iKwdXLuC1jESP/knF
	kOr7V6vEOjnOCf59Dn4TGCJywyNN4ZyfjH/lWk+38jPb/7sShj5fyJ5I0h8zQmPSMCNtt5Wu8n+XK
	BTuN7m1LaHpGzh7VxaxbGcQqpfKlbRks6QfjvTTqMRhZDZqPHsIsVRI9DWzcf+WO/GUQSK48nnrYz
	6NCvmQcozF8yKmiq/EfHrRIQqU55P1oS/Z/BEVIdZQ4AzJtd6QmLRgvlfQJzvZiih5mujk0G2zWfD
	PiGrqeKgnJgglZ+HBmww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOa9H-00000003xUk-1QnL;
	Mon, 09 Jun 2025 10:54:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOZfW-00000003tbL-3Yi4;
	Mon, 09 Jun 2025 10:23:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=6nx3PTDw7aNdyY1bOCfE7raQ5NlwbfEpTbQqELls0VU=; b=fj0L94Pz6IA1q1yJ+28NspxjCs
	ss1vG+22sASQArb7JSFLEnxY/jVr67CtMuOJZRUABz5fvlceMwxW2xPgtz2y+f2kRs6PlAjRdsPz0
	v5ZONxp1/7KKopnI7TtLcAvKf44ub0Vy0aYwjMyVKXx9T049grUC0HLmdDlYSCZBSCbezy4MzNt4x
	kxaCSIlNy1D6b6CydVDjoRROmrglRUQZTqSOHPrmJ3PBLqLEPpdZFn0aqIsF1O15Jro41kmr0XRj4
	UL/Gvje8ypA9twUDbmSHdWtCWz44EBX3dBHQz/muixaqI4UgjB6W+nn3IqsNLydaFMEOt3ZiW8uCD
	HIE7JkHQ==;
Received: from i53875b1c.versanet.de ([83.135.91.28] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uOZfD-0006Av-TH; Mon, 09 Jun 2025 12:23:35 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Hsun Lai <i@chainsx.cn>
Subject: Re: [PATCH v4 0/3] Add support for Sakura Pi RK3308B
Date: Mon,  9 Jun 2025 12:23:01 +0200
Message-ID: <174946455539.762051.14386974894605199498.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250521131108.5710-1-i@chainsx.cn>
References: <20250521131108.5710-1-i@chainsx.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250609_032354_883893_E4CB8E2A 
X-CRM114-Status: GOOD (  11.91  )
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
Cc: andrew@lunn.ch, inindev@gmail.com, Heiko Stuebner <heiko@sntech.de>, jonas@kwiboo.se, quentin.schulz@cherry.de, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, krzysztof.kozlowski@linaro.org, devicetree@vger.kernel.org, sfr@canb.auug.org.au, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Wed, 21 May 2025 21:11:05 +0800, Hsun Lai wrote:
> This series add support for Sakura Pi RK3308B.
> 
> Info of device can be found at:
> https://docs.sakurapi.org/article/sakurapi-rk3308b/introduce
> 
> Changes in v4:
> - Fix vendor prefixes error (Krzysztof Kozlowski v2)
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: vendor-prefixes: Add SakuraPi prefix
      commit: 281bf6e619fc637282288a3a087e2b2ed3150cd5
[2/3] dt-bindings: arm: rockchip: Add Sakura Pi RK3308B
      commit: bc099a4f5b7d08d97684648abe58d236cb7afa4f
[3/3] arm64: dts: rockchip: add DTs for Sakura Pi RK3308B
      commit: 79f2a17024412fd6f62208ab3fd6814e52588a31

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
