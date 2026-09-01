Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3641EC61DD3
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2026 15:04:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b5Yi9ei3ZICmN9MxPosEGCAvZ1MGTv9qQMAG3XjR/4s=; b=r6xBxbw3R2WvL3
	UvPSMGuuumxvdJZ1ejpAw3Sa0m+IGP19kgncNPxZhamKwTMbLC3Qdjs0x3TyFw5hdk9MW/dJhMsqS
	z2X/l04s6oPwHgad1fSIyBtsN/esOGR7aNi/q9iPTra/i6DDIL8r/cAe9LjpsKuDeRsl6z9k/Cr+g
	Ly8XUgM7vJt4Y0zhpjl/7T1NLQAC4PzNDOn+6/5sZp5oPxMrpDgA6vkprOrME4bqhrl8WOCXEqbP2
	9MQvbEPV/SnBjO5sc9gWzmwgVIiXqJsa3eStSkhUH7Neq+YrruRmkYrj/fE3pFSjAbVEvkE22Rkfe
	Lf62HoMI2KhTfcGJRYSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Q22-0000000CQb0-2hB4;
	Tue, 01 Sep 2026 15:04:14 +0000
Received: from mail-pz2-x09.google.com ([2607:f8b0:4864:3b::9])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Q20-0000000CQZY-269c
	for linux-rockchip@lists.infradead.org;
	Tue, 01 Sep 2026 15:04:13 +0000
Received: by mail-pz2-x09.google.com with SMTP id 41be03b00d2f7-cc1ddb3ba3eso3187699a12.1
        for <linux-rockchip@lists.infradead.org>; Tue, 01 Sep 2026 08:04:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788275052; x=1788879852; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=jFOAryefyj3E8LprwQb6zM23kP14ZZpWJUCwFcY71vI=;
        b=P4CemD6vg6v47biQQDo/D2523jTiufVg9PMaKMBMg5CnU1AzGDWiGloQf/L3JjARnS
         UwchxqUBlP4+RMmA1SMKNJ515DXh3eTFZNJgXtBWVwKvTRYhdU8s+oRoFpN3t89r4Acl
         vyhgNERdt2Np3O2EWYDcAvng94BlVDEFkGdmCpkmOjkAk+kLVH2Xt+8rK54UyuILPUQw
         rtBA5IyMzYMFSOdWRI7CO+O8zSRfcAfEu1m3i5CyaaP/l4oDOq0iJs0u63N34oL21dDH
         AnSGst1TBLjFuQZF1jDHKBNK0vVEq6K9+Cw4st6z407Pk676T3+FM1XDGq2LT4rkPMFX
         rXgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788275052; x=1788879852;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=jFOAryefyj3E8LprwQb6zM23kP14ZZpWJUCwFcY71vI=;
        b=EDbs7Qci/AXRy4ywVMSyL2tDLGNLvt140Xc1EWUUTI0kBtiWWlSzAOrmrr/HOI5cOF
         1ifsXky64DiUNqoSri3iaTHBoqfpa+jmpA2v5Z1DjWVNB00QI4pwiaWlO5mGts1jhccw
         yHlaQXPRnrUUef1+L9rNUCnVbujtcr7aDZx/oW7M43xXJf8hlMwsVMH/CDuf7tXPBgDq
         O0rRjCDFq3wuflvUYriO7BOqZXzieL7E78Yf/8Z76GzZez1J1yx1ReaQXr+W+08ImAaQ
         Tkl3JSXk6fuUMtV4JzsBnInonj0Vw3FwpWwKlOhzV+P2dylx73hCCr5JbMiw42ZxZmuR
         ZVnA==
X-Forwarded-Encrypted: i=1; AHgh+RqYca1vOG5HliTHnihHUOWj/fEAxM7269FoCYk+7I/uaP0qTkcnzn+d9+3oOB4TI4F1VlH9mn06vQEW49lBoQ==@lists.infradead.org
X-Gm-Message-State: AFuF++nqfwyKIGvN0bzwgUT+XFbKWPaF95770G/YRcdVAgyoALfM4QQG
	iQCaUh2f+21fA3XFxR8QcuKA40e1ckbrYaessZ2mXUbvz4IYqBlRo72T
X-Gm-Gg: AR+sD117r0hd63JGaeI+ooKmuYlmw4lJwUY8xRJl9EJGjFWXagRQwDCDON/3jlitYJM
	lz+0DE304Raw4JQU1rId7lEInw2KbwOrUkGVQn6X42Qd3XVlbolU7M/M9vHhBPx3yTZK9C+Ge4+
	PlkvKEZASLtEDgilzli5yMWQRXf+LtVoOzdl1fJNQZKC24WVctGOmY86GUdiAydg4PWQoLskAS3
	Jzqihr+1PldyOzGNJ1rPOvzazGfkvwW0y72HCTEXmax81NCEF/f9ayNt4CXZgE16qT4YK4+YitZ
	T8hlEXrbs7qdjdBmEe/Fxz6a7d/ME6ov0pMZJrUWz/1vCHC8WnA4IwyxmJfPz6J4z0LKoU2eKAQ
	BcwE+LW30tekQrhpKqh0/Hg8nk+h6q3oPlIzrko2UxIJL+rnvzvY8Rb/uAjoHuuOJKEVMXdLWO4
	sr3s7NoR9OcRktqOFsixKNhi3/HFeAX623+hkFf9CYUAVP5S5I+jYNQsE9Bvo=
X-Received: by 2002:a05:6a00:4501:b0:857:72f8:dc91 with SMTP id d2e1a72fcca58-85772f8de55mr39669660b3a.18.1788275020723;
        Tue, 01 Sep 2026 08:03:40 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-85dc0716846sm27914b3a.45.2026.09.01.08.03.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2026 08:03:39 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Romain Gantois <romain.gantois@bootlin.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Coia Prant <coiaprant@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Russell King <linux@armlinux.org.uk>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	David Heidelberg <david@ixit.cz>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH net-next v3 10/10] MAINTAINERS: add entry for Rockchip XPCS driver
Date: Tue,  1 Sep 2026 23:01:10 +0800
Message-ID: <20260901150111.141037-11-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260901150111.141037-1-coiaprant@gmail.com>
References: <20260901150111.141037-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_080412_536098_130299C7 
X-CRM114-Status: GOOD (  10.95  )
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

Add a MAINTAINERS entry for the Rockchip RK3568 XPCS platform driver
and its device tree binding.

Include the relevant mailing lists (netdev and linux-rockchip) so that
future patches are properly distributed.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 3a19da74d00c9..c3b17752cc817 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -23744,6 +23744,15 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/sound/rockchip,rk3576-sai.yaml
 F:	sound/soc/rockchip/rockchip_sai.*
 
+ROCKCHIP XPCS DRIVER
+M:	Coia Prant <coiaprant@gmail.com>
+L:	netdev@vger.kernel.org
+L:	linux-rockchip@lists.infradead.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/net/pcs/rockchip-dwxpcs.yaml
+F:	drivers/net/pcs/pcs-xpcs-rk.c
+F:	include/linux/pcs/pcs-xpcs-rk.h
+
 ROCKER DRIVER
 M:	Jiri Pirko <jiri@resnulli.us>
 L:	netdev@vger.kernel.org
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
