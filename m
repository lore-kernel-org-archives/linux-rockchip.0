Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FF70C5478C
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Feb 2024 13:03:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RwYG1/29BAzEz5Qhk2L7u6YdalTsyq+d/f++XskFN2w=; b=4yB72lGlRrJp5k
	uDtxs9RbmumtvoOKgLo9t+C5k/8apHMdDeI7IWge92zWWrHgXjYtuZDm3blqcd5N/v/FhVevLg8IG
	pZn7UC9aWkmnsWApxl96AYL34i2BX1pJEy6HxZRe8+xnsFpBmXYxouYz/roUbmUsCI2wbRpXSU+zb
	ALEPVk6jCidphTSue4vrKe3UuQc+YIZ8uDUpN+tDtRsxC7DiV5A59TfBAB1UHE/s4QJJ5IHYH/ULh
	tFctgpNR+xQGm+/u8EzzYqcEP6f/by9yIYNlbSxjKhNQcwx10GGwcOvjJ5E4A5g5rjpt9HyXUeivw
	aJ+v55sQ8IQMrDiRkQ3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfJaM-00000009NAs-2XJp;
	Wed, 28 Feb 2024 13:02:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfJaH-00000009N8h-32dX;
	Wed, 28 Feb 2024 13:02:54 +0000
Received: from i53875b6c.versanet.de ([83.135.91.108] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rfJZz-00020N-VK; Wed, 28 Feb 2024 14:02:36 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@debian.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 0/2] arm64: Add basic support for QNAP TS-433
Date: Wed, 28 Feb 2024 14:02:33 +0100
Message-Id: <170912529798.972844.13858021934962822938.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1709034476.git.ukleinek@debian.org>
References: <cover.1709034476.git.ukleinek@debian.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_050253_793616_DE1833E6 
X-CRM114-Status: GOOD (  15.51  )
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

T24gVHVlLCAyNyBGZWIgMjAyNCAxMjo1MjozNSArMDEwMCwgVXdlIEtsZWluZS1Lw7ZuaWcgd3Jv
dGU6Cj4gdGhpcyBpcyBhbiBpbml0aWFsIGR0cyB0byBzdXBwb3J0IFFOQVAncyBUUy00MzMgTkFT
LiBJdCdzIGVub3VnaCB0bwo+IHN0YXJ0IHRoZSBkZWJpYW4gaW5zdGFsbGVyIHdpdGggYSBjdXN0
b20gYnVpbHQga2VybmVsIChvcmlnaW5hbCBEZWJpYW4KPiBrZXJuZWwgZmFpbHMgdG8gb3BlbiBh
IGNvbnNvbGUsIGRpZG4ndCBkZWJ1ZyB0aGF0IHlldCkgYW5kIGFjY2VzcyBIRCwKPiBlTU1DLCBS
VEMgYW5kIG5ldHdvcmsuCj4gCj4gVGhlcmUgYXJlIHN0aWxsIHNvbWUgbWlzc2luZyBiaXRzIGFu
ZCBwaWVjZXMsIGJ1dCB0byBtYWtlIHBlb3BsZSBhd2FyZQo+IHRoZXJlIGFyZSBlZmZvcnRzIHRv
IHN1cHBvcnQgdGhpcyBtYWNoaW5lIGFuZCBzbyBwcmV2ZW50IGR1cGxpY2F0ZSB3b3JrLAo+IEkg
dGhpbmsgaXQgbWFrZXMgc2Vuc2UgdG8gYWRkIHRoZSBkdHMgaW4gaXRzIGN1cnJlbnQgZm9ybSBh
bHJlYWR5Lgo+IAo+IFsuLi5dCgpBcHBsaWVkLCB0aGFua3MhCgpbMS8yXSBkdC1iaW5kaW5nczog
YXJtOiByb2NrY2hpcDogQWRkIFFOQVAgVFMtNDMzCiAgICAgIGNvbW1pdDogMDY2MGRkOTUxZTFh
MDllMTU1ZTMxNzMyZmJkZjczNTExMmI1ZDZjNApbMi8yXSBhcm02NDogZHRzOiByb2NrY2hpcDog
QWRkIGJhc2ljIHN1cHBvcnQgZm9yIFFOQVAgVFMtNDMzCiAgICAgIGNvbW1pdDogOWRhMWMwMzI3
ZDU4ZTBjZmMyZDg2Nzk5MTkyNTg1ZGRlYjFhZTRhMAoKTW92ZWQgJmdtYWMgYWJvdmUgJmkyYyog
LSBhbHBoYWJldGljYWwgc29ydGluZyBhbmQgYWxsCgoKQmVzdCByZWdhcmRzLAotLSAKSGVpa28g
U3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
