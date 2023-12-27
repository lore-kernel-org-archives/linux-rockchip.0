Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B180C46CD2
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Dec 2023 17:40:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dhrkAkiYvJJg0eA2lUC1GuhjNMvT9sY0N1DhqMbnvw8=; b=BYYxVGBKRU7ECb
	nhcdBdKSUWP4EW/8Qvg44CXKnn6IHi4pYM9ABkccU6AWA53vK4T1murXPz8cqVwSuZTk3U8S8pCbW
	0eHdxBpfzq4kDS/jzb11YRENApZ3Y3gWp6KbKehYN/WIGL1DhPMAd2pZePGOa02fkLwUJihlPduvP
	Bgn6nqK8tjbI7wxYkOR9lZxzttZv42HbK3UelPgIk58Qku2MeJvGFK/h68cie3aifwllELljG9SeD
	+I1g3IVXQ0wRJTPSDVoossgN6nRBr8Yj2qk98j6P+AcAZWPEPtNkBNDWscBATy/pedougbmKa0PPY
	aCrEqkJViWxzCc8BPnsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rIXtO-00FEEz-3D;
	Wed, 27 Dec 2023 17:40:31 +0000
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rIXtN-00FEDA-05
	for linux-rockchip@lists.infradead.org;
	Wed, 27 Dec 2023 17:40:30 +0000
Received: by mail-pg1-x52b.google.com with SMTP id 41be03b00d2f7-53fbf2c42bfso3889271a12.3
        for <linux-rockchip@lists.infradead.org>; Wed, 27 Dec 2023 09:40:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703698826; x=1704303626; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Eiz0fylx3s+eC9GIkVjZ8U5D1rTDiaiV9DlEcXV1OkM=;
        b=CfhJG8Pd6K3yGbd0ajAWvlMJEtzJkLHJ3hvavC+a6gtKDlgLij755adr2LSxo3n83b
         Z4FlcGlVp2ON2IxCIljHJGkF0wuyvIQvaLq1PkLQjdmjgoAItm1F6I8xjTqLhHUIRMzQ
         mHfsvDbIzniTZbIEBdtip0+sOs6YrtwGCVFSK4dSpit4AbmuM7+hxZ8K/Lxn5y5VmNb3
         3yLBv+IhEeD9EJPmShMqtM6FkGQkgRjRq8lUXsST2vn37/81Pq/LZoAlQUGQFcd3WUO6
         B11zuoL6GovpIh40z9xSWMPKp2mZvIe1p8F3SW2NfzI/dI0TVbQ7OtMiveu6UJ3STjNf
         qDUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703698826; x=1704303626;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Eiz0fylx3s+eC9GIkVjZ8U5D1rTDiaiV9DlEcXV1OkM=;
        b=oWo5r0Y+FfirbBg06aJBB9Pw/gc0FSgWQdGNe/FrgZXYpjiYv7+grJ900LdxRxpeQS
         JPh21gnJEsBq6H8dzqMP8lLGE1cVNwaNPbs7r6KaQxtTtv05VORjXuhCPgFqEk2ghtgu
         sfGgTjHSlhQF98P8H31UgN59dfsBdi7h4QP61TteNfpBpLtk3XtQnDaEDxFRov+ENZVN
         5u/Umi/G16gCMVT7Rqan7E/Yhoc6DbWeP63yhzpYYk2HfMpoqxH/DX71B9dYw6svxJnz
         3yK9qRWr/gdTgjWY1Nu98YBn9JKVzH5eEUmOVXvZ8qCFRqykUykCzYQPJ//xZhxElc8U
         1S/g==
X-Gm-Message-State: AOJu0YyUBxuHqUuInbiz/QqR7GL/u6ztvW/lNIjePpgd/XbWCGOXiGEk
	S8Je3HXUdzA0kYDUVVhwbvCW1ZLdVV2TLEMnnLh8SA==
X-Google-Smtp-Source: AGHT+IFKmm9teGcP+8Tna2sHM7S2jEdgKLyhWGg1bBDaANSKgJHF9IGW9NXOMBQug9eUS3RxNhK9UA==
X-Received: by 2002:a17:90a:d3c8:b0:28b:b995:c886 with SMTP id d8-20020a17090ad3c800b0028bb995c886mr4477592pjw.82.1703698825952;
        Wed, 27 Dec 2023 09:40:25 -0800 (PST)
Received: from localhost.localdomain ([2408:8207:2540:8c00:3708:559:ea20:9883])
        by smtp.gmail.com with ESMTPSA id qb4-20020a17090b280400b0028aecd6b29fsm17240262pjb.3.2023.12.27.09.40.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Dec 2023 09:40:25 -0800 (PST)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: liujianfeng1994@gmail.com
Subject: [PATCH 2/3] arm64: dts: rockchip: Add Hantro G1 VPU support for RK3588
Date: Thu, 28 Dec 2023 01:39:10 +0800
Message-Id: <20231227173911.3295410-3-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231227173911.3295410-1-liujianfeng1994@gmail.com>
References: <20231227173911.3295410-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231227_094029_064483_7E832B4D 
X-CRM114-Status: UNSURE (   8.29  )
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

This patch enables Hantro G1 video decoder in RK3588's
device-tree

Tested with FFmpeg v4l2_request code taken from [1]
with MPEG2, H.264 and VP8 samples.

[1] https://github.com/LibreELEC/LibreELEC.tv/blob/master/packages/multimedia/ffmpeg/patches/v4l2-request/ffmpeg-001-v4l2-request.patch

Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 5fb0baf8a..b3536e097 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -708,6 +708,26 @@ vop_mmu: iommu@fdd97e00 {
 		status = "disabled";
 	};

+	vpu: video-codec@fdb50400 {
+		compatible = "rockchip,rk3588-vpu";
+		reg = <0x0 0xfdb50000 0x0 0x800>;
+		interrupts = <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
+		clock-names = "aclk", "hclk";
+		iommus = <&vdpu_mmu>;
+		power-domains = <&power RK3588_PD_VDPU>;
+	};
+
+	vdpu_mmu: iommu@fdb50800 {
+		compatible = "rockchip,rk3588-iommu", "rockchip,rk3568-iommu";
+		reg = <0x0 0xfdb50800 0x0 0x40>;
+		interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH 0>;
+		clock-names = "aclk", "iface";
+		clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
+		power-domains = <&power RK3588_PD_VDPU>;
+		#iommu-cells = <0>;
+	};
+
 	uart0: serial@fd890000 {
 		compatible = "rockchip,rk3588-uart", "snps,dw-apb-uart";
 		reg = <0x0 0xfd890000 0x0 0x100>;
--
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
