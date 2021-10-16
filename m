Return-Path: <SRS0=5kjD=PE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83F4DC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Oct 2021 15:46:30 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 438C260F70
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Oct 2021 15:46:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 438C260F70
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mi1R2QladhBEuGUwC4bP50g10YM+JfJOO6L8E7y1sAA=; b=2mfVy/6CuUQAKe
	NGdFGlq9MnyhZrhshJqr52FVDLXJ0L8Bporz+eoSz4DQJRAitHwtOZp2a/Ka/578iEFV7pgwO6e2m
	HV0AleLL8QMKuaveuZdMHj+gFipKoBzgJrY6qzHYg4XeKniRDnVafxte34a7D/NyIOT7ZxLPJbAfZ
	ZJho3otLilV4pQa5uv1oOaSFaXK2lSogda7mUPbq6Oi71elZTJf2Ll9jjb+v0a+gm8XFDm7qlEbwX
	alGpNAkCLlhzg/pvXhOQv4zslrRXZ2knOzf3wSrGBVAmJbrgVV6JMkheluYHuVU1VGpuyNW2pRs4/
	J0Bid5hDTWEOwMrz0CsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbltD-00AtRM-6z; Sat, 16 Oct 2021 15:46:27 +0000
Received: from mail-qk1-x72e.google.com ([2607:f8b0:4864:20::72e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mblst-00AtMt-Ol; Sat, 16 Oct 2021 15:46:08 +0000
Received: by mail-qk1-x72e.google.com with SMTP id a13so1625473qkg.11;
 Sat, 16 Oct 2021 08:46:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NJw7aF7DxG9NnVA6g34yZ865pnpXfhLPwQt1JZttLHs=;
 b=nSufe+7arm6icB5EEbIr121817RNffkcgx+AQmFpYuKTO3aikT4ueYPebn3ZFOxxiW
 mG6KUJgSOx3RDjzP+jyLVSUKfuZz8ea7WXfRj8pLCHP6BNYA2X1aG4vjdI+3wt1MpZU3
 XXaOBgViUkIX9QpXx6hmGYrkHzwKcO76ipcp7Fwdr/MuTIcePtkMSpeMgH1SIm+xUn1c
 EJfejFPIDA1tp7R92Z7vW0uHb5h9bBhcHubNe4YrS+VNJb5ANxzjDAS457f51NYKyOBd
 UUjvCL9irESOLxFmI0VRjRSlFXWfULZTMEKfYcy8AKtk8AxaIcUYy/T8ck6NNqGMthk6
 ATjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NJw7aF7DxG9NnVA6g34yZ865pnpXfhLPwQt1JZttLHs=;
 b=u9fHH4bFepKr26h2BndpsMqIZCx10PoMSooWVSnZUEuIGdzaFDPgi5SXgqz7w7Y7d2
 tTJ84v6cWWBav/70h3EYRQ6aJJ0YbxLFY5p2JiCbrbBZF3WeBRJUXxePm9rAusN5YS/T
 RSA+qL1O31eyu2yuCXA37NmV3OoRyt72r0HMftGMPDLwL8xpGPkBZnn2uiMH4sUymqCi
 Tr1iwEdChlIKbF74cpW+ybzoxAPOoy6QOTM5Sd+qQwObJqNXAmrZhllebIdJhmvjCi5q
 m8c3iZffCgtuVOvlG9WHPRER1Wc++yEHN9b8qRsPRbfrt1n00gpuSooe9Y4kt6TT6uku
 peYw==
X-Gm-Message-State: AOAM531Hr1w85MAynZXpqwKXyVfW/o9sLgRgn+1EL3NaxbwkLNr945kS
 iKNvAF9S8ghN1eJeRZPcz8s=
X-Google-Smtp-Source: ABdhPJzwHdseQdrE783rhDJjxBOWvnkcfPzKhbI8sgu8Ytmb+boDfLWyTDwEIjUoJ7HydBCy8oAoKA==
X-Received: by 2002:a37:aa07:: with SMTP id t7mr14980731qke.158.1634399166625; 
 Sat, 16 Oct 2021 08:46:06 -0700 (PDT)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca.
 [209.91.167.254])
 by smtp.gmail.com with ESMTPSA id i13sm4047978qtp.87.2021.10.16.08.46.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 Oct 2021 08:46:06 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: linux-kernel@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Katsuhiro Suzuki <katsuhiro@katsuster.net>, Chen-Yu Tsai <wens@csie.org>,
 Cameron Nemo <cnemo@tutanota.com>,
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), 
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
 linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support)
Subject: [PATCH 2/2] arm64: dts: rock64: add gpu regulator
Date: Sat, 16 Oct 2021 11:45:45 -0400
Message-Id: <20211016154548.29555-2-twoerner@gmail.com>
X-Mailer: git-send-email 2.30.0.rc0
In-Reply-To: <20211016154548.29555-1-twoerner@gmail.com>
References: <20211016154548.29555-1-twoerner@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211016_084607_826702_54766BF0 
X-CRM114-Status: GOOD (  11.02  )
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

Add a regulator for the GPU in order to properly make use of the newly added
operations-table.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
index 1b0f7e4551ea..e76673d5fdc5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
@@ -133,6 +133,10 @@ &cpu3 {
 	cpu-supply = <&vdd_arm>;
 };
 
+&gpu {
+	mali-supply = <&vdd_logic>;
+};
+
 &emmc {
 	bus-width = <8>;
 	cap-mmc-highspeed;
-- 
2.30.0.rc0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
