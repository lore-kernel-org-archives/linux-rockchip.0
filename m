Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8568EB64D7
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Jun 2023 13:00:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-Id:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+Ygkj55iviunVJC8caccD7P1vRsKLHKgaF1gMS/MxsU=; b=GRCBL821WLWKaPRcYzqJrjxLQE
	OeOtj6HIfZHrS7Vufqak53jDfu5ufrtZBJqu1Sf9MLL+fjSdv5v7yCVj1m5ysZLOUjOqy+BS7x8XH
	zdZ6HFPq4XQUlpZRNkrueDycdAleauF1zJnBalg2Z74uQoo0RDgqWYDaYIHgcRiinLLPxSGRMTmqF
	MaTOh3VxxCzQGUA6WeWIGil+n/b1ftPkhuyVZ+PSqmZQEMPrkgEmRr7Ea5UqqaR+abPo138w1H0da
	v65nGIibmzhyXAOqDHQyimGq4mNI5VMVR0sIXRd/jl6Rx2Krm6Xxy7xI4jBQHTfI9+vOC7nzk6pMA
	tEzw8NTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBxRb-00EcZ6-0M;
	Wed, 21 Jun 2023 13:00:19 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBxRX-00EcXh-2g;
	Wed, 21 Jun 2023 13:00:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1687352410;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=t4MW0GvBawLQtktDB4ATGKjd0pHPqZSaP4yASsVpW/s=;
	b=ml1R80Q1Pym5yMPXk0q9o2l3NPk4lQqYzZlZYLBJGxr5WvEF1raRg8vq4AJ/8EvPoF5sbW
	y9i219H6i9fWYiwCDW+pYWotG+j8GfMdHslwR3AKGuCf6Sm2VZpAxdncOlyYlcW/hPJFcE
	ACyeIjK97TGsFUADw1ojYSv6sEIONU95ENyYTefULn6BEkplOspN3e5z1rmHUUYKcBwTAu
	WsBiPT3efLRihgM7D0TT4sninBjelsXukNE/tWKQU8qiu2vYPH1KVut/FCSS9eKUjA03q8
	42WdymLr5ZkZyKWEywPiHtseS++sRoQn6uCLMFyn9rVg6MeeTz//2TJ1eDTiNw==
Message-Id: <1687352320815.1257416493.3087155415@manjaro.org>
From: Furkan Kardame <f.kardame@manjaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 robh+dt@kernel.org
Cc: krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 heiko@sntech.de, broonie@kernel.org, deller@gmx.de, dsterba@suse.com,
 arnd@arndb.de, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCHv4 1/2] dt-bindings: arm: rockchip: Add Firefly Station
 P2
Date: Wed, 21 Jun 2023 13:00:05 +0000
In-Reply-To: <66d5a117-abc7-e147-f416-5366706b5f26@linaro.org>
References: <66d5a117-abc7-e147-f416-5366706b5f26@linaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=f.kardame@manjaro.org smtp.mailfrom=f.kardame@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_060016_043727_8D6B7BF0 
X-CRM114-Status: GOOD (  16.59  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org




On Wednesday 21 June 2023 09:22:31 (+03:00), Krzysztof Kozlowski wrote:

 > On 20/06/2023 20:47, Furkan Kardame wrote:
 > > Station P2 is a single board computer by firefly based
 > > on rk3568 soc
 > > 
 > > Signed-off-by: Furkan Kardame 
 > > ---
 > 
 > This is a friendly reminder during the review process.
 > 
 > It looks like you received a tag and forgot to add it.
 > 
 > If you do not know the process, here is a short explanation:
 > Please add Acked-by/Reviewed-by/Tested-by tags when posting new
 > versions. However, there's no need to repost patches *only* to add the
 > tags. The upstream maintainer will do that for acks received on the
 > version they apply.
 > 
Noted, will take care of this in the future. 

 > 
https://elixir.bootlin.com/linux/v5.17/source/Documentation/process/submitting-patches.rst#L540
 
> 
 > If a tag was not added on purpose, please state why and what changed.
 > 
 > Best regards,
 > Krzysztof
 > 
 > 

-- 
-- 
With best regards
Furkan Kardame

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
