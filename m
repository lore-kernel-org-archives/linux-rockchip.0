Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6AE3CDB47E
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Oct 2023 22:37:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mmuUQRKaCm/h0MUPavSFKRH+83O95CLtG0NhjQH5Buo=; b=mnIYyFLTMhpadz
	MqWWNlqwSRhFQHZnSXIWLKeVy+QFqgFps31XoCDTv5NPdTB8rbh2kaWaFhqVzVCFNi7l39I/5GTNw
	oJfziUgu/K2YICXVYm9B3P+uRvZZx2Xqf6/ZdBsgZggF3AnddJZn5zjrqqgHAnl/kpjh7f/eFGj7r
	lmXr3eRS25DecrXgSsnyHB98tSnM6lLOSt3HBvduAhoXdRC6JERYrBc0sg1GeSu0cixYLpA48NH8j
	06dhn1J0NzOnWywrSLwcRrMhxroeSVUl+f6hxs/z0zKEiE5K3GHsRjiqRoqXlk0Kj1xd++pFG/s3V
	qMdqDV6hJUkXMf7x9H0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqhpG-00Gqhz-2k;
	Wed, 11 Oct 2023 22:37:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqhpD-00Gqgh-0D;
	Wed, 11 Oct 2023 22:37:08 +0000
Received: from i53875b94.versanet.de ([83.135.91.148] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qqhov-0005Ma-F3; Thu, 12 Oct 2023 00:36:49 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: devicetree@vger.kernel.org,
	=?UTF-8?q?Tam=C3=A1s=20Sz=C5=B1cs?= <tszucs@protonmail.ch>,
	Conor Dooley <conor+dt@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Rob Herring <robh+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Christopher Obbard <chris.obbard@collabora.com>,
	Shreeya Patel <shreeya.patel@collabora.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Remove duplicate regulator vcc3v3_wf from rock-5b
Date: Thu, 12 Oct 2023 00:36:46 +0200
Message-Id: <169706370545.498990.15528130446226264985.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231011181757.58047-1-tszucs@protonmail.ch>
References: <20231011181757.58047-1-tszucs@protonmail.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231011_153707_106221_D915B7F4 
X-CRM114-Status: UNSURE (   8.76  )
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

T24gV2VkLCAxMSBPY3QgMjAyMyAxODoxODowNSArMDAwMCwgVGFtw6FzIFN6xbFjcyB3cm90ZToK
PiBSZWd1bGF0b3IgZm9yIFZDQzNWM19XRiBoYXMgYmVlbiBhZGRlZCBhcyB2Y2MzdjNfcGNpZTJ4
MWwwIGZpcnN0LiBDbGVhbiB0aGlzIHVwLgo+IAo+IAoKQXBwbGllZCwgdGhhbmtzIQoKWzEvMV0g
YXJtNjQ6IGR0czogcm9ja2NoaXA6IFJlbW92ZSBkdXBsaWNhdGUgcmVndWxhdG9yIHZjYzN2M193
ZiBmcm9tIHJvY2stNWIKICAgICAgY29tbWl0OiAwMDAyYzM3N2U4NjIxNDBhZDY1YjY3YjhiOWRi
ZjA4NmQ0NTc4Zjk1CgpCZXN0IHJlZ2FyZHMsCi0tIApIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250
ZWNoLmRlPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
