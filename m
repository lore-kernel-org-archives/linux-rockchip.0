Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1907C606A327
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Nov 2026 16:02:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=HK9IU7Qz;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=fbe9rZ1M
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ljborxKagIHPyoqZCTQpc281g0MWgrDUl0Ld67qZEvM=; b=HK9IU7QzGroU/ME/nlmn/IXU52
	2BUtC1zMU66Jwc8fDCYgYCjTZLNUudzfiYfXK7WBWk/ARLR/aMBinUAf4fCfeRxOAjALmMD9CUD94
	TdsUndimIwa4aDcyrmPb9Ls1uva5a9JwxkWnQLuJGzV666d2g9VTRrG7+u9dg8SM/a3O9Cm1c89Wu
	zi3quhlq6LxW/wS2nZhxq1el7b1hjnKktcRItY28eHLB2G3jSyknPPKaF8mW+WjYZf42gc8/Hk4Sk
	4JHvBAoCeXoL8jE3NdhGGUTPKrQ7T0LpcsxF+dRbu8ZD9YtEqki25/9KasmqN1IsU3rtYYc63Bemt
	MCCSm/Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVWUd-000000047IP-2ok2;
	Mon, 23 Nov 2026 16:02:11 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVWUb-000000047Hf-3zw5;
	Mon, 23 Nov 2026 16:02:10 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 55502622FA;
	Mon, 23 Nov 2026 16:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33E901F000D2;
	Mon, 23 Nov 2026 16:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795449728;
	bh=N1Kph1Jnk+DxQD2xwzYoq4HTvoREjcNCOFAcKHlvXLQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=fbe9rZ1Mv1u8RJWaAxnCXG49oerJ+CjiUI0zg42zlZTlVgKSbRM7B7/pXkEAdbaNj
	 IWTlVDP4ABD5HLR/QmfRjs/cj4KIbOQ0B2chPcGTfz5qxNl8H9JbcnD9GX1BVVZyrW
	 is0BxM+OAQDFWELHwPJhABcimE7uC9rnYVpv2/mLvzaIx5rtlV65/do/WKiemXp6rq
	 WMTrLCHChMnIUJq+Cx9HaT9SgIyuvlNkbvLX7iugA1rxo75MXLAhdVgYcyMMV1uVpe
	 xm4OrfE2pmRC8bn+D4fMl6jFugDJckS3YsXafVR7kACdUJ/uL7vVNDwXqIFvjWeU8X
	 tqb3wafxFup/Q==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Guangshuo Li <liguangshuo@mail.sdu.edu.cn>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 stable@vger.kernel.org
In-Reply-To: <20261110-9f141e6bc8-phy-rockchip@mail.sdu.edu.cn>
References: <20261110-9f141e6bc8-phy-rockchip@mail.sdu.edu.cn>
Subject: Re: [PATCH] phy: rockchip: inno-hdmi: Fix potential stale clock
 provider
Message-Id: <179544972583.261285.10042942204136038609.b4-ty@kernel.org>
Date: Mon, 23 Nov 2026 21:32:05 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Mailer: b4 0.14.3
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On Tue, 10 Nov 2026 22:32:25 +0800, Guangshuo Li wrote:
> The clock provider remains registered if PHY provider registration fails.
> Device-managed cleanup then frees the clock hardware and PHY private
> data still referenced by the provider.
> 
> Use a device-managed clock provider so both probe failure and removal
> unregister it before the clock hardware is released.
> 
> [...]

Applied, thanks!

[1/1] phy: rockchip: inno-hdmi: Fix potential stale clock provider
      commit: e7d2f93a4426ea6b33dbca1ce585a9876e3a7344

Best regards,
-- 
~Vinod



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
