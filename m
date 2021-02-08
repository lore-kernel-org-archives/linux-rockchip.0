Return-Path: <SRS0=M6n8=HK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 48A9FC433E0
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Feb 2021 19:17:31 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CC74764E74
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Feb 2021 19:17:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CC74764E74
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=LsjdyVn6zL7f7xeXs4VlZIusQQ2gOYQfEkAaY19RNrM=; b=sUwjG/2Pw3fI9yHpj/x8hFYuon
	tNROyoZWqmfvI3JVoDz0VzJKUARcoS66X6WUpr2ot7XcQLpvdhpKzl223FuTXenMkqZfILeJnLZWJ
	xpQVxCY8NETpksSEGL33Q5TDgqm/GCc7E5SNI7GunOPq/JvPvlzg2B3EznXhTc4HtRUgfnwLm+XCF
	dXAD9PWQXdkR8r/PcnE5Vw4cn0xFSuAUGvAfak/MRt3nxntt3icnybaZ6cKJl50THcqr6lW6jLdUD
	vTRVgeTPeqteoXPbO3NBoGd2H5sZhlKuZXRDjfE5oR/M2uicVA2wU65yf3dnNS4sr744KKVd6M7og
	x58AY62A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l9C2F-0004wo-4E; Mon, 08 Feb 2021 19:17:23 +0000
Received: from mail-il1-x12e.google.com ([2607:f8b0:4864:20::12e])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9C28-0004uV-Bu; Mon, 08 Feb 2021 19:17:17 +0000
Received: by mail-il1-x12e.google.com with SMTP id y17so13793062ili.12;
 Mon, 08 Feb 2021 11:17:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JeycJMVrT1Dsbk9XtCwjyUvDzF/dcIodjFIrjeRF9Uw=;
 b=j5xqL69DpZ9yPEm4gQOwSpBh2g5smaE9P2MPnP62rEWZEHts61LsIe6SFn3sG3qtfs
 PSaANvdV5epXdO7HiH01tzIBK7qJDojZ3UmYVCYcmsV5HFyM31F5KHSy1xmL2qCMF84T
 W+lb2Sx28TQ48v9om0X9Ik3YO+2/XB9FojBHit1x2SVl4YPBXVyGdmkqyoRSzf42j3XP
 CtuiuzZ8F6YfRoa1homosSqsngcHVEldPdPHCCNV7lJdMs/avY801gGEzhkAEuybX/ib
 TGE6xVpSl4hR1ClnnfAO3DBj1TtrkS5VcNeu6UhlVmrMo5YWf9DaqiqUrCUzSL/CDDDj
 Ge0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JeycJMVrT1Dsbk9XtCwjyUvDzF/dcIodjFIrjeRF9Uw=;
 b=DCDc/m648/Cs1YonqvWRB5NIGr5rOCJPnn2l7MInY1Uy9wms7J5JWQPbkJv1d4RUI6
 6ft6u2aPd01oMKQpJRRyuFRzGM4q6Itz8FvujhB6ViO3FmoW9Ppj4r2SWH1wzPmYJPWt
 2FPtz3Y0FBG7xxTAUQILj53ITGqqg8DuxQQSS0ay/ZbiXFsqLvzxP6QTHaMzDzcun71Y
 LwdMZ/C8a16ctZXlcfAQnmR6eRGcfx/Dy5JLy6NkpK7+wUiHtOZvlVxV6Fawxrqw+c3S
 +eTQqY6F+shf4hrRQwBUQupDyiZWSxTPNmmQJ4kHS9/t5JAX8WsxEMbJTCxj9a96+E1P
 6FCw==
X-Gm-Message-State: AOAM533EX0lczog/3z3aGxisb19OhBlYLPBjQ6KynwmP9Hb9BTD4kLh5
 msJ8/3bFjZrk/zinEhoFGe0=
X-Google-Smtp-Source: ABdhPJwd2VKq6K3S7zfgm6zF0SnaIRJ8zrSyJR3bE1Y72wItD6hLqv+XlHFG52YX4wJIR2g1SOPtWw==
X-Received: by 2002:a92:c248:: with SMTP id k8mr17387977ilo.141.1612811832591; 
 Mon, 08 Feb 2021 11:17:12 -0800 (PST)
Received: from localhost.localdomain
 (tunnel525895-pt.tunnel.tserv15.lax1.ipv6.he.net. [2001:470:c:1200::2])
 by smtp.googlemail.com with ESMTPSA id j25sm9429645iog.27.2021.02.08.11.17.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Feb 2021 11:17:11 -0800 (PST)
From: Tianling Shen <cnsztl@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jagan Teki <jagan@amarulasolutions.com>, Johan Jonker <jbx6244@gmail.com>,
 Tianling Shen <cnsztl@gmail.com>, Emmanuel Vadot <manu@freebsd.org>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
 David Bauer <mail@david-bauer.net>, Tobias Schramm <t.schramm@manjaro.org>,
 Marty Jones <mj8263788@gmail.com>,
 Jensen Huang <jensenhuang@friendlyarm.com>
Subject: [PATCH 1/2] dt-bindings: Add doc for FriendlyARM NanoPi R4S
Date: Tue,  9 Feb 2021 03:16:45 +0800
Message-Id: <20210208191646.6511-1-cnsztl@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210208_141716_450364_CCE72CF9 
X-CRM114-Status: GOOD (  11.89  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add devicetree binding documentation for the FriendlyARM NanoPi R4S.

Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ef4544ad6f82..b85ebf2c8d52 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -133,6 +133,7 @@ properties:
               - friendlyarm,nanopc-t4
               - friendlyarm,nanopi-m4
               - friendlyarm,nanopi-neo4
+              - friendlyarm,nanopi-r4s
           - const: rockchip,rk3399
 
       - description: GeekBuying GeekBox
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
