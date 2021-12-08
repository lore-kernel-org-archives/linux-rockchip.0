Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED49BC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Dec 2021 22:53:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T4FsxIqCzpLFLB/4Qj6e7yUwyQ1qSYzuVLaop0K40KQ=; b=WhJC6PujQgPwTJ
	mO+alx+ez8jra3AQKFn0bUOfiSJwjJVFsz7tmrsNLI4jSTV5tUA/6ry2Te/C/ujbhagrcnvfsH5At
	6DpQ3oJ00enqIDMKidwXqjR4OvJuHlUlbvrKmYH9u00QFw478dUWy8lbFg3EGjekt/cdPSD1Ijdz4
	d3NNTUSXI2K0LVNBBFlyNJBVxmQynrJ5Cq6lJT3SiXVZX9grIdeLJ0yiCMvuM0kNskBm6kZwatoRu
	GSMspRSsqEqhrD1DmhFwn+hd6tw4DwoRTaopWv6tXRunvsR3fRPef9U+qR+RIsBQTCCpbHIDRY/NT
	XDoqfNVeWTb4x/tNfO1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mv5os-00ET9F-SF; Wed, 08 Dec 2021 22:53:50 +0000
Received: from mail-io1-xd32.google.com ([2607:f8b0:4864:20::d32])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mv5m6-00ERa4-3E; Wed, 08 Dec 2021 22:50:59 +0000
Received: by mail-io1-xd32.google.com with SMTP id p65so4610296iof.3;
 Wed, 08 Dec 2021 14:50:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5uDGT+bQdOGd9jInpMhbePhooiUuliLL4k3ARcsSlNE=;
 b=SMrAIUyTmmwqq2KE5GitKXfURAPHk0xEp2DVv8M6//mv/uHw1hSIFsZ95PEHPiUUFr
 KpIizsH+p/xMLD8jfZiYd9/1Kqc0Glt26WUGdmpb1qnAB+gAjxwklaY4KS1yKOhY/7Tt
 9/b2Ctl7g9uhk6aCy2qxaH1JX1xbvvy7b/gXAF3SjLJqmuruA14QH/zL25f/rL9dbdPB
 gAB94PIy3CnlEB9M4HXQt/BiSyBfOQt3ssknZkE/fhXXfB6jt4TVgd2R/XppIocMvUWT
 tnIJ1BM6sybxx2Go9kNp7yu8VmuTlh19RBGTTLNAvz8GhZCYwd/AF6cDn0WIadvqji9O
 581g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5uDGT+bQdOGd9jInpMhbePhooiUuliLL4k3ARcsSlNE=;
 b=gokJRTKdDAuqhhiIfnXr2aExUJtGljIEfVL71ZKVsxU1GAbYo6C1VVizk2JhGYFQ03
 Ov9+gr9i7uNAVh08pT7qRGUuBTx3jJ029zgAvgDyGu8TbJFVr5kIYtV0snPbh1lMPfOC
 XQdm5t/ZnkdA99C4YQuziTZVHcokU3qVxbafhlYN4Bz53NYXQlUBIkv4uVqK3BydNMpb
 mimebQqWk+w0jyB5gNCsyMm+fYhL0PAEGRcaiQXRyOZjaeFZs2qC+RFKOPdNsM84oFIh
 ox7tZBOl+L1jVYzMCTDIWkg0f6FgG37+I8/YXh4RSBXKNozwKeiZ09kI8Xw9YmJYYzl2
 NLZQ==
X-Gm-Message-State: AOAM530ZVUHxWTt7YzQfmVfB7IK0b4DDUyqT+nE+RMzbwKaFahPcQG2L
 vgytBJAqiWdPFC3UkPiycr0=
X-Google-Smtp-Source: ABdhPJzyhQ8e0ZLCj/Du9L9st0l3VnW5IAfRW7Fn4vUJ5oaWO5af3oiXkAFyrdj38nTMLmZxbd0vtA==
X-Received: by 2002:a6b:8ed4:: with SMTP id q203mr9777949iod.200.1639003857077; 
 Wed, 08 Dec 2021 14:50:57 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:269a:1aa2:f1d9:8dbb])
 by smtp.gmail.com with ESMTPSA id t6sm2378751ioi.51.2021.12.08.14.50.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Dec 2021 14:50:56 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: benjamin.gaignard@collabora.com, cphealy@gmail.com,
 aford@beaconembedded.com, nicolas@ndufresne.ca,
 Adam Ford <aford173@gmail.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lucas Stach <l.stach@pengutronix.de>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev
Subject: [PATCH 08/10] dt-bindings: media: nxp,
 imx8mq-vpu: Enable support for i.MX8M Mini
Date: Wed,  8 Dec 2021 16:50:27 -0600
Message-Id: <20211208225030.2018923-9-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211208225030.2018923-1-aford173@gmail.com>
References: <20211208225030.2018923-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_145058_213343_D3C6B2E1 
X-CRM114-Status: GOOD (  10.50  )
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

The i.MX8M mini appears to have a similar G1 and G2 decoder but the
post-procesing isn't present.  Add compatible flags to support
G1 and G2 without post-processing.

Signed-off-by: Adam Ford <aford173@gmail.com>
---
 Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
index eeb7bd6281f9..fb6c2ab1b2dc 100644
--- a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
+++ b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
@@ -20,6 +20,8 @@ properties:
         deprecated: true
       - const: nxp,imx8mq-vpu-g1
       - const: nxp,imx8mq-vpu-g2
+      - const: nxp, imx8mm-vpu-g1
+      - const: nxp, imx8mm-vpu-g2
 
   reg:
     minItems: 1
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
