Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26E67C83013
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Aug 2024 09:39:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hZnyWCoG/hmDEnGNwmYwwxn1z6yDBtQ9yO7HySmvTao=; b=Qk5s8c9UHMjsYp
	poh042ii676jHdoZa1fWzH2Aiyu8/0pwKtj/R7S+azly7ckcnHErCxP+UnHWrQs46ZcS0oejZGfIE
	e1aAZwrldVWt4UuZsYy4W67tW0PcoxDCgZTnwJqE+5+LwuuQpaMPRw1bjwB6NCDedQjKZ35WaCBfH
	sirtZTwJq79E/tp+uFiGkOunIpSvPvLBeqmtKVQUIX7Z8NfFi6g+tawBTadNRzEFo+31TN/5i3vOd
	8zfjnpewOgWRgrgkt4e4qvzXoWbp5KcbvYNzIcaRMJjYTBlnKnU+kcweLj9ocwPrCNuK4+Se13Dfc
	QDvFW7z61sgWuWbeTALg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjbcm-00000001Ou0-2tsO;
	Thu, 29 Aug 2024 09:39:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjbaR-00000001OAI-1aK7;
	Thu, 29 Aug 2024 09:37:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=jcqQxRHrqDjRY4a9TzNalCHQ68bmxc540U58wjv9teQ=; b=TtWb0uEKIw0Mj8XzbE3gO9QHuR
	g9vDx2FiuikCPQTi7W4x2rSeoOAD6AA5v9w74JPY3znHo47/Ies6n2PtD8Hwjfe1A8GSoIoMCxJgQ
	CjF51T9+/dwHsNyi+ONAtiHTfdYuP+e2fiASStiQsXynvBKMjANLLwBMjx15LeEe7m1PX7PuMlCQE
	PfXFuu1+09cMOgQQiTBv3QnMbxwokOyp7pSV1JsZLIxANUusFkt7It/FEXtOVmkvO9wIh/7SEIAyU
	kQ+z3MSy/mKbBaWdpkvJwnu5nC44lZjCk+nQwy+OHvd7dlehZIC6cfFXwcF90LGSFoEgjEEQSDPUb
	TBh9deTQ==;
Received: from i5e861916.versanet.de ([94.134.25.22] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sjbaG-0002nq-Mv; Thu, 29 Aug 2024 11:36:52 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Detlev Casanova <detlev.casanova@collabora.com>,
	linux-kernel@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Sugar Zhang <sugar.zhang@rock-chips.com>,
	linux-rockchip@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	kernel@collabora.com,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v7 1/3] dt-bindings: clock, reset: Add support for rk3576
Date: Thu, 29 Aug 2024 11:36:47 +0200
Message-ID: <172492351370.1695089.7443506809997782331.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <0102019199a76766-f3a2b53f-d063-458b-b0d1-dfbc2ea1893c-000000@eu-west-1.amazonses.com>
References: <20240828154243.57286-1-detlev.casanova@collabora.com> <0102019199a76766-f3a2b53f-d063-458b-b0d1-dfbc2ea1893c-000000@eu-west-1.amazonses.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_023703_730213_A35896A6 
X-CRM114-Status: GOOD (  13.12  )
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

T24gV2VkLCAyOCBBdWcgMjAyNCAxNTo0Mjo1MCArMDAwMCwgRGV0bGV2IENhc2Fub3ZhIHdyb3Rl
Ogo+IEFkZCBjbG9jayBhbmQgcmVzZXQgSUQgZGVmaW5lcyBmb3IgcmszNTc2Lgo+IAo+IENvbXBh
cmVkIHRvIHRoZSBkb3duc3RyZWFtIGJpbmRpbmdzIHdyaXR0ZW4gYnkgRWxhaW5lLCB0aGlzIHVz
ZXMKPiBjb250aW5vdXMgZ2FwbGVzcyBJRHMgc3RhcnRpbmcgYXQgMC4gVGh1cyBhbGwgbnVtYmVy
cyBhcmUKPiBkaWZmZXJlbnQgYmV0d2VlbiBkb3duc3RyZWFtIGFuZCB1cHN0cmVhbSwgYnV0IG5h
bWVzIGFyZSBrZXB0Cj4gZXhhY3RseSB0aGUgc2FtZS4KPiAKPiBbLi4uXQoKQXBwbGllZCwgdGhh
bmtzIQoKWzEvM10gZHQtYmluZGluZ3M6IGNsb2NrLCByZXNldDogQWRkIHN1cHBvcnQgZm9yIHJr
MzU3NgogICAgICBjb21taXQ6IDQ5YzA0NDUzZGI4MWZjODA2OTA2ZTI2ZWY5ZmM1M2JkYjYzNWZm
MzkKWzIvM10gY2xrOiByb2NrY2hpcDogQWRkIG5ldyBwbGwgdHlwZSBwbGxfcmszNTg4X2Rkcgog
ICAgICBjb21taXQ6IGU3ODFiZmZjMjk2NzY2YjU1ZGJkMDQ4ODkwZDU1ODY1NTAzMWU4ZDEKWzMv
M10gY2xrOiByb2NrY2hpcDogQWRkIGNsb2NrIGNvbnRyb2xsZXIgZm9yIHRoZSBSSzM1NzYKICAg
ICAgY29tbWl0OiBjYzQwZjViYWE5MWJiN2IwMzFmNTYyMmUxMWE0ZTQ0M2NiNzcxNTI3CgoKZ2Vu
ZXJhbCByZW1hcmssIHBsZWFzZSB0YWtlIGEgbG9vayBhdCB5b3VyIG1haWwgc2V0dXAuCkFtYXpv
biBzZWVtcyB0byBicmVhayB0aGUgZ2VuZXJhdGVkIG1lc3NhZ2UtaWRzLgoKWW91ciBjb3Zlci1s
ZXR0ZXIgaXMKICAwMTAyMDE5MTk5YTc1ZjliLWFhYjU3ZGI2LTgwNmEtNDc0Yi04Mjk1LWU1YmU1
YTk5ZDQyNC0wMDAwMDBAZXUtd2VzdC0xLmFtYXpvbnNlcy5jb20KCndoaWxlIHRoZSBwYXRjaCAo
MS0zKSBtYWlscyBzYXkKICBJbi1SZXBseS1UbzogPDIwMjQwODI4MTU0MjQzLjU3Mjg2LTEtZGV0
bGV2LmNhc2Fub3ZhQGNvbGxhYm9yYS5jb20+CgpTbyB0aGF0IGFtYXpvbiB0aGluZyBzb21laG93
IGJyb2tlIHRoZSBtZXNzYWdlLWlkcyBpbiB5b3VyIG1haWxzLgoKCkkndmUgYWxzbyBkcm9wcGVk
IHRoZSB3aG9sZSBtb2R1bGUgcGFydC4KCkFzIGFsd2F5cyB0aGF0IEFuZHJvaWQgR0tJIG1hZG5l
c3Mgd2FzIGNhdXNlIGZvciBpc3N1ZXMuClRoZSBkcml2ZXIgY2xhaW1zIHRvIGJlIGJ1aWxkYWJs
ZSBhcyBtb2R1bGUsIGJ1dCBpdCBsb29rcyBsaWtlIG5vYm9keQp0cmllZCB0aGF0OgoKRmlyc3Qg
YnVpbGQtZmFpbHVyZToKLS0tLS0tLS0tLS0tLS0tLS0tLS0KCi4uL2RyaXZlcnMvY2xrL3JvY2tj
aGlwL2Nsay1yazM1NzYuYzoxODAwOjM2OiB3YXJuaW5nOiDigJhzdHJ1Y3QgcGxhdGZvcm1fZGV2
aWNl4oCZIGRlY2xhcmVkIGluc2lkZSBwYXJhbWV0ZXIgbGlzdCB3aWxsIG5vdCBiZSB2aXNpYmxl
IG91dHNpZGUgb2YgdGhpcyBkZWZpbml0aW9uIG9yIGRlY2xhcmF0aW9uCiAxODAwIHwgc3RhdGlj
IGludCBjbGtfcmszNTc2X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAgICAg
IHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBefn5+fn5+fn5+fn5+fn4KLi4v
ZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLXJrMzU3Ni5jOiBJbiBmdW5jdGlvbiDigJhjbGtfcmsz
NTc2X3Byb2Jl4oCZOgouLi9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGstcmszNTc2LmM6MTgwMjoz
ODogZXJyb3I6IGludmFsaWQgdXNlIG9mIHVuZGVmaW5lZCB0eXBlIOKAmHN0cnVjdCBwbGF0Zm9y
bV9kZXZpY2XigJkKIDE4MDIgfCAgICAgICAgIHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAgPSBwZGV2
LT5kZXYub2Zfbm9kZTsKICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgXn4KCi4uLgoKbWlzc2luZyBwbGF0Zm9ybV9kZXZpY2UgaGVhZGVyCgpTZWNvbmQgYnVpbGQt
ZmFpbHVyZSwgYWZ0ZXIgZml4aW5nIHRoZSB3aG9sZSBtb2R1bGUgbWFkbmVzOgotLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoKICBNT0RQ
T1NUIE1vZHVsZS5zeW12ZXJzCkVSUk9SOiBtb2Rwb3N0OiBtaXNzaW5nIE1PRFVMRV9MSUNFTlNF
KCkgaW4gZHJpdmVycy9jbGsvcm9ja2NoaXAvcnN0LXJrMzU3Ni5vCkVSUk9SOiBtb2Rwb3N0OiAi
cmszNTc2X3JzdF9pbml0IiBbZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLXJrMzU3Ni5rb10gdW5k
ZWZpbmVkIQptYWtlWzNdOiAqKiogWy4uL3NjcmlwdHMvTWFrZWZpbGUubW9kcG9zdDoxNDU6IE1v
ZHVsZS5zeW12ZXJzXSBGZWhsZXIgMQoKCgpTbyB3aGVuIGFwcGx5aW5nIHRoZSBzZXJpZXMsIEkg
c2ltcGx5IHJlbW92ZWQgdGhlIHdob2xlIG1vZHVsZS1wYXJ0IGFuZCBtYWRlCnRoZSBpbml0IGxv
b2sgbGlrZSByazM1ODggZm9yIG5vdy4KCgpTb21laG93IEkgYWx3YXlzIGdldCB0aGUgaW1wcmVz
c2lvbiB0aGUgd2hvbGUgImNsb2NrIGFzIGEgbW9kdWxlIiB0aGluZwppcyBqdXN0IHRoZXJlIHNv
IFJvY2tjaGlwIGNhbiBzaGlwIHNvbWV0aGluZyBjb21wbGV0ZWx5IG91dCBvZiB0cmVlIG9uCkFu
ZHJvaWQgZGV2aWNlcy4KCgoKQmVzdCByZWdhcmRzLAotLSAKSGVpa28gU3R1ZWJuZXIgPGhlaWtv
QHNudGVjaC5kZT4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
