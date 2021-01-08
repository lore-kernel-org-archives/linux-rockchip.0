Return-Path: <SRS0=mPU+=GL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5139C433E6
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jan 2021 15:12:02 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6BED8238EC
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jan 2021 15:12:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6BED8238EC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GOffEpBoo6i8pR+fT+Sfn/Lwfe0HSWd+PqtZ6BAblk0=; b=qAgFbkc20gtvRun4QXCYt4vd6
	E3CFYgkTuSq59zFq3hf+jwgEKAkSkx/16Osgt+0D8sSHlfXJlX+2dEFongCS9b6EPtE3u75lmjB7O
	//0M0r0DE+yPhpkuZTtnJlWI+QeC0yeAt/u6oxFJSfSGYEfY4XIOjP/2iqJzrWEqUiWfo206AKZAi
	5dN7j53jgoaFEAychX2reYXWwy6BovY1aZSSv1/eGAEQTDYGTfkmDPyB+2SrcDxbih/h1PFKXkya3
	9h3ZVqpd3hedFhbPRGidJ5sEUwOG/vYuHIpvCw8E7BAu27AxhzzyiMjs2AHBx8fSHOd7dGMK1GZgB
	H0UeZataA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kxtQl-0000VP-Nz; Fri, 08 Jan 2021 15:11:59 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kxtPW-0008SZ-Aj; Fri, 08 Jan 2021 15:10:43 +0000
Received: by mail-ej1-x632.google.com with SMTP id x16so14927960ejj.7;
 Fri, 08 Jan 2021 07:10:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vZOTFs+GSq43b4H42olR+ZkGo+YlvQdilb2TDtquzLE=;
 b=vVxqQk3bdtJksJdwvzMXejO7m0yN1/Vx06weqhblC8MsNr1fEMmK/oVBrLjmXxrsSV
 ml1MbGS+hBeV+J1lK6OcnabQwC6LOBbykCTlRDWuwUOUiJKvJSGl7hh4G32F8VNtwjl9
 fdCCtQO46S+2xgO0e6fSBh60PDVUvAZRtFhM8mr/jRey+wg/MsOWLP/p0i9tZqX0AA86
 TKP/B4jE1hsj4jkjnQ8U9GVvGBNcZ7DJsvmZ5TlTlkHMxk0afwfsd52IrqF43GAAdm+A
 bmBaerGtM7CRDiDcj73vAeMzht8XUCHsvXTA97bTYLyOnRdPQtK9mt89YOIgxwhJiMWe
 7zEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vZOTFs+GSq43b4H42olR+ZkGo+YlvQdilb2TDtquzLE=;
 b=WS8hJ3HnMKBYxk0WFN1QdrL7oWxLbgvsSFjrHLIUdSIYc7JFAWwBwi7k4VOlz05FRr
 zkSMN1eaEJt52WU+aHw+B+6b2zUzMnaE7lSxflojZN5W7Ym1N4DSvPjRbjC2VfHScKum
 H/4on02LCVKKzk4cWCZ12rEXC6JPqc3cLhzxFL2jSHSM/swbXX5A3Rupow6hqPCOpt69
 c5EVkRXuNFrhfiSbhYn9qNm2p9WJhoLprNonS4YSeMY3MNNUIn2UYnpW+MtHTm1vy1uU
 2C38PkCTJj2SohKEB9jC8WibNBGpHGCCeDOYasp2+NKUDKqDBkz6pgIKqmEUQaqJTCvy
 iGfA==
X-Gm-Message-State: AOAM533dfjTOL9rMm2qdmYBiEjIUlL20wt5pNNjsY26plvX7FcIFcgoG
 HAwdmSP+t2QWs47HY++73Q==
X-Google-Smtp-Source: ABdhPJz236p0cdxk+4FzSFD+agoDp6O23F/mFGHfnmO5aftxpFsarP5XYeqVtFafYZ+n1yntMdagzg==
X-Received: by 2002:a17:906:81d6:: with SMTP id
 e22mr3026604ejx.476.1610118641153; 
 Fri, 08 Jan 2021 07:10:41 -0800 (PST)
Received: from demetris-TA770E3.lan ([212.50.117.154])
 by smtp.gmail.com with ESMTPSA id oq7sm3669286ejb.63.2021.01.08.07.10.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Jan 2021 07:10:40 -0800 (PST)
From: Demetris Ierokipides <ierokipides.dem@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] ARM: dts: rockchip: add extra cpu opp points to
 rk3288-miqi
Date: Fri,  8 Jan 2021 17:10:36 +0200
Message-Id: <20210108151036.36434-3-ierokipides.dem@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210108151036.36434-1-ierokipides.dem@gmail.com>
References: <20210108151036.36434-1-ierokipides.dem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210108_101042_384798_8F068D65 
X-CRM114-Status: GOOD (  11.66  )
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
Cc: Demetris Ierokipides <ierokipides.dem@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add extra 1.7GHz and 1.8GHz opp points to the MiQi device-tree to improve
performance.

Signed-off-by: Demetris Ierokipides <ierokipides.dem@gmail.com>
---
 arch/arm/boot/dts/rk3288-miqi.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288-miqi.dts b/arch/arm/boot/dts/rk3288-miqi.dts
index 713f55e143c6..1b48855db6ff 100644
--- a/arch/arm/boot/dts/rk3288-miqi.dts
+++ b/arch/arm/boot/dts/rk3288-miqi.dts
@@ -96,6 +96,18 @@ &cpu3 {
 	cpu-supply = <&vdd_cpu>;
 };
 
+&cpu_opp_table {
+	opp-1704000000 {
+		opp-hz = /bits/ 64 <1704000000>;
+		opp-microvolt = <1350000>;
+	};
+
+	opp-1800000000 {
+		opp-hz = /bits/ 64 <1800000000>;
+		opp-microvolt = <1350000>;
+	};
+};
+
 &emmc {
 	bus-width = <8>;
 	cap-mmc-highspeed;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
