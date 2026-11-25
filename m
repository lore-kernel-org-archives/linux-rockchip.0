Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79EDF60A3823
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2026 10:34:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=JjQD+tTY;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=pengutronix.de header.i=@pengutronix.de header.a=rsa-sha256 header.s=20260414 header.b=RzNVdPKf
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=VDx9uQkxhphean00lBx2jeZcGM7pw8ZUnU56r7Nv5ZU=; b=JjQD+tTY9Lhyli5dMeGTr/7hsV
	9Tcp+2x20B8tQtd11CtAZBIz2YNcYgEr+W4NUYHFP7pCFDv/coF/9lfMQX1ABAzBgf8EdUWe61SkJ
	jKBOM6ywRIomqqHY6YsOq4aGPD0yZ+NcwJM2i67BQ5MAMEkpXxF7N/NT7Sp3QdbhxMexWc8UdI0x/
	31g4VHbfCmnHWZBZTrpx44t/8h1KE/yqlhtCZZbURC7klVACUmXkMByKIsczT37lhrix9B4Fzjmpj
	l1RbScSHgvtmBGrmXD5CthIMT4p7wtLA+nMQXmcNyGUEwmewEbUIsBI+qeHQ5i41Um1sSgoiJkWAI
	r8/f/vxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWAKT-00000009Sk2-1YH3;
	Wed, 25 Nov 2026 10:34:21 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWAKC-00000009SeJ-1jHl;
	Wed, 25 Nov 2026 10:34:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 0E4AC20220C;
	Wed, 25 Nov 2026 11:34:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795602840;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=/vZ/NUO91U7RmjEEQoND7bMbRcAjPQeJzuPnx5wjuNU=;
	b=RzNVdPKfVzAoES/QYo3vaq2536/eoZ56Hcse5qvzAHrwxuDS1++EcMAFojo2VklUQm9Gio
	KBVIFNvceztK5XV6hpQ/hZ7nKrp8U0puDIIgvLx28uYmU6ifwAwBIntuzxqGTHCaGKbqzs
	joqJqt/OneJb6JNFPgP9518g7LbyZJMRh3KFKp6FrVmwHDuiUTqcd9MIS3NJJq6lcs0ebh
	vUk3qETvkGVhenAnvQnxnBd4thKF8MMLeEbGZiE6cJDY0hOCCKs9MgIsielcjzuvstoV2O
	NhYG6QALtIxbNwKV9hGwkPaAjTLHJ+ahk4ttstTLco7vT2dwmK+XC1BBD5WbtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795602840;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=/vZ/NUO91U7RmjEEQoND7bMbRcAjPQeJzuPnx5wjuNU=;
	b=DS9rVM3VsRzwqwMCnxcNvzePbFGs0a+/i1VuV0Bi3QBxmp/iy9dY1kfhTSMooxr8kMkDDd
	GUMpspvZb/Ru89T5sD35OM+P2UAV5E7iR1dYeKCx9WJJVsaAVYFfMVy15dOOY/Vx61JfaS
	BkZom5Ni2yKvePGAnRD9DrjP8B5Y/hw0k/AxcWoXJ/Xfe8H/gG4DdbXp3SrYZtl35D2q6k
	yZXt4kvu+iLrQbrNZM/l3a0LfgHB7BoBVk/St1Gmxw+SAu9Yw13HIArIJhNDj0ExKtjELj
	/H9VfVGiCGBPH03GoFG2HQHa5jc41LUbA8jEG5Bay8hAoDcJY7r+0KrPlrlK1g==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=f.diener@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795602840; a=rsa-sha256;
	cv=none;
	b=abO8ki4S/2xozxmRMYPKdTjHiy4sj6ZvjI4uuoluOA4pL/5xUAQn4rFJzEI3aiJfLVYUGy
	Eac+rfZ39ualJsAJsDCxflk0R3Jwp5WwJdrWUZ//kldJeUCrL3KmPsfG8SNoPI8Zj5rU/P
	wIPqEbQDDAmaQUbZ6RYENyKc9EhjG/mK2P+RkEkbwE64RWQYFS7fh8kvVajMvsv4byTetf
	g/bv3lOjuNeMM499H8Q6U21mtXg7zEGZ8gAjQkRryPBObLxeVmrMBVdpxDvMSyeCpa+j/C
	hXH5YZ4hiCmMQiGWhYmWW5U3zx0Yuzhzax7gIZuHULMLjhVncge/OB3kFkrNDA==
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.2])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <f.diener@pengutronix.de>)
	id 1xWAK7-001P9N-1S;
	Wed, 25 Nov 2026 11:33:59 +0100
From: Freimut Diener <f.diener@pengutronix.de>
Subject: [PATCH 0/2] Describe ROCK 5 GPU and NPU regulators as post-init
 providers
Date: Wed, 25 Nov 2026 11:33:56 +0100
Message-Id: <20261125-rock5t-regulator-deps-v1-0-6a3470ad1855@pengutronix.de>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMTQ6CQAxA4auQrm3iVPmJVzEsYKZC0TCkHYwJ4
 e6OsvwW721grMIGt2ID5beYxDnDnQrwYzcPjBKygc5UOUdX1OifZULlYX11KSoGXgxdIKK6by5
 11UBuF+WHfP7fe3vY1n5in34z2PcvNLSp1nkAAAA=
X-Change-ID: 20261124-rock5t-regulator-deps-1d2227b83768
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
X-CRM114-CacheID: sfid-20261125_023407_685100_BC75BEC3 
X-CRM114-Status: UNSURE (   7.80  )
X-CRM114-Notice: Please train this message.
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

This series addresses failed fw_devlink sync_state-only proxy links
by describing the GPU and NPU domain supplies as post-init providers
in the shared ROCK 5B, 5B+ and 5T DTSI.

Related discussion:

https://lore.kernel.org/aixze8zFboY3huSf@venus

Tested on a ROCK 5T with and without the series. All three device-link
creation errors disappear, while driver probing, runtime suspend and
resume, power-domain transitions and regulator reference counts remain
unaffected for the GPU and all three NPU cores.

The modified binding passes dt_binding_check, and all three affected
DTBs pass validation against the Rockchip power-controller schema.

Signed-off-by: Freimut Diener <f.diener@pengutronix.de>
---
Freimut Diener (2):
      dt-bindings: power: rockchip: Allow post-init-providers for domains
      arm64: dts: rockchip: Mark ROCK 5 domain supplies as post-init

 Documentation/devicetree/bindings/power/rockchip,power-controller.yaml | 3 +++
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi                | 2 ++
 2 files changed, 5 insertions(+)
---
base-commit: 6628e7d4c6b25c8d18f1345e3a20d21829aae7e4
change-id: 20261124-rock5t-regulator-deps-1d2227b83768

Best regards,
--  
Freimut Diener <f.diener@pengutronix.de>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
