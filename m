Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6663E606CEC4
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2026 17:45:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=lZlqa7++;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=Lhf2+XQX
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=F93XFe/UM6y+m8aZfP7sOwDec+0tV8KjNAOLxdZ+2XQ=; b=lZlqa7++2j/FMXrzCUNNRPIZ5t
	Wmb5sp6Hbo5w7SZ33WM6SHHeSUHtP6FAJC2wAHKbpzeUZ67YCvZ8BB0hJVZy0mtooTm1ztzb/CfMM
	Qf6QMx/cRf4eFDB/98eHKS97Akd6kskEvyYgiv7XGBKjL/NQRIhWFfiPWHT7GT6LRv93m4X2KAm25
	qSfox25k4Rjt0yKCvmEk3Wkipoju0xe2muuCxeaFr4YPepZypxsnGZym5uEsKHezGRCS/YKaz7QXU
	w4Bfly0FHcolMYaFbr9Fpltjnh2wtN84TnJ2VVSLqRzHNd/m/IUPkTddXOxDFGAO1bAPEJWdEgAtQ
	1hzuvVyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNw5f-0000000HV91-0LHa;
	Mon, 02 Nov 2026 17:45:03 +0000
Received: from mail-dy2-x0a.google.com ([2607:f8b0:4864:36::a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNw5b-0000000HV7m-3PCe
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Nov 2026 17:45:01 +0000
Received: by mail-dy2-x0a.google.com with SMTP id 5a478bee46e88-35eaf84cc66so3201507eec.0
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Nov 2026 09:44:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793641499; x=1794246299; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=3bh0GJU6K95rJPMyXBJ2rNzUcBtGgKH7isTHX83efNg=;
        b=Lhf2+XQXPVTNeV+Utj/j+i6o1NcqmSKGPNNSB+JYUznM3UjfZ1sn5O7YeKtzGEcnSZ
         Ks5yPKwhErsZDuyqEu78lZSIQdyRuAwItZeos2Qw3qU/WCbygwrOyi+CEQksaYfdxI/w
         S292IFF/jCY2YashqVwl1y+dJBjINox8cOmHpkgHD9NvS63P13i6fCT0aKM2h6knJgB2
         xO/Nzo7wxjkifcoNR90e28KEQ1nrOtxdHp4PZ8dfk0mslGt7Gi6DyqYkxyQkLcBhylby
         YwdHV1CukQTnEyzbLpurAhOqw2T8jsKdHWKlRUTkHkhr9wZOah49nBQE6I4SeaLcPJgv
         UfoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793641499; x=1794246299;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=3bh0GJU6K95rJPMyXBJ2rNzUcBtGgKH7isTHX83efNg=;
        b=rZ1ZE83510khz/2agmZdI7CaD2lrm6jI+Ox8UWgtP6VPmDdJNdpsnifbYKEbb5zOSw
         TPLZe1HNBLGNgqnCoS0M5DDEjTVoeqAbbuqP5IFQ6KCItX/X0GCSx2J3FEJuawE6UQeY
         ZkfOpu1Fylv9sa5/lJtx+g7VTNKckiwvanX6C7buLwIqjYn8UwvqjFNdH46rf0mR/+Kh
         DIFWqdTPzXg6wDpOvRqVXMuZzs57V0fby8sTVT6oBZjD3MQb06g5OOZVIhqlFEAKDEkM
         OK/M740zP3P9UARHX02/3Uc7OzDosY71uff9aegTdNBFFzdLmuSlF9Y7ounKyMBZexWE
         jTqA==
X-Forwarded-Encrypted: i=1; AKwUvBwSnkM0A965I3tPIBJ83ln0/9rF5Pj98MQLPIlBeN9NKdE2lws5B8pg+cX04cgTLNRUAByP4pe7IhoiTk3FhA==@lists.infradead.org
X-Gm-Message-State: APuU4Z96QKM3hZvhXIZkJd1HZus80PuOp0parugJLMZBPNbm8AeTz6aN
	jVumx3X3b0PYTVFUyHwcXvoBsAX94MJOsiykUNGtsPAaDBgDsx37M+KYULmhyC3n
X-Gm-Gg: AYBFou2uP17N/UfNe8hPaS758hiHLBs8ZylcInltzGJCnKv+ygpNaK859bvR/KPs12o
	KiJaof2zOFbBSFOxX98dKLPjoXHyI8o142uaqdMUoc520Y5C7ZJ8OSEstcZZCd7xb0brCSIYXfO
	AGJlA9iMwDtNhSJS/CHSllTkep7Q9aJnsS1GyqLllgpxNGRRXdN4tiLUw6gOhFPLKqjUYyCQ0p+
	zvapWI352KgIi9jPG4cErLtnSf6V97b3Up6SucJzLOHSiXH2wV0pnIdPfZ3Y7mUPEXSIPWvWSfj
	rbZvwMumzDCvui+f85/Cc5V819VdCAdma/oR6D7jXsaj6/Glp4/6IZCY8jfGxCRUv4VI4PQqSOY
	xwnPI8DS13Kx8agc3DXeXztKdyFrNz0bWP7RMeNXBo9t1qAUZQDMy8QXvMOPsbjByLU/FD4iL9F
	Zoic3GV9HsQrGVpI5xfI3IjN7JBF4LObU964NWtpERNc7Zt6OfpIFl++N/nEe5PJ/X2LnQCoH5r
	twsNkQzunNnWzAYlcooAlywAV0iOYdseHM8R0AGsMYIACkHbTWKKDiJ/vQ8bkLFs9twk4yweFOx
	cYVXoeRT+JYwwbKOeVJqSSPIijY=
X-Received: by 2002:a05:693c:895c:10b0:369:f05d:6c5c with SMTP id 5a478bee46e88-36a4240f66emr17419811eec.28.1793641498907;
        Mon, 02 Nov 2026 09:44:58 -0800 (PST)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36a42935b4asm53290803eec.16.2026.11.02.09.44.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 09:44:58 -0800 (PST)
From: Coia Prant <coiaprant@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andrew Lunn <andrew@lunn.ch>,
	Frank Wunderlich <frank-w@public-files.de>,
	Peter Geis <pgwipeout@gmail.com>,
	Junhao Xie <bigfoot@classfun.cn>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH v3 0/6] arm64: dts: rockchip: fix GMAC clocks and USB OTG power on RK3568 boards
Date: Tue,  3 Nov 2026 01:44:44 +0800
Message-ID: <20261102174450.3000397-1-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_094459_854329_32A8D8C3 
X-CRM114-Status: GOOD (  15.00  )
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
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Changes since v1:
- Patch 5 (USB OTG power): Reworked the power tree based on the schematic.
  Instead of tying usb2phy0_otg directly to the boost, model the OR-ed
  5V_OUT rail explicitly. Add vbat, 5v_boost, and 5v_out nodes, and fix
  the vin-supply of vcc5v0_usb30_otg0 to depend on 5v_out. Drop the
  incorrect phy-supply change on usb2phy0_otg.
- Patch 6 (modem power): New patch. Fix vcc3v4_rf vin-supply from
  vccin_5v to vcc_syson so the M.2 B-Key modem does not lose power
  when the board runs on battery.

Changes since v2:
- Patch 5: Fixed vbat min/max mismatch (both set to 3.7V) to satisfy the
  fixed-regulator constraints.
- Patch 5: Fixed vcc5v0_usb30_otg0 to depend on regulator_5v_out instead
  of bypassing it.
- Patch 6: Updated commit message to clarify this is a topology
  correction rather than a runtime hardware switch fix, as both rails
  are always-on.
- Cover letter: updated the summary for Patch 6.

===

This series fixes three classes of board-level issues found while
bringing up several RK3568 boards.

The first four patches address GMAC clock parents. On these boards the
DTS lists SCLK_GMACx in assigned-clocks but only provides a parent for
SCLK_GMACx_RX_TX, so SCLK_GMACx keeps whatever parent the bootloader or
the hardware reset left. Add CLK_MACx_2TOP explicitly so the GMAC main
clock always comes from the internal source. BPI-R2 Pro additionally
describes clock_in_out wrongly ("input" while the port is a fixed-link
with no external 125 MHz clock); switch it to "output" to match the
hardware. On RK3568 clock_in_out does not change the hardware clock
routing today, so that part is a description fix.

Patch 5 fixes USB OTG power on the Ariaboard Photonicat. On battery
power the USB port is dead because the 5V_OUT rail (which feeds the USB
load switch) relies on a boost converter that is not enabled. Add the
vbat, 5v_boost, and 5v_out regulator nodes to model the OR-ed power
path from the schematic, restoring USB host functionality on battery.

Patch 6 fixes the M.2 B-Key modem power supply topology on the same
board. The vcc3v4_rf regulator was incorrectly modeled as supplied by
vccin_5v (external DC). Correct it to vcc_syson per the schematic to
accurately reflect the hardware power tree.
---
Coia Prant (6):
  arm64: dts: rockchip: fix GMAC clock parents on 9Tripod X3568 v4
  arm64: dts: rockchip: fix GMAC clock parents on Graperain G3568 v2
  arm64: dts: rockchip: fix GMAC clock setup on BPI-R2 Pro
  arm64: dts: rockchip: fix GMAC clock parent on Photonicat
  arm64: dts: rockchip: fix USB OTG power on Photonicat in battery mode
  arm64: dts: rockchip: fix modem power supply topology on Photonicat

 .../dts/rockchip/rk3568-9tripod-x3568-v4.dts  |  4 +-
 .../boot/dts/rockchip/rk3568-bpi-r2-pro.dts   |  4 +-
 .../rockchip/rk3568-graperain-g3568-v2.dts    |  4 +-
 .../boot/dts/rockchip/rk3568-photonicat.dts   | 53 +++++++++++++++++--
 4 files changed, 57 insertions(+), 8 deletions(-)

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
