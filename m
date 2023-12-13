Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A816AC4167B
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Dec 2023 13:02:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=avuzss949Io4aBWCtHKbEtTSNDavdTjUXAW70Mr2GV8=; b=HHRkFC8APASv3T
	B+u1MC9W2xRWLsl5JAL/DJatmGhmK/aS82XOD1A5lyhy87HA4pjiFrDQCN1L4E/ElZwjDBnAcRrO6
	TR4NpudzS3gRYaQ7l/oyYzMXpNK8mLKFWUpQZQ7mBXYXCrxV2d04yZxVw4nuqPaYQUWVaHh8nN69W
	O3r/XjRrdj+2UafXC6Ohy+3vKBRujZfTvvpWiZn/8kYtsMBnpgsQZ8NvD/F9IhPnZgVTn0MhDUks+
	puj6r7LHtlSBaCxiFYUqkt4bq/Ki1Ov5NxekbNZxar8Rrc+6U3F1eEjpdz33aXTSdlJtgWgKp0kqc
	rMiO808Q9tW4HV0EUK0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDOs8-00Ein6-07;
	Wed, 13 Dec 2023 13:01:56 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDOs6-00EikF-0b
	for linux-rockchip@lists.infradead.org;
	Wed, 13 Dec 2023 13:01:55 +0000
Received: from i53875b61.versanet.de ([83.135.91.97] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rDOrn-0007Yj-UJ; Wed, 13 Dec 2023 14:01:36 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	kever.yang@rock-chips.com,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	hjc@rock-chips.com,
	krzysztof.kozlowski+dt@linaro.org,
	chris.obbard@collabora.com,
	linux-rockchip@lists.infradead.org,
	sebastian.reichel@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: (subset) [PATCH v5 00/16] Add VOP2 support on rk3588
Date: Wed, 13 Dec 2023 14:01:34 +0100
Message-Id: <170247248621.617749.15145184052380522696.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231211115547.1784587-1-andyshrk@163.com>
References: <20231211115547.1784587-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231213_050154_221536_0E5F147D 
X-CRM114-Status: UNSURE (   8.85  )
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

On Mon, 11 Dec 2023 19:55:47 +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> This patch sets aims at enable the VOP2 support on rk3588.
> 
> Main feature of VOP2 on rk3588:
> Four video ports:
> VP0 Max 4096x2160
> VP1 Max 4096x2160
> VP2 Max 4096x2160
> VP3 Max 2048x1080
> 
> [...]

Applied, thanks!

[09/16] dt-bindings: soc: rockchip: add rk3588 vop/vo syscon
        commit: 1a648f8b7994dca4c323911607cf28d1eb44c198

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
