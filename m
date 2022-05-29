Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C2F7C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 May 2022 03:19:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nV6LcKDGI1CrftjLKCYPATjOtdaX/ddoRYXEOGpEnKc=; b=L7w8U6v5mTyVlD
	n0e1IrkyjGCcVDueu0bAR5bDq3dYpV56uu2I9C0dRBq7nukIzk5gNxmwcgsHtL16El16Y5xUB4Jb1
	GRod+oxxfat1bumkHHMg0uDjSIVeEjkHN4mQFQ0JaNIcxebrnoi4NfOevPVVxdNLn2GZdWdJPMWPO
	T4T20RkKGV59zIso8yaVMSbc6nq6Lwbe+RrLe26KfXVx6QH4oNhN937b2UEuwedzjyduzPHcYyYqD
	6APDh8zNPuKPS4zv5aUV+P4ZunAb6+CHpk7hLcaPuQMM5zSx8s20LZlhP8GkQyZPE/8v6276w1iWk
	sbet/1TuRLzeAZB1csqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nv9Rw-0039MD-9e; Sun, 29 May 2022 03:18:40 +0000
Received: from wout4-smtp.messagingengine.com ([64.147.123.20])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nv9Ri-0039JO-Mn; Sun, 29 May 2022 03:18:30 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id 0141532007E8;
	Sat, 28 May 2022 23:18:14 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Sat, 28 May 2022 23:18:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	tom-fitzhenry.me.uk; h=cc:cc:content-transfer-encoding:date:date
	:from:from:in-reply-to:message-id:mime-version:reply-to:sender
	:subject:subject:to:to; s=fm1; t=1653794294; x=1653880694; bh=Ny
	KxUSmKaqeyg9xhREFC8EzxSPndaULx7tx1zibykuo=; b=nXc9ARkCFE5fNObRs2
	Mrwc1HMtw42AKrpMFHx3Eh0n1CBsNAyU0K1uF9aodnAVXX4ZUnPDS8IWSNcOvow/
	cHQaVRMYHXB2PtZPBUHV/ubtz+zUarGlDIG7/sJWWzN5TqqgasXGhYNEXLtWP9mc
	wUUVnpGylF9seoF1T1Q8CqBfreAxI6S4R+QBDQ0VAcCNI/S4KoxQ595Ee5lVwqeO
	S13ReM8/lozx9zUDbVCWEhIgPVqqmVZZtY+ioy/NOSIfQwIqTeYW8C080/9MlSHe
	7tbTCInDxHlc1fvAOSSbOngueXva3Uv0cnIcmP1CWtbjtl4/yBYLKqQis+NxsDtl
	T1XA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:message-id
	:mime-version:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1653794294; x=1653880694; bh=NyKxUSmKaqeyg9xhREFC8EzxSPndaULx7tx
	1zibykuo=; b=DGKfAUMl/kgSq7mQr9inX79EZFwlwBfH5hNXO9O6hp5YVTbSnQF
	g87AE2vXJA0kWIXthWmgxCwyF1136G4r+GIxRGy6TlPwsfup+x5YrpTgmAaLSoyz
	zCNG5L/3XzjP7lDkbeVEE0GEDhV5K8Dytwrdyf77xC/cDf6CxCU+izbMxYJ6hrbq
	9IOnqJsWMd6x8OyOiim3P1yuNQbQEKaI4njcfmX2rcr9gEVM6QzuuNZNyRCpWLw3
	SnrlVm2sM8X9qjXHVsGSC5hi4FjLauRNdPFOgl1589Em6p8sIE82lEi1xOeAoyVN
	veSnfEgmZNs/P9ArK+vvgnJWwTGVaa6lbqA==
X-ME-Sender: <xms:9eWSYpxvhajMmkwMTlmRVAXFjI5CdlXBUmyJLproRMcC9HpAUH4a0g>
    <xme:9eWSYpTJ3BYbOuM9VVmtCjqjLbRAgqs_YBMGgd2dbhWOmeA4WCJdbg1_kr5xlnFg0
    wNsCYDGBgVl0YIUaA>
X-ME-Received: <xmr:9eWSYjUk7TxqthXe96zFUmG2_VF74_TpD8k6n4DxHW6ifW3Xn_oj6d6UdCllBcO3ZH6-Le5w32RYLoEu6LRxi2RpB63W9oNlscc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrkedvgdeikecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvfevufffkffoggfgsedtkeertdertddtnecuhfhrohhmpefvohhmucfhihht
    iihhvghnrhihuceothhomhesthhomhdqfhhithiihhgvnhhrhidrmhgvrdhukheqnecugg
    ftrfgrthhtvghrnhepfeeivdegffeftefhkeeugfdvudetfedtieejuddugfejueektddv
    vdefueetgeevnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homhepthhomhesthhomhdqfhhithiihhgvnhhrhidrmhgvrdhukh
X-ME-Proxy: <xmx:9eWSYrh0P5sqeiQFuKCgtSytXR0jOqaJ9O3lbNafQoSKFfPR0yKicA>
    <xmx:9eWSYrDGxYLL499wkTJtzUS0xKOOilpn5y2CxoTDqb5mhi66LpnFAQ>
    <xmx:9eWSYkJV3qk02QJlFfWJqH3_eyjjd6ehrBJXG-oEqz2CwFr-7oIaLg>
    <xmx:9uWSYrzFQi9vWFjCAsC1CZ1tNymc-CtaX_YclSx2TH-nh4O_ol0wpg>
Feedback-ID: iefc945ae:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 28 May 2022 23:18:10 -0400 (EDT)
From: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Samuel Holland <samuel@sholland.org>,
	Ondrej Jirman <x@xff.cz>,
	Martijn Braam <martijn@brixit.nl>,
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>
Subject: [PATCH 0/2] Add support for Pine64 PinePhonePro Linux phone
Date: Sun, 29 May 2022 13:17:03 +1000
Message-Id: <20220529031705.278631-1-tom@tom-fitzhenry.me.uk>
X-Mailer: git-send-email 2.36.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220528_201827_292147_FB6685A0 
X-CRM114-Status: UNSURE (   8.26  )
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

This series adds initial support for Pine64 PinePhonePro.

Tom Fitzhenry (2):
  dt-bindings: arm: rockchip: Add PinePhone Pro bindings
  arm64: dts: rockchip: Add initial support for Pine64 PinePhone Pro

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3399-pinephone-pro.dts     | 939 ++++++++++++++++++
 3 files changed, 945 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts

-- 
2.36.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
