Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBEC9C282DE
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Mar 2025 19:03:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=98yDcQNGa3VGt0EGJ5OJ2etvasIpop7sCHG4GFa7B68=; b=nUJ0k5d4EMeDbs
	nAKZA+IFhJ/GtUUvEJFPXOlceMYq7UywL1vUAvFMqGhRx5djoEHBiJlGPN3QYVe9aj3Qnb7uQQRKi
	L+qdpXZirQW+LG0RGgxwvLMuWFM2854qz9sSU5hHmz55PNqVXLRoKje9sd/oeUSfaGvzoQ00XaMBD
	Z7PQT+U/otzNzzZBTT9Fyk9h5u30cKoLNQBcWdVZUkf5W/vzf7Q5HFE688mBTm03WKdopsQcD1p30
	CtkeJ+ob3MlZE3SVJakRP+gzni5uZkrsSme9mk2rqlB78/Lmw2aJKFM2lFx9u++4ETR++pP1EMqi0
	WE34TfhPCkqS8IkietAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsnqB-0000000CGdx-3eWW;
	Thu, 13 Mar 2025 19:03:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsnq9-0000000CGd4-1A71;
	Thu, 13 Mar 2025 19:03:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=H5mdS2EnE4cpGSwW2dj+33eKcmSk0c9tKXjXQcM25/Y=; b=zjw9b1/WQHf2OAGZlzSVLoknvh
	L1RzSpSTzDaBy2/7e0enIt/0atwWM1R3t4p6z7c+Lnp9Kqve3jzidGIU2liFppchMDCJ/55q3o81w
	wBmcrUYreJ14Nl+B7ENvo7tK0OH1ZmtsY8/c0UnHNNz+gu04WenM0+w7HgetKI5XlUgGYuG8mkSh8
	lEllzjETEAnNXmGdbyWXjj8MMiE5V/9s4fo/aMhSSXgEKAcJ+5X+VSiqLyqWVn4FiuW1RLhqOw8vz
	LcCcK+pI1jy9CJy2gEJbZyAZvLAOZ/0xnSZkRtjgcKlUAZG/vq038NnSC1FWFqmSfZQZvM8XjDBvC
	fwApDVeg==;
Received: from ip-185-104-138-79.ptr.icomera.net ([185.104.138.79] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tsnq2-0001sH-Jr; Thu, 13 Mar 2025 20:03:26 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Jianfeng Liu <liujianfeng1994@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Enable HDMI audio output for ArmSoM Sige7
Date: Thu, 13 Mar 2025 20:03:13 +0100
Message-ID: <174189257844.294070.2578524540715601524.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250312164056.3998224-1-liujianfeng1994@gmail.com>
References: <20250312164056.3998224-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_120333_314729_4AC46446 
X-CRM114-Status: UNSURE (   9.96  )
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


On Thu, 13 Mar 2025 00:40:49 +0800, Jianfeng Liu wrote:
> HDMI audio is available on the ArmSoM Sige7 HDMI TX port.
> Enable it for HDMI0 port.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Enable HDMI audio output for ArmSoM Sige7
      commit: e2759a8d452bcc1b64ecd4e819411fa26b6ed72e

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
