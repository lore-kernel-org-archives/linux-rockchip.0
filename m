Return-Path: <SRS0=P1+Z=B2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F11AC433E1
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Aug 2020 17:19:32 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6DD2C20658
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Aug 2020 17:19:32 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="1/TFO5QZ";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=tutanota.com header.i=@tutanota.com header.b="D1CvKof1"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6DD2C20658
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=tutanota.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Subject:References:In-Reply-To:
	Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EVbMupvLWHojyquoi2mbrGnHgU7DsgEy327fME5iZZ4=; b=1/TFO5QZU2tDs4LugPi/5DByv
	Q0db/0RnlFJo8G42CVc+lrP3ZAuTU6nM4e56Yipn7d7ozBlB1QGKRV946jjIXIMRfm+m7VjuU+MVW
	ukgkVps4OrbVCv3BbKjAu9g4Co17Y3ZKz/ZFP093dXaJlOMne/xSTfMoTH6iExauAXt51+9PMn26R
	55d12YVR13DTfDVhwQUep2EysF7q/PqfqaZchQnZTp5OME9yGEAZX/DWAmT/x831R/FLVuO40B/eC
	pMlXNjewNam1CBoiCiq4fB6nzhASjHRtpa9pSfJB3bgm26KeybdQ5gKPYBnHqWXKfBtwAadg2eET1
	sHazhLM1A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k7MJZ-0001O2-Nj; Sun, 16 Aug 2020 17:19:25 +0000
Received: from w1.tutanota.de ([81.3.6.162])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7MJV-0001Ml-0r; Sun, 16 Aug 2020 17:19:21 +0000
Received: from w3.tutanota.de (unknown [192.168.1.164])
 by w1.tutanota.de (Postfix) with ESMTP id 23B56FA01AB;
 Sun, 16 Aug 2020 17:19:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1597598360; 
 s=s1; d=tutanota.com;
 h=From:From:To:To:Subject:Subject:Content-Description:Content-ID:Content-Type:Content-Type:Content-Transfer-Encoding:Content-Transfer-Encoding:Cc:Cc:Date:Date:In-Reply-To:In-Reply-To:MIME-Version:MIME-Version:Message-ID:Message-ID:Reply-To:References:References:Sender;
 bh=Gi3w6dYvszIhNmdn8K3f13r474z+EsQSWYigqXPBxAM=;
 b=D1CvKof1nVQZk9R18QpAcSfj9W15lwqCL+crEro978qAfik7BtCaqVlRPTXQOfJx
 PN+32KRnLgIXA6WPesPeq1QzHKSFh1dBbyhi4T932k+kC0oRC0pANMG/dVI7IQimUV0
 k7OJS0xIAF34pOWegRRmCNnuN6Sd3upNUAjlBxe4fSAIiv1FdE6dzFdUVQI1pyFklpB
 FMdHNPCd7libkR74Q+b1qMB2RoPnTszLFMUkr2CgJDJO9P0zoEodml5dccTj/3hbWDY
 OgNPPx/eUMuQb2TzGWfnTJeXRXkPg9T8hPK7kszZ1YGjViCBf0Q1QA+FiglX94dHzig
 ZbZ3SB29Gg==
Date: Sun, 16 Aug 2020 19:19:20 +0200 (CEST)
From: Cameron Nemo <cnemo@tutanota.com>
To: Devicetree <devicetree@vger.kernel.org>,
 Linux Arm Kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Rockchip <linux-rockchip@lists.infradead.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 Linux Usb <linux-usb@vger.kernel.org>
Message-ID: <MEsH4zf--7-2@tutanota.com>
In-Reply-To: <MEsGppx--3-2@tutanota.com>
References: <MEsGWB_--3-2@tutanota.com> <MEsGppx--3-2@tutanota.com>
Subject: [PATCH 3/3] arm64: dts: rockchip: enable rk3328-rock64 usb3 nodes
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200816_131921_204631_4FC11158 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Balbi <balbi@kernel.org>, Robh+dt <robh+dt@kernel.org>,
 Heiko <heiko@sntech.de>, Gregkh <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Cameron Nemo <cnemo@tutanota.com>
---
arch/arm64/boot/dts/rockchip/rk3328-rock64.dts | 9 +++++++++
1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
index 86cfb5c50a94..ae27f449f4a3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
@@ -392,6 +392,15 @@ &usb_host0_ohci {
status = "okay";
};

+&usbdrd3 {
+	status = "okay";
+};
+
+&usbdrd_dwc3 {
+	dr_mode = "host";
+	status = "okay";
+};
+
&vop {
status = "okay";
};
--
2.28.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
