Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09C73C4332F
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Dec 2022 17:26:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z559FNeWNKSWyI0U4pFjdvLxEMdYmXSLBnrSD7Frn8k=; b=pk3AXQ6HIyBc4I
	oqnSUvs5HLtU6WQGOf+clKKNxwPxIoCR8PxMgUUUAZfM3+QgNKArkwY6Zb314NoPRk6yi1t9ZdcPF
	KrTxAAhU+8eBiECtalqYZPt4phIil2naw+OIl+IUZSfqeYTiNggGbTf5y6pvCLcLXCsCj07iesujh
	APYDC+QpBS/udKVgjWnQAnurp/hAcmEUbZKiu0jhHYISNw5xvNtusLDYHxO6L5Ef1xqRg4gafGyio
	GBInEBJ/y7/X9MX9lAz4eEVlYCLm5IrxjLdCNRHNu0y6SRrb6Fnf32/dZiIfZQzjIMQitSvXQ0m32
	a7B8KLKMZ95dIffeOQQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p98HC-0020Qx-9Y; Sat, 24 Dec 2022 17:25:38 +0000
Received: from mail-yb1-f172.google.com ([209.85.219.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p95Wx-000Yx2-UK
	for linux-rockchip@lists.infradead.org; Sat, 24 Dec 2022 14:30:31 +0000
Received: by mail-yb1-f172.google.com with SMTP id 203so7891370yby.10
        for <linux-rockchip@lists.infradead.org>; Sat, 24 Dec 2022 06:29:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mbcutGH6OL7LuSP42at3fK5Z1YIFoEUC0KBJRJ/ehLg=;
        b=o/D+RD6UfC13biE/yqQzwpWU6ouvKMvajgU41qpaL3psqSD8JDUscjZXrZxO75n0Wy
         hHDMfTyQRqxZ0BSElRccT1toOMAUwjS2Wjzg7k2hWdbXQNYFm0aZBlQyI/s0tG+Ks64z
         YYBk6AUAhmOpuww5ky43AGCmJ2WYt1kiwaUr7eBuwzKhEywzPno/1KaHKys80LbyVZVG
         ly4/Xy3RRRXLji1hb0pTaBVkjayPjXWaxlkYnISGy29CNIXUscAG7XGEsvM2h/czLMhs
         dnwf0bnL2xrkYIb0vD7xt1BbfdtHKNeR7oVoLhuJ7QKUq9+zmA4AC7FrNmzt8njD2WmX
         JVAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mbcutGH6OL7LuSP42at3fK5Z1YIFoEUC0KBJRJ/ehLg=;
        b=10iW59DO3tySVGo1ilhN4cG8JZW24yOAcdPigcRs0Dr2PQSZHeuCbxRIFPrN46eDNM
         bqQ9gnd21tT9zkrg/0CFTsgWR2ismnqWn6wbwWkfu6lfdhWAo/PlorAS0aIjmN2sA9Ix
         2kEw/KWiARv/7esoyPO/UkUAgAQoUzwvDItaoKKac1tUzFRZg5wQ4n29HrGXVHXn9p1i
         eTBnH+7uGdo3IJZgTawHBzw98L4Jca9sIIRw7ck2lLZ4v/vATYH5ia2oZImq82/HQcSQ
         S3jLCBvTEhX9ilhyZnXmPYLPNoM+2WaLpTPrN8eH0JxnUmmxJbitLKw9cMVEOfCd93f2
         JlYQ==
X-Gm-Message-State: AFqh2koE+Y1Dh3HUdNI5z6HHA2OVTSvHPgL8VBrdkAaFvbsa1FwnvLXL
	laA+Rs0bdERM2iffyqjWgzhi5wPCJf/UmhNhExr5iQ==
X-Google-Smtp-Source: AMrXdXuAv8OyH+cafe6ZRM/QujXFFE6/O1p5c35GQydmuCBIMhPqc0FHSLHxWlN2i8ZOcK6L+qZ5K5UtAV6gJh8mDtw=
X-Received: by 2002:a25:d496:0:b0:70c:4fa3:2cce with SMTP id
 m144-20020a25d496000000b0070c4fa32ccemr1816768ybf.539.1671892180573; Sat, 24
 Dec 2022 06:29:40 -0800 (PST)
MIME-Version: 1.0
References: <20221223132235.16149-1-anand@edgeble.ai>
In-Reply-To: <20221223132235.16149-1-anand@edgeble.ai>
From: Jagan Teki <jagan@edgeble.ai>
Date: Sat, 24 Dec 2022 19:59:28 +0530
Message-ID: <CA+VMnFz8nQ2DnD6L9cPmoRqk+uohRqTEpak9g=WGJnSBoONmrA@mail.gmail.com>
Subject: Re: [PATCHv1 linux-next 1/4] dt-bindings: net: rockchip-dwmac: fix
 rv1126 compatible warning
To: Anand Moon <anand@edgeble.ai>
Cc: "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	David Wu <david.wu@rock-chips.com>, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221224_062944_303118_4BD16F0E 
X-CRM114-Status: UNSURE (   8.46  )
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

On Fri, 23 Dec 2022 at 18:55, Anand Moon <anand@edgeble.ai> wrote:
>
> Fix compatible string for RV1126 gmac, and constrain it to
> be compatible with Synopsys dwmac 4.20a.
>
> fix below warning
> arch/arm/boot/dts/rv1126-edgeble-neu2-io.dtb: ethernet@ffc40000:
>                  compatible: 'oneOf' conditional failed, one must be fixed:
>         ['rockchip,rv1126-gmac', 'snps,dwmac-4.20a'] is too long
>         'rockchip,rv1126-gmac' is not one of ['rockchip,rk3568-gmac', 'rockchip,rk3588-gmac']
>
> Signed-off-by: Anand Moon <anand@edgeble.ai>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---

Please add Fixes above SoB.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
