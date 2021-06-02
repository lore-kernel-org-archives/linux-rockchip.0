Return-Path: <SRS0=F5E9=K4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0C1FFC4708F
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Jun 2021 11:46:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CB2D7610A8
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Jun 2021 11:46:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CB2D7610A8
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=heitbaum.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i6O0GpulIpjomcCWqmoyGvpvFASNuVOgcQ/uLjrRdqI=; b=jmPnE/MZkKBWqu
	Two0z8552NQDxcPmHzABOUYnEUjxi83/uGHVTedZltKtrr2hrUwSkKHyOxNP95s0Oc0DcZROrQ2zD
	SjYhf3tuMSXnbzotgggogAnPqv19atq1FYbUBDIDPg/dPY7m56KTK1gRkQNzLdul94qm4JGfulL/l
	Bx8QPtD36mrxWSQY2rtxo7yAX1zT+jYOT7Igz34yjyQZ3ZfiNkO5/xNu/3XL+VoK+1GMM3mpiVbY7
	U5vi5gPerNh48jJ5Mn2nE521Y6prEr0QWGuaGmHk7GKZzGQHl7caLL+DSdte9pnQNyhmcLOhbRz14
	5XgO76vLpuANGiK73HOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loPKe-003ooP-6I; Wed, 02 Jun 2021 11:46:44 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loOzd-003inw-KH
 for linux-rockchip@lists.infradead.org; Wed, 02 Jun 2021 11:25:05 +0000
Received: by mail-pg1-x52d.google.com with SMTP id 6so1972107pgk.5
 for <linux-rockchip@lists.infradead.org>; Wed, 02 Jun 2021 04:24:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=heitbaum.com; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=li91TkB8vt4LZTs/ZRDPEkBtTqhmB+m8Wqp+53J3jpY=;
 b=aonkHIp6X5zJfn9dkevz/e7hkCumER3RcmOsiw9du/9D9yv94CjQLo/uYyuC/XvNPf
 SohKN8bPTJ8DIEn3p+38+e/UxffGTjgmc2yVx0mpVd9jw1xOAnvgrFB5P/4IoInc+373
 Yb3dj/a26fUyuxUZC5tisApOpD1X0pSwB1ljE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=li91TkB8vt4LZTs/ZRDPEkBtTqhmB+m8Wqp+53J3jpY=;
 b=sFDtq9QNLM2fE3Ctnegq9mPOFY348LNOUejXY2UIjQwEJUAXdZaIJItMw837czUsyw
 grI0LtUNnfz90K9hRXb4HlM7/B4pSwxNcfZYRMzPiYxkR5QyCSOBU0EkIyX9d8IPbA8g
 2C86rCnmuE/78MGPoL9U2CAfv7oVl/UQWqzBv+4z4RaqXITASNSLiy4rHjzaiXBUDZ8B
 PxBXpf+jenu/9WV3gVIUfoLi/GdpofPprfpnOXGt+6DxHdKAmyMN3ePgGgE0R/OxJS/r
 +wKGGn2VtsLA9Un0KGCrNX0LEYYwEKdROuioGk50GrsnCaU7KjIsxo+gm8QIQLuWcpAZ
 vQ9g==
X-Gm-Message-State: AOAM532+tmw0hb170vz9NXb6DcoBqMkADtFMpuXT4gvBPGH+0zUEiUcB
 N3wyzlzWDqXekEjD/dLrRIiJJjbPmeX/Gfszli0=
X-Google-Smtp-Source: ABdhPJxpfZpr0xBPXyYNB5hyvH20vouT4QUVROCCeFjRrQPFQFstm2zrwf9q7Ou5UnmCblp40cXiWA==
X-Received: by 2002:a63:b507:: with SMTP id y7mr33357175pge.74.1622633099202; 
 Wed, 02 Jun 2021 04:24:59 -0700 (PDT)
Received: from 5f9be87369f8 ([124.170.34.40])
 by smtp.gmail.com with ESMTPSA id t1sm10568249pfe.61.2021.06.02.04.24.56
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 02 Jun 2021 04:24:58 -0700 (PDT)
Date: Wed, 2 Jun 2021 11:24:53 +0000
From: Rudi Heitbaum <rudi@heitbaum.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Cc: broonie@kernel.org, ezequiel@collabora.com, chenjh@rock-chips.com,
 pgwipeout@gmail.com
Subject: [PATCH 1/2] dt-bindings: regulator: Add support for TCS4526
Message-ID: <20210602112452.GA98@5f9be87369f8>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_042501_759949_21B3EDF7 
X-CRM114-Status: GOOD (  12.09  )
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

Add a compatible string to support the TCS4526 device,
which is compatible with Fairchild FAN53555 regulators.

Signed-off-by: Rudi Heitbaum <rudi@heitbaum.com>
---
 Documentation/devicetree/bindings/regulator/fan53555.txt | 2 +-
 1 file changed, 1 insertions(+), 1 deletions(-)

diff --git a/Documentation/devicetree/bindings/regulator/fan53555.txt b/Documentation/devicetree/bindings/regulator/fan53555.txt
index e7fc045281d1..013f096ac0aa 100644
--- a/Documentation/devicetree/bindings/regulator/fan53555.txt
+++ b/Documentation/devicetree/bindings/regulator/fan53555.txt
@@ -2,7 +2,7 @@
 
 Required properties:
   - compatible: one of "fcs,fan53555", "fcs,fan53526", "silergy,syr827",
-		"silergy,syr828" or "tcs,tcs4525".
+		"silergy,syr828", "tcs,tcs4525" or "tcs,tcs4526".
   - reg: I2C address
 
 Optional properties:
-- 
2.29.2



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
