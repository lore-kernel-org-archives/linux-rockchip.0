Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D94CDD3B7E5
	for <linux-rockchip@archiver.kernel.org>; Sun, 28 Dec 2025 10:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=woNeVOTGDay4zTsjX+fAtOzI6XmnSw0nRlCOYP2QG3I=; b=WZgnuxMbpJcypi
	K+D0jQA9jCeepzW6aj0oVifJVOGhWwHxoUEJ4H1u59/EU24cYPBBxsdpPr5IZ/oqsun5faW+6J8IS
	LDi+f01EKBXdLUrq1W5O/OBoOmbDcvBKQUB7Cg9bqK7YvTMjg/bF5ta6sAIWbpFYhhRbNFFKkWAlF
	ZHB267nLd2XXaP6lsBU1h8lNcVI80ztdaHTMyj6eZ7EvAYa2MDewI7QR7ofYcGhnNmAe5X7dEqDar
	h3tFtvP7jFGMCy1Fgc8NbuhwOFAFvJeukRCr5WvtYRu1ciu8YuCiwjVVHYO0Ekt6azk6lP9+mUNy3
	ClwiggsADVwVjhP/37eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vZo2w-00000002dOS-1MDI;
	Sun, 28 Dec 2025 10:30:46 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vZo2u-00000002dOF-1Bsg;
	Sun, 28 Dec 2025 10:30:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id AF9A860055;
	Sun, 28 Dec 2025 10:30:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D8720C4CEFB;
	Sun, 28 Dec 2025 10:30:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766917842;
	bh=iSoBZKWqJzZOiZShBZ0SH5d1WexPAjGU44wbacsprJ4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BtWKMpXiztzSDj7ueLLhMipJA0rLwp//K64RVHmJIYzIcP8aKBgqMQZuxUOs4dt/Q
	 cIOaepS2VAx1eWlAsn9mKJ7N3/Q+tQdGoge8olMwM+FZNCUtZstk0wrqQBS/fgGcp2
	 eaKVA4PuMSKQqqHLPqnYd6SVDoci+13dF6M9LaGRvKy7pss/8PKpc8Qaln0h5p9agV
	 EhRW9U6buwJrNDLBU/Gb+VocPuoPvcjxPcaJhkHyLtm2Ms3xXpq5fMbxUbfZPfgc0P
	 g8J+rBuw5J1K11OlJzR57zjxeopKqGQTD4a4/2NR4n3W70p+Qf+Ls5puewFw+4/Mld
	 qyBGOqBMt1f6g==
Date: Sun, 28 Dec 2025 11:30:39 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ye Zhang <ye.zhang@rock-chips.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, 
	Heiko Stuebner <heiko@sntech.de>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	tao.huang@rock-chips.com
Subject: Re: [PATCH v4 1/7] dt-bindings: pinctrl: Add rv1126b pinctrl support
Message-ID: <20251228-airborne-elated-asp-c8f1fb@quoll>
References: <20251227114957.3287944-1-ye.zhang@rock-chips.com>
 <20251227114957.3287944-2-ye.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251227114957.3287944-2-ye.zhang@rock-chips.com>
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

On Sat, Dec 27, 2025 at 07:49:51PM +0800, Ye Zhang wrote:
> The RV1126B is a new SoC that is the successor of the RV1126. It has
> different pinctrl registers and is not compatible with the RV1126.
> Therefore, add a new compatible string for it.
> 
> Signed-off-by: Ye Zhang <ye.zhang@rock-chips.com>
> ---
>  Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml | 1 +
>  1 file changed, 1 insertion(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
