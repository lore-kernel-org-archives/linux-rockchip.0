Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65ED6C4167B
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Nov 2023 15:02:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zzRjl6/Bh42Bd4hHAZPuc02iQTob9bR59/qf8J1hOp8=; b=4rQTbEqCNqdL7Z
	pDveYMvHP5nQEZFCoZ/Ybkrw2h0BxarUYm5xnibUp3XhsVDtozbyGtOmbPUuSd13y6N31MxnokY/+
	QkWRIWq60NUbpw/B7B4PV4F6gnwITIDEFRvs0sqzLKB6LSXuZGuB0+KVD+kgiaPrIR96P5VFe66Bh
	PMkB8hWZi0+xCpCFsBuCFMRD+ICUV9t8SzxKp85s86BQYRUC2FHhYoR5WWD38JWGlfzpBM6rTrm6T
	OvUgUktLmm38Zk0756ufKwgEaSN7RO9unN3rSazz8hp8Kb7zZr4pyMmIUfjUJ2kte617U42PJlLBu
	XAC1POgKjeLFViC3KTxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7d82-002lMD-1U;
	Mon, 27 Nov 2023 15:02:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7d7z-002lLH-0o
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Nov 2023 15:02:28 +0000
Received: from i53875bf8.versanet.de ([83.135.91.248] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r7d7w-0003Ga-ED; Mon, 27 Nov 2023 16:02:24 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 kever.yang@rock-chips.com, chris.obbard@collabora.com,
 s.hauer@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v2 04/12] drm/rockchip: vop2: clear afbc en and transform bit for
 cluster window at linear mode
Date: Mon, 27 Nov 2023 16:02:23 +0100
Message-ID: <3927498.QCnGb9OGeP@diego>
In-Reply-To: <20231122125425.3454549-1-andyshrk@163.com>
References: <20231122125316.3454268-1-andyshrk@163.com>
 <20231122125425.3454549-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_070227_291547_083E3BA4 
X-CRM114-Status: GOOD (  10.88  )
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

Am Mittwoch, 22. November 2023, 13:54:25 CET schrieb Andy Yan:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> The enable bit and transform offset of cluster windows should be
> cleared when it work at linear mode, or we may have a iommu fault
> issue.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

I guess same here?

Fixes: 604be85547ce ("drm/rockchip: Add VOP2 driver")




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
