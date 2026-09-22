Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B696C982FA
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2026 20:05:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xusntvNr/hcKM5aKf09TkI8gQX+msDk5AkZ3I4MW0Mo=; b=jR95DI+AxO7VNz
	BBC6ICvyp5pLsZ1TZNHI+0MEA7z4yfyHvQgb6QIXBkTszuXjvL9GW1DwR8HJr8pfh6Uy1aelQy2f7
	oAT5roT0XvWbTrRkKOKE1Ih8QiJlbgocPb6FzwnoJTV11BYNYOHetx5b9xMJY64Yw/Z+Mfk1sSyqz
	jdlBO5KqOsjImVE6DNOylNGPV5c7GieraLshXVRMOvZEkmX70x/RoBj1RspZFwd4esk4ooUBDtzAY
	UzobcjuS7ntc0VDiLftgUOvi/Orql2I3ht4uof/zB2PhUPuVWV6zH1wzUgLDWPMUx2EwvIDMBw9uh
	n4CTCk8ydHVo1tHmHGHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x96k5-00000006V6A-2cg9;
	Tue, 22 Sep 2026 20:05:29 +0000
Received: from mail-pj2-x0b.google.com ([2607:f8b0:4864:39::b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x96jp-00000006UsY-0tc3
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Sep 2026 20:05:15 +0000
Received: by mail-pj2-x0b.google.com with SMTP id d9443c01a7336-2df5ab2f7b4so758435ad.1
        for <linux-rockchip@lists.infradead.org>; Tue, 22 Sep 2026 13:05:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790107512; x=1790712312; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=bdJAnLwrz+/OjIyJtnetxy2JKy8P0MsUYxFs2QuKaus=;
        b=E6Uvf3yX1SFo0em446D744Rl436hbZ7ja8t1CqitlxotxKhD345MfXa5XIAbPDy8I5
         D/UI/Qmiw0HTel1IPuz5PS7DM0RBXUlG1dSZZHyvUT9hwgJdPN0Db049pNfip094zGUM
         W06YT+MosNdo2cpSupb1nsrlCkCcAISC67v9SBEyUjw0pmZv64Oy+dWGd5LtanTggaMw
         scUq39loCkAmbXbWrdQYLZSW6AcYpKAtsgC6fq9rB8cDDCSPDA3NasOutUuMa0DY66lK
         tmQe8Y93rdXrqvu44E1jg1DVbWmpCIIr74JaVsN5nIUuxMCGI82PLCdtXgzshtAcopD3
         bSgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790107512; x=1790712312;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=bdJAnLwrz+/OjIyJtnetxy2JKy8P0MsUYxFs2QuKaus=;
        b=iv7eXv6/jl+imPKO9wI+Dom9VCLPo5GzINunArjK62tjcqEFVOP3twuS1mto769rSS
         XdMhQXfBFlPXdpdnhKW+wdloi1TGTxSc364NG+cFHy0/LSgm6Gnw1KdRzEpVJxI0dUm8
         7izIhv2DN2To/S/4eio6LDrKehsFO68Uexec5X/2TwG+VFZRatjTxsjfQ+sbneXgTEfa
         nmv/R6CDZ7Pth2CpQzQ9l8MnYiUnXkNXliasKWLSNz9+vtCKjau1Y28IANJA2F9FcX1Z
         lunKgqjxBOUkYCIbWKT2j1F70ODb0aItdOu8t8TjG3Yv6yFgvJ03zmuV8NMsq3xgyvL3
         13pg==
X-Forwarded-Encrypted: i=1; AKwUvBxfCCKprZ/hMrni4v1g34nbag0bqccPXve/2wy0jvVZs5yQJCuimCuBO8G1s/K188r0uOeM6s9gbXeAxm2EMQ==@lists.infradead.org
X-Gm-Message-State: AFuF++lL0Rx3yOYPQgvPzNfIDGoXuqNB6eIwmTdehRZdE2+dTKbx9I8w
	nG6k2kOLZSgHO5Znd8naN/Ap14dwc+PcMvX65yhsZVg49I3FQB9V8KXs
X-Gm-Gg: AYBFou2MvZoWBbjKW54qAVmNmCmMxWF4ckjWWoSrkBKSjxx0or4GE9nDMiz0uX2tshB
	x/PJNdBYZGrBYcrLP1U3zhCCEQtfczryZoEr28tFSA7OlB2kyHRB+IkyBA5vqmbVdwOXB96wP5p
	8+aCDbuJRvOOE3IHkebirFrgnIifl98yNT9yDZebVyw04iKvrUpFH9NQpLbYo1AitS/1t7lyRHf
	0NdKA4Py4I1zHHzUR8QiCUPJw+8rolLuK9EqFpsdKX166pT1YX+7XRWY884zt6fbqF09Gvf8fff
	6KYO3H0rD9anRsaL3lnQlF7tfwmC9/QRN9KZqAPoVMz5djc/5rLBuawBNlYZOnvAD9YJ7tTTRQX
	cgDC9pbJ/ZuAeqExJiLdbOwhMKbI4qWAOVlp7R0LEEYAKX6sC0sG0zqdny6wojudVGujD3Yqogh
	FLoQJ4cnA0aKfJ+ss8U9NiY9Fhf+UTzZkYvtPMrpqG0F0x3SZjRvrCJRgjq9rCQJflx0gA
X-Received: by 2002:a17:903:234e:b0:2dc:fcfc:bdeb with SMTP id d9443c01a7336-2df69d3649amr4211185ad.22.1790107512560;
        Tue, 22 Sep 2026 13:05:12 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2df6a5eea15sm654515ad.64.2026.09.22.13.05.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Sep 2026 13:05:11 -0700 (PDT)
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
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH net-next v10 11/11] MAINTAINERS: add entry for Rockchip XPCS driver
Date: Wed, 23 Sep 2026 04:03:35 +0800
Message-ID: <20260922200336.2201212-12-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260922200336.2201212-1-coiaprant@gmail.com>
References: <20260922200336.2201212-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_130513_343512_2308A0FD 
X-CRM114-Status: GOOD (  10.55  )
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
index cc3cae2e378b3..085589b8ba65e 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -23740,6 +23740,15 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/sound/rockchip,rk3576-sai.yaml
 F:	sound/soc/rockchip/rockchip_sai.*
 
+ROCKCHIP XPCS DRIVER
+M:	Coia Prant <coiaprant@gmail.com>
+L:	netdev@vger.kernel.org
+L:	linux-rockchip@lists.infradead.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/net/pcs/rockchip,rk3568-xpcs.yaml
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
