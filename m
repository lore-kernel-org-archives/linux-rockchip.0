Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57952C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Jan 2022 18:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qc3VRjX6I34/NCH+ui4ooxzTMukyBN0S7h3g/XubOEw=; b=2VjA4uzHG8JeFK
	xHMJqDxtQTUqPYgNuZ3U70Qw2qEwDBToAf7OnVbv1aAKBMT0UjC+JWnTz0XPzqeMfJp3K5eZd+sFG
	5b/XIYJXbCraIBhE2iANnqkJdZN2GQFkcaGRmQOS7GLqgXa1imDLsy3egIvWjJVP2mH05b1wkqCu0
	UilHmxWuPDnGJOUG0lO/Oy+ifyhO4aWJDE0q4WNzsoHBTqDqzJ22eRcrBcMNcMRf7oDSCrmultgCZ
	luyUEB3lDFIGQ4KtGdHvQCRkN0JF6pIetXUdecq8xsurLpQzYcFOSltsqQGSsGEVYYdKwPD4QkCiu
	xvMH/BTyiqXPTSEJm9cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDs2L-005Dyd-1L; Sat, 29 Jan 2022 18:01:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDs2H-005Dws-8d; Sat, 29 Jan 2022 18:01:18 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nDs2E-0005gc-8i; Sat, 29 Jan 2022 19:01:14 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: align pl330 node name with dtschema
Date: Sat, 29 Jan 2022 19:01:17 +0100
Message-Id: <164347927007.1475317.12886729868087154113.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220129175429.298836-1-krzysztof.kozlowski@canonical.com>
References: <20220129175429.298836-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220129_100117_353254_6BFA9180 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Sat, 29 Jan 2022 18:54:29 +0100, Krzysztof Kozlowski wrote:
> Fixes dtbs_check warnings like:
> 
>   dmac@ff240000: $nodename:0: 'dmac@ff240000' does not match '^dma-controller(@.*)?$'

Applied, thanks!

[1/1] arm64: dts: rockchip: align pl330 node name with dtschema
      commit: 3d7eaaa2fda44a5d11efdb1069664dba6ee49ee0

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
