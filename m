Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BC67C47258
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Jan 2024 21:22:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B/RwNq6LHqv0COjg1xvUjSFg8FTO3CTOGWdSJTE5zx8=; b=MZPpERqEZRVEdh
	GBXDUbhr0fqceo7fgOOWjh/rTUk9NdkJUbATo+kH50jB9kYFetZWBIVDV/nKkieX+JwXcxAixpmV4
	KfWD8nybN5q1qVmF6mUW5AKrF9nwQTP/tH0RPHhgb74VrJFnpzz2n0jYIOkx7PsmCHCSL3g4Bubv9
	3m/NgX5El76u8kRZ0MFAA5gKtS8jkxFGfM2oFrxiGg3us8dy8tL+rhcXhVe8I6cNTvzJz+/slhIoJ
	RAvPK5ZG1b5Q8Q3NxzEO+aK2oZorpj/p50kV51uznxwCNNMB1oaSfZX+HKzfHJdiAenEe+Ezgj4hX
	ZR4zFyexDLGrBe3iwDpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSODw-000VnF-2p;
	Tue, 23 Jan 2024 21:22:24 +0000
Received: from mail-oa1-f46.google.com ([209.85.160.46])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSODt-000Vjw-2q
	for linux-rockchip@lists.infradead.org;
	Tue, 23 Jan 2024 21:22:23 +0000
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-2148e793e12so591967fac.1
        for <linux-rockchip@lists.infradead.org>; Tue, 23 Jan 2024 13:22:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706044879; x=1706649679; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gdI9GpC3LsV5yV1jgeEDWbIrpCqx193PqpqMfGpnGfI=;
        b=kainUwjaWkkkD3OAlCWDKN+BjiGyxDHsvbrNnkGzEOhKOrQ3XotmsDRyTSLJ3efbN8
         OnnbHHLW0rd73YgF38RADX60Do/0/4VNVdwPW5P+kW6rShrOQ491VyCN+sFc8bQUgSV+
         J3Wo2sG7uqGLx+b+trEUp0X9hv3pZRxbIBwdGY0JWnMen0IhdsnY39EtH9FYL5FBOuv6
         8SNFXI4KKNfUtqO2WEO/o/XMrGnP0Qa9dluWzeF4Mrk2np9o9vy8nysW4qRVlWCwDUrS
         avVAQhWed5XnAP2FZW4/AH1hHQV2cdqzqOsrC91V+on2pjavJ8HkiXAMm9Q2PXammhuf
         Z1HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706044879; x=1706649679;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gdI9GpC3LsV5yV1jgeEDWbIrpCqx193PqpqMfGpnGfI=;
        b=HCD/tzvbCvzpO2wMI3WY9wSYyiM17NHjfcFRml6OvOfExVCGmxBn1NRqKjF6ziR7+e
         +NsYLPuxT1gjiUyX7Zn6qkzx4hjCgQPsp04WjnF/1d021LKlskezm3mxamHequPEDXJr
         ym0D/EW/pbkwnCFX9WieWHh/C6K0o85piKrBCPX9CSYYLP+V6g3Etp8nzyWBwKKjDjcs
         TOBObwECXtDGaOp0eaCAAg9vjH9i7/jCnJcbZvyif1Jx25Ic9zzJlHEFcfPFVRm4MuXs
         5twqGVBR/EyMIQYRZQETeSUFQqhKyylEJkjfWbt5+Z3O3qyVZHM+RDwV8iZCiGDEcZCB
         wfRA==
X-Gm-Message-State: AOJu0Yw54P+VTpZqbLfrgWi5xzXDkyzL+x3iLa5778c4d7i+h9uhOnsN
	X2skPTnEPNM/8pBF4zPOQofNb5rabti3EYb/yu2EBZSdxCchhaJtbQboaEdO
X-Google-Smtp-Source: AGHT+IFR/4/GLbQGIaVwftUhbm+Lbo0xKQHUz9CIpu47XVWOREN12miXKXEwgyBWKKx+gxxMyJr+kA==
X-Received: by 2002:a05:6870:a495:b0:214:2e3b:3742 with SMTP id j21-20020a056870a49500b002142e3b3742mr2825076oal.90.1706044879423;
        Tue, 23 Jan 2024 13:21:19 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id w2-20020a9d4502000000b006dc6e40ba97sm2265770ote.72.2024.01.23.13.21.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 13:21:19 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 3/4] clk: rockchip: rk3568: Add PLL rate for 128MHz
Date: Tue, 23 Jan 2024 15:21:10 -0600
Message-Id: <20240123212111.202146-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240123212111.202146-1-macroalpha82@gmail.com>
References: <20240123212111.202146-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_132221_920095_0A2A9F3A 
X-CRM114-Status: UNSURE (   9.64  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add PLL rate for 128MHz to allow the panel for the Anbernic RG-ARC
series to run at 60hz.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/clk/rockchip/clk-rk3568.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
index b786ddc9af2a..8cb21d10beca 100644
--- a/drivers/clk/rockchip/clk-rk3568.c
+++ b/drivers/clk/rockchip/clk-rk3568.c
@@ -78,6 +78,7 @@ static struct rockchip_pll_rate_table rk3568_pll_rates[] = {
 	RK3036_PLL_RATE(200000000, 1, 100, 3, 4, 1, 0),
 	RK3036_PLL_RATE(148500000, 1, 99, 4, 4, 1, 0),
 	RK3036_PLL_RATE(135000000, 2, 45, 4, 1, 1, 0),
+	RK3036_PLL_RATE(128000000, 1, 16, 3, 1, 1, 0),
 	RK3036_PLL_RATE(126400000, 1, 79, 5, 3, 1, 0),
 	RK3036_PLL_RATE(119000000, 3, 119, 4, 2, 1, 0),
 	RK3036_PLL_RATE(115200000, 1, 24, 5, 1, 1, 0),
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
