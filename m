Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D55E4C77B71
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Apr 2023 09:51:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V1+iC9blNOytjNkCj47ormMGbWuY8NFOgDRb8Aj/xfo=; b=isfZ0E2U7M0A/p
	EKtXZ6E1fOcOzlOb/Uu3IAfLAmRg8IU1KXRd6KUD4aIo2w6jf1qDAYFuVQIOZpBFnReCSLjgByDsK
	8YRM/E1fLMvw+dhCo37IMSxHLyoW8wA1vju3qJth6al5DPujc6IuMMyl7X2G0++qAzXcFqNqoa8HN
	TQO3tGnDRvwaXNjETJ4oJa3UYkaP4ZfiUIx2xKK8WCG2PuUvXwb1tA/FcX73EqUWvhzsElT9s+8PF
	TKiuIupaxibOcyZhjZW80p3AxyIm5SapgarcfcMao2gVBVHN7JmwcxjeApP11V7tRhotbCRzG7+sk
	68JcN2XW4ok05YDgADaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmX89-002TM9-0A;
	Wed, 12 Apr 2023 09:51:09 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmX7z-002THl-39
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Apr 2023 09:51:06 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pmX7d-00068c-A5; Wed, 12 Apr 2023 11:50:37 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Chris Morgan <macroalpha82@gmail.com>,
	devicetree@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	krzysztof.kozlowski+dt@linaro.org,
	Chris Morgan <macromorgan@hotmail.com>,
	robh+dt@kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: add panel to Anbernic RG353 series
Date: Wed, 12 Apr 2023 11:50:35 +0200
Message-Id: <168129302670.3422541.10653161346618325433.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20221126011432.22891-2-macroalpha82@gmail.com>
References: <20221126011432.22891-1-macroalpha82@gmail.com> <20221126011432.22891-2-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_025100_012366_67EFB418 
X-CRM114-Status: UNSURE (   9.52  )
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

On Fri, 25 Nov 2022 19:14:32 -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the newly mainlined panel to the RG353 series of
> devices.
> 
> https://lore.kernel.org/dri-devel/CACRpkdatn3SFaSDwj33QVvx_B-020TaTDoPz3p_9K=EiT7A_7w@mail.gmail.com/
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: add panel to Anbernic RG353 series
      commit: 5e60ec02ec30e2db3088196a10fd20be5432bb6d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
