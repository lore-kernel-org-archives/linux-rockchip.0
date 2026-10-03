Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F039CA5FEC
	for <linux-rockchip@archiver.kernel.org>; Sat,  3 Oct 2026 14:34:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dqi+7JCQx+znLyefpK4t0yY+K1EsiQxxuDF3O3+q/VE=; b=rwcyMiyY+AuGoL
	r6VS+7DPv9k+EIHCsFg5Cextui/lo1a5Zn6fGUlSv6hekLezBrzT/Aqu5pZ47729HCm6z+mlOCpY3
	a/qfpOUzGYwFhVELIHktu9xEiDXJvFsiM3XWpZa1ftkqb7lv6hMeSTWDht9HuF6cgMS0QE3bFpLPj
	qp9WgmeoShgjXG8VDJ8FNK8cb1UaoOP8n3nQ7cZpucY/pqW8iPW8yfC4Kwzkt6BqSuD8BK/n7EkiD
	IAfCQZLkHqsQ2C3OEChU1m9GEtY0zilhAAzkhKqZFmsj8rq1/tV98oPa46PrSLOypXY961vRU1WPJ
	OdpvoiLya1O92JYQThOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xD0oN-0000000DcnW-3MD3;
	Sat, 03 Oct 2026 14:34:03 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xD0oL-0000000Dcmh-0HMW;
	Sat, 03 Oct 2026 14:34:01 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id CE20F42CEC;
	Sat,  3 Oct 2026 14:34:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E78321F0089C;
	Sat,  3 Oct 2026 14:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791038040;
	bh=AFR639q8tbGk2o2B7bnw3EP7nlm2AxE19opzLE9d4MY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=PQLdvN5kALf6gJs73wjnLUlULwRHpG5ddyq+nlsq5nKLkvhk2vfQwyfN+NPRPkC2H
	 Oi4t+Bm4kV3aMZHP51vZLtSRRe3JhiKeQAfGKgt/1eFSXW8kV5beZBqyGCbCh86cn7
	 gVpon8b+BBA07NzoUaf0684GUFRFdWBhwrcqaGzFANB+UUq8mtNlYWJpdbkOHpCP+V
	 r9S/wHF2XRanD5eAczJfi2fpAQiLzKMW+2HnQkBBJiKKCbMDth0l4WGU+EmVuGtRXg
	 +pNPiwqJAIFDYnwQkAz53N98WVBEDeSrcDe2Ry/CGpOWI3fpOqid16SerRcZJv00ya
	 0PiEX5Z8SsNXQ==
Date: Sat, 3 Oct 2026 16:33:57 +0200
From: Vinod Koul <vkoul@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Igor Paunovic <royalnet026@gmail.com>, kernel@collabora.com
Subject: Re: [PATCH v2 0/4] phy: rockchip: inno-usb2: ensure PHY is running
 when clock is requested
Message-ID: <asESVQlMjOYfHk_M@parshuram>
References: <20261001-phy-rockchip-inno-usb2-clock-fix-v2-0-e01bf509359e@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261001-phy-rockchip-inno-usb2-clock-fix-v2-0-e01bf509359e@collabora.com>
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

On 01-10-26, 15:12, Sebastian Reichel wrote:
> This was noticed on RK3588 EVB1 when resuming from system suspend. This
> is technically a fix, but its unclear when the bug was introduced and
> system suspend is broken on RK3588 for quite a while and not just due
> to this problem. So I think this fix can be merged the normal way via
> linux-next.

This looks fine to me, can you check the sashiko issues reported...

> 
> Changes in v2:
> - Link to v1: https://patch.msgid.link/20260908-phy-rockchip-inno-usb2-clock-fix-v1-1-f7d59c31b908@collabora.com
> - Move suspend exit code from rockchip_usb2phy_power_on into a
>   separate patch and reuse it in the clock prepare function;
>   move is done in a separate patch
> - Updated commit messages with proper rationale
> - Added one more patch dropping useless assignment
>   of rport->suspended directly after calling
>   rockchip_usb2phy_power_on/off
> - Add one more patch unifying and simplifying the debug
>   messages for phy init/power_on/power_off/exit
> 
> ---
> To: Vinod Koul <vkoul@kernel.org>
> To: Neil Armstrong <neil.armstrong@linaro.org>
> To: Manivannan Sadhasivam <mani@kernel.org>
> To: Heiko Stuebner <heiko@sntech.de>
> Cc: linux-phy@lists.infradead.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-rockchip@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> Cc: Igor Paunovic <royalnet026@gmail.com>
> Cc: kernel@collabora.com
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> 
> ---
> Sebastian Reichel (4):
>       phy: rockchip: inno-usb2: simplify and unify PHY op debug messages
>       phy: rockchip: inno-usb2: drop duplicated update of rport->suspended
>       phy: rockchip: inno-usb2: move suspend handling into new function
>       phy: rockchip: inno-usb2: move suspend handling into clock prepare/unprepare for RK3588/RK3576
> 
>  drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 85 +++++++++++++++++++--------
>  1 file changed, 59 insertions(+), 26 deletions(-)
> ---
> base-commit: cee9395acd8043be0644b25c34bfa86623f2b935
> change-id: 20260908-phy-rockchip-inno-usb2-clock-fix-edd65b57f884
> 
> Best regards,
> --  
> Sebastian Reichel <sebastian.reichel@collabora.com>

-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
