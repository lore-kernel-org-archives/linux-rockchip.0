Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 086F0C10DCE
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Dec 2023 00:06:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wiSNUc2iXcIDPUVUxXTxEoRT7IrmhjsJR8wbZcH9jf4=; b=ioR+zlmjmopXcU
	uhAgu0N8DP6WnpVWnf4zARsYI5QX/8c7qdaAoluu5ETaH0aGEGZKJMXGUABf4ukPyXu1nsZ1wb16P
	RaHuGQH7/uMwteFuaC18qKtaPAMWyW7lyA1laqrAcsGfzz2lWl7OlmimapWq5z30TMg8GlvXKF0nd
	ONtBbJkL+N3z6qqW9wRnDch4QETiwwxHqHXXUKwizMikcG2+XJ3fbRdKBrz6BriIiDp3Vl9BVs0YK
	PlV0CQ3kHluzzat1ceut1T9nnV5Ywh5gVL5CBcHSnds13Vr6YRwbLwYmbqc6goAIQjl0HEpM//9YH
	1IYF6fblk8AtISKt+buQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAIx1-005qYu-00;
	Tue, 05 Dec 2023 00:06:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAIww-005qWx-28;
	Tue, 05 Dec 2023 00:06:08 +0000
Received: from i53875b61.versanet.de ([83.135.91.97] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rAIwt-0001qb-Dh; Tue, 05 Dec 2023 01:06:03 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Alex Bee <knaerzche@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v3 0/3] Add power-controller and gpu for RK3128
Date: Tue,  5 Dec 2023 01:05:59 +0100
Message-Id: <170173468933.501889.16032345540267173122.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231204153547.97877-1-knaerzche@gmail.com>
References: <20231204153547.97877-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_160606_743265_745F8067 
X-CRM114-Status: GOOD (  13.08  )
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

On Mon, 4 Dec 2023 16:35:44 +0100, Alex Bee wrote:
> This series adds the power-controller and the gpu to RK3128's SoC
> devicetree - both are already supported by the respective drivers.
> Patch 3 enables the gpu for XPI-3128 board.
> 
> changes in v3:
>  - dropped patches for not-yet needed power domains
>  - dropped dt-bindings patches which was already merged
> 
> [...]

Applied, thanks!

[1/3] ARM: dts: rockchip: Add power-controller for RK3128
      commit: 5e806176a3a57a530d0220242141b30056a70918
[2/3] ARM: dts: rockchip: Add GPU node for RK3128
      commit: 2cc98b5080f693d718cc17c136180732cc32f73b
[3/3] ARM: dts: rockchip: Enable GPU for XPI-3128
      commit: d892a562110ebe7935c60548a1a3924fb36eca5c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
