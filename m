Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7F9DC282D1
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Mar 2025 14:49:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lVyQrU+c2rECYPPSerLUwi8/Hw4lxU7wq90KOPecuyI=; b=BsxqI2nOaG46mq
	h+cbirrGrGMh9PKsGziQ5khV2TNIWCmqWMWl51XcJa3jBzQzGA/49llI6gKERVN1XGYhUGe4vxdhT
	fUBiSV1CMY/mXXArdeJonYCWdixHthCa3JNTi2XQW9s+wrY+/SSvDgrc3Pg2EE1j4Fxy3NMc6SBxz
	6t60RqidvwmmP4m2LyE4IHvsyT5AhwT6rvvLIFUIBUQNLeUasxZfliQah7atKiusGx8bZGCjV0Qr2
	76INPCkV30eOvmFlBUlJuBOx4S33ecbBODKaQxYF0L1aUgaqpVwODN+3fV+osRSIdFRrZ/QGvy01d
	25GQrORvv0IGcp5/T8Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqCWy-0000000BEtD-0rNw;
	Thu, 06 Mar 2025 14:49:00 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqBIU-0000000B3mL-0wCc
	for linux-rockchip@bombadil.infradead.org;
	Thu, 06 Mar 2025 13:29:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=aheBpoWCxDxaoR9qJYcL/Dnzay/8wT76imGpzNigDC0=; b=Ejk9bs9Z4EqpORNqPiF1O7Gey3
	O2uB33yErSQ5UOHqkKPVC1LmagPHMpY+zFrZpTpIjZvOcse9iZtnbOR82+8E7QbeGIx/0CEneHyvW
	muAvOnfxfMDwqhQHDgF2hDQ1biuOCZ9odeFclNYyzoLrKGx5QwHt8jPk6YVCWcUzP2TfvQpWDIuq3
	gWzOGetm16IEED25xo2WEGuR2RGX17oRbLcb0ymFZebxrPOw6gtvqbiUcrB8bVwfu5rf4/p7vhCS2
	MzgaDf0S+pjXHSD1wmE7JYGtAP4dmjA040W7y/If3L61o9eC/eQiXDF3/OyMUfQD0xSZ/erOR3EFR
	KQ4+4NKw==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqBIR-0000000163X-0rce
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Mar 2025 13:29:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=aheBpoWCxDxaoR9qJYcL/Dnzay/8wT76imGpzNigDC0=; b=XlRDh/dWhjgV67cXZemmhiw1Hm
	F6jT2U+d0EmjtmJkeI2k7bAl50lwQWjKiw+wTprYQz724uUESXUqB3Drq0b94Rs5C7MYiHXnLU9+D
	uIM5Cw5TpClUDsy9kenCjcyLnH2sTa9yXqHnmg64GlpzaaK91QBo+RpvrfoKixnXnFtmyedmkYsxo
	2RseqHuV8SispTkct8IxoiSsCqM/kBC/5stLdX3OynmHpMAQLYav3CPHLgCSKQ36dVrvbJBOg13vm
	ELYMlZJXZLq3ihyE4syXE+V8qHUSA5JJW6a5Y1wWmN1Tc36E7NPCw1v2rZWhgeUYuJjUVxySYZ+LD
	llCHzE4w==;
Received: from i53875a38.versanet.de ([83.135.90.56] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tqAye-0003Cs-Tt; Thu, 06 Mar 2025 14:09:29 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Shreeya Patel <shreeya.patel@collabora.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hverkuil@xs4all.nl>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	jose.abreu@synopsys.com,
	nelson.costa@synopsys.com,
	shawn.wen@rock-chips.com,
	nicolas.dufresne@collabora.com,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Dmitry Osipenko <dmitry.osipenko@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	kernel@collabora.com,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Tim Surber <me@timsurber.de>,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	Diederik de Haas <didi.debian@cknow.org>
Subject: Re: (subset) [PATCH v14 0/3] Enable HDMI RX controller on RK3588
Date: Thu,  6 Mar 2025 14:09:24 +0100
Message-ID: <174126656188.656541.9478237014030663436.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250306072842.287142-1-dmitry.osipenko@collabora.com>
References: <20250306072842.287142-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_132955_361450_172972FC 
X-CRM114-Status: GOOD (  11.52  )
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


On Thu, 06 Mar 2025 10:28:39 +0300, Dmitry Osipenko wrote:
> This is a follow up to the v13 of HDMI RX patches [1]. Hans queued the
> driver into the media tree. Now the DT patches are left to apply, could
> you please take care of this series if it's good to you? Thanks
> 
> [1] https://lore.kernel.org/linux-media/20250304085819.108067-1-dmitry.osipenko@collabora.com/
> 
> Changelog:
> 
> [...]

Applied, thanks!

[3/3] arm64: defconfig: Enable Synopsys HDMI receiver
      commit: 97d8fe4b7722104b9abdb9cbeb0e884f864c6477

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
