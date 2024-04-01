Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6022BCD1292
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Apr 2024 21:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+pfFg73YDYzP5Q35Fi8JDw9cKJ+0uMr0C0OG1ebJXdY=; b=VRIcC15q0ciBWg
	ct9vynP5hbRUtn3WIvkCM8jKtyQKMyjN+E2VJnPkBsMkMkLXiUKqouHk9DaF8otDrSeMFJjB87JbM
	dRwliqt4W4h4jQszgKvlWQn+bAh/+zKtqI0pv9mulhy6Qy52rhmhNqOxzFR8WcxAkIMzB0Xo+9ESx
	uBzdcvPPF3RCuUZkaJUpmX9y1SQ43zZz018ORGNI3APPqBLz4+CrcwS2K5qNg6DYGGPuhKzTeuckP
	vY4SB7NuhASqifuyuTgKKOG/g/5rB8V5r/LQesxAcvgiNKUP7Qks8NDjmgidub8e5RvIseuoNNF1o
	Sk79TI+GLjjG0SE6qMLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrPdC-00000008wiC-1zKf;
	Mon, 01 Apr 2024 21:55:54 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrPd5-00000008weF-3XaQ;
	Mon, 01 Apr 2024 21:55:49 +0000
Received: from i53875aaf.versanet.de ([83.135.90.175] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rrPcu-0008FL-2Q; Mon, 01 Apr 2024 23:55:36 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: drop panel port unit address in GRU Scarlet
Date: Mon,  1 Apr 2024 23:55:32 +0200
Message-Id: <171200852039.1394042.12669558185744659181.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240401140939.97808-1-krzk@kernel.org>
References: <20240401140939.97808-1-krzk@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240401_145547_910436_B58CDAD3 
X-CRM114-Status: GOOD (  10.11  )
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

On Mon, 1 Apr 2024 16:09:39 +0200, Krzysztof Kozlowski wrote:
> Panel port does not have "reg", thus it should not have unit address, as
> reported by dtc W=1 warning:
> 
>   rk3399-gru-scarlet.dtsi:666.32-668.7: Warning (unit_address_vs_reg): /dsi@ff960000/panel@0/ports/port@1/endpoint@1: node has a unit name, but no reg or ranges property
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: drop panel port unit address in GRU Scarlet
      commit: 4ddc13461740308d3133c2defda97d9e3a30ede8

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
