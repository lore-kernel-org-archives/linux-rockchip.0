Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 483C3606A335
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2026 10:34:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=UNMXTy9h;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=pengutronix.de header.i=@pengutronix.de header.a=rsa-sha256 header.s=20260414 header.b=PTyokNU0
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=drDITyBKNhYRrZ8uTBOfFSg0QgCtFuwaw33IX1qvQu8=; b=UNMXTy9huk4M0Cyx312CzZ85bp
	Ow5f4OVv1Mcxjjb6Ks24GjxEZm6WeoLmjX8lT+VbJ97WF3J6dUMsjFVnDLPkT3XLCigMhVkra/IFX
	K/2WFoLuks80VTJ1XNIZXot24pWEYn3X3/wJQCCL8vDLwCrkjQvTcyaKVKdXXLR8qPwzY2GXzhxkI
	XxHLKXguKTQxMr7szuaoQABAPqsIYgtTAUBPqKQ0MO2r3sdJ/6Bd4RSNHJWxNl2wfX8xn9Ow0ZjTP
	xgAiJzJYxqQCTAJf9thDS+h3CbSySepWx/9qh5qJv6nt8BQqV6vyf9/oI3szQTSYo8BgW2isvxiJP
	1Yl2ynwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWAKi-00000009Srs-0dbJ;
	Wed, 25 Nov 2026 10:34:36 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWAKC-00000009Seb-1ifX;
	Wed, 25 Nov 2026 10:34:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 2C9D220227C;
	Wed, 25 Nov 2026 11:34:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795602840;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=BS1rCa3FI650n77A5Y3/Sdio8Hg1/CTebUHGnxXpia4=;
	b=PTyokNU0llg1CszqXt8VLb1B6/8QDW2HBgk4IdPM7/WQoLiLlH5l/BNqyzXqgQPOvfDGJ7
	9N0I1g96sij13fR+CXQdQnsw0w7QrkazZRWQkgHSJzeZDKbKr+LoRT45cECnIVmePGRMRZ
	T5ZutBhQoZs9vrp/cXZ0Q3lFawFSfgE8MSxNGbprADXoBLqmNRGr+16BPOeiIuz7h9sbRi
	rDxpUNJuZzHrMzIWjISZWdCMfDPPNbQ+xqsIYk8hEG8vDuL2qtPeVLo5c2SeY7+kbfLLac
	7bY0U86drRKAZqcPOWYI6jUkokSLix9FsPfb4XkGgdKupce/kele86iNWz34hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795602840;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=BS1rCa3FI650n77A5Y3/Sdio8Hg1/CTebUHGnxXpia4=;
	b=GXuVkTas6W7Bz9KuwRZXJpPAiCqHdIMMiN3cKVqaXFGhpSEBbMx/lWOBmG6Qf1uMfLL7Ke
	G2P8rSyQr4uvwvB8q3+2gaaPlQI2LmDbmV1JaFFGfFkXUy6WVNM+Hj6vbKqG1F3iG0/oSR
	XOK9bTBQzUPQ+QIKdHDJ7pQ0TW7T4xGiA5SyhtMN43pP9/sTMySAvrgUavyGUwAAQkKLBK
	nd3oaFeY/SBKo2ygf8jo2myM32wyuLgamg74u/3XqsWqPPqR6TSxQh1ffFpO930BXR7sle
	G5xOe4AguiNw3/b4IckS0O74Jmch6qxVNlVAkttuX5dOrihendX4sZP2UJochQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=f.diener@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795602840; a=rsa-sha256;
	cv=none;
	b=AnLnKIUGcXcrbINj/Z3FWQyWASwcb8iole7MsP3zRFDRPLRvexyz2LstvvN16ueTSbyUf9
	LCAoqaKG3y1WS/313I38TAMu+A5GIrZRf+awqXU50iaoATlLRc4FZPsFAXEnWaqN6cyitz
	/kdDcvAhdjJ79ozC+RfUNNvPsW6MnpOxzGYQ/93ES4gydUOlBY5vGgeEhOW7HEqdfJ5rQ+
	oF3fVULmuz5lt+GZoI/im3w/ezU2vrQNnh9aWMvYl+fxlRUsmfsIYHhc3IayOPv8dOqJoT
	rmIjSx8sDCeKC5EI/dyYHb53sUiJAydj8LFxCrOAqxzzMK+V+Up4d3s7nwyKRA==
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.2])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <f.diener@pengutronix.de>)
	id 1xWAK7-001P9N-1s;
	Wed, 25 Nov 2026 11:34:00 +0100
From: Freimut Diener <f.diener@pengutronix.de>
Date: Wed, 25 Nov 2026 11:33:57 +0100
Subject: [PATCH 1/2] dt-bindings: power: rockchip: Allow
 post-init-providers for domains
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261125-rock5t-regulator-deps-v1-1-6a3470ad1855@pengutronix.de>
References: <20261125-rock5t-regulator-deps-v1-0-6a3470ad1855@pengutronix.de>
In-Reply-To: <20261125-rock5t-regulator-deps-v1-0-6a3470ad1855@pengutronix.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Midgy Balon <midgy971@gmail.com>, Chaoyi Chen <chaoyi.chen@rock-chips.com>, 
 Diederik de Haas <diederik@cknow-tech.com>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Elaine Zhang <zhangqing@rock-chips.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Freimut Diener <f.diener@pengutronix.de>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_023407_681658_EDAFF0BE 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

A Rockchip power domain can have a supply that is required when
powering on the domain but is not required to initialize the power
controller.

Allow post-init-providers on power-domain child nodes to describe
such dependencies.

Signed-off-by: Freimut Diener <f.diener@pengutronix.de>
---
 Documentation/devicetree/bindings/power/rockchip,power-controller.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
index b41db576f95de..d2b512dd95f63 100644
--- a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
+++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
@@ -147,6 +147,9 @@ $defs:
           A number of phandles to qos blocks which need to be saved and restored
           while power domain switches state.
 
+      post-init-providers:
+        $ref: /schemas/post-init-providers.yaml#/properties/post-init-providers
+
       "#power-domain-cells":
         enum: [0, 1]
         description:

-- 
2.56.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
