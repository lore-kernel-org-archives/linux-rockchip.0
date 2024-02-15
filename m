Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3827BC48BC4
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Feb 2024 15:10:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AcYmIRzKlBcLGxeny5ql0o7n6h0X7klji4HeJdA29Kk=; b=YAQPrEAc++D8wq
	h0tJstvGyZOdlnDjvLph4AZcNzqIHr1vk1U6aq68ZdQAIUP97cbAuVs1UaoqfeKLX7pfzddlgQzx4
	qEpdKjB2D3RUKSIAM96ZW4xmFEQk1497RVHNo4bQznSkgfzuX1hETa7PD+fcnFWTyVCYWQT9vPO6G
	hFcOra/KJMBWpL2NAO2i2tI0/ENM969LxQ7SeMqbM5qVIqKS/RplgdcngturtZE8kkhvERDnBFIUE
	8hSZcpGQPmXa/7nVzKfEvUYeLuJVB4FbmBuvF8CZDNTzeRoa9t3g5OES4EgzJ0w4meLHLVZtToN0g
	KDBs77IOyX4pJQi03HAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1radNs-0000000Gg5b-32UJ;
	Thu, 15 Feb 2024 15:10:44 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1radNo-0000000Gg4v-0WA9;
	Thu, 15 Feb 2024 15:10:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8D166614F6;
	Thu, 15 Feb 2024 15:10:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E3639C433C7;
	Thu, 15 Feb 2024 15:10:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708009839;
	bh=tHAmLV3OwB5Smivh2clFtWbsMSNhvOvXxI9/fJPyN+w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fBU0mgeHs3k9Rbn10hP9UV4P1JpPA3Qtl76jNf2pHHA888qQdL9PUQe3w7tKdl62k
	 ZBN9CYWOnrGdCw7j5ylpK+gWerZZgpxWd1WFfYiUs8/u+UA5vJ6Vor5jirNAmnmP7Q
	 u3eLilW7nl5dEajF/scZRamRJqwwgqJnGCuc4BGMP4EVFMtXF0pS/hmS3EVg7+hu1D
	 fmyxUUzoBk0KZ7W52upUpkSWK3ZJ5e+6npNx2V+R8FzLsyNnJQe2E9Uz4jnmuaiwGW
	 MqinQUabg8HwovkCSMKJRkPKi1FKYi56M0VgzVMITlzeHN4tYAoQBEf0DGzfXeLgkl
	 JdhOWAk8hkhkg==
Date: Thu, 15 Feb 2024 09:10:35 -0600
From: Rob Herring <robh@kernel.org>
To: Tim Lunn <tim@feathertop.org>
Cc: linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Ondrej Jirman <megi@xff.cz>,
	devicetree@vger.kernel.org, Andy Yan <andyshrk@163.com>,
	Tianling Shen <cnsztl@gmail.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	linux-arm-kernel@lists.infradead.org, Jagan Teki <jagan@edgeble.ai>,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: [PATCH 2/4] dt-bindings: arm: rockchip: Correct vendor for
 Banana Pi R2 Pro
Message-ID: <170800983525.88947.3003525865973395499.robh@kernel.org>
References: <20240214040731.3069111-1-tim@feathertop.org>
 <20240214040731.3069111-3-tim@feathertop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240214040731.3069111-3-tim@feathertop.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_071040_668055_F28E93AD 
X-CRM114-Status: GOOD (  11.94  )
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


On Wed, 14 Feb 2024 15:07:29 +1100, Tim Lunn wrote:
> The vendor for this board was incorrectly listed as Rockchip. Fix this
> now while they are not used anywhere, in the future they may be used by
> bootloader to select dts.
> 
> Update the vendor to Sinovoip.
> 
> Signed-off-by: Tim Lunn <tim@feathertop.org>
> ---
> 
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
