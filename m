Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B587CCCFA0D
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Nov 2025 23:43:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OWhldauUlPKo/QK+6OQk9QHJivI3xPLuK0BDAHlRdjo=; b=abYZI/dEJKUjrV
	vNl9j4G9vQh3FimV7hfkVmRdJw4Xyxil/AU5wmtGnqQXrV+FK01zEiv34XUgfwi0518EB/3xSuySd
	pz99HHEU5DmWbMlcdYotPFNrQT5qqemyxyra0S3HthGHCeZjKLbLmu5jqvdEMkJnh2Nmn+jTw+QU2
	oEgdaiKe7vbFfuhh014tBosNA+Tavu8NEdIY5s3P5yF88uAcUZStE20e1xEly4lxKXkda6atOr934
	ZmcyHdaE0FbPJcCmWwcSj4HmZb4tAkAHaZTSEycHF4kKu33mZzJWoV453ABgDJCwS9ESQIxwWEJFu
	AaQHwMo5bfsMfFImTPig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGnA9-0000000EcbT-35RW;
	Wed, 05 Nov 2025 23:43:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGnA6-0000000Ecai-2kEt;
	Wed, 05 Nov 2025 23:43:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=vqGD0QYI7TiTsk6Wh+7QyORQeVGQ1Q1viVMxjGD/NsM=; b=cfli0nwcgYEtYaOCBzK2Fuw+we
	hezAoitjvDzh6bFK9jUW/nj2qqVYaDTVNY1sOs/SOeFcH8JhQjbA7aZrby9THQVAGI+C0JlQNOvce
	h4g3Sz7OcY/x78yJxDFeZ8pt1BLLt0MVb1A9TOGWFjkZ6xDSqAkIBfO9nrPuKKCeg4ZTFn8CwvoFG
	MpD0mgzYOAsLqnW7yWE2ZRq4hr8EWFp3uomyB+EvGHHlTu0S1QWMg8dgAex5Rcqp7Nm/ymvtTFlGU
	Q+eGzHOpp+CmMTSrrmsvX2vppJoJfUriPDuzid+V3hs3kZv/2QV1bFN+rt2LskszVrOdW/ymSePrd
	kAHdXf8w==;
Received: from i53875bde.versanet.de ([83.135.91.222] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vGn9z-0001MR-L9; Thu, 06 Nov 2025 00:43:27 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Diederik de Haas <diederik@cknow-tech.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, michael.riesch@collabora.com
Subject: Re: [PATCH 2/3] arm64: dts: rockchip: use SCMI clock id for cpu clock on
 rk356x
Date: Thu, 06 Nov 2025 00:43:26 +0100
Message-ID: <5996423.DvuYhMxLoT@phil>
In-Reply-To: <DE0SFV203UMS.1ZV2JE6QEPN29@cknow-tech.com>
References: <20251103234926.416137-1-heiko@sntech.de>
 <20251103234926.416137-3-heiko@sntech.de>
 <DE0SFV203UMS.1ZV2JE6QEPN29@cknow-tech.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251105_154334_696748_09F87F22 
X-CRM114-Status: GOOD (  18.60  )
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

QW0gTWl0dHdvY2gsIDUuIE5vdmVtYmVyIDIwMjUsIDE0OjE2OjQyIE1pdHRlbGV1cm9ww6Rpc2No
ZSBOb3JtYWx6ZWl0IHNjaHJpZWIgRGllZGVyaWsgZGUgSGFhczoKPiBIaSBIZWlrbywKPiAKPiBP
biBUdWUgTm92IDQsIDIwMjUgYXQgMTI6NDkgQU0gQ0VULCBIZWlrbyBTdHVlYm5lciB3cm90ZToK
PiA+IEluc3RlYWQgb2YgaGFyZC1jb2RpbmcgMCwgdXNlIHRoZSBtb3JlIGRlc2NyaXB0aXZlIElE
IGZyb20gdGhlIGJpbmRpbmcKPiA+IHRvIHJlZmVyZW5jZSB0aGUgU0NNSSBjbG9jayBmb3IgdGhl
IGNwdSBvbiByazM1NnguCj4gCj4gQW55IHBhcnRpY3VsYXIgcmVhc29uIHlvdSBvbmx5IGRpZCBp
dCBmb3IgdGhlIGNwdSwgYnV0IG5vdCB0aGUgZ3B1PwoKRGlkbid0IHRoaW5rIG9mIGlmIGF0IHRo
ZSB0aW1lIDotKSAuCgpXaWxsIHByZXBhcmUgYW5vdGhlciBvbmUgZm9yIHRoZSBHUFUuCgoKSGVp
a28KCj4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRl
Pgo+ID4gLS0tCj4gPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NngtYmFzZS5k
dHNpIHwgMiArLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlv
bigtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzU2eC1iYXNlLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2eC1iYXNl
LmR0c2kKPiA+IGluZGV4IGEzMzYxNTI3ZDRmZS4uZDBjNzY0MDFiNDVlIDEwMDY0NAo+ID4gLS0t
IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NngtYmFzZS5kdHNpCj4gPiArKysg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2eC1iYXNlLmR0c2kKPiA+IEBAIC01
Myw3ICs1Myw3IEBAIGNwdTA6IGNwdUAwIHsKPiA+ICAJCQlkZXZpY2VfdHlwZSA9ICJjcHUiOwo+
ID4gIAkJCWNvbXBhdGlibGUgPSAiYXJtLGNvcnRleC1hNTUiOwo+ID4gIAkJCXJlZyA9IDwweDAg
MHgwPjsKPiA+IC0JCQljbG9ja3MgPSA8JnNjbWlfY2xrIDA+Owo+ID4gKwkJCWNsb2NrcyA9IDwm
c2NtaV9jbGsgU0NNSV9DTEtfQ1BVPjsKPiAKPiBSZWdhcmRsZXNzIG9mIHRoZSBhYm92ZSBjb21t
ZW50LCBmZWVsIGZyZWUgdG8gYWRkCj4gCj4gUmV2aWV3ZWQtYnk6IERpZWRlcmlrIGRlIEhhYXMg
PGRpZWRlcmlrQGNrbm93LXRlY2guY29tPgo+IAo+IENoZWVycywKPiAgIERpZWRlcmlrCj4gCj4g
PiAgCQkJI2Nvb2xpbmctY2VsbHMgPSA8Mj47Cj4gPiAgCQkJZW5hYmxlLW1ldGhvZCA9ICJwc2Np
IjsKPiA+ICAJCQlpLWNhY2hlLXNpemUgPSA8MHg4MDAwPjsKPiAKPiAKCgoKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
