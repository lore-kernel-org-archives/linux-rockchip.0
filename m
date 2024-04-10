Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 767F7CD1297
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Apr 2024 05:15:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7dnvLPuny3hlLGLu8pqrtozTX36JuGry4FYNYQbl6+U=; b=rvjKAUj9OvpmNB
	HZfCeJnZWqwS6LGts1djy/tWIu0CQGKpC0/sissauTCKSHvQgyznUPe1OArBKoBf1cgg3vGmBRPqv
	yRIAz8NMmRrog6TDZqSH1TtD8hbZUXSuGAzWopJSHCfct9BQ2KvvTJyMpL+trGpZVpYMlvGzjEglx
	eWE5gYF2ETtT/XH0N0RLNb3BmEttk6qIlSbC2nThHlaee1rj9v47TgkPxCuthlbIrbixvTjpkDE9M
	4h+6dRz1e/2xao2EOSgBnFcQLwUm9c4Rcq9B8K1ObtfzsS9LSl1S7jXxyyZJP4O2xkPh4l/whJApW
	0cK/ZWDpoj8zXZIyJAPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruQJ4-0000000590K-3KEI;
	Wed, 10 Apr 2024 05:15:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruQIq-000000058oP-0GK0;
	Wed, 10 Apr 2024 05:15:21 +0000
Received: from ip-185-104-138-50.ptr.icomera.net ([185.104.138.50] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ruQIl-0008Ut-0o; Wed, 10 Apr 2024 07:15:15 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: rockchip: grf: Add missing type to 'pcie-phy' node
Date: Wed, 10 Apr 2024 07:15:04 +0200
Message-Id: <171272604793.1867483.15917787961611178400.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240401204959.1698106-1-robh@kernel.org>
References: <20240401204959.1698106-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240409_221520_132371_BBC15FBF 
X-CRM114-Status: UNSURE (   8.66  )
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

On Mon, 1 Apr 2024 15:49:58 -0500, Rob Herring wrote:
> 'pcie-phy' is missing any type. Add 'type: object' to indicate it's a
> node.
> 
> 

Applied, thanks!

[1/1] dt-bindings: rockchip: grf: Add missing type to 'pcie-phy' node
      commit: d41201c90f825f19a46afbfb502f22f612d8ccc4

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
