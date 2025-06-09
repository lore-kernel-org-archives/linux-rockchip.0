Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E10CC61DB2
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Jun 2025 10:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y1YPZp99+28vqMbDbYJvQDS9bffa+MUCmn+y3+m6oN4=; b=lbl9cKTPZb94yS
	MYMv4+klcuzoWfY09W5RGwK6LKHgM/eJzJUtt7cxG386ClTngdb2+QgckuJ6HigxoEixe8DdPlqUX
	CDqJIolYb7W0xpDQM10LRVG3+8iwl/ptOasUNPsWI0+MGeBX8jUoOvxGgt7nVbSSY3XTSyWw0rBlw
	9sx7yTHYCUugQoxiXoWPypmLpZSU+P92jEac0L1H4LRxkLLpnrvGMbFoebhb++MmrIEHN3w2HI1mU
	YkeczymZ3h6KxAEtPcMsPH+EZTdJhFeTZRRqMJehYSedtKYqSwpOp1WtnJjk8J1fkqaQX62Q200Z9
	AHrPA5KD3j7veOIbwdHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOZu7-00000003vXq-11Q5;
	Mon, 09 Jun 2025 10:38:59 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOZfI-00000003tW9-0yjP
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Jun 2025 10:23:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=K0AL5zLG/bnHCisTlv3I7JUPhVxh/ayleUVJo70oA0w=; b=lNlOB6MgeXdxPAe9TjFU3cpJVZ
	GfryxcfdyOMRrD1gNxqJWb5iNEvacx97E7D+mBRhLeF4SORLw7nMxOC15dTvP5ZsmqmUHKKHu314T
	8UebT7IP3vHNlEFm9RI6KWy2++fkk3vKn2NvPi+OVZRjGr2EBTnnyYy54DVLctrwdF8Z1eJyGW1LM
	E51O+QYqEnKiV1j80ZPRfq4Q0OGb1XRuJo3KmFX69ZdHTqmAyPutux8Ix7pAO3cva+Fkl85CakzAY
	9daEDAejh2c0dHn6fdPTHevTCmXYTynjNIH0mhfn89hycndTNiStFVUZMSnMODAC9z8ZgfW7+f7Sn
	3yhpi7zQ==;
Received: from i53875b1c.versanet.de ([83.135.91.28] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uOZfF-0006Av-18; Mon, 09 Jun 2025 12:23:37 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: dri-devel@lists.freedesktop.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	simona@ffwll.ch,
	airlied@gmail.com,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	javierm@redhat.com,
	megi@xff.cz,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: (subset) [PATCH 0/4] Add DSI Panel for Gameforce Ace
Date: Mon,  9 Jun 2025 12:23:03 +0200
Message-ID: <174946455531.762051.4163841843437974105.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250603193930.323607-1-macroalpha82@gmail.com>
References: <20250603193930.323607-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250609_032340_271871_267CF94B 
X-CRM114-Status: UNSURE (   9.95  )
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


On Tue, 03 Jun 2025 14:39:26 -0500, Chris Morgan wrote:
> Add support for the DSI panel as found on the Gameforce Ace handheld
> gaming console based on the RK3588s.
> 
> Chris Morgan (4):
>   dt-bindings: vendor-prefixes: Add prefix for Huiling
>   dt-bindings: display: himax-hx8394: Add Huiling hl055fhav028c
>   drm/panel: himax-hx8394: Add Support for Huiling hl055fhav028c
>   arm64: dts: rockchip: Add DSI panel support for gameforce-ace
> 
> [...]

Applied, thanks!

[4/4] arm64: dts: rockchip: Add DSI panel support for gameforce-ace
      commit: 6b28769116971a4427ea09ed2cb1cf1afa79ab82

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
