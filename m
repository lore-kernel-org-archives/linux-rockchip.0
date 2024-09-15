Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A317C35FE7
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 Sep 2024 06:16:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ELfzvCd03qBKSD0xaFFhfAGNsTCeUxCuqpDCXwDCG8=; b=m5xyS+DPqcvIJ6
	QJ/gUEDKBhSvkguPuPgXP0TqjX00vTsMJCMGKgMMumFZ0ZpI+naOb43w9n6Ap5ojEjcr7VBxpOhMX
	1NEXntT4URWdS8LGaYSbg5MrYsQBjPwod7MFG+qc1fZea8zwP1Xfj1wyRkjPC8lwxGGaNFBBK4iER
	MQzSw49vkhnDHr6hBYUID2jctyNHofubFRnjTuaKMmDZD3T70bZQePMo1dDAC0sP3wAu6smyu8Nda
	18oXhT2fpc+Via71lnm7wDswuSiuT4f6sWzIVhAKoAF1nJE9GeU39QVh0FQd/P/oFBbe4tonYOGRu
	9bUM8a0xgAPKadWbJhpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1spiYF-00000001eFc-3lPF;
	Sun, 15 Sep 2024 06:16:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1spiX5-00000001e4L-434d;
	Sun, 15 Sep 2024 06:14:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=f+4XgwVGxJeOjUz5ZvQCVWlV8A1nJn2/v5ZCP+iqPbM=; b=DER2PoBDYhRvbzjwgZnsh1iREo
	m3QYH/xlflR6I9HxIc99+Vl1nBuJBnIuWf9hFYtFnNYq7A1B5q/rf+KMKyFf2xyPScBLmkS7byTpv
	0O4WSDqQ1LM1xbyoatxdmo5mu9C3OJ/eSNMNb3lABEqxtnLFyzPvbo8p6kxcy2wRqe+O9ucH6s0d4
	+oFbx3NFjhBTqcKhfPl7NobNfhFG7Aj04+DmkdcmiBLMfpNicSSeU8ZpGcQO+6ZJM/xA/50YaQ1Tq
	Ek+GjfTq8e3sGBMZXuEUjVacGdqeniNoqbdFDYEYwjh0iVv4FX456PTyBZheaIzeTEcxrLW6Q34pm
	NVMtw74Q==;
Received: from [213.235.133.41] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1spiWX-0008L4-NC; Sun, 15 Sep 2024 08:14:18 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@collabora.com,
 Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>,
 Algea Cao <algea.cao@rock-chips.com>
Subject: Re: [PATCH v6 3/3] drm/rockchip: Add basic RK3588 HDMI output support
Date: Sun, 15 Sep 2024 08:13:53 +0200
Message-ID: <2748376.mvXUDI8C0e@phil>
In-Reply-To: <4766d230-c9c3-414d-a954-3b0c890e7e08@collabora.com>
References: <20240906-b4-rk3588-bridge-upstream-v6-0-a3128fb103eb@collabora.com>
 <2376712.1SvkZsmPdQ@diego>
 <4766d230-c9c3-414d-a954-3b0c890e7e08@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240914_231452_042589_8D410F45 
X-CRM114-Status: GOOD (  13.91  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Samstag, 14. September 2024, 20:28:59 CEST schrieb Cristian Ciocaltea:
> On 9/10/24 10:08 PM, Heiko St=FCbner wrote:
> > Am Freitag, 6. September 2024, 03:17:42 CEST schrieb Cristian Ciocaltea:

> > That hdmi->ref_clk just accidentially falls out of that loop at the end
> > looks somewhat strange, so getting and keeping that refclk
> > separately would make this look cleaner.
> =

> I've added /* keep "ref" last */ comment above, but I agree it's not real=
ly
> the best approach.
> =

> I'm going to submit v7 in the meantime, as this was the last remaining op=
en
> topic on my list.  I guess we can figure this out afterwards.

yep, that is fine to figure out later, as it's mainly a style thing.



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
