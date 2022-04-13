Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1FCAC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Apr 2022 03:56:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DcqhHBRYPRM3yTOpWT9UI1KSAMdJMh6t8H+MzYBgalo=; b=XyqLNW/+NYDIjD
	uF2dDVF04AZw8ewq6JY7hwTj218dEJlbA/lWij7GPU+dZTC+GddPhNK080nvT/qoPSw5ZJyNYO1si
	ELH2RRpbeq5WQleoJhFn7HOkcT3lNZqoc9qzn9/IALnhusu1n8l9mI4qAaUT5sCH1ur4HdOsZ7dV9
	QBQceBmw7rjsUr1Kut9fVdkXPZm/5/3Wo00kfVNVa7LifF0MT9d1/9S6cPQmSMamG6RfcjTbRjLj9
	Q4nf9HP1Yr6xxhwksUlCoIYUIrlhCFLKfkGLd0w6HgKeRiOwm0tcVgBY2UTlUe8grnHe7AIbvesB9
	c7wG8jmb917bZ2HifS0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neU7e-00Gdrn-FZ; Wed, 13 Apr 2022 03:56:50 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neU7A-00GdcP-ID; Wed, 13 Apr 2022 03:56:22 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id A3DDB5C01EB;
 Tue, 12 Apr 2022 23:56:16 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 12 Apr 2022 23:56:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
 :message-id:mime-version:reply-to:sender:subject:subject:to:to;
 s=fm2; t=1649822176; x=1649908576; bh=fRGpBGjSVcQ6tiwpq8TxsX90l
 LVaDJpSbkukOVqXDTw=; b=L6S1WLsskO/cv/yisL4TmjWXOC31pQPCvtwkCVWCH
 2xY1/4PxmaTD/x2ZYNM2417xgPAPSBO+iU/fDqK0LXpFEV1+LrWxJM8jRiNtkRa5
 sqlihAXp3oKqIm6gcrqvq9prxf+9vSO2h12UE41MOfWbt5mAs0IJpOCVEsGz6MS9
 7hnBFv2eFhRZv/YTR5mNmIVtCZpWVwtBZFMoast3Hmljz2aMDoWdNO3O2J5h2f7B
 GS/5Kz2vOxP5gNEmFVNZ6Xn0YBrqans5hkHc/WOFLcjvKgHMQK11rZ85+h4UWU5q
 MpMykS2YbzryXxZXVkhUZpeT4aALDn4H+CYzg9mp1pSYQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
 :from:from:in-reply-to:message-id:mime-version:reply-to:sender
 :subject:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1649822176; x=1649908576; bh=f
 RGpBGjSVcQ6tiwpq8TxsX90lLVaDJpSbkukOVqXDTw=; b=wNIbUQ1sB2KJytUC0
 QhGpepVZPg57KFnRt/4BVqSszESDSWZ8eS2xJgfQHORgJO8vNwiVabolif38T3j9
 FpGcVAavQ1DHufGfpYM7w6Sgc/oH0FKVXd8Ts1HPGQIXu5MhTFdCiEVQDXr1x9g5
 G9EnkCh5i9lOyqwwi/H8zCG/U5LG2/Q8emq6f4+xR7Bwk18JVmru9c6JIW5xOnLo
 uJtU/gJT641x1M4nG6Lt16Htq2dzeRh/OI0xYdb9v3I/TWwSNA2gZoAWHN8ivHsi
 tJ2z9549u0QOVE8u3zxOF4t6ZLWbeDIJmcY8m+81TOx1f5fIrZ6CAK5/+HEFiXhi
 iJzPQ==
X-ME-Sender: <xms:4ElWYvfsLLVHt7b1DzSaMS9ShVOR1hk2MRGwmmei5qMwxsv_jwIKKw>
 <xme:4ElWYlPrsG6LooY_Fs3smteeKm30GnrUaO6XwPSxEwLd77k0Sl8pJnTnKe-y587k5
 gHivXvMLXUYMi-UCQ>
X-ME-Received: <xmr:4ElWYogcpfaIxKHwec1fnadco4S_jy6l1mGdax00yzD1SEkrN9TQxZeI1CmoKryp06Jq5M-syLd6SN44Y_2cQbWXfovCzYs1Z_1m2VcnlssrKzrrQzkZ-e8hqKTMB_CKkpAqBg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudekledgjeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffoggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgvlhcu
 jfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucggtffrrg
 htthgvrhhnpeeiteekhfehuddugfeltddufeejjeefgeevheekueffhffhjeekheeiffdt
 vedtveenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 hsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:4ElWYg_CMt6ZLY5Fdmhcfd-9iSD8_hxO9WeYAv8EZg2WBhEkUzB_fA>
 <xmx:4ElWYrveDVrnLXmYk6R9T3wxex9ZoMRmRqS3jtwC-5tEjRvBzM77Gg>
 <xmx:4ElWYvFzTs02XINMclpQoLns6K33H2jB70XXVV83bcdw1rvCxJAoZQ>
 <xmx:4ElWYvh9mwUaaTbtuw8qRyf-SqTywapvUEYUy0y_xCWhJowdxlYTmA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 12 Apr 2022 23:56:16 -0400 (EDT)
From: Samuel Holland <samuel@sholland.org>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: Samuel Holland <samuel@sholland.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] arm64: dts: rockchip: pinenote: Enable more hardware
Date: Tue, 12 Apr 2022 22:56:12 -0500
Message-Id: <20220413035614.31045-1-samuel@sholland.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220412_205621_149600_5AD0CAAB 
X-CRM114-Status: UNSURE (   6.72  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

This series adds support for some features in the PineNote that had
devicetree bindings or SoC support merged since the board was added.


Samuel Holland (2):
  arm64: dts: rockchip: pinenote: Add accelerometer
  arm64: dts: rockchip: pinenote: Add USB and TCPC

 .../boot/dts/rockchip/rk3566-pinenote.dtsi    | 80 +++++++++++++++++++
 1 file changed, 80 insertions(+)

-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
