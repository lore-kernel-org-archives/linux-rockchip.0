Return-Path: <SRS0=31gD=BX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5929DC433DF
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Aug 2020 17:25:15 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1A82A20774
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Aug 2020 17:25:15 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="3NGL+mI0";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="c+x3NSPq"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1A82A20774
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=J+ezXsQJsmdLf/0yrcgcV5vDqNvfh7+4Cv6MUuVJ+EI=; b=3NGL+mI0dHk+dJVklTkGFzh7Yb
	rAo6F13dq2ZIzIz4ZlExuBXUH9IxF/yPfp3BryaTKsN3tC5pIL3TiqqXHTc4XNfq1zPB+MEodPXN9
	Oc3lXTwaGcTssisXrFd82/5/JK0yuci2lpd83XKkOZIt7QzKYNsXi8gSpANyJghDVB1FRmBI5EMPg
	tyfroIapST2LNqgLqOGsGyE3zid7sn71hmJUzg2ZnhQvdvSmMW47OxOXqxsHvo2ox1MLWDYTHTEZP
	NB+FqFMdulQoQorI226UVixy3hE5I2nMMILV5ww3+XwJe7kJd5x+ZNIpyKnG6FK2YzhzzvPSDEGIT
	Av6kzIcQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k6GyQ-0004Oo-4o; Thu, 13 Aug 2020 17:25:06 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k6GyM-0004N3-4t; Thu, 13 Aug 2020 17:25:02 +0000
Received: by mail-ed1-x542.google.com with SMTP id c10so4778334edk.6;
 Thu, 13 Aug 2020 10:25:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=rSB8VVTvzJbQ2bhhJZj7hUI5mv93QDUUshAlmirOUtA=;
 b=c+x3NSPqjwWvDSgs3rLRPS/myd6Ky3FgX8yuOwAPAlleEeiEqEEE2tzOl7fzjJdE0s
 ssTQzwyAAb/RTFFgEMmqaFKMCO0NUfqOd8PyxwW1BGvOkxKw1Xg/BMarEPevtrCgoTjG
 9xLki6fJBLkST2VXBNEGooWW+HkDoBg8z12yDZ1/oy2hhxZxLGfIM1fNzAW6u0l/lY1q
 E8fjSh7idIZSivlQ+rotSlpY9Noh2AV1JD9muDoBsHv96F6rNVy8Z0w7jDj2tLxezKnl
 Lc7kCFAO+/F7qi8rXbXyeOKPKAeFrrMZrVms4BW5RfUB9R51Tasq78gG82x/UEhPBUqK
 YYHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=rSB8VVTvzJbQ2bhhJZj7hUI5mv93QDUUshAlmirOUtA=;
 b=qHFaVScyb+iwnivVGBqR3gCcM2V4qF7ZmVnS4jKmwuy2ArotYdJCMLgvdIbLDS8N33
 vgnQezTSL0JpSngqLBZdZoYtn9XRJYu8XuIyexUiqCPrvYKihmsdtPzSlgO44c/uU/6o
 zeW+kTe5IDEQsF96XOf1pjeZNFhG7ENQbFau1M8mPbpOU1YtktWL3r6oTMh/spak46ZD
 IExdQ/VjQO3VEOSE65KbnE2Nuw4tPC8t4KiyuWcL11Pko3Wqh/H3WqUSQ/L0KK1AR+lz
 jzBqjtOBx/UrmHo8RXgi0HDTmtTT0zpAgJQxPdxMy5ywI30rD3MpJkaVcTEe6Vod3++k
 RNOA==
X-Gm-Message-State: AOAM532yIGkwXSUmALJYHsq1MDVF4dRHQuNx7+MtaUrVNYizJpF1gfUZ
 N3nwvp6/8+5TBM9IP6XsMXg=
X-Google-Smtp-Source: ABdhPJwUpMviHhcDaq2Pfp/b+cSasXXDYlD4c2EJfbiFFCF9FcIzkMU6r1RZW7EUcBCrymI+g2F1TQ==
X-Received: by 2002:aa7:cdc4:: with SMTP id h4mr5532080edw.252.1597339499335; 
 Thu, 13 Aug 2020 10:24:59 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id u4sm4369408edy.18.2020.08.13.10.24.58
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Aug 2020 10:24:58 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 1/2] ARM: dts: rockchip: rk3066a: add label to cpu@1
Date: Thu, 13 Aug 2020 19:24:50 +0200
Message-Id: <20200813172451.13754-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200813_132502_218386_DCCAB319 
X-CRM114-Status: GOOD (  14.35  )
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add label to cpu@1 for later use.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3066a.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3066a.dtsi b/arch/arm/boot/dts/rk3066a.dtsi
index b599394d1..252750c97 100644
--- a/arch/arm/boot/dts/rk3066a.dtsi
+++ b/arch/arm/boot/dts/rk3066a.dtsi
@@ -36,7 +36,7 @@
 			clock-latency = <40000>;
 			clocks = <&cru ARMCLK>;
 		};
-		cpu@1 {
+		cpu1: cpu@1 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a9";
 			next-level-cache = <&L2>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
