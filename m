Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B99EC04A94
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Aug 2023 05:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ge5QFMDqsXC37LEYADQmDWQwuGAtuaeFMM77ITyFJNE=; b=4iU4LnSAdkaIRA
	ELwpsZt9zV4Noo+W7wgWVr+3XZ/fD++0FZEMK+7zIAVPWYGIwKtvPD/fgH86DTwt6yDUU/jdkAP32
	6Aeu1fT1tvZHFDrWyZMVGyGqM0Vu9wfkJlDvVzXINcQJ1rSJVP0y58auYkr/LPMI55uR9YTfVcYyT
	36jfvG5ocOpPaIR2y1Dg8qAgVBuNfg+ndRc68npivuKRgtArlV9sybz7YdkAf0pldNd7jvJgIqAtF
	OsWxLciFXs9NXf4zB5rgBpe3+mUvgK91T5l+1xZ5PZO+ZVOFX5M3vEYM3UWSd6J+ibPhn1r9qTHIF
	cVv63zYWHLCSC8sA4KWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qR4Ew-0042Pn-1z;
	Wed, 02 Aug 2023 05:17:42 +0000
Received: from gproxy5-pub.mail.unifiedlayer.com ([67.222.38.55] helo=progateway7-pub.mail.pro1.eigbox.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qR4Eu-0042Lp-1N
	for linux-rockchip@lists.infradead.org;
	Wed, 02 Aug 2023 05:17:41 +0000
Received: from cmgw10.mail.unifiedlayer.com (unknown [10.0.90.125])
	by progateway7.mail.pro1.eigbox.com (Postfix) with ESMTP id CA813100471A4
	for <linux-rockchip@lists.infradead.org>; Wed,  2 Aug 2023 05:17:25 +0000 (UTC)
Received: from just2025.justhost.com ([173.254.28.237])
	by cmsmtp with ESMTP
	id R4EfqIVfk6i54R4EfqqinP; Wed, 02 Aug 2023 05:17:25 +0000
X-Authority-Reason: nr=8
X-Authority-Analysis: v=2.4 cv=QsWbYX+d c=1 sm=1 tr=0 ts=64c9e6e5
 a=Jt2RHIFfQig1ELqEZVeWfA==:117 a=Jt2RHIFfQig1ELqEZVeWfA==:17
 a=OWjo9vPv0XrRhIrVQ50Ab3nP57M=:19 a=dLZJa+xiwSxG16/P+YVxDGlgEgI=:19
 a=UttIx32zK-AA:10:nop_rcvd_month_year
 a=5SfhNeb3QxAA:10:endurance_base64_authed_username_1 a=VwQbUJbxAAAA:8
 a=QX4gbG5DAAAA:8 a=LN1DEILRDWMThqYPT54A:9 a=AjGcO6oz07-iQ99wixmX:22
 a=AbAUZ8qAyYyZVLSsDulk:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=singleboardsolutions.com; s=default; h=Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=U4DX76mWHOowxF0p7uqV/JAT6U60P2EhAMKmm+yitJg=; b=AWyBuuweNOXZ6PJgptK61CXA/Q
	sH1s9ybshAIiOcMhYHVSEJa1f/HMmkL3hiNg+eCvUQz9DsgQefYD/qpkLlEThd/yGJPUPX1Pi6/0P
	FQ6J4lsJJ6K0IMFe21xeAxkpt2O9j9DC7qbU8ROcT2f7LmRUB9y7/Q9SahexrN3xop3PGQ7KHwiAV
	55k+WUMm2MzCqa0UrcwQ0UeAJi7Ub1m1TM+qD3vnbrBRfLdmygYbQ2JXS/zPN435M5+bZ//7gnM6R
	wo2UK+oJjClXOMxHxmWcQIQGh++1GUp3z91hwqo0rwOgmHD/qVW2/TV792SMjw+x30IYNjmLQ7VhR
	FsTYihgQ==;
Received: from 097-084-242-070.res.spectrum.com ([97.84.242.70]:50744 helo=localhost.localdomain)
	by just2025.justhost.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <tmckahan@singleboardsolutions.com>)
	id 1qR4Ef-001wRt-0c;
	Tue, 01 Aug 2023 23:17:25 -0600
From: Thomas McKahan <tmckahan@singleboardsolutions.com>
To: "Rob Herring" <robh+dt@kernel.org>,
	"Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
	"Conor Dooley" <conor+dt@kernel.org>,
	"Heiko Stuebner" <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: Thomas McKahan <tmckahan@singleboardsolutions.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] Add Support for the FriendlyElec NanoPC T6
Date: Wed,  2 Aug 2023 01:14:05 -0400
Message-Id: <20230802051441.3106-1-tmckahan@singleboardsolutions.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - just2025.justhost.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - singleboardsolutions.com
X-BWhitelist: no
X-Source-IP: 97.84.242.70
X-Source-L: No
X-Exim-ID: 1qR4Ef-001wRt-0c
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 097-084-242-070.res.spectrum.com (localhost.localdomain) [97.84.242.70]:50744
X-Source-Auth: tmckahan@singleboardsolutions.com
X-Email-Count: 4
X-Source-Cap: ZWxlY3RyaTk7ZWxlY3RyaTk7anVzdDIwMjUuanVzdGhvc3QuY29t
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230801_221740_533956_346B78DC 
X-CRM114-Status: UNSURE (   5.08  )
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

Hello,

This adds support for the RK3588-based NanoPC T6 single board computer.
Note this series is dependent on the PCIe 3 support [0] being
upstreamed. The NanoPC T6 uses PCIe3x4 like the Rock 5B and EVB1.

[0] https://lore.kernel.org/all/20230717173512.65169-1-sebastian.reichel@collabora.com/

Thomas McKahan (2):
  dt-bindings: arm: rockchip: Add NanoPC T6
  arm64: dts: rockchip: Add NanoPC T6

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3588-nanopc-t6.dts    | 845 ++++++++++++++++++
 3 files changed, 851 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
