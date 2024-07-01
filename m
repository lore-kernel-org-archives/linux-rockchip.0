Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B900AC3065A
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jul 2024 14:37:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6mHI2rZ8R9vsam4Zoq3l8o39f8Cj1pPjNvbva4XojMM=; b=qjq4HQq8enQkre
	RqUthPY9+YLR8c7ao9Xocki6UdgxNNPmTzmtZmq9gFDXvikcwaLuzaaLfyIYRs0HPcGnDsj+C6GDU
	dteb4+jL95+kryDxLHaDjm4uThwCtGnU2TI3uIgu9i+vohourF3qxAsHd6QyDSG9nc1brObUCvbp/
	+EIDIJw+R4t94p9eU925792oA8q8TNraygEmLSSovbQksFnWdNYDgvlbUkQR64nt9aGmri704Bvxq
	gWVUcJ9XZVLtv4j0n3ryr6hsIEqubMSjbPWy5wmnVYXW0S3G4hr6wtcQmKxT5BrjOWsTcBfdh55Th
	jxhoxF9Y8k5R/WXQ8jzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOI9k-00000003l0V-30vS;
	Mon, 01 Jul 2024 14:37:24 +0000
Received: from mail-m49198.qiye.163.com ([45.254.49.198])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOI9g-00000003kzY-41l9;
	Mon, 01 Jul 2024 14:37:22 +0000
Received: from amadeus-Vostro-3710.lan (unknown [IPV6:240e:3b3:2c00:7a80:98d3:5fc8:a2a:615f])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 07D337E018B;
	Mon,  1 Jul 2024 22:30:35 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: amadeus@jmu.edu.cn
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org
Subject: [PATCH v2 5/9] arm64: dts: rockchip: disable display subsystem for Lunzn Fastrhino R6xS
Date: Mon,  1 Jul 2024 22:30:27 +0800
Message-Id: <20240701143028.1203997-3-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240701143028.1203997-1-amadeus@jmu.edu.cn>
References: <20240630150010.55729-1-amadeus@jmu.edu.cn>
 <20240701143028.1203997-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCGExCVhpLTh9KTR4YH08ZQlYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlJT0seQUgZSEFJGEtLQUwaQ0tBQkMfSEFOHRhDQRpJGkFNSk4dWVdZFhoPEh
	UdFFlBWU9LSFVKS0lPT09LVUpLS1VLWQY+
X-HM-Tid: 0a906eb467e003a2kunm07d337e018b
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NBw6Fww5MzMBQhcLSkwOT0w6
	PyxPCklVSlVKTEpCQ09PSUhOTkNOVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlP
	Sx5BSBlIQUkYS0tBTBpDS0FCQx9IQU4dGENBGkkaQU1KTh1ZV1kIAVlBSUpJSzcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_073721_170461_BD094965 
X-CRM114-Status: UNSURE (   7.18  )
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

The R66S and R68S boards do not have HDMI output, so disable
the display subsystem.

Fixes: c79dab407afd ("arm64: dts: rockchip: Add Lunzn Fastrhino R66S")
Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
---
 arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dtsi
index e08c9eab6f17..25c49bdbadbc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dtsi
@@ -115,6 +115,10 @@ &cpu3 {
 	cpu-supply = <&vdd_cpu>;
 };
 
+&display_subsystem {
+	status = "disabled";
+};
+
 &gpu {
 	mali-supply = <&vdd_gpu>;
 	status = "okay";
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
