Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46CB6606A328
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2026 19:20:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=vQor3kBh;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=iav.lv header.i=@iav.lv header.a=rsa-sha256 header.s=zoho header.b=LM3QOEpR
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=TNPaKqij6CeNcaRNEv0Gp6eWA33F4rO7fAZY6yYffI8=; b=vQor3kBhkXUerpt9DHcUwM/uvP
	XQCNTxyYs2L+uvK+rynBOUBen0+ew6IejG6lrxWJM+PHNZy9b7Z+UYoqyAW20nCBGDtsEEHm+TEmr
	URpe3kr8DPQ9dpITiXhP9faxO3FA9Ky9YoVYc434mb9j5A7ZHbMc96qDEW0+5kf8gC5lKD2On+Cwd
	ZpVN3R/ZVpwMZ1UppMDZOPkBIXDespQaSnOfCq/H/IUSwFXDjUpP9hbsEYWbDCEjSKwhDDcaQRecg
	FHle7Yk9iy8dZMp28mVDeHLO9VgoMv6rGpd9+UwMqUsaDXWtXh4qFdq0ZPo+JLyTJ1xvz0iGrIoj8
	Uu7GZHcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOK3M-00000003Vfx-0CIw;
	Tue, 03 Nov 2026 19:20:16 +0000
Received: from sender-op-o17.zoho.eu ([136.143.169.17])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOK3J-00000003VfW-2Wr9;
	Tue, 03 Nov 2026 19:20:15 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1793733598; cv=none; 
	d=zohomail.eu; s=zohoarc; 
	b=YY2YI4CHmoRMtnhUzV0HUozrcEpzv4UjVwsf3eUGBEjF1mr8c6/9SEPQFcwjnCHEv4TfWWr5Q+k5PdWp5fGFSli/3jZ4nR55bAPVyCEr5SulybRau2CbP1ATn5pi6Lt9EW4nHsHkQNO0mSECNIWxuh6XyvMW9Qe/ibrGKs35+5s=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.eu; s=zohoarc; 
	t=1793733598; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=YhBfBa8Pny6kFuQ4E8aewbRLvPI4dlsdbD5dTiRQ7Gc=; 
	b=iMVeAHL4jegNpWP9+3oSxp+pm9RSdirqX/5qs/hwWCDljo1Q9/jfO6aTyZb0BS71/P7usuA0Z0jWbmrCzJoRFgIObEzvOMwFXsO1+hNK/CB8ZXXDZTxuYiwMovUBhuaMOi/TwWu6A1wcEUX5TVWXArR4RkpJP8On0qG14k7saII=
ARC-Authentication-Results: i=1; mx.zohomail.eu;
	dkim=pass  header.i=iav.lv;
	spf=pass  smtp.mailfrom=iav@iav.lv;
	dmarc=pass header.from=<iav@iav.lv>
DKIM-Signature: a=rsa-sha256; b=LM3QOEpRp5Djr2FLet4alvtrLgPm0FiOJsvXKm7AL+pq8Yr81TdtQo8eTLVF88zFqtRfLtMZEylMC4ZMZVMORG19cU+lmz+gp8kdlzqXbqJ6q5GIy9Jr8ZuEiUZZsPpCCcOxH4N4MwYoRrkurZLoHoJSxo1mIK2k3KTVvl6eDUw=; c=relaxed/relaxed; s=zoho; d=iav.lv; v=1; bh=YhBfBa8Pny6kFuQ4E8aewbRLvPI4dlsdbD5dTiRQ7Gc=; h=Content-Description:Content-ID:Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:List-Subscribe:List-Post:List-Owner:List-Id:List-Archive:List-Help:List-Unsubscribe:MIME-Version:Message-ID:Resent-Sender:Resent-Cc:Resent-Date:Resent-To:Reply-To:Resent-Message-ID:Resent-From:Sender:Subject:To:Date:From:Message-Id:Reply-To:Subject:To:Cc;
Received: by smtp.zoho.eu with SMTPS id 17937335969083.55780142088463;
	Tue, 3 Nov 2026 20:19:56 +0100 (CET)
Date: Tue, 03 Nov 2026 21:19:55 +0200
From: Igor Velkov <iav@iav.lv>
To: sashiko-reviews@lists.linux.dev
Cc: iav@iav.lv, Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Enable SD UHS-I modes on ROCK Pi 4
Message-ID: <20261103-re-sashiko-rockpi4-sd-uhs-1@iav.lv>
In-Reply-To: <sashiko-outbox-194667@kernel.org>
References: <20261103-rockpi4-sd-uhs-v1-1-fa394d2046e1@iav.lv> <sashiko-outbox-194667@kernel.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_112013_916189_43BC86F6 
X-CRM114-Status: UNSURE (   6.93  )
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
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The RK808 sleep voltages do not take effect on ROCK Pi 4. Its SLEEP
pin is wired to GPIO1_A5 (AP_PWROFF), and nothing muxes that pin to
AP_PWROFF: the DT has no ap_pwroff pinctrl (NanoPi 4 has one), and
U-Boot passes no suspend GPIOs to TF-A. Read back on a ROCK Pi 4A:
GPIO1_A5 is a GPIO input, low. The vcc_sdio sleep state is also the
same as on rockpro64, roc-pc and other RK3399 boards with SDR104.

The io-domain race is what the PCI patch linked under the commit
message fixes:
https://lore.kernel.org/r/20261103-rockchip-pcie-async-v1-1-4dcadb94af64@iav.lv

Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
