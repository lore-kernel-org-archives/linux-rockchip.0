Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A81DE7718B
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Dec 2024 00:45:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jEmaUtKLbBasutRzXLSw4omhSv1K2+N0wcIPxUVk2n0=; b=zO6lqZyfDSn6S1
	LEf5KDp52njRj8yFlVX/yr2e3br6oeyxgasSyol2BLdnT9qajFY2GQCWM/ZypwNVEXjSwwA75nWG+
	o4lWbq99/SaSgI4tIX9NiIQucjrLXEX7LlhqZSvOGFhKLnOL05aVupD35El1yyuP93wi8fD4SPbxw
	cO9AJ4KKpLLXuTO38X6JlTSC+daDMEPX9JIgpoRHoH1Jh/M/hrMRWV63NVodbV1XDbA5wFb723qC9
	LvCoQamfeq9LKTP3kHce6u7bRUEF+8SlSxVeQaIycxJCcIkvNrRBfqyEq4JmWz2LzDCldembEnBWW
	qBfO/opP9Wv9rEjrV5Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQc0L-0000000EZ1m-21oh;
	Thu, 26 Dec 2024 00:45:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQc0J-0000000EZ1M-09yM
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Dec 2024 00:45:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=zkiSR+pP4PDYxWoTcL6hKQD8NN/shidqmyYevfYxc1M=; b=VCFXHsDcbePWO7rfKx50ziB8iB
	Xc22JHTQEz7cWSjudPd+LjHRNVIq+q0EOi9K5o+O7AtCB5gJgtX9gtuz97RSBKha54bXUccx4UJ2p
	tLBLjVIZBT9rSCpN/cDvqxpdSZ6Uajzb6FdBPA0KgVlwrNmUmst3EPmb4tW7WP8qGZW2G4gw41c7G
	NizbtmK4ODHD/JWj32cVTM3/DxODIP7T6r/mVmHg88YOC2CLwSoqL1Ma6fV6cADS7gg8DAFYXOHZ8
	62mAN1hyIyFEO3avmpi4/eici+pBB3jfepYrtU0aGf0iOrq2Uz5GFHluVzaywh93iXiS8nMIJy6wn
	JJFhlKUg==;
Received: from i53875a54.versanet.de ([83.135.90.84] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tQc0G-0004a5-GZ; Thu, 26 Dec 2024 01:45:28 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org,
 Kever Yang <kever.yang@rock-chips.com>, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Rob Herring <robh@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 David Airlie <airlied@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Simona Vetter <simona@ffwll.ch>
Subject: Re: [PATCH v2 06/17] dt-bindings: gpu: Add rockchip,rk3562-mali compatible
Date: Thu, 26 Dec 2024 01:45:27 +0100
Message-ID: <2487077.iZASKD2KPV@phil>
In-Reply-To: <20241224094920.3821861-7-kever.yang@rock-chips.com>
References: <20241224094920.3821861-1-kever.yang@rock-chips.com>
 <20241224094920.3821861-7-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241225_164531_095884_9BC1D5FD 
X-CRM114-Status: GOOD (  15.55  )
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

Am Dienstag, 24. Dezember 2024, 10:49:09 CET schrieb Kever Yang:
> rk3562 has 1 ARM Mali-G52 GPU,.
> 
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> ---
> 
> Changes in v2: None
> 
>  Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> index 735c7f06c24e..b0d4806614aa 100644
> --- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> +++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> @@ -25,6 +25,7 @@ properties:
>                - renesas,r9a07g044-mali
>                - renesas,r9a07g054-mali
>                - rockchip,px30-mali
> +              - rockchip,rk3562-mali
>                - rockchip,rk3568-mali
>                - rockchip,rk3576-mali
>            - const: arm,mali-bifrost # Mali Bifrost GPU model/revision is fully discoverable
> @@ -60,7 +61,7 @@ properties:
>  
>    clocks:
>      minItems: 1
> -    maxItems: 3
> +    maxItems: 4

The commit message only says something about the rk3562.
As it looks like you need another clock, the commit message should
definitly explain that.

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
