Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC1B7CA0EE4
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Aug 2025 14:42:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QXHMB6Ea1F1enqB5bUxUhX+8aZwlMOySXDBtP52n7o0=; b=BdGGsNRRUdkdQa
	W2pkbg8I0X0009ib5uwthBsadJZMha6h7VT+KwlSNLo2cj8NO2cFjy0fSKO4smWxinhVfq00SoOfi
	tqBxWgk5WYkcnCNmjH+MxsjX2pPLbL1QnZz/xe9r0k17ZspGHJ3sP43P5mZE+JJ3noPxMaiOADbUY
	Fwvkm/FrHob0sYAsmV4YNm9JKBr2iOlCUnFJ+eZK4E6qKzjiU1jxK2NhgSVKmrjPCFnNoxfoE5VPJ
	CFuJuPAfRcghJQRPqNdxmcSf+fbNM72VWr6yjmupCw6E9sRb3mmBl7nKlkUg0OJp3OHjenj6mHjgb
	Itq8HaOpOKmxwo1jqaHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uppRp-00000004rvz-0Hyi;
	Sat, 23 Aug 2025 14:42:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uppLW-00000004rJQ-3RNP;
	Sat, 23 Aug 2025 14:35:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=qgOhBWr0VH5vsqKN3OIl1v6yHrxWu6HVlafZRGepUuY=; b=q0plEv6FrjIOqQEFTKYMVTWCFU
	pG9D2Y0KESLkIMyT8pGdkHgwR6I4cT+0uoSMIMpGqUzJOhvN+aVl9C04Ezv+hWciV4e5M2dhSn2nT
	O2LVNiWGjWfAlp6n+RYaFGG469Az7nawP0Li6p0m42FGrCHntxNlw1Lyy7w6phzshxFM99LCbOLaZ
	MPy+xaZZZcGOlfcDXbpw8Ffp0IRCbjARsSQs4y7fnmZz50ZF05hMEmKqmM2Q9sDiItBCacb8IDdcZ
	Xr+F6G73ZjnMNp2MmWyB69u9A5xwDQSTEmkr/uIZxzmKDDqjEeWxmQ88FMaJFjijsyQyXkPstF4Q1
	BcVPZOHA==;
Received: from i53875b90.versanet.de ([83.135.91.144] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uppLC-0000VC-06; Sat, 23 Aug 2025 16:35:34 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: dmitry.baryshkov@oss.qualcomm.com, Andy Yan <andyshrk@163.com>
Subject: Re: [PATCH v7 04/10] MAINTAINERS: Add entry for DW DPTX Controller bridge
Date: Sat, 23 Aug 2025 16:35:32 +0200
Message-ID: <6121390.uKWtJMOXK1@diego>
In-Reply-To: <20250822063959.692098-5-andyshrk@163.com>
References: <20250822063959.692098-1-andyshrk@163.com>
 <20250822063959.692098-5-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250823_073554_883947_668B4141 
X-CRM114-Status: GOOD (  14.25  )
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
Cc: neil.armstrong@linaro.org, sebastian.reichel@collabora.com, stephen@radxa.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, mripard@kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, yubing.zhang@rock-chips.com, naoki@radxa.com, Laurent.pinchart@ideasonboard.com, Andy Yan <andy.yan@rock-chips.com>, krzk+dt@kernel.org, robh@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gRnJlaXRhZywgMjIuIEF1Z3VzdCAyMDI1LCAwODozOTo0OCBNaXR0ZWxldXJvcMOkaXNjaGUg
U29tbWVyemVpdCBzY2hyaWViIEFuZHkgWWFuOgo+IEZyb206IEFuZHkgWWFuIDxhbmR5LnlhbkBy
b2NrLWNoaXBzLmNvbT4KPiAKPiBBZGQgYW4gZW50cnkgZm9yIHRoZSBEVyBEUFRYIENvbnRyb2xs
ZXIgYnJpZGdlIGRyaXZlci4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBBbmR5IFlhbiA8YW5keS55YW5A
cm9jay1jaGlwcy5jb20+Cj4gUmV2aWV3ZWQtYnk6IERtaXRyeSBCYXJ5c2hrb3YgPGRtaXRyeS5i
YXJ5c2hrb3ZAb3NzLnF1YWxjb21tLmNvbT4KClJldmlld2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8
aGVpa29Ac250ZWNoLmRlPgoKCj4gLS0tCj4gCj4gKG5vIGNoYW5nZXMgc2luY2UgdjUpCj4gCj4g
Q2hhbmdlcyBpbiB2NToKPiAtIEZpcnN0IGluY2x1ZGVkIGluIHRoaXMgdmVyc2lvbi4KPiAKPiAg
TUFJTlRBSU5FUlMgfCA4ICsrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMo
KykKPiAKPiBkaWZmIC0tZ2l0IGEvTUFJTlRBSU5FUlMgYi9NQUlOVEFJTkVSUwo+IGluZGV4IGNm
YTI4YjM0NzBhYjYuLjBhZTdkMTNjMmIzYzUgMTAwNjQ0Cj4gLS0tIGEvTUFJTlRBSU5FUlMKPiAr
KysgYi9NQUlOVEFJTkVSUwo+IEBAIC03OTk5LDYgKzc5OTksMTQgQEAgUzoJTWFpbnRhaW5lZAo+
ICBGOglEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9wYW5lbC9zeW5h
cHRpY3MscjYzMzUzLnlhbWwKPiAgRjoJZHJpdmVycy9ncHUvZHJtL3BhbmVsL3BhbmVsLXN5bmFw
dGljcy1yNjMzNTMuYwo+ICAKPiArRFJNIERSSVZFUiBGT1IgU1lOT1BTWVMgREVTSUdOV0FSRSBE
SVNQTEFZUE9SVCBCUklER0UKPiArTToJQW5keSBZYW4gPGFuZHkueWFuQHJvY2stY2hpcHMuY29t
Pgo+ICtTOglNYWludGFpbmVkCj4gK1Q6CWdpdCBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5v
cmcvZHJtL21pc2Mva2VybmVsLmdpdAo+ICtGOglEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvZGlzcGxheS9yb2NrY2hpcC9yb2NrY2hpcCxkdy1kcC55YW1sCj4gK0Y6CWRyaXZlcnMv
Z3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctZHAuYwo+ICtGOglpbmNsdWRlL2RybS9icmlkZ2Uv
ZHdfZHAuaAo+ICsKPiAgRFJNIERSSVZFUiBGT1IgVEkgRExQQzM0MzMgTUlQSSBEU0kgVE8gRE1E
IEJSSURHRQo+ICBNOglKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KPiAg
UzoJTWFpbnRhaW5lZAo+IAoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
