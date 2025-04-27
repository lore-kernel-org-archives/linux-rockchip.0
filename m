Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44CE7C369D1
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Apr 2025 11:16:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cpS8MwxbctttdDQKMtvTULXdvFY96BzMLxO44eqax9k=; b=OCmPksLCKEatZ+
	rPrOhVcvpf3NoQkqeyffT7YERZyZ9tdMLJBAu/TMLprWFNi29aC0QKsBXimMVWHuWoV9X84AoXooI
	lss/OZq+mSTMK+k+TNe+BaJ0iYef8LLOuMBtyZKzMEib4Dgc2lsPJGrw37H8fbP2Seb1ShCrLZYUb
	9ecoy56GUBNT1cv/3zeqAVp5PCrxJAZazvNUG3Upz3AsA2RhEj9rUP8BCj7Bq1tydV0VY9Nb9JcTC
	u7cO3SmtuF/JyagMVn/b+Cvx+2VXZXW28L2t9gMMO7nqhBr8AzvGO3TT/6H5IHY8rGYXI9UBCUWNt
	NTICNx/xFTp+wc8HQQgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9003-00000003Oaw-373c;
	Sun, 27 Apr 2025 11:16:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8zyX-00000003OSb-14jC;
	Sun, 27 Apr 2025 11:15:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=QkVkz6dk4cOLjXYYtXS5CCd0YLGWAVsLoyMR7Wnuhxc=; b=UI6khAWq+pM6v4WdeLYhnQsgp/
	lHTRCJ/dOLzPTbwx4z/4b9eMdtZKySKYeya+7mepfDy/Zvhpc7sbvJISaK0QEzpf0kly057pSuec+
	gsnhNjtGd/7LxC+lY4l49HoLN2vUriKIb/SSXh3pvQKm/ulbt+NO24DEmA7aM4Nx9A0Yvds14+AaY
	vMXyIMgmeWPKLPXCBnYl9BV8o7ykMuVYndjJwBVcIKiLBDIWgoO/+stCCcafW6tsCHe2ckvlCtIHb
	wjdeLvIiJKbXWRSgrn7aV0/9XBLLYjc12FXtcGtyYa0dApxjkF9C55819jao9BUU++s4HoXTBI5zx
	3jG2cdqg==;
Received: from i53875aba.versanet.de ([83.135.90.186] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1u8zyN-0003VC-98; Sun, 27 Apr 2025 13:14:59 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Hao Zhang <hao.zhang@coolkit.cn>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, "hao.zhang" <hao.zhang@coolkit.cn>
Subject: Re: [PATCH 1/1] ARM: dts: rockchip: Wifi improvements for Sonoff iHost
Date: Sun, 27 Apr 2025 13:14:58 +0200
Message-ID: <1929240.tdWV9SEqCh@diego>
In-Reply-To: <20250427065013.99871-2-hao.zhang@coolkit.cn>
References: <20250427065013.99871-1-hao.zhang@coolkit.cn>
 <20250427065013.99871-2-hao.zhang@coolkit.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250427_041509_317367_55033239 
X-CRM114-Status: GOOD (  15.84  )
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

SGksCgpBbSBTb25udGFnLCAyNy4gQXByaWwgMjAyNSwgMDg6NTA6MTMgTWl0dGVsZXVyb3DDpGlz
Y2hlIFNvbW1lcnplaXQgc2NocmllYiBIYW8gWmhhbmc6Cj4gRnJvbTogImhhby56aGFuZyIgPGhh
by56aGFuZ0Bjb29sa2l0LmNuPgo+IAo+IEFmdGVyIHNvbWUgU29ub2ZmLWlIb3N0cyBoYXZlIGJl
ZW4gcnVubmluZyBmb3IgYSBsb25nIHRpbWUsIAo+IHRoZSBXaUZpIG1vZHVsZSB3aWxsIHJ1biBh
Ym5vcm1hbGx5Lgo+IAo+IEFkanVzdCB0aGUgcG11X2lvX2RvbWFpbnMgYW5kIHNkaW8gcHJvcGVy
dGllcyAKPiB0byBzb2x2ZSB0aGUgV2lGaSBtb2R1bGUgb3BlcmF0aW9uIGFibm9ybWFsaXR5LgoK
ImFkanVzdCB0aGUgLi4uIHByb3BlcnRpZXMiLCByZWFsbHkgc291bmRzIGxpa2UgaGFja2luZyBh
cm91bmQgc29tZSBpc3N1ZS4KCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3JvY2tj
aGlwL3J2MTEyNi1zb25vZmYtaWhvc3QuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlw
L3J2MTEyNi1zb25vZmYtaWhvc3QuZHRzaQo+IGluZGV4IDlhODdkYzBkNWY2Ni4uM2MwMzcxMTAz
MDE1IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlwL3J2MTEyNi1zb25v
ZmYtaWhvc3QuZHRzaQo+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlwL3J2MTEyNi1z
b25vZmYtaWhvc3QuZHRzaQo+IEBAIC0zMjMsMTUgKzMyMywxNSBAQCB3aWZpX2VuYWJsZV9oOiB3
aWZpLWVuYWJsZS1oIHsKPiAgfTsKPiAgCj4gICZwbXVfaW9fZG9tYWlucyB7Cj4gLQlwbXVpbzAt
c3VwcGx5ID0gPCZ2Y2MxdjhfcG11PjsKPiArCXBtdWlvMC1zdXBwbHkgPSA8JnZjYzN2M19zeXM+
Owo+ICAJcG11aW8xLXN1cHBseSA9IDwmdmNjM3YzX3N5cz47Cj4gIAl2Y2NpbzEtc3VwcGx5ID0g
PCZ2Y2NfMXY4PjsKPiAgCXZjY2lvMi1zdXBwbHkgPSA8JnZjY2lvX3NkPjsKPiAtCXZjY2lvMy1z
dXBwbHkgPSA8JnZjYzN2M19zZD47Cj4gLQl2Y2NpbzQtc3VwcGx5ID0gPCZ2Y2NfZG92ZGQ+Owo+
IC0JdmNjaW81LXN1cHBseSA9IDwmdmNjXzF2OD47Cj4gLQl2Y2NpbzYtc3VwcGx5ID0gPCZ2Y2Nf
MXY4PjsKPiAtCXZjY2lvNy1zdXBwbHkgPSA8JnZjY19kb3ZkZD47Cj4gKwl2Y2NpbzMtc3VwcGx5
ID0gPCZ2Y2NfM3YzPjsKPiArCXZjY2lvNC1zdXBwbHkgPSA8JnZjY18zdjM+Owo+ICsJdmNjaW81
LXN1cHBseSA9IDwmdmNjXzN2Mz47Cj4gKwl2Y2NpbzYtc3VwcGx5ID0gPCZ2Y2NfM3YzPjsKPiAr
CXZjY2lvNy1zdXBwbHkgPSA8JnZjY18xdjg+Owo+ICAJc3RhdHVzID0gIm9rYXkiOwo+ICB9OwoK
Rmlyc3Qgb2YgYWxsLCB0aGlzIHdvdWxkIGJlIHR3byBwYXRjaGVzLiAgSWYgdGhlIGlvLWRvbWFp
bnMgZG8gbm90IGZvbGxvdwp0aGUgc2NoZW1hdGljcywgZml4aW5nIHRoaXMgaXMgb25lIHBhdGNo
LCBidXQgZm9yIHN1Y2ggYSBiaWcgY2hhbmdlCkkgZG8gZXhwZWN0IGFjdHVhbCByZWZlcmVuY2Vz
IHRvIHRoZSBkZXZpY2VzJyBzY2hlbWF0aWNzIGZvciB0aGF0LgoKVGhpcyBpcyBldmVuIG1vcmUg
aW1wb3J0YW50LCBhcyB5b3UncmUgc3dpdGNoaW5nIHNvbWUgc3VwcGxpZXMKYmV0d2VlbiBzb3Vy
Y2VzIG9mIGRpZmZlcmVudCB2b2x0YWdlcwoKCj4gQEAgLTM0MiwxOCArMzQyLDE1IEBAICZzYXJh
ZGMgewo+ICAKPiAgJnNkaW8gewo+ICAJYnVzLXdpZHRoID0gPDQ+Owo+IC0JY2FwLXNkLWhpZ2hz
cGVlZDsKPiAgCWNhcC1zZGlvLWlycTsKPiAgCWtlZXAtcG93ZXItaW4tc3VzcGVuZDsKPiAtCW1h
eC1mcmVxdWVuY3kgPSA8NTAwMDAwMDA+Owo+ICsJbWF4LWZyZXF1ZW5jeSA9IDwyNTAwMDAwMD47
Cj4gIAltbWMtcHdyc2VxID0gPCZzZGlvX3B3cnNlcT47Cj4gKwlzdXBwb3J0cy1zZGlvOwo+ICAJ
bm9uLXJlbW92YWJsZTsKPiAgCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gIAlwaW5jdHJs
LTAgPSA8JnNkbW1jMV9jbGsgJnNkbW1jMV9jbWQgJnNkbW1jMV9idXM0PjsKPiAgCXJvY2tjaGlw
LGRlZmF1bHQtc2FtcGxlLXBoYXNlID0gPDkwPjsKPiAtCXNkLXVocy1zZHI1MDsKPiAtCXZtbWMt
c3VwcGx5ID0gPCZ2Y2MzdjNfc2Q+Owo+IC0JdnFtbWMtc3VwcGx5ID0gPCZ2Y2NfMXY4PjsKPiAg
CXN0YXR1cyA9ICJva2F5IjsKPiAgfTsKCmFuZCBoZXJlIGl0IGxvb2tzIGxpa2UgeW91J3JlIG1v
cmUgb3IgbGVzcyByYW5kb21seSBhZGRpbmcgYW5kIHJlbW92aW5nCnByb3BlcnRpZXMgdW50aWwg
aXQgd29ya2VkICJmb3IgeW91Ii4KCkVzcGVjaWFsbHkgcmVtb3ZpbmcgdGhlIHN1cHBseS1yZWd1
bGF0b3JzIGRvZXMgbm90IHJlYWxseSBtYWtlIHNlbnNlLgpJZiB5b3Ugc2VlIGluc3RhYmlsaXRp
ZXMsIHRoZSBtYWluIGNvbnRlbmRlcnMgd291bGQgYmUgbWF4LWZyZXF1ZW5jeSBhbmQKc2QtdWhz
LXNkcjUwIGFzIGN1bHByaXRzLgoKU2ltaWxhcmx5LCBzdXBwb3J0cy1zZGlvIGlzIG5vdCBldmVu
IGEgdmFsaWQgcHJvcGVydHksIHNvIG5laXRoZXIgdGhlCmRldmljZXRyZWUgc3BlYyBkb2VzIGFs
bG93IGl0LCBub3IgZG9lcyB0aGUga2VybmVsIGhhbmRsZSBpdCBhdCBhbGwuCgoKSGVpa28KCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
