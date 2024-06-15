Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B158C27C4F
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Jun 2024 22:32:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4AipGrgDvwPHi82TiUNdZekar+RdQg50ORtoyO/JKKI=; b=M3FPW4oIJgQx7X
	Gz+z0wZMgFG4iJi/uHGPe8hdlbpmiVGqyrhU4aa8D1AmrzNSfEdXOsAr/I82Ka30sRBwS3dm6a0jd
	JB3cXhW5pynWKBprwMYL8hKrca3lNaKXY9PXpq2gi73dedmoPnIWI3s3fhTIW/9arIpMJUsSYsic9
	YNOctt22EIf/VVmPIbpd/VrAWuiWT4AbIpfr0OzRjHcqw+v/K3AOIbs/1dviGyfcP5euz9iVNlHpH
	XBQTjrPvQ0sUyTG4CEgXV0v9/4Rlk3Jb4JQjxEbFZeOtSJGEv1xuV+j/M1gKjc7JtWPexixzu0OkT
	JR/sN/Wt737kCH+M0Prg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIbwR-00000006DOl-3D9f;
	Sat, 15 Jun 2024 22:32:11 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIbwO-00000006DNr-2XA6;
	Sat, 15 Jun 2024 22:32:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718490725;
	bh=7XrSzKmwP52JgdaTxNDC5ItcCdg1ekFDgIZGwIYnShs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=OuDwpIHpTYC6TNb5JC1Zk4EkLodvsgULeNI4dFtjeJpW96MmjrEzapMLUgxB6gT97
	 kObTwo2x56YIi+krngtB9zMao0Qejt2JsSNI/sAuVOciq66S70BdMvejN2PaIUC+VW
	 bLJoS6SeyweOGIcTEU0/Nygd6ycDdnFiOkgbrOH9Np3ygK6R/shxyQMOkATLQiCg4c
	 tK7GSixfcjWp2stA6j4JjhzOVYdqeD2uPAEYMucJkZuU/xpvlOvBq/HTXaw22TXXUS
	 xF4SNDw64xuWb8Y4svgtYAwcP3idWb3R36prYVi5u1VC9KEbEvkCOc8ItkCPWBxxam
	 QW87WAPsLHK1w==
Received: from [100.109.49.129] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 744653780575;
	Sat, 15 Jun 2024 22:32:03 +0000 (UTC)
Message-ID: <b298efa3-ea5c-4ac5-9026-8bc09eea4c84@collabora.com>
Date: Sun, 16 Jun 2024 01:32:00 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] media: rockchip: Introduce the rkvdec2 driver
To: Detlev Casanova <detlev.casanova@collabora.com>,
 linux-kernel@vger.kernel.org
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Dragan Simic <dsimic@manjaro.org>, Alexey Charkov <alchark@gmail.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Diederik de Haas <didi.debian@cknow.org>, Andy Yan
 <andy.yan@rock-chips.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev
References: <20240615015734.1612108-1-detlev.casanova@collabora.com>
 <20240615015734.1612108-2-detlev.casanova@collabora.com>
Content-Language: en-US
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20240615015734.1612108-2-detlev.casanova@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240615_153208_996733_2E7E49F1 
X-CRM114-Status: UNSURE (   7.58  )
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

On 6/15/24 04:56, Detlev Casanova wrote:
> +	pm_runtime_set_autosuspend_delay(&pdev->dev, 100);
> +	pm_runtime_use_autosuspend(&pdev->dev);
> +	pm_runtime_enable(&pdev->dev);
> +
> +	ret = clk_bulk_prepare_enable(ARRAY_SIZE(rkvdec2_clk_names), rkvdec->clocks);
> +	if (ret) {
> +		dev_err(&pdev->dev, "Could not start clocks\n");
> +		return ret;
> +	}

Remove this clk_bulk_prepare_enable(), clocks are enabled by runtime-resume.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
