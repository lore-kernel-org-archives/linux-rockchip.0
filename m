Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3FDCCA0EFC
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Aug 2025 07:10:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uhp9ONBHBzaVOxFCquHwaXa4wPy1GlOLC+v6SqL0al4=; b=qor4Aht5D56kB2
	HnfkWUrhbbTZKy0/h7OL4dMEJU8v+O5Z54Ky0+oMt8lU/gMNttz6AqXQPkJlqxLuazxttWk0b2LUe
	YDZM8zb+okXxbSHzEoR7KhRTN0PD1R1YQlsIge0wde+pogdx0IHxHwSb4HiEqLW70hFiP4SfYrb71
	FimfYc2gvrdGvR9HLngbyGepN4WD2wj3zYAxl6VzBk4JMBq7zYehEDaWQZI+DmL7PLpGIZQHK27+E
	Mzi7fON4LaafCY7gB6vv3NILEKXrX5XzSjOrdb2Ktv5IjHHQxiIopjvpDkOORkUal7WKnthguvFAh
	w1HU4drhzBAxkLIAifpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uq4sH-00000005oWY-1SOi;
	Sun, 24 Aug 2025 07:10:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uq4pc-00000005oH3-1O6H;
	Sun, 24 Aug 2025 07:08:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=ynMonaEdgTHZ5N5bILmpB4tAuADuKGxa9fL/MTeKXVg=; b=Uez20UmUI0sAa05rjqzqDt0CzQ
	8CKmOY35TVWUgZ3XEZq5XYmBWUeBO3nSAARscseuqupVvMC0kS5fiJIoJt25UEG31NUoPEp7A6n7k
	sp17p/26Ef+zUyoZPmvnq5t9EH4COzc0qhTg57xHl0Q0oWpX0n1kbXyA4DhvXW3S8Ri0zHbHp4EOV
	4WOs1VFde7QNtmWXRc0e7WQiTzGIMX6Fv+7C7hCgJgTyheCtONZLv7UVsZU28zmaKkRl2RvcYc+b+
	EP+X/+kvPpfqSS1ExO9i6Sx/HsqtbFDkj1A/KX9z4ED3kjT61KkVMFde+ZdCM9YfOyBiBXgSVk097
	O8XtqOdg==;
Received: from [212.111.254.164] (helo=phil.aerolan.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uq4pa-0002Oo-O5; Sun, 24 Aug 2025 09:07:58 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 1/2] ARM: dts: rockchip: Minor whitespace cleanup
Date: Sun, 24 Aug 2025 09:07:50 +0200
Message-ID: <175601920181.3425909.15494425933618614954.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250819131607.86338-3-krzysztof.kozlowski@linaro.org>
References: <20250819131607.86338-3-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250824_000800_493658_0FD78FF5 
X-CRM114-Status: UNSURE (   8.87  )
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


On Tue, 19 Aug 2025 15:16:08 +0200, Krzysztof Kozlowski wrote:
> The DTS code coding style expects exactly one space around '='
> character.
> 
> 

Applied, thanks!

[1/2] ARM: dts: rockchip: Minor whitespace cleanup
      commit: 106bdca970c1f66e2d4ee53675df1575b01c65ce
[2/2] arm64: dts: rockchip: Minor whitespace cleanup
      commit: 521b36e5a243d94e843c0f03285fc49ee88c37b6

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
