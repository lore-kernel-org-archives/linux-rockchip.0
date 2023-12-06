Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 543E8C10F04
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Dec 2023 09:42:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HJLJGwRST1xIaHwYmQAG6SuVnIlKXhkQJFvdazvcjHY=; b=1tY2e6I2T+6lZw
	ug1l8csa4z/qXAhr18vtbW5jeW5nT76+yalk0RFYtAw7/3yuWza5WxbhcEf2WqA/UfVA096j/5k4G
	CIrhDbV4ZwKpIZMBi9EBxvEf+DBDXwxGQjLzM1iIwyZ2K+s5NfzcNvGSt/MO5yq4fupoStevg5hB9
	Ijye34neAF25PFbXAF37s2j83Mwj0VjbWyw4yWti+p8RJ+QHC+/HFn2HJh5xF1CjodCXzal7hUtyr
	u65Fojgcchd1jFNQvAYqz9WYRnYks+jEJL5j4CJz4yTZCERyZ5fN3bm6aRyuPthpdwn+Wsabg6s6V
	Cwnj3jfn2J9LPGeyKCrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAoQ0-009acM-1I;
	Wed, 06 Dec 2023 09:42:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAoPx-009abi-2N;
	Wed, 06 Dec 2023 09:42:10 +0000
Received: from i53875b61.versanet.de ([83.135.91.97] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rAoPw-000077-2k; Wed, 06 Dec 2023 10:42:08 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	quentin.schulz@theobroma-systems.com,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 0/2] Theobroma-Systems Jaguar single board computer
Date: Wed,  6 Dec 2023 10:42:05 +0100
Message-Id: <170185570322.596796.12623208720682445135.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231201191103.343097-1-heiko@sntech.de>
References: <20231201191103.343097-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231206_014209_790617_0F8C3D93 
X-CRM114-Status: UNSURE (   7.71  )
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

On Fri, 1 Dec 2023 20:11:01 +0100, Heiko Stuebner wrote:
> This adds the Jaguar SBC from Theobroma Systems.
> 
> 
> Heiko Stuebner (2):
>   dt-bindings: arm: rockchip: Add Theobroma-Systems Jaguar SBC
>   arm64: dts: rockchip: add Theobroma Jaguar SBC
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Add Theobroma-Systems Jaguar SBC
      commit: 9aeb5f0321f8eb24c26b98b7dc416e21a765d499
[2/2] arm64: dts: rockchip: add Theobroma Jaguar SBC
      commit: e4e8169830b36e30ad5eec080762154e659f6eb4

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
