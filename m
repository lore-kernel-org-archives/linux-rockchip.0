Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8449AC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Feb 2022 11:24:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Cs+YHpATp91/NqmQWV0iC13NbywyVhe1eFchLQPTDw=; b=exAfkFEBk9aNqS
	XT3FIcTPY6aE/veG+kULCKT5o7utjgI9HZ9G/8C4kb2SQjepfwvzw608pEZKM28B/Mqs1z0606UKx
	mTA//ljZfjh6spvkZmXQ7kYM1a2Kd7BmeoeYvRlMlTPuKvnm09N2V3ORcsmXIG77sbBdmlglY2JgA
	G9BQOTI8Zh6cx6KRoYu5QdDhpgYFSDmYjOBwbJqBrnjHth3gYJCLpmCN0WDtMRFEaC0EHoLdtsrZX
	C05T6uJJDWLisI0PQ/97uOYfObHH46gWQYbdd/vCfUrr5a0Av71dx1BNnhIg7Z8rkT9o2087vFkjV
	7QilMjrVRaRKiaMesmJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOe8R-00Bq2e-Ks; Mon, 28 Feb 2022 11:24:11 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOdkv-00Be8M-1f; Mon, 28 Feb 2022 10:59:54 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dmitry.osipenko) with ESMTPSA id E91441F438DC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1646045989;
 bh=gFkF0Up+9NtOgOLNqe9lR243CToghyCTK5EY9eHmHzs=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=MJ8oRoRC8+rjgLECF5i6IhrMZzx/P7lN066bGYaNvM2pwNtfI/7W0OUur7hJWQhR0
 CCtVjsT87MhjVFsBPHdsIZWkI77UAoagHwIbtwEzgZ9xL9BeyIkPXDzZp/1BcchcIG
 BhSsZLqbnKAOu0ZpZ34ZZy4lyINvb6pmmzeoKe0kXTGv8hYJLkQ/OPOyiyiMl/hIRy
 vXbePQkvpAHYPycy0hQqHFYZCYXJBKfUbbGy7Er2jJCkE2Pdc9/+mk7lQx+sdlb/9+
 na7iJkOvpxzDEIdiPY9gWohTyDDSDd6n5Qg7fFxa+xqWGqrxQKZ0xwD2ylDTQ7BaYD
 +y/9ykdyFCdXQ==
Message-ID: <29ca1e0c-cb55-edcc-fed5-d60a122dc20b@collabora.com>
Date: Mon, 28 Feb 2022 13:59:46 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v7 03/24] drm/rockchip: dw_hdmi: rename vpll clock to
 reference clock
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org
Cc: devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Peter Geis <pgwipeout@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>, linux-arm-kernel@lists.infradead.org
References: <20220225075150.2729401-1-s.hauer@pengutronix.de>
 <20220225075150.2729401-4-s.hauer@pengutronix.de>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20220225075150.2729401-4-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_025953_310276_9884AF37 
X-CRM114-Status: GOOD (  11.45  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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


On 2/25/22 10:51, Sascha Hauer wrote:
> "vpll" is a misnomer. A clock input to a device should be named after
> the usage in the device, not after the clock that drives it. On the
> rk3568 the same clock is driven by the HPLL.
> To fix that, this patch renames the vpll clock to ref clock. The clock
> name "vpll" is left for compatibility to old device trees.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> 
> Notes:
>     Changes since v6:
>     - Simplify by using devm_clk_get_optional() instead of devm_clk_get()
> 
>  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 27 +++++++++++----------
>  1 file changed, 14 insertions(+), 13 deletions(-)

Looks nice now. Thank you!

Reviewed-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
