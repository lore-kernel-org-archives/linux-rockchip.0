Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D822CEFCEF
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Jan 2026 18:42:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FhXZeLZjSvObsHO8hBmzh5AMRvftQmbPCOWhOcuGXXw=; b=xMt0PXyCKEldIR
	vrzlN9Lowovc9seiwLtUpABHeZt6EuluOMD/+b8zO3FlfhhRUeyuVOl2y9aKj0fdo4hgB2bbZZTyP
	IxAOrqIaJ9x2MAmsemhnufcqZJkN8Nmo07O65vuF0FxKrKl+ar5i9ZOfyivCuI6eq5dyfo8J9rTVt
	8n4eOsvg8/qyRxHH3H6UcSfppEeUzOxKzgIQCKiRi0AbGkereErh8vvSKvpZFScNASrB+BidlMZhi
	CfYWmS5zGZLaAFxp8//6MriGX34/M5pBo21+h+df7HvZx1ohsmhdAPnS/JsEZlOAtLYuZCmnY1amQ
	tJtXHoV5+CuDXoZvDeyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdC0U-0000000DhCd-1Yef;
	Tue, 06 Jan 2026 18:42:14 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdC0Q-0000000Dh9j-2edI;
	Tue, 06 Jan 2026 18:42:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=L8UU7UO9MTvtaN16IxhFCoptZI6QmiDvDm1zHHC4rIs=; b=jPNC0wMUS0zykPN5u7wzbD6aOj
	w+0L5kxSN5K6G3nUzqfV6/GuzriuSHa7CgHPhY00nMWoXwPVgO7lqiyeScCpN0njSAQMwSiIKNoda
	G/zcBF56mhAJbCm33tGML60fJpDknuHsxGRFOl/zUzowUvAaTdoa/0jLRRAnMZyE8QB9MeRM5tmFP
	EPQ5E7ovXZfoP2clvW1vJVFBlHeI7mJwyuNHYwK4zG2+iW0mJBakV7GLA+Z3ls8YTD6ZDYb+XMS8B
	QJpSEx4oGA+X/xk5aKy8a+nSdaNq5AS8Di1fP1MKHEdkbC8VaMCn0uxBbylcymqO3A57m7khgZTvR
	GL2yBJ2g==;
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vdC0M-001Hfs-MM; Tue, 06 Jan 2026 19:42:07 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alexey Charkov <alchark@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] arm64: dts: rockchip: enable UFS controller on FriendlyElec NanoPi M5
Date: Tue,  6 Jan 2026 19:41:56 +0100
Message-ID: <176772487184.3029798.254333001425735239.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251230-nanopi-m5-ufs-v3-1-ed188ae34fdb@gmail.com>
References: <20251230-nanopi-m5-ufs-v3-1-ed188ae34fdb@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_104210_736569_527B9F78 
X-CRM114-Status: UNSURE (   9.58  )
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


On Tue, 30 Dec 2025 17:23:34 +0400, Alexey Charkov wrote:
> The NanoPi M5 board supports pluggable UFS modules using the UFSHC
> inside its Rockchip RK3576 SoC.
> 
> Enable the respective devicetree node and add its supply regulators.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: enable UFS controller on FriendlyElec NanoPi M5
      commit: cd50298ffc5f98872ddf0ac05c51a014003a34b7

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
