Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B10A4C4345F
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Apr 2024 14:32:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cdpM7xreUmP06/O5oXTUUp+yZfKMiPZ6tTEMwh/wTXg=; b=1hkbwxCB8ks92Z
	DpUgj6oOcA2bBGV6tKW3qf6mHhFav7mMOJ2CGbYcPll0dCn6DiPVIaUnWYOQ6UNDJL/YVtbHlQrDY
	yzimE13D2BNG2ihlq8pvpAndiYz9JiF2Vye9HZZ9th5RG1+7CThzpGlmtna+k1wG1hhVUR+3rzgph
	AnN9MtaZ1Q7u8e7HXneI9TsoPOj9GiSqMpj4KPaVi5DjtQIBER0KJ/R8wN6Q55WrVUWm72yTblqXt
	30nOe31suNJ7m6DKh3krUHL5fe3CuagxU1Z8dne5oKR1KeLvtEWL2SAmggwF/ABEi8x4ZcTM+UC4J
	kqZgBaW6ePwoQJLnVmHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryuik-0000000Dvlw-27WD;
	Mon, 22 Apr 2024 14:32:38 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryuif-0000000Dvix-12cy;
	Mon, 22 Apr 2024 14:32:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id CA31960EBF;
	Mon, 22 Apr 2024 14:32:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F13DC113CC;
	Mon, 22 Apr 2024 14:32:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713796351;
	bh=K6eCMcV02CRHJtAWFf5NEGxhvatJNeftrLgXnmZavbg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hXH6W0HxKC5vREV5ZTANcsbQyGp9p0okTXQyn3HLiCLir7fsz3W9XINKXakuZWt+t
	 PEJKuM49F80bDCG6tAMyck99r1GFEqdIZxQhZ+k8+vAPBIc7Wbr7QpPqDtx8Pcn0dy
	 i+XTIUjwfYD9WLBPFdJeAb2eOSzui7+6UwdCBeip2StN5PWMVj715ornBoeDiy0fll
	 yraWL+aNzaCub8uX65sdgJP+0hK3yIkiWtwh7CcS2tyWz179fXrLjzIIsqDALid3/A
	 EwKKpieYUSsXbVIskoXcuwAzsOJ9Figcki5+wRVinxlt1SBDmn5XSOS2gHCZHTU+il
	 0m19B2bbh3hPw==
Date: Mon, 22 Apr 2024 09:32:29 -0500
From: Rob Herring <robh@kernel.org>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: linux-arm-kernel@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>,
	Heiko Stuebner <heiko@sntech.de>, Dragan Simic <dsimic@manjaro.org>,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: rockchip: correct the model
 name for Radxa ROCK 3A
Message-ID: <171379630376.1216062.9468889487800020829.robh@kernel.org>
References: <20240419103019.992586-1-amadeus@jmu.edu.cn>
 <20240419103019.992586-2-amadeus@jmu.edu.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240419103019.992586-2-amadeus@jmu.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_073233_408502_C2A9B7C3 
X-CRM114-Status: UNSURE (   9.95  )
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


On Fri, 19 Apr 2024 18:30:18 +0800, Chukun Pan wrote:
> According to https://radxa.com/products/rock3/3a,
> the name of this board should be "Radxa ROCK 3A".
> 
> Suggested-by: FUKAUMI Naoki <naoki@radxa.com>
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> Reviewed-by: Dragan Simic <dsimic@manjaro.org>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
