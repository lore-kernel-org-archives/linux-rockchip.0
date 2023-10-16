Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BAEF3C46CA1
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Oct 2023 20:13:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GD7iLezvH8ARnXf3zi4sWLm6dr769QV8sRzdRTk+NRs=; b=qjzTA7uPNJ90TO
	LJ6S/4UNIu1KFJqowNB7/a36kI/N6epKBQ9ML1PJIxvZYltyAzEczsHy97XbX5DEWdkWyCSBLrPn8
	YfbDLrD2gwDw13lSizMdpJXRgIUhTrZAnsUzsZR9WIcIbCDgNZXzIR/Uv5uffPjS/g3wDgqar9aHv
	VN59liR2AdyN49qGrqW6y22RCcu5TEzl/XUA/J3Vpe2Swz0NTKRCWja4rmMh9/kRS1GaII7MEVJBU
	DquxVotFF4UY8zzvVp2a0ltAkWICuqqYnARhuZiJoZHkVrCkYtcjiYwEwumLBTZTddJbEZqid4j8U
	mGp5hnxjK+fo5OrWvJng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qsTxY-00ATRj-1k;
	Mon, 16 Oct 2023 20:13:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qsTx0-00ASwR-37;
	Mon, 16 Oct 2023 20:12:35 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qsTww-0000QB-3r; Mon, 16 Oct 2023 22:12:26 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	=?UTF-8?q?Tam=C3=A1s=20Sz=C5=B1cs?= <tszucs@protonmail.ch>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Jonas Karlman <jonas@kwiboo.se>,
	Conor Dooley <conor+dt@kernel.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Anand Moon <linux.amoon@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-kernel@vger.kernel.org,
	Shengyu Qu <wiagn233@outlook.com>,
	Jagan Teki <jagan@amarulasolutions.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Add missing sdmmc2 SDR rates to rock-3a
Date: Mon, 16 Oct 2023 22:12:22 +0200
Message-Id: <169748713690.982818.6918031179658746694.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231011191448.58936-1-tszucs@protonmail.ch>
References: <20231011191448.58936-1-tszucs@protonmail.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231016_131231_011275_07A71BB9 
X-CRM114-Status: GOOD (  10.91  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gV2VkLCAxMSBPY3QgMjAyMyAxOToxNDo1NiArMDAwMCwgVGFtw6FzIFN6xbFjcyB3cm90ZToK
PiBBZGQgbWlzc2luZyBVSFMtSSBTRFIgcmF0ZXMgdG8gc2RtbWMyLiBBZGQgZXhwbGljaXQgYWxp
YXMgYXMgbW1jMiB3aGlsZSBhdCBpdC4KPiBJdCB3b3VsZCBiZSBnb29kIHRvIGhhdmUgbWF0Y2hp
bmcgdGltaW5ncyBlbmFibGVkIGluIGNhc2Ugc2xvd2VyIFNESU8gZGV2aWNlcwo+IGFyZSBlbmNv
dW50ZXJlZC4KPiAKPiAKCkFwcGxpZWQsIHRoYW5rcyEKClsxLzFdIGFybTY0OiBkdHM6IHJvY2tj
aGlwOiBBZGQgbWlzc2luZyBzZG1tYzIgU0RSIHJhdGVzIHRvIHJvY2stM2EKICAgICAgY29tbWl0
OiAwNTk3ZDg1ODU5ZTQ4YzQzNjY4NjJhNjI1MjQ3OTY5ODU5MGFlMzljCgpCZXN0IHJlZ2FyZHMs
Ci0tIApIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
