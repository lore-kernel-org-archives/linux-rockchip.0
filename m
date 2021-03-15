Return-Path: <SRS0=ms/I=IN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1BAAC433E9
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Mar 2021 08:48:12 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6C0AF64EAE
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Mar 2021 08:48:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6C0AF64EAE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Um0Yzolj5RO4xRP6OVY2TT0/9QiUS5+yCNLpsIenChI=; b=dKVMqpl4rujRBCppHSHEqjRztL
	yT+W9pIbGoGDapdS0kzL+zEB9pV4DtXF0ZNTaB6x1sctroM4CycpFvXHFj11CbXjjJTW6NbqUTmpM
	HG7LBRRtcX5N/uLrgpQtxipl+080hPqx2uW9p/JxIMHTT3ReiE5YfMnYMlzYf06pKqwyCUCLVDp8f
	P+4U6UEdBV+gBU8YIXsEziuMm0WUt9PWAEz1R4fspngvr0M+Uzdl99ovm3GRdt9VMBhVGEPr2Ye4w
	CpuizmQSu99NrJ8ejTEp7Psi8M6XEGTK9PnTyffdzVNDu7Z0lx1pHXEOS6tsyxoU/xWTmxS5R2U9W
	BvTvIEHw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLitO-00FHv2-JB; Mon, 15 Mar 2021 08:48:02 +0000
Received: from mail-io1-xd2d.google.com ([2607:f8b0:4864:20::d2d])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLipQ-00FGo2-P2; Mon, 15 Mar 2021 08:44:01 +0000
Received: by mail-io1-xd2d.google.com with SMTP id g27so32501919iox.2;
 Mon, 15 Mar 2021 01:43:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PUUJWf4QmwLHf83jhf+2Lq8pbXwZliJWXgXFKZ9LPAE=;
 b=TrKiOtOdFxR6EoPkeIzgVbd/Mx2nNks3DWYeXrmaEauFqbp5VGuGeRab568SyFhA7o
 7mr9WDTO+O+g7dGXsAMptUw+DeYiTGMsHT0HfbanaNSmVPe88JaYDP8kDvYjG+kn0YS5
 rnmjovxOqPWLnQDaZ6fhQKNgWnEOUE3T4Ae52ZvEvFj0l34jiC30JRceXVimSyla6Yc2
 Y/V6Y9RHlAgeERC6kTNOXW0u79nmZDrt5OflVKGy1lUH/uYqxg1acOZt2hTxwnqY8Yx/
 Ct1qDrhawSRueywfETEtGRkzoQG2Y1tPebYAOTowrcjZz7UQmRuFKchYKSxGEquEJdTK
 OqsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PUUJWf4QmwLHf83jhf+2Lq8pbXwZliJWXgXFKZ9LPAE=;
 b=ZVTAuQTJEDU+ZG92LNnuTfpUH0ai+V8FNd9K6eSVvDpHNTT3UNCmjE5Jil9Q3K/NaO
 +s2/UuXz5/uUKI1S2ZMq70y7kM4qs/MDpwMY1j+tEIi/bTW4eHntnRum394+wKHZJuD0
 dvS1I/PN9tv3LbTX24sPlyoHQ/QxKWbUdWkoCPXNx+94Vm+FnO+qwbj6gsbSB4emtNgN
 XvXMAEVx278VeEhXYlcUP6aVtgpxo6KoYTFZWafnNbI1QTf7elUF0fL0sRynE8JrETy7
 tUFou0rcWfKRb9w3JBvfUmaWt7F0hrwEGEGZIrHkRwcb3ThSziOvD9Ze/2LfHhnEKk8z
 /YbA==
X-Gm-Message-State: AOAM53381ESnK+YrQrSgN9oMnALXcHWfeG8OiFOPw23/2CnVAz62P5Kw
 cNz2/FKQtqaYEV126ZuzdW0=
X-Google-Smtp-Source: ABdhPJxo+SPbROn/1I5dup9r39OCO5aRNS9OXt8o98ljW0f7OO+so7zDxhM8DkNaP3KWhXIwIde1yA==
X-Received: by 2002:a6b:3bc7:: with SMTP id i190mr6672451ioa.163.1615797832456; 
 Mon, 15 Mar 2021 01:43:52 -0700 (PDT)
Received: from localhost.localdomain
 (tunnel525895-pt.tunnel.tserv15.lax1.ipv6.he.net. [2001:470:c:1200::2])
 by smtp.googlemail.com with ESMTPSA id w6sm7375110ilm.38.2021.03.15.01.43.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 01:43:51 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jagan Teki <jagan@amarulasolutions.com>, Chen-Yu Tsai <wens@csie.org>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
 Tianling Shen <cnsztl@gmail.com>, Johan Jonker <jbx6244@gmail.com>,
 David Bauer <mail@david-bauer.net>,
 Jensen Huang <jensenhuang@friendlyarm.com>,
 Marty Jones <mj8263788@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/2] dt-bindings: Add doc for FriendlyARM NanoPi R4S
Date: Mon, 15 Mar 2021 16:42:40 +0800
Message-Id: <20210315084241.22345-1-cnsztl@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210315_084358_109815_7164F7E1 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
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

Add devicetree binding documentation for the FriendlyARM NanoPi R4S.

Changes in v2:
- Disable display for NanoPi R4S (reference commit: 74532de460ec)
- Light "sys" LED on NanoPi R4S (reference commit: 833821eeab91)

Changes in v3:
- Dropped non-existent node `display_subsystem`

Changes in v4:
- Correctly dropped `display-subsystem` node
- Dropped meaningless `pwm-fan` node
- Dropped wrong `sdmmc` node
- Disabled `i2c4` and `uart0` as they don't exist in the design
- Format fixes

Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index c3036f95c7bc..4a6f772c1043 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -134,6 +134,7 @@ properties:
               - friendlyarm,nanopi-m4
               - friendlyarm,nanopi-m4b
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
