Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 501FDC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jan 2022 01:01:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cCpw+fw5Dnq1og4Fkce264lAIT95xbADBZ5Cw7rTzs0=; b=PojO/YXsaiPI6F
	5cVXhoe0sa5rKytKbaIA3Rq5GzoSGV4p5z9ZMhaZ3QGQUzGna7/kp30Tkg7WubqJ0HV1TiWr0JPBo
	iPwF6NoR+x7K4RJWLUfVbveDRKj7SxHo4tbOctsotNUrpAW1mf4kExgodbT3OoSdP9KVPoPQAjb1y
	GpU37qPnw4NoQulc3WaB4Q2AnMS7+xugm0hTgwG8R52kDXF2vNmVWAoO1oIa4BTPiOmwyO6OZFh/v
	eV+NyzkQeFIboMQt1LI9kFOXHagztWq+QW4A6BXePOYLJgOWylUa9OZkwlNHIGhDuv/4cuIsh2OFf
	UVe8c16WfwnxH04nyU9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCt9m-00DueE-BF; Thu, 27 Jan 2022 01:00:58 +0000
Received: from mail-qt1-x82a.google.com ([2607:f8b0:4864:20::82a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCt9J-00DuU8-SA; Thu, 27 Jan 2022 01:00:31 +0000
Received: by mail-qt1-x82a.google.com with SMTP id j12so967544qtr.2;
 Wed, 26 Jan 2022 17:00:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vajErjDWK29FvNOeA4ceH5ORPugHRCo1to0RNKcwTFU=;
 b=QgNvaXFHaMQz4rxk5UlHaIxI7n+089K4Astv6OBdqs2zKDF+fKF8kvop+rXFxvlq0W
 ZqdaCg4RP/DFJNkTn5zno3ps/kvQ9SHg/EVkTr9FinV4u/YkdQzO7Yy3XRpq5phdcNW/
 4lPipLqukO3oiRwFsQR/Ndnd7F0Fmzm+Xbgbf3BHhft0ImKfgrCc6WiibW8CZxYuNIVE
 46n306m5bvWDX7itR8X3dXCSJXshDxpWRhz1STS2C5spw2YN2itox9TXgDf5dQwZSNwT
 8E7kdAQmics8nIiZEfX5YEuJL52EcaesDHWSo0JK7OGDqhS4HytMSJOHTECO+V3NDCFi
 8mZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vajErjDWK29FvNOeA4ceH5ORPugHRCo1to0RNKcwTFU=;
 b=RtkXVhWSFORZTVlD/UnuKc697xgM1wlx/wi2nRah0sFoQ0Gs2Sep7yB6Pv8fJgzqfA
 oYR/vrbO4POl9xOqF1VhDyfPtBX30IGbzvygOF3O4jVMKhXtfB6KRlOxmkZa8P4Tmlg2
 5fYZ3UlA3ABTncCpbositQhTRVgXBGpgZyfB7Zp9TgoNXu4g6b2y9UsNnr+KmHfD7YxL
 MTvS2KZuqiy4mXtgFHhCtyXPywYUzfGgMiyy2Wqe7BoTXsYvFG8qN1UqJ/yYi1zUSpFL
 6LtP5aQ3bqm3egV1ioqJe23tMP1NrB8X1tMcXynbZgoJLnrB4/dAjs9gnxqu/tRE1Jtc
 sHMA==
X-Gm-Message-State: AOAM53395G1EZr6nY+wYN9nQrcah8h/iSlu5BLsjy3z8o3vJLOTDd+M8
 FQwzm6Koe8wjkUbAEgUyEnfBNzfIOL8BYA==
X-Google-Smtp-Source: ABdhPJwxQAwzc/Zno4iXwIWNgILmCOnWnIQJd6njQUYmw0iI1RfcM5/4qZKIH/FKJCNK3C1xAvrhQA==
X-Received: by 2002:a05:622a:1102:: with SMTP id
 e2mr1121245qty.2.1643245228558; 
 Wed, 26 Jan 2022 17:00:28 -0800 (PST)
Received: from master-x64.sparksnet (c-98-233-193-225.hsd1.dc.comcast.net.
 [98.233.193.225])
 by smtp.gmail.com with ESMTPSA id n2sm483389qti.59.2022.01.26.17.00.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Jan 2022 17:00:28 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] arm64: dts: rockchip: fix Quartz64-A ddr regulator voltage
Date: Wed, 26 Jan 2022 20:00:21 -0500
Message-Id: <20220127010023.3169415-2-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220127010023.3169415-1-pgwipeout@gmail.com>
References: <20220127010023.3169415-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220126_170029_936928_E9AE80A1 
X-CRM114-Status: GOOD (  10.16  )
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

The Quartz64 Model A uses a voltage divider to ensure ddr voltage is
within specification from the default regulator configuration.
Adjusting this voltage is detrimental, and currently causes the ddr
voltage to be about 0.8v.

Remove the min and max voltage setpoints for the ddr regulator.

Fixes: b33a22a1e7c4 ("arm64: dts: rockchip: add basic dts for Pine64
Quartz64-A")

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index 166399b7f13f..d9eb92d59099 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -285,8 +285,6 @@ regulator-state-mem {
 			vcc_ddr: DCDC_REG3 {
 				regulator-always-on;
 				regulator-boot-on;
-				regulator-min-microvolt = <1100000>;
-				regulator-max-microvolt = <1100000>;
 				regulator-initial-mode = <0x2>;
 				regulator-name = "vcc_ddr";
 				regulator-state-mem {
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
