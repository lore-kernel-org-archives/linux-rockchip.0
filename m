Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A279FC79FAD
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Jan 2026 18:05:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZToT9aMOOYBFXE3fRk4IGh9E6cAqe0h/duwPS3aO+9s=; b=ILQWv0wu5qioc6
	A/9vQcYC4RDLuzF6dnZNsSzqoMiPzF+uqa7xXxG5xUzLheqq7/VgtreYnef4PODmJHZe7hzApavcW
	22TBP1xTdo6JdU2YibtpUapXdkR6hQlAXsgUcZN90MJdp3w87+faSC6Zf/VQud8SK98ihQogDQW4Q
	fmL3HAp2Kidava2k4hNzOrc7JqYZJv4Mfn4H8+lUoS8LcFPefyg5jA5zAQsdgBh4B9mPVs05+EzDW
	bFwXUPT9pRbeI+ak7d1mWh03O1AIhndIXRP/CaFEB2aY0KvB4N0qG/GO0WItmdEfrOIlzXQtgQ8D2
	dv+UgIZ34T4GgEcOzchg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcoxR-0000000BtuR-1iN4;
	Mon, 05 Jan 2026 18:05:33 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcoxQ-0000000BtuH-16ss
	for linux-rockchip@lists.infradead.org;
	Mon, 05 Jan 2026 18:05:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 670256011E;
	Mon,  5 Jan 2026 18:05:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD435C116D0;
	Mon,  5 Jan 2026 18:05:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767636331;
	bh=GdjI++O5FHvFcVhhJqFQs8YBsaBzvX7sA6t19aYaiYo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XHXcvahaKUI7WI6t2L/vnVhLRONcdXcRMI3G0l86hi7MuXhhFyVTXgQHQlFALiarI
	 Wvg0J1g/Q4Y46Ggy37ZGyaFGrO2PJf7112PTtk7HY8i0HpUkS3S9j6RoIcy+aV3nSU
	 /QEvy79BE5WIuN8e2dmiuo5y9iOvQWr+A5lkpHtsxLH1UXDKS/yHb7ELlT94cmT1eA
	 SAHgOmiZhbL8R6xJRK0XM+iZZidD+TwSoNZwrwLwhfdFa3fyfqmz2qhgFfvl2NUIQq
	 W/oKlGEFEzhBEsD4W88Yal+ULBsoPLBd7xWGC0f+6dzVpD3gS5oUn00NzDgx+6b56p
	 ccl3JBQ5YQFQA==
Date: Mon, 5 Jan 2026 12:05:30 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: pbrobinson@gmail.com, alchark@gmail.com, ziyao@disroot.org,
	linux-rockchip@lists.infradead.org,
	michael.opdenacker@rootcommit.com, will@kernel.org,
	catalin.marinas@arm.com, quentin.schulz@cherry.de,
	kever.yang@rock-chips.com, jonas@kwiboo.se, conor+dt@kernel.org,
	honyuenkwun@gmail.com, heiko@sntech.de, krzk+dt@kernel.org,
	dsimic@manjaro.org, devicetree@vger.kernel.org
Subject: Re: [RFC PATCH 1/3] dt-bindings: arm: rockchip: Add Radxa CM3J on
 RPi CM4 IO Board
Message-ID: <176763632953.3036662.6418177359981655547.robh@kernel.org>
References: <20251229073840.25516-1-naoki@radxa.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251229073840.25516-1-naoki@radxa.com>
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


On Mon, 29 Dec 2025 07:38:38 +0000, FUKAUMI Naoki wrote:
> The Radxa CM3J is a feature rich industrial compute module developed
> by Radxa, based on the Rockchip RK3568 SoC. [1]
> 
> Add devicetree binding documentation for the Radxa CM3J on RPi CM4 IO
> Board.
> 
> [1] https://dl.radxa.com/cm3j/docs/hw/radxa_cm3j_product_brief_Revision_1.0.pdf
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
