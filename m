Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76204C0219D
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Feb 2025 10:41:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ydDrU2pKyhAjQfchu0KW9di2AX9qy9ssMruB7prwNKw=; b=EpC8AboTxG1mQn
	fqZaUiRjNa4dYboCe6rlvIsL774cV8uztSyheJgVEJDS2nY9lqNN7UeLLxr2VoNcJkcZMtsiqEwXc
	2DFRWPGMqxoVDXEdUhxVshomDrK0R+pem9T2SsdjdO3g2Zc7wZT/he/LJ99RQOjysOOiWcCQDIu01
	Z1VGN67ML8w7OuA2whGq4fIrJdaG9QTu2WSRHunpylClI/rxi7S6zV05jtyxZ4IWpQh08ZO+eIbU0
	POI3mZrEmNSRexkUGX9gHvdUgdjrOQcnmEmRFWP61tSuNxNDNup1HpaLXeLDMWWNopThtUhilFmNT
	2C10FXRp69QebN5YGtXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thnhK-00000003O3m-1De8;
	Tue, 11 Feb 2025 10:40:58 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thmaD-00000003Aal-3WFp;
	Tue, 11 Feb 2025 09:29:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=mKxU1H0bH4jOjCpR1iDA2kn4hJyozUlGpPk9T5FA/N4=; b=kb4h2hIuQ0HoYNxPQOpEZnaVSc
	mVSt6EnFBR4qR/ZCgvTtvNl7Y5kSb1H0lLWBuHvODMEwkiF7CZ/EGx2i+DKAZgZ4FyXATa1ASfV0h
	tNMGXNnt8IYt3Ya4a+y8g6tLSgg47ueb5NRUZIgS+JWIm8sKWVuIyzhQs4vGRi4elvb2i1A4sBFkk
	K0UIdvj6XrYTRRkpBnwoiEb8+4pSoRtTItQW311Fl2vjqopksxp0jKvYyVQV13sNWnzlUTkEr4XiH
	xIJPSJCniNWMySYGyBDRB3LQfim3GWC94qEhDynUZt0Dl4nwA8Qy5b4ugqEohOlZTdHLuvvMlOIO4
	E9Fl+g8Q==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thmaA-00000000XqY-2XmN;
	Tue, 11 Feb 2025 09:29:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=mKxU1H0bH4jOjCpR1iDA2kn4hJyozUlGpPk9T5FA/N4=; b=khD+fbl6rFjDcBbbVPzRaalweS
	coRFMUULM4kw5PMl6IonM8XSYGxIZX5by/0liY/PQq2/ngdVU43/BHV8aJMZ2gP6Yp+BgLXdB+lt9
	/dDS8qOgHNbsINo5D3WlB6+WkryLtDwItBu9HEJWBDRqRGdRsNBKmPN5d9zz662XOybMSSb4CfwuH
	BhfYvNtIYJllmFhPM7XJjWnh12RQHn25081YBx0ZJfOTZBEDS4VB0coFZiptRtN7mZdUuxmH9/P9B
	dG/dk5YnHdUuov+4K+qn6oLrTBCFR5Vzop17VOJAUF8MUwUz8cHTyVMpJNd2J1nrW1zx7cU8iEo4h
	ysGtCfhQ==;
Received: from i53875bc0.versanet.de ([83.135.91.192] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1thmZj-0005mx-GW; Tue, 11 Feb 2025 10:29:03 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Alexandre ARNOUD <aarnoud@me.com>,
	kernel@collabora.com,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v2 0/4] Add support for HDMI1 output on RK3588 SoC
Date: Tue, 11 Feb 2025 10:28:51 +0100
Message-ID: <173926612575.1219038.14455377173250297870.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20241211-rk3588-hdmi1-v2-0-02cdca22ff68@collabora.com>
References: <20241211-rk3588-hdmi1-v2-0-02cdca22ff68@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250211_092930_887666_8C7E9500 
X-CRM114-Status: GOOD (  13.86  )
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


On Wed, 11 Dec 2024 01:06:13 +0200, Cristian Ciocaltea wrote:
> The patches provide the basic support to handle the second HDMI output
> port found on Rockchip RK3588 SoC.
> 
> For now I enabled it on Radxa ROCK 5B only, the board I've been using to
> validate this.
> 
> ** IMPORTANT **
> 
> [...]

Applied, thanks!

[2/4] arm64: dts: rockchip: Add PHY node for HDMI1 TX port on RK3588
      commit: ea97212a0f66b7bd71c23c12f781f1770dd6fcff
[3/4] arm64: dts: rockchip: Add HDMI1 node on RK3588
      commit: bed6964e779b5853de042da14320edf9f79506fe
[4/4] arm64: dts: rockchip: Enable HDMI1 on rock-5b
      commit: 77cea7ca13680e14119a3b9635c7ef16cd7ee44e

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
