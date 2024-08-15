Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB399C52D7D
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Aug 2024 10:43:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=spS6Fhfs0a5rpibVlI/yJDopRI9qOSj7wt5B//S/PCU=; b=NMEARiCV0lsVfr
	oFIjEF2ln1K0ngfIToj2/E0gMLWnZBvz4IO06LFEMFT01vmoOc7mpbuVJhXNHACufsr/76/mSf4wq
	y/3SnIvVcbR4z8w3GPAaYu8TsRh4+UAX4AdOWZh5isQOtD3ozPRwG8zB/tZzM6SglkPbsLzh6wv15
	HPcDiBtsl9YbzOsPOvk6Bp0t57mtTxsuaUyWf8s8NA7phnHONALtrdXf/5VVkZBHxPn3W4nn3lF+S
	TMJM41iN8ndsideDzMnu0TZ3SX+aE37EOkBRRlbhfVBUKeE1PEuXiZzqRMHWozihg4jSN8JEfu/jO
	tjqH4GkWs5fZKVoB2+Lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seXwz-00000009fWO-3Ugv;
	Thu, 15 Aug 2024 10:43:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seXuk-00000009ekG-3UT5;
	Thu, 15 Aug 2024 10:41:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=JtSYMyjFwSHhr4JtGadybcU9/7LYdzxEw3v7M77JOOI=; b=gSWfRbD9AgJemxejQrnE4jm7Z+
	yogtanjJkf9uoZTJp1wo11bDeGrPq+AhivlTvFWYrkkOzMXbtQGDoYu2ZJDDTjOz5KoKCYG1IIhXz
	ma08MKO6MPdooJ/ppqXLN5l9cWnO2oFpDplHhm9pADOkD6ihvs7x/T5Vbq0sFjlb9jIFuUom0A6lC
	9zE2JiKvkXsqF5cXHFngitFfAYUgN5piYur+dqQPCbCpsFwlirbtJu6bOZpCNs0A7mKM1ERYxv+t7
	BVRDOH1DQAMAt7yCxSGOuPQCS5rv78T1DV9xHa/giPjTq3+XFz3NsPmzepr9gYPh7fKzFuLlK7LGV
	HuuY0YiA==;
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1seXuH-0000nZ-PS; Thu, 15 Aug 2024 12:40:37 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Val Packett <val@packett.cool>
Cc: Heiko Stuebner <heiko@sntech.de>,
	dri-devel@lists.freedesktop.org,
	Daniel Vetter <daniel@ffwll.ch>,
	Sandy Huang <hjc@rock-chips.com>,
	linux-arm-kernel@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 0/2] drm/rockchip: vop: Support internal display on RK3066
Date: Thu, 15 Aug 2024 12:40:32 +0200
Message-Id: <172371788341.684432.2581958703388281846.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240624204054.5524-1-val@packett.cool>
References: <20240624204054.5524-1-val@packett.cool>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240815_034106_878119_7CE3CEB7 
X-CRM114-Status: GOOD (  10.29  )
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

On Mon, 24 Jun 2024 17:40:47 -0300, Val Packett wrote:
> This tiny patch series makes the changes required to enable the RGB
> display output on the Rockchip RK3066 SoC. Final version as discussed.
> 
> Val Packett (2):
>   drm/rockchip: vop: clear DMA stop bit on RK3066
>   drm/rockchip: vop: enable VOP_FEATURE_INTERNAL_RGB on RK3066
> 
> [...]

Applied, thanks!

[1/2] drm/rockchip: vop: clear DMA stop bit on RK3066
      commit: 6b44aa559d6c7f4ea591ef9d2352a7250138d62a
[2/2] drm/rockchip: vop: enable VOP_FEATURE_INTERNAL_RGB on RK3066
      commit: 6ed51ba95e27221ce87979bd2ad5926033b9e1b9

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
