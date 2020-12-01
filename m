Return-Path: <SRS0=IWi6=FF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3103C64E7B
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Dec 2020 15:42:13 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D07AA20870
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Dec 2020 15:42:12 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="E1v31yq/";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GeXG4P28"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D07AA20870
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vwdooBlhUqTVn91PdK/GzgVLFa8sh4vGOiViV/Saiko=; b=E1v31yq/O82v6oD0dMkCIy4VD
	t2UDe8vCnIQRngHVhtp5MIuNUBD4VmF/sFmm/7YLkWYF+5RTXg3ZhdBXHWn8aHnELMB96NSkCJ5zi
	ZMymOO6NU689GLHHaAIk4n6bfORkxmVBXOOcv8Piv4K6H53iLpX94WNPtZ52DwNn9ciD5UxK5MEvG
	tg8Mf4VNpb3tH7Jv00lvGLDTSyc0sU9P4xQOgM1CgZDkTooJj4Vta4BTw67ev7Q7vm53keR6UJh71
	jL9t1aqV8Evu6UaFZ05KwZocgX7TGLrwYwsWPFbDSWg7zGE1u5HjYSfAPWiWtPMzzbGYmDm9naRS5
	cJKsyJiQg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kk7n8-00047z-1r; Tue, 01 Dec 2020 15:42:10 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kk7n4-00046p-Un
 for linux-rockchip@lists.infradead.org; Tue, 01 Dec 2020 15:42:08 +0000
Received: by mail-wm1-x341.google.com with SMTP id c198so3888515wmd.0
 for <linux-rockchip@lists.infradead.org>; Tue, 01 Dec 2020 07:42:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DZ/KcM3AbG5Ra+lTfzAJHWq3Pro/pywUpIewN/J49DA=;
 b=GeXG4P28domF155wuCJyT2Jf2wl4DVejZ8aCmj6Wg/XpdbVEPkl1bgpjNS2sf3ZA71
 qNOwwM7BZWghJJXaaE/5UymEg9SL3xEh2MDceCvPbokv/37/qYotODloHn+DPWVoHHjb
 DHD19ydQ9A7kOZUwsEVg6Q2vPcoDns3DNl9/qVPDqcP69a6OnG7fmAhyzWLlBheVScOp
 g2D/BC6hjz3lSZDiVs048ighq2d5R1tVaMxlFlspByKc786wfgSNPMvpgQUjwdTJoOJ0
 tSW0A5DE5UnnhVVt9i5cfVs/fkVtXK4KqsvtLEfTuY0i7X5224AomYlcpY8fDIhdWMun
 X6xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DZ/KcM3AbG5Ra+lTfzAJHWq3Pro/pywUpIewN/J49DA=;
 b=L+tw7HgbtS4bk+njpem/DOdMyYc9JvmKYZgXBy63J2oCj0jwlLXcdT5WokZXDscTLd
 S0enxshYCZ6lD2K8vNxrmjn+B7Kg/s9zLKKcaGCfNGE3vxHPmwcuyU16FzIfVWmpjmLy
 YtxEjUWxTKAJWUUSnJnTMm31gieyVpA7yN7n1yJK2+lL35gMN03ftKXPLhGE6hgCovv+
 lu4Rz0KhgDNDk2t1iCrHXYtxhZ+e630jDP0m4PbqK7Q19W99vKEvOgzFJRSNIfaig4AK
 DxFAWrGj69N5e7mfdI/dbPxGHoyscnnkLXCxAJJWIytEcbaxEId6e+yfaNSY9KwKqgHz
 ewIw==
X-Gm-Message-State: AOAM530yfOwd89G4tLWDKhKWCczzvFuvFvXuIUADF5A0urO46wjw6toX
 LrEWLbyVSiBe2mCoNxLKh/8=
X-Google-Smtp-Source: ABdhPJz3Yb7RkrvEJHZ4cU/HdgkWpxeJQLLFk7l76J2J3YpjsKWvEOe7MHkuPgvs9/Wpa5x8tlcpew==
X-Received: by 2002:a05:600c:cc:: with SMTP id
 u12mr3385733wmm.42.1606837326107; 
 Tue, 01 Dec 2020 07:42:06 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.27])
 by smtp.gmail.com with ESMTPSA id l24sm4229811wrb.28.2020.12.01.07.42.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Dec 2020 07:42:05 -0800 (PST)
From: Vicente Bergas <vicencb@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Johan Jonker <jbx6244@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Douglas Anderson <dianders@chromium.org>,
 Carlos de Paula <me@carlosedp.com>,
 Sugar Zhang <sugar.zhang@rock-chips.com>,
 Shunqian Zheng <zhengsq@rock-chips.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-rockchip@lists.infradead.org
Subject: [PATCH 3/3] arm64: dts: rockchip: use USB host by default on
 rk3399-rock-pi-4
Date: Tue,  1 Dec 2020 16:41:32 +0100
Message-Id: <20201201154132.1286-4-vicencb@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201201154132.1286-1-vicencb@gmail.com>
References: <20201201154132.1286-1-vicencb@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201201_104207_052500_8D84B9CF 
X-CRM114-Status: GOOD (  15.41  )
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
Cc: Vicente Bergas <vicencb@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Based on the board schematics at
https://dl.radxa.com/rockpi4/docs/hw/rockpi4/rockpi_4c_v12_sch_20200620.pdf
on page 19 there is an USB Type-A receptacle being used as an USB-OTG port.

But the Type-A connector is not valid for OTG operation, for this reason
there is a switch to select host or device role.
This is non-compliant and error prone because switching is manual.
So, use host mode as it corresponds for a Type-A receptacle.

Signed-off-by: Vicente Bergas <vicencb@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
index 63b029a54..fb7599f07 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
@@ -673,7 +673,7 @@ &usbdrd3_0 {
 
 &usbdrd_dwc3_0 {
 	status = "okay";
-	dr_mode = "otg";
+	dr_mode = "host";
 };
 
 &usbdrd3_1 {
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
