Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72C00C3ABB9
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 May 2025 21:41:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YYx2AD29AglKnhwFm6Vah7gwtsuQSJnoc+XzTefBfaA=; b=vD9RVgVmeTK//j
	71KCLUQodd4Jh/GFmIjUpsO2L1SrwBu3yhvp1vOYr+jMSIKHpclKKj1qdk1AbvAyYyzqFYU//V3Pp
	9EEXHDy1tZC5oEp/dgN2NxAVJ0d//xaPpaUxOBK78iuKBG5puQW5rAnNE9odVXj2YawRD4D48hSR3
	336pifzOsot7Qp+bCHYz4Su9Uukf0agXACNIHtb+qQKgp8R/JUAZ3afN23Eq16EW5x/XPK5cKg7Gm
	d/ZmilxaWTeU0602aJ9y+NQeH1JUMzbWi6lPUMlWyO9CzJ5iyDoaLN1F5sjmPj1mgYhfNe6ZKP04D
	rFoo2FprwoLrhWC/qikA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uC3Yu-00000008dmr-2elH;
	Mon, 05 May 2025 21:41:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uC3Wt-00000008dFh-0URD;
	Mon, 05 May 2025 21:39:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=6l/heqGk/UTexwAtKZZUGycS/exQ3H0HSuobkgefF30=; b=FeGwC3ybr75HKO+AnpNeCgzn/7
	btsDdrILnjyQaO/niTyoI+k6DOd+zI2DjMDahPHyW1S+qJWTNi0H2Lsuz350DFJhPV9SdniI/GYLF
	Xd6/nOyeAHNNPzl+xoOAk+ZZTV+7OO0R2i1m72KUSi3QcD3F/rhDfIWZANPyKk6VVRcAkk7JlkBcA
	b5WQw9/xIH8e2CoRXD5XxQLqt9/LuYMAhN3ueSCZO5msI9Ov/3FC7AkVruNvjUz91YSu4TMHdDYAM
	qU04+Mv/pU7+PdBUpTZ8J1GsDPHp6bp1sqi3O0R5XmJVeZPWsK+JK+IFeQoNNWGoc8JmzVDc3iyQ0
	N1V1vSxg==;
Received: from i53875a1d.versanet.de ([83.135.90.29] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uC3Wk-00006o-S3; Mon, 05 May 2025 23:39:06 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Shresth Prasad <shresthprasad7@gmail.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Jonas Karlman <jonas@kwiboo.se>, Chukun Pan <amadeus@jmu.edu.cn>,
 Yao Zi <ziyao@disroot.org>
Subject: Re: [PATCH v4 2/5] clk: rockchip: Support MMC clocks in GRF region
Date: Mon, 05 May 2025 23:39:05 +0200
Message-ID: <2737556.Isy0gbHreE@diego>
In-Reply-To: <20250417143647.43860-3-ziyao@disroot.org>
References: <20250417143647.43860-1-ziyao@disroot.org>
 <20250417143647.43860-3-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_143915_155862_F0CF2B95 
X-CRM114-Status: GOOD (  16.20  )
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
Cc: devicetree@vger.kernel.org, Yao Zi <ziyao@disroot.org>, linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGksCgpBbSBEb25uZXJzdGFnLCAxNy4gQXByaWwgMjAyNSwgMTY6MzY6NDQgTWl0dGVsZXVyb3DD
pGlzY2hlIFNvbW1lcnplaXQgc2NocmllYiBZYW8gWmk6Cj4gUmVnaXN0ZXJzIG9mIE1NQyBkcml2
ZS9zYW1wbGUgY2xvY2tzIGluIFJvY2tjaGlwIFJWMTEwNiBhbmQgUkszNTI4Cj4gbG9jYXRlIGlu
IEdSRiByZWdpb25zLiBBZGp1c3QgTU1DIGNsb2NrIGNvZGUgdG8gc3VwcG9ydCByZWdpc3Rlcgo+
IG9wZXJhdGlvbnMgdGhyb3VnaCByZWdtYXAuIEFsc28gYWRkIGEgaGVscGVyIHRvIGVhc2UgcmVn
aXN0cmF0aW9uIG9mIEdSRgo+IGNsb2Nrcy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBZYW8gWmkgPHpp
eWFvQGRpc3Jvb3Qub3JnPgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xr
LmMgYi9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGsuYwo+IGluZGV4IGNiZjkzZWExMTlhOS4uY2Uy
ZjMzMjNkODRlIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay5jCj4gKysr
IGIvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLmMKPiBAQCAtNTkwLDYgKzU5MCw3IEBAIHZvaWQg
cm9ja2NoaXBfY2xrX3JlZ2lzdGVyX2JyYW5jaGVzKHN0cnVjdCByb2NrY2hpcF9jbGtfcHJvdmlk
ZXIgKmN0eCwKPiAgCQkJCWxpc3QtPm5hbWUsCj4gIAkJCQlsaXN0LT5wYXJlbnRfbmFtZXMsIGxp
c3QtPm51bV9wYXJlbnRzLAo+ICAJCQkJY3R4LT5yZWdfYmFzZSArIGxpc3QtPm11eGRpdl9vZmZz
ZXQsCj4gKwkJCQlOVUxMLCAwLAo+ICAJCQkJbGlzdC0+ZGl2X3NoaWZ0Cj4gIAkJCSk7Cj4gIAkJ
CWJyZWFrOwo+IEBAIC02MTksNiArNjIwLDExIEBAIHZvaWQgcm9ja2NoaXBfY2xrX3JlZ2lzdGVy
X2JyYW5jaGVzKHN0cnVjdCByb2NrY2hpcF9jbGtfcHJvdmlkZXIgKmN0eCwKPiAgCQkJYnJlYWs7
Cj4gIAkJY2FzZSBicmFuY2hfbGlua2VkX2dhdGU6Cj4gIAkJCS8qIG11c3QgYmUgcmVnaXN0ZXJl
ZCBsYXRlLCBmYWxsLXRocm91Z2ggZm9yIGVycm9yIG1lc3NhZ2UgKi8KPiArCQljYXNlIGJyYW5j
aF9tbWNfZ3JmOgo+ICsJCQkvKgo+ICsJCQkgKiBtdXN0IGJlIHJlZ2lzdGVyZWQgdGhyb3VnaCBy
b2NrY2hpcF9jbGtfcmVnaXN0ZXJfZ3JmX2JyYW5jaGVzLAo+ICsJCQkgKiBmYWxsLXRocm91Z2gg
Zm9yIGVycm9yIG1lc3NhZ2UKPiArCQkJICovCj4gIAkJCWJyZWFrOwoKcGxlYXNlIGRvbid0IGNy
ZWF0ZSBzZXBhcmF0ZSBzdHJ1Y3R1cmVzIGZvciBzcGVjaWZpYyBjbG9jay10eXBlcy4KQmVpbmcg
YWJsZSB0byAianVzdCBkZWZpbmUiIGNsb2NrIGJyYW5jaGVzIGlzIGhlbHBmdWwgYW5kIHN0YXJ0
aW5nCnRvIHJlcXVpcmUgc2VwYXJhdGUgYmxvY2tzIGp1c3QgY2F1c2VzIGlzc3VlcyBkb3duIHRo
ZSByb2FkLgoKRm9yIGhhbmRsaW5nIG11bHRpcGxlIEdSRiBzb3VyY2VzLCBJIGp1c3QgbWVyZ2Vk
IE5pY29sYXMnIHBhdGNoZXMgZm9yCmhhbmRsaW5nIGF1eGlsaWFyeSBHUkZzIFswXSBhbmQgR1JG
LWdhdGUgY2xvY2sgdHlwZSBbMV0gLgoKU28gaWRlYWxseSwgcGxlYXNlIGJhc2Ugb2ZmIGZyb20g
dGhlcmUuCgpUaGFua3MgYSBsb3QKSGVpa28KCgpbMF0gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9w
dWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvbW1pbmQvbGludXgtcm9ja2NoaXAuZ2l0L2NvbW1pdC8/
aWQ9NzBhMTE0ZGFmMjA3NzQ3MmU1OGIzY2FjMjNiYTg5OThlMzUzNTJmNApbMV0gaHR0cHM6Ly9n
aXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvbW1pbmQvbGludXgtcm9ja2No
aXAuZ2l0L2NvbW1pdC8/aWQ9ZTI3NzE2OGNhYmU5ZmQ5OWU2NDdmNWRhZDBiYzg0NmQ1ZDZiMDA5
MwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
