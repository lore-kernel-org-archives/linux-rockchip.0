Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EC60E9B370
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Mar 2026 11:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pQqVQV+eDPfzYTkczC5KiwpolfByPti5zGzZzipJGU8=; b=H6GDptRlOB2bSp
	ONaYkBOO0eoFsG0mY4x9W19OGKG/dT8Z2mYuCZWt9ZrKMRWY+luUfQkd8bGHS2ldrkoYXQKjxDVoO
	e/EL+PajicL+bFFCdhz4NZyyRU8ZZrg/atQb0bSvDhlMlvTFuZaLT00Wd0fCdhoV460GErk3x5kEY
	k/mFBWSvor1GuPymqiRUImBBwZf2841Z155AfPknY1VWO/UxRB657H2jvovRwpWVZRRcMLCMlitmP
	EQvXQ0Ap5UBFaaqf++ke8sRL+7er6WjR8VVbm3kj4Kt+hKdN4kFSMi876Oxt81MsSF3H2WMujtXem
	J2yHJDaysfL1TOxCwRJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx1dB-0000000CqOS-3pRM;
	Mon, 02 Mar 2026 11:40:09 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx1d4-0000000CqHK-3n73;
	Mon, 02 Mar 2026 11:40:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=ROqmfpiP9UxR05NUIHfXDOcphLtJmZRpXBnqjdcQAEc=; b=TeRlkJ2T5GkuZjK8NaJcC3fc2I
	BLkjoQF/9EvWEdImkMNcusobbMDhiL5wiLWKvSF82aQjsuXu0/5y2BzpNuLsXbv+VJkGQY48yZenb
	VDWQ7pqThqd/Z2mqDwu79rp56iRAp+3unyvYTUSNte2gPPOEIGijDb5/AfPzSdaxT9DBotceIohBL
	eygIlDm/qt+cUHD4EqmFpSK5D4cPhSOajranmmCwVWdBi9rPbj4pxY1a/p9Qlt6XIRJ0yFDvIBK2u
	+V4PvjaKNviypepisxRWkyOPmW9S3l56Ag1iaejgJkTPp6Qku31H3fwI0HZ07JtEgIBIIBvgTRPX+
	1nExo0Jw==;
From: Heiko Stuebner <heiko@sntech.de>
To: Fabio Estevam <festevam@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: rockchip: rk3188-bqedison2qc: Use mount-matrix
Date: Mon,  2 Mar 2026 12:39:55 +0100
Message-ID: <177245158236.769695.5354203962089996196.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260226145916.2729492-1-festevam@gmail.com>
References: <20260226145916.2729492-1-festevam@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260302_034002_988005_F63AE016 
X-CRM114-Status: GOOD (  11.55  )
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


On Thu, 26 Feb 2026 11:59:16 -0300, Fabio Estevam wrote:
> 'rotation-matrix' is not a valid property.
> 
> Use the documented 'mount-matrix' property instead.
> 
> This fixes the following dt-schema warning:
> 
> accelerometer@29 (st,lis3de): 'rotation-matrix' does not match any of the
> regexes: '^pinctrl-[0-9]+$'
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: rockchip: rk3188-bqedison2qc: Use mount-matrix
      commit: 6916fbb419b3fcd2275e658e1c29b3a29d550338

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
