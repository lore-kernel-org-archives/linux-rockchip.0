Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2CD6C54EBC
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 14:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T64jEtQ6cc5Q9zf7rqJ7M13tpSe7s8CEQg6mlg3Baik=; b=dFioB4lJdMO6RN
	kpWJRJv2+UyJ6OWrL3I49eV0fmZjzKZlmqlQ3agvNSd2SmnGskf9PXiFl3Itk6KYsilblKHKlclQt
	bIyLO9pNGwXTFs4cSwNyZfz+1Rxt+tL6YLRYr7PytunyzpgDbNSgFfQQ5udbUl7cZiB7N5av4ByVj
	a7V5rq2xxCTq4f05E+lBXTUyv3OSFYb0M+DjL/f1xVwlBtXQbhE46VHBK9v5JKX4xUjRC0KusCchO
	vkj6rbcjo8IA4FSFpxke6JT+mhiXBC99JylRo+M6Z+AZNW78lC4bbYs67KCjb81qoejZg96d2vB3v
	cysPRYT0+lhW5HjlwCGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFFFK-007BKV-Sq; Tue, 10 Jan 2023 14:04:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFFF9-007BCq-QZ; Tue, 10 Jan 2023 14:04:49 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pFFF3-0004vx-Oq; Tue, 10 Jan 2023 15:04:41 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: pgwipeout@gmail.com,
	Furkan Kardame <f.kardame@manjaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: add rk3566 audio nodes
Date: Tue, 10 Jan 2023 15:04:35 +0100
Message-Id: <167335938203.2550251.9294002031370939026.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20230109203232.45192-1-f.kardame@manjaro.org>
References: <20230109203232.45192-1-f.kardame@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_060447_903040_85873ACA 
X-CRM114-Status: GOOD (  13.37  )
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

On Mon, 9 Jan 2023 23:32:33 +0300, Furkan Kardame wrote:
> This patch adds simple audio card nodes
> Enabled i2s0_8ch as it is needed for hdmi audio
> Added i2s1_8ch as it is needed for 3.5mm audio jack
> 
> 

Applied - with remarks below!

[1/1] arm64: dts: rockchip: add rk3566 audio nodes
      commit: 9ce61898b3075892b01792fd3a44507b7e459c6f


The core i2s@fe410000 node should _not_ go into a board devicetree.
Thankfully an identical node for the i2s controller was already
added to the core rk356x dt, so I've just dropped the one from
your patch.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
