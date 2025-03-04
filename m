Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CFA5C021B8
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Mar 2025 21:59:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ifpCpVCoPoMTq30p6kniyqkHr1mMTG4ZVvyfZcs7GJM=; b=UR/bsKE9TPhBWq
	WoLfMJwIvpEyHwdhno9sRtT7E5xPn1ESotiYSDjDHF4A2mkcs1PhNxggPKRovBVeMZlb8DOcy4URK
	X5L9a2hDNF8BXX58O4jy5Yry/okATUzyH8wbs8j1RyuAGNbf0VDl6ugJ0o+IJcUzojVTb3psLEpsj
	sy38EJADGJ7x9bV/ORPlcHGhZM0JQmSwuQ/Yt/xOT7g5VJz0ol4mnwJqVnFG7EczWAN+lCHSFPqzn
	EWdLKzCOl8Ad+qExp1OXPEQBI34WR7ACEE3npNIABzwV4TSgb55zf6EMzJPjhHoE9euEvHfTPwKFs
	Y/G16qvjj2EySIxPk3Jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpaIm-00000006M3r-0H5N;
	Tue, 04 Mar 2025 21:59:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpZ89-00000006DPu-3IDU;
	Tue, 04 Mar 2025 20:44:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ElnzQ303PfA4B5g1gtMvm2zchjHj9gy7dIO2NLrF/qY=; b=khGMv6sWor2meFhrfpWQII3ocu
	ZXfiolYMgsDqacRYWeZl5MtbzdCNfGtkktEW/NFF1DiCtSDEzOGchuf95/yQi+DHh2rXm0jV7IC+k
	2wLuKL8yhHVYV/JqEHYwuXNUwkn4NH4waYjTygagq2IGpWuO8GVYvlnCVTTy9jh0UmAyvReBOOMA4
	jOAxBWDSwdUUojUo4NCjl8z2h0TNPhdZSexKVRPnD2tuolCf/sdY0yncROnq4kHbj4q3lbGkUqUL/
	BZA3aY7aFEqnrtbvr7YR7TYuvtRLfCmZuAOwxuVyKFuwMSGvO7DlJT5h14ObWcUt3lD3KPSdeFftX
	4WVLGh7Q==;
Received: from i53875a38.versanet.de ([83.135.90.56] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tpZ82-00062P-7p; Tue, 04 Mar 2025 21:44:38 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Ulf Hansson <ulf.hansson@linaro.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Arnd Bergmann <arnd@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] pmdomain: rockchip: add regulator dependency
Date: Tue, 04 Mar 2025 21:44:37 +0100
Message-ID: <3938258.QJadu78ljV@diego>
In-Reply-To: <20250304142803.689201-1-arnd@kernel.org>
References: <20250304142803.689201-1-arnd@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_124445_839197_648CADF7 
X-CRM114-Status: GOOD (  10.54  )
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

QW0gRGllbnN0YWcsIDQuIE3DpHJ6IDIwMjUsIDE1OjI3OjU5IE1FWiBzY2hyaWViIEFybmQgQmVy
Z21hbm46Cj4gRnJvbTogQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4KPiAKPiBXaGVuIENP
TkZJR19SRUdVTEFUT1IgaXMgZGlzYWJsZWQsIHRoaXMgcG1kb21haW4gZHJpdmVyIGZhaWxzIHRv
IGJ1aWxkOgo+IAo+IGRyaXZlcnMvcG1kb21haW4vcm9ja2NoaXAvcG0tZG9tYWlucy5jOjY1Mzoz
MDogZXJyb3I6IGltcGxpY2l0IGRlY2xhcmF0aW9uIG9mIGZ1bmN0aW9uICdkZXZtX29mX3JlZ3Vs
YXRvcl9nZXQnOyBkaWQgeW91IG1lYW4gJ2Rldm1fcmVndWxhdG9yX2dldCc/IFstV2ltcGxpY2l0
LWZ1bmN0aW9uLWRlY2xhcmF0aW9uXQo+ICAgNjUzIHwgICAgICAgICAgICAgICAgIHBkLT5zdXBw
bHkgPSBkZXZtX29mX3JlZ3VsYXRvcl9nZXQocG11LT5kZXYsIHBkLT5ub2RlLCAiZG9tYWluIik7
Cj4gICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+
fn5+fgo+ICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBkZXZtX3JlZ3VsYXRv
cl9nZXQKPiBkcml2ZXJzL3BtZG9tYWluL3JvY2tjaGlwL3BtLWRvbWFpbnMuYzo2NTM6Mjg6IGVy
cm9yOiBhc3NpZ25tZW50IHRvICdzdHJ1Y3QgcmVndWxhdG9yIConIGZyb20gJ2ludCcgbWFrZXMg
cG9pbnRlciBmcm9tIGludGVnZXIgd2l0aG91dCBhIGNhc3QgWy1XaW50LWNvbnZlcnNpb25dCj4g
ICA2NTMgfCAgICAgICAgICAgICAgICAgcGQtPnN1cHBseSA9IGRldm1fb2ZfcmVndWxhdG9yX2dl
dChwbXUtPmRldiwgcGQtPm5vZGUsICJkb21haW4iKTsKPiAgICAgICB8ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIF4KPiAKPiBBZGQgYSBLY29uZmlnIGRlcGVuZGVuY3kuCj4gCj4gRml4ZXM6
IGRiNmRmMmUzZmMxNiAoInBtZG9tYWluOiByb2NrY2hpcDogYWRkIHJlZ3VsYXRvciBzdXBwb3J0
IikKPiBTaWduZWQtb2ZmLWJ5OiBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRiLmRlPgoKUmV2aWV3
ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
