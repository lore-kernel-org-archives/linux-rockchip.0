Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73418C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Mar 2022 13:40:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RG1RmZWQZpJ4wIyjr2cwfTTn9jtrLBgWTWeyjzrzxHw=; b=NFxmC6dAexUSrN
	cxEpUgc/bEuvbx3jUToKduwCW6WryJAUBqJZw4HNnDfImDayHDcTZu/sNLRoeX9dRB0oLwuyL7HXQ
	PBrCpXsgr+jMM9zBZPtpG5is9AVgu6O43wBYiGmmSzsvlLLw7PpzYoZNRa+xiMbS6+kT4ykKl5zaR
	BXANSjjRF16uDjqlN4TPVcDgYAWksiiCIr3Mjcl5DqkNNRxHqFA97sDAu020FUcjI6egaN5TVpxEE
	qr8lCLDbFtZGBeJEAv/QEnfkbA32R8jZYR3cLkvqRvPaElGI2OBT9WQQM6heDVP9mns5xDA3mFNhp
	bfZwdndR5+ei+nHJh/rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZYYg-00G7ct-1h; Wed, 30 Mar 2022 13:40:22 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZYYK-00G7OU-8l; Wed, 30 Mar 2022 13:40:01 +0000
Received: by mail-ej1-x62e.google.com with SMTP id j15so41554995eje.9;
 Wed, 30 Mar 2022 06:39:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NsJbyypLE3sW1sduwkhRapWQvWc+cGtXMQ61CIAQ1+g=;
 b=M+pDkAbJFxQ+RxHYE8gK0a5U98UWp4mGQ2YUHCu6oL1CMqPGSL+aevqSzpI7IFg73W
 vrFxaVyBdq3XdYL95j0oDyZdSMhXhAKwqurLQLejYOHD1YFUfu8UEmxswg6p8T32UseT
 XNoLCUmS1bVgDliofo0EmG9Ids+/K93BN1UBnWEjJbThF+JFhqsDIv/lYlY5ZM4CLoGm
 G5GZcB+9AiCJHf9OGJ2ufF0wnTf6XSm50FfqzDLRwchVzpu0rkbfh64tgPP+icJ6pazo
 h15TEO/QMbqK2h8bNMnmahO13kNR1TSdlQuEIF/nGwI72vqrpQPHhLXJG63OmJWGpfnJ
 webQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NsJbyypLE3sW1sduwkhRapWQvWc+cGtXMQ61CIAQ1+g=;
 b=1vEtSI4d3VkKdJsoy748UTxTHRScD3MbTmqtcWIPHOlr/+HZFzFvN2sOJFRiBkS8LT
 r3oQCpZNkREUD/BSUP84T8x0vQAZV5bvxlQ67OXZPkLgy5CJV5oNY7grLPY0rPck/zsj
 JCExfK3LcQ/Rtk7XufkDIHQ5OFKUjL5L7VrZB6sa486yAWyjrmO0kpXZms3WMcq/Vca3
 8YpLM9CsZ7uA3VSC+qv06itcqyl5cmY84vRbKnashIlOgG+DXzDGfx8+UaMSh1Fa7Bda
 Uch44YNhfCt+o3fUG8KmPZRvcda7EVv7ivEcn0VXntaR19Y4eiL1eFc+wQhYCeufsAbJ
 F8Lw==
X-Gm-Message-State: AOAM533DpoxGm/0+g1eC1r10SFraVBJB3krbYRso5MX/IDNhjKFk/NLR
 D8H24DsNgrPwL/b2hk5DezU=
X-Google-Smtp-Source: ABdhPJyJB4XsIr3erusAgEepKJEAMljGWVw3235YbaVzv6NM8hmgJScAskVbUKQBlCMfhR5Tv1ml3A==
X-Received: by 2002:a17:906:6a11:b0:6d7:76cc:12f6 with SMTP id
 qw17-20020a1709066a1100b006d776cc12f6mr39897365ejc.456.1648647598788; 
 Wed, 30 Mar 2022 06:39:58 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 do8-20020a170906c10800b006dfe680dbfcsm8375448ejc.43.2022.03.30.06.39.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Mar 2022 06:39:58 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, linus.walleij@linaro.org,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/2] dt-bindings: pinctrl: add rockchip,
 rk3036-pinctrl compatible string
Date: Wed, 30 Mar 2022 15:39:51 +0200
Message-Id: <20220330133952.1949-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_064000_358151_EBBF3D85 
X-CRM114-Status: UNSURE (   8.15  )
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

Add the compatible string "rockchip,rk3036-pinctrl" in already
in use in rk3036.dtsi to rockchip,pinctrl.yaml.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
index b0eae3a67..9e90faf9b 100644
--- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
@@ -33,6 +33,7 @@ properties:
     enum:
       - rockchip,px30-pinctrl
       - rockchip,rk2928-pinctrl
+      - rockchip,rk3036-pinctrl
       - rockchip,rk3066a-pinctrl
       - rockchip,rk3066b-pinctrl
       - rockchip,rk3128-pinctrl
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
