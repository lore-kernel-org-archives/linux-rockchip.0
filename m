Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CBEA606A31A
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Oct 2026 00:56:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=UULIymfv;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=PWL363Gd
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=7D+6qQxukXXj7g26mn1BSqvxU+IL/nxob0XmP6QrMbs=; b=UULIymfvEWsWaeuuyO8dL/8fPe
	SG2JcxlRRmdwg/O+0LYF0fdFk+wbs+8IuwtvQp5+33hIYuaFp/M0OmyAM0bu6X8VXMGdsbk5tzmo/
	ViukSlv6lpK18hGHcyWwltv5oILeGG6EBiBYvVWRbU2webVLdiZcifdyXbT0r9sVbxLLBQuWKeZir
	akZpwlavbc2NnDKeyLUwbhR+qehfooMoSiS7gQTMINWBVkKzHMOQigl/CcLcvwk/ds7nU763ZtYIE
	rTotHjJwS1aCbrVGEz5e0MDt3X0kwd/z/mB+71/8sD5a1tRshGjSLkXunFw4UAhFBMPEMkBa5k0As
	jDcW+tXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLVUP-00000003Z84-0eie;
	Tue, 27 Oct 2026 00:56:33 +0000
Received: from mail-m6034.netease.com ([210.79.60.34])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLVUJ-00000003Z6J-2FDp;
	Tue, 27 Oct 2026 00:56:32 +0000
Received: from [172.16.12.48] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 526ea9e6d;
	Tue, 27 Oct 2026 08:56:23 +0800 (GMT+08:00)
Message-ID: <edacd4f1-1124-4439-9eda-633c7a4a6f8c@rock-chips.com>
Date: Tue, 27 Oct 2026 08:56:19 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Artem Shimko <a.shimko.dev@gmail.com>,
 Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Simon Xue <xxm@rock-chips.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add the watchdog reset to RK3399
To: iav@iav.lv, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <20261027-rk3399-wdt-reset-v1-1-de9615abb0ec@iav.lv>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20261027-rk3399-wdt-reset-v1-1-de9615abb0ec@iav.lv>
X-HM-Tid: 0aa17adbbbac03a4kunma90a6e004743a1
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkaTktOVkJNSR8ZHR9PSx9LGFYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=PWL363GdUjW1784OfG7j+YKI7o/gFsCMvKUsjaCHhA2WFslocJsNLRvCL1YreVxr+O45uyPM7Kq0juXgChueXnqPDFWX1pVeiw6ZNVXF4zq/pSJ9+Ny2sH198XWu9XqoxmnM6JNY43W0p0Djo4vSlFTdq3AGMa3oQifoaCUsM9c=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=FSAxfmic52ND3G8dQDz0tc2KBUjw/SYV9wPYI5DUcGg=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_175628_117868_00101D9D 
X-CRM114-Status: GOOD (  17.16  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Q2M6IFNpbW9uCgrlnKggMjAyNi8xMC8yNyDmmJ/mnJ/kuowgODoyMCwgSWdvciBWZWxrb3Ygdmlh
IEI0IFJlbGF5IOWGmemBkzoKPiBGcm9tOiBJZ29yIFZlbGtvdiA8aWF2QGlhdi5sdj4KPiAKPiBU
aGUgUkszMzk5IHdhdGNoZG9nIGF0IDB4ZmY4NDgwMDAgaXMgcmVzZXQgYnkgU1JTVF9QX1dEVDAg
KGJpdCA1IG9mCj4gQ1JVX1NPRlRSU1RfQ09OMjApLCBidXQgaXRzIG5vZGUgaGFzIG5vIHJlc2V0
cyBwcm9wZXJ0eS4gSXRzIGNsb2NrIGlzCj4gZ2F0ZWQgZnJvbSBTRUNVUkVfR1JGX1NPQ19DT04z
WzhdLCBvdXQgb2YgcmVhY2ggZm9yIExpbnV4LCBzbyB3aXRob3V0Cj4gdGhlIHJlc2V0IGR3X3dk
dF9zdG9wKCkgY2FuIG9ubHkgc2V0IFdET0dfSFdfUlVOTklORyBhbmQgdGhlIHdhdGNoZG9nCj4g
a2VlcHMgY291bnRpbmcgdGhyb3VnaCBzMmlkbGU6IG9uIGEgS29ib2wgSGVsaW9zNjQgYW5kIGEg
Uk9DSyBQaSA0QSwKPiBzMmlkbGUgbG9uZ2VyIHRoYW4gdGhlIHdhdGNoZG9nIHRpbWVvdXQgZW5k
cyBpbiBhIHdhdGNoZG9nIHJlc2V0Lgo+IAo+IFdpdGggdGhlIHJlc2V0IGxpbmUgZHdfd2R0X3N0
b3AoKSBjYW4gc3RvcCB0aGUgd2F0Y2hkb2csIGFuZCB3aXRoCj4gIndhdGNoZG9nOiBkd193ZHQ6
IG1hbmFnZSByZXNldCBsaW5lIGR1cmluZyBzeXN0ZW0gc3VzcGVuZC9yZXN1bWUiIHRoZQo+IGRy
aXZlciBob2xkcyBpdCBpbiByZXNldCB3aGlsZSB0aGUgc3lzdGVtIHNsZWVwcy4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBJZ29yIFZlbGtvdiA8aWF2QGlhdi5sdj4KPiAtLS0KPiBUaGUgZHdfd2R0IHNp
ZGUgaXMgYXBwbGllZCBpbiB0aGUgd2F0Y2hkb2cgdHJlZToKPiBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9yLzIwMjYxMDI0MTQwODU0LjI1NjY0LTMtYS5zaGlta28uZGV2QGdtYWlsLmNvbQo+IC0t
LQo+ICAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktYmFzZS5kdHNpIHwgMSAr
Cj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPiAKPiBkaWZmIC0tZ2l0IGEvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktYmFzZS5kdHNpIGIvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazMzOTktYmFzZS5kdHNpCj4gaW5kZXggYzQ2ZTU4ZDRhZjBkLi43
YjcxYjI0YzFmNTEgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azMzOTktYmFzZS5kdHNpCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMz
OTktYmFzZS5kdHNpCj4gQEAgLTE3NDgsNiArMTc0OCw3IEBAIHdhdGNoZG9nQGZmODQ4MDAwIHsK
PiAgIAkJcmVnID0gPDB4MCAweGZmODQ4MDAwIDB4MCAweDEwMD47Cj4gICAJCWNsb2NrcyA9IDwm
Y3J1IFBDTEtfV0RUPjsKPiAgIAkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDEyMCBJUlFfVFlQRV9M
RVZFTF9ISUdIIDA+Owo+ICsJCXJlc2V0cyA9IDwmY3J1IFNSU1RfUF9XRFQwPjsKPiAgIAl9Owo+
ICAgCj4gICAJcmt0aW1lcjogcmt0aW1lckBmZjg1MDAwMCB7Cj4gCj4gLS0tCj4gYmFzZS1jb21t
aXQ6IGQyYWJjYmI5MDViMGU0YjJlMDZiMjU3ZmExZTViY2Y0ZmFhNmRiZGEKPiBjaGFuZ2UtaWQ6
IDIwMjYxMDI3LXJrMzM5OS13ZHQtcmVzZXQtYzU4ZDIxMTE2MDlkCj4gCj4gQmVzdCByZWdhcmRz
LAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
