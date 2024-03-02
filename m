Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F120C54798
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Mar 2024 12:03:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ErUS7t82Uju33zPB+LhPDSuxOil99D37qxs8N2NzlRc=; b=0l/2DmtLIVouCu
	pofQ6K/LCTLF7PVLmAx26XoqpsgUiw2RLrnkKgUKcUv2+8jgYebZbD31uP+YUcPK5iD/FnL8cu1Rb
	moD6xpFlW7xMGDqvuBBCLXv4pK85X5aUoL3N0s0Qoexf+s3iSd5Nzo8PwoqnDUibtsC+wOv9HMP+F
	LfBjcq+BedXCaG9mdnVuKYIUP2Rxdplwu9A4qeMpZjkSwRghOm8CH58R/gfr0RfTkBjlQuU2QJg/p
	YZSuxewKjW4y+4jNukuV6EETVeNiWPKQOpL5R28i5O79Ugm2l3ny34msyjnnor+MjxGWk+ILisNnZ
	MK6GVZ3s7tSm5L8P1JVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rgO59-00000003TY3-0QQD;
	Sat, 02 Mar 2024 12:03:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rgO56-00000003TWo-2Dgf;
	Sat, 02 Mar 2024 12:03:09 +0000
Received: from [194.95.143.137] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rgO51-0005BL-RA; Sat, 02 Mar 2024 13:03:03 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@debian.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: qnap-ts433: Fix name for UART pin header
Date: Sat,  2 Mar 2024 13:02:55 +0100
Message-Id: <170938096635.1387342.13306327657223784073.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240301163201.559787-2-ukleinek@debian.org>
References: <20240301163201.559787-2-ukleinek@debian.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240302_040308_589485_D2FEE29E 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
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

T24gRnJpLCAxIE1hciAyMDI0IDE3OjMyOjAwICswMTAwLCBVd2UgS2xlaW5lLUvDtm5pZyB3cm90
ZToKPiBJIHR5cG9lZCB0aGUgcGluIGhlYWRlciBuYW1lIHdoZW4gY29weWluZyBpdCBmcm9tIG15
IG5vdGVzIG9uIHBhcGVyLgo+IAo+IAoKQXBwbGllZCwgdGhhbmtzIQoKWzEvMV0gYXJtNjQ6IGR0
czogcm9ja2NoaXA6IHFuYXAtdHM0MzM6IEZpeCBuYW1lIGZvciBVQVJUIHBpbiBoZWFkZXIKICAg
ICAgY29tbWl0OiBjNWE0OGZmYjUyMDZjZDYwNGVmZjRiYjM2OWVmYzFhNzU4MGQxZWMxCgpCZXN0
IHJlZ2FyZHMsCi0tIApIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
