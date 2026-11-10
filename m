Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DC26606A320
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Nov 2026 19:31:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=xu+k2x6n;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=ILLsqs4q
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=WH8d+RW3uvViztK5vuHdD1fcXCji7sz+670C9mpFIeY=; b=xu+k2x6nQggeYWrO45byN8HTd6
	2QC8LDKkwC479rl9lOfoQL/5pHrKqBcFyFEjjroPTt5jZa63eAT8O29r/c1X6NaeAFbghKG6CvCQ9
	x3s7UImLdrCYHgNeWeykaWmLWMSHT9ndnSYXycaffqMLrraQNhl+zRhuGF+JUh0kecsB4zr+zR34J
	sAS8krUV3ijuLDtkuZ1Enm4uMkY8gG72lfveCKVc+o4oXo9aRG/bmaFMSTMsBSOlBz8ha9Smxhnjr
	UBs5EUlrgej4zlT6WKfbboc/WFJyVskIIQC4MnAAMpAOCIOsbFF8AQ/jLZPMtUwtTyCsrv5ZSsy19
	0PccmUDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQrYd-00000004umw-255C;
	Tue, 10 Nov 2026 19:31:03 +0000
Received: from mail-dy1-x1343.google.com ([2607:f8b0:4864:20::1343])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQrYb-00000004uWi-1v89
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Nov 2026 19:31:02 +0000
Received: by mail-dy1-x1343.google.com with SMTP id 5a478bee46e88-37198ed3727so3111730eec.0
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Nov 2026 11:30:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794339039; x=1794943839; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=NUDs1vdfcZBxBx3xJiXUGpUDlEHyuHjTI9fXY3QHrkc=;
        b=ILLsqs4q+9laAmfwUF2Z1qzxpYldnYMvxDoYj8Cnr3VcZlA7rLB0J5jzMb6s/ttVWB
         tr0mrJczgC3eJZKVOZ2E4e0RzyPbLhpLYClNJmI/TnB6yEG3L8jUEgUF2RKc494prFc1
         9fuMkUPi1wkRBqB/2bHDHb1XuiWaR7G6kZt0WlYxTYeakpMPylEXzn5uyltRhF8qJxce
         iT43cCFqunMmZbTggNWTYmhqObMpa2KNheGhGGUimnpzxou1wyLkRb3a6uFVgWQ559W6
         II/4OZfUhCr28pZnc9+LD2L2/w3D65zAf7QXs+CZMHwyCuSe9gUlJBlHMI0ogC3ve2kp
         kmOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794339039; x=1794943839;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=NUDs1vdfcZBxBx3xJiXUGpUDlEHyuHjTI9fXY3QHrkc=;
        b=Slkd3DXmb+PLOXoskQAwVKzbfK3xSn10c0O9nWx42zHq+Rj1GDkZIEvc4JONxTJk6c
         d5JsOdqbqH9MiIsSi/YiOeS9z6TUpiyOTiN71nhEmUUCQWTJqQEEZTh0ZhVvagDvJa3a
         VAyhrCrEMwOPqWtxBptxb0/mvbGGigFLvsxu2SQZHejpyf2rbBqbcdqx2exSbpynxtga
         cK3kZLqtrKevu8PoDtqKz3OgBVtqJoVs4Sq86UMBMPFvKBKI0uXWipOoMLEhxj8FPcZP
         7gnCWteRJWY9UBIU/9u6S7/4GWjRxLUy4znWpeLE9Z3BReHwtYX/Cz65U/QGYru0MET8
         06Hg==
X-Forwarded-Encrypted: i=1; AL+hErGE/ZNHx/B/Z0b+vG2gpSGxscWM55cqahRQiYpDL+MDJlzCNtcuk+JjOlzMI+RE9EvEXXjJFu/JXtdyE8k/BA==@lists.infradead.org
X-Gm-Message-State: APuU4Z+EBsTxQwXLXNa8u0HQA6my4ADfpx45jWVxYAlFW/WiM/UDgS6x
	C/MXaLgtNpi1Sb84yjKXRSzDZ5T9xdvbsR9wyL6yfUVhhsLUS7c0ebczq/56xT0nP03Lgw==
X-Gm-Gg: AYBFou0I1s5WDAesSRD1b3pXoRwBiyiWVfmPPetVjSXlgBsHmx4ZEQGa7MdjITrLc9Z
	HLgZeObLSKrgg7uItuCGrziWsgJYqpJRcWFpxuCfwXtVdIGBYxGNBEao+BSCdv2U+WzRG0Gb0w5
	O+mxWLl5liOem4vr8H8zRKsqStK24wsV3DK1r7Mm1ZA79GOjW9lHWsfP0Rr6lb3s4hWqeooEvoP
	tLnjq4ZusItptgPYeRxxFperD6xOFF55Vr0gDM1NM9cQKrNCvg0FJwfiyimTo2i1fbjCY3DTJFU
	NdjRA5p1DL8qjUdh72SboTx/cfP0GpO2y0NZ5PEM1IM7A6fWv4UNfHntHLGWkeHs02a8SsPL2qF
	v0RKpystrVl6xF76oErQAz5IhEcySl9xAYVKYfq/j01y+cANNMynS9KCtJgY8mYksZqGSy/xF4g
	GUirP6aFSsCkUbypqO8h176Wlp9mY1TfV3oaRDR6gSKblhEQy0qDOXkOdd2EX4M6EvJiC0mvFaA
	5MtyLhA5HynhHQILG1dA2jt50iVtUfj1nwvD59xkwPWbBGWNykcV2fG7CbYc0HRgsaMaHYIAqeI
	ZLEM4RvM6nqQCwXiVei6dKwNuOwXj1tMC0WCOpKkbtXFtmXDWQ==
X-Received: by 2002:a05:7301:5f17:b0:375:85ac:d14f with SMTP id 5a478bee46e88-3766a1086f8mr574713eec.14.1794339038382;
        Tue, 10 Nov 2026 11:30:38 -0800 (PST)
Received: from AERO17.taila7786d.ts.net ([45.95.212.224])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3751ad6f11csm7730435eec.0.2026.11.10.11.30.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Nov 2026 11:30:37 -0800 (PST)
From: Pufan Jin <cyan2254650260@gmail.com>
To: Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 0/2] arm64: dts: rockchip: add USB-C PD and DP altmode to LubanCat 4
Date: Wed, 11 Nov 2026 03:30:26 +0800
Message-ID: <20261110193028.512456-1-cyan2254650260@gmail.com>
X-Mailer: git-send-email 2.56.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_113101_495095_47C2FB33 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: -1.9 (-)
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
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

This series enables the front-panel USB Type-C port on the EmbedFire
LubanCat 4 single-board computer, covering USB Power Delivery, dual-role
data/power, and DisplayPort alternate mode.

The port is backed by a Fairchild FUSB302 controller on I2C1 (0x22),
a fixed 5V VBUS regulator enabled by GPIO1_C1 (limited to 2A by an
LPW5209 switch), the RK3588 combo PHY usbdp_phy0, and two DC switches
on GPIO4_B3/B4 for the SBU1/SBU2 lines.

The series is organized into two steps:

1. Basic Type-C and USB PD support:
   Adds the FUSB302 node, VBUS regulator, dual-role power (source 5V/2A,
   sink 5V/1A) and dual-role data connector.  Sets usb_host0_xhci to
   OTG mode with usb-role-switch, wires HS data to the host controller
   and SS data to usbdp_phy0, and adds orientation-switch on the PHY.

2. DisplayPort alternate mode:
   Adds the DisplayPort altmode entry (SVID 0xff01) to the connector,
   wires connector SBU (port@2) to usbdp_phy0 (port@3), and connects
   the display pipeline: VOP2 VP1 -> dp0 -> usbdp_phy0 (port@2).

Validation and hardware test status:
- 'make dtbs' builds cleanly without warnings.
- 'make dtbs_check' against usb-connector, phy-rockchip-usbdp,
  rockchip,dw-dp, and fcs,fusb302 schemas passes with 0 warnings.
- Patch 1 has been verified on a physical LubanCat 4 board:
  * tcpm and fusb302 probe cleanly;
  * Host mode: USB 2.0 and USB 3.0 peripherals enumerate; USB 3.0
    operates at SuperSpeed in normal orientation (reverse-orientation
    SuperSpeed is subject to the known upstream phy-rockchip-usbdp bug);
  * Device mode: ConfigFS CDC ACM serial gadget successfully enumerates
    on a host PC at high-speed with bidirectional data communication;
  * VBUS power switch correctly enables in source mode and remains
    disabled in sink mode with reverse current blocked.
- Patch 2 driver stack registration has been verified on board:
  dw_dp binds to the display subsystem, DRM connector card2-DP-1 is
  registered, usbdp phy-mux and phy-switch are registered, and
  typec_displayport binds to the altmode.  Display output / link
  training is disclosed as pending physical verification due to lack
  of a USB-C to DP monitor/cable at this time.

Pufan Jin (2):
  arm64: dts: rockchip: add USB-C PD support to LubanCat 4
  arm64: dts: rockchip: add USB-C DP altmode support to LubanCat 4

 .../boot/dts/rockchip/rk3588s-lubancat-4.dts  | 172 +++++++++++++++++-
 1 file changed, 171 insertions(+), 1 deletion(-)

-- 
2.56.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
