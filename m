Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368F6606A334
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Nov 2026 22:17:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=tIqi670K;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=p3eIOyeN
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=pErT5iIC6YXSZDQMfjLZOAlnFxdJ8LPLN2FF0eXWlQg=; b=tIqi670Kz6D0KKnyiezVUbRzZp
	uX5FWr59WULmU1HSFolFVv1xYyUajPkIpXhKQ3TGSlwH2gpHnmtacPjC+/CMsYk4stCbZG/jkvdUK
	1izC5X+aqUf0V/5tO2RjOIyYGvgbTTA7M80+p2S+upwph1kXS+f4VBGWXYJ0xBYHITokLJgE1OXYr
	nZtyBflLRztmNBN/TsaZ4sPUwOo4Nhd0F0DdHBF6o2WF9yv0o7ogZhyLav0tSX7P62na98NZe48GE
	KXrroZ7FYfKj+cDZ5ejW7Vah/55wSul6/44W6ZruyxGPaEYAxbZQs2hc0YBurU/y0552t8EY1EPGu
	3MRcCnqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNdrr-0000000F3x4-38So;
	Sun, 01 Nov 2026 22:17:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNdr5-0000000F0Xu-3YWW;
	Sun, 01 Nov 2026 22:17:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=n3w1Fl6SJMp1kr9973CPt7D/UB+btgvPCLo7vh9GdrE=; b=p3eIOyeNLwKdvGgs0DrdVSQ8AN
	pIrjanYCEEVzJtZkLgPuQekvVXx/BUa0ZfyE+6Z9T5DGD+P1gkPZoLHl/7w8blOWDd0HAiHdrSbKA
	C07nlsh2JRBJ6gwFymecy1OJIpZVJLHwnV6Ov78hzlianq2McrvIBDlR7oazvu20VMT7esI7ZOYip
	YYwScpE5Tf5tf4L/fcgXcMkGFcQ3q+0p2ea/DGT3NZyjGCxItglsSMJEYtNPkNScw2OEqIKyzE0+R
	eNqyM5/iJGS/8dLRjMKoDfeTZBMxJih72F47iHoaJ95WOQ9Cuf8ppbd/IZK4Bag1wC3t+/plqYb7N
	ZjnAyqyA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dennis Gilmore <dennis@ausil.us>,
	Alexey Charkov <alchark@gmail.com>,
	Kel Modderman <kelvmod@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] arm64: dts: rockchip: Fix Orange Pi 5 Pro headphone output
Date: Sun,  1 Nov 2026 23:16:32 +0100
Message-ID: <179357139327.4108484.4012953822270877213.b4-ty@b4>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261018-opi5pro-amp-v1-0-05c84e91bf6d@gmail.com>
References: <20261018-opi5pro-amp-v1-0-05c84e91bf6d@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261101_141647_959356_7D1C3DF4 
X-CRM114-Status: GOOD (  11.09  )
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
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On Sun, 18 Oct 2026 16:35:29 +1000, Kel Modderman wrote:
> The Orange Pi 5 Pro inherits vcc_3v3_sd_s0 from the shared
> rk3588s-orangepi-5.dtsi, but on the Pro GPIO4_B5 does not switch SD card
> power: it enables the headphone amplifier. With the regulator claiming
> the pin, the amplifier stays off and the headphone jack is silent.
> 
> Patch 1 moves the regulator and the sdmmc vmmc-supply into
> rk3588s-orangepi-5-5b.dtsi, which only the 5 and 5B include. The
> compiled 5 and 5B DTBs have the same nodes and properties as before.
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: Move SD card regulator to Orange Pi 5/5B
      commit: 7fad20ae8bf8e289cb6423d68ef4f0d67f4a33c5
[2/2] arm64: dts: rockchip: Add headphone amplifier to Orange Pi 5 Pro
      commit: f21e9ddb7415eb60a404297e2a44fa23243fd2d4

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
