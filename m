Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5B71C282EC
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Mar 2025 20:18:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JiPPnVk45BJIZawKy7HIFINYeWgyQmDpyf9WPwHZNns=; b=fDBKz4ipvCXe7Z
	EtzMZg8YuwZJIyGkctw5JbumC3YSN5Zstue4pGYvVCHB/bu73vJfz1QRdtqXmPVHc7XA188Ef0PtJ
	iLc8B8GP22rPOG0FYFgPvDVBSb4KjTQOZY5+CBI6Q17uBvg0yOEtzm16xqQGO7iOgApNQsjT2apEK
	xo0ux6NxtpWjFNP2LQXR4RbEyaEs4uQ+5WMqeaojzPwUVUMyyOrEKSVlweC0hacuk14ZQuzOJUwsM
	MQH+MQsMsjF6eyVw/YNHgWfTDiWmlliq3hYqqc3olcLeq1PxTMiiwt4ExoukSvV2u+mp4GbSF/dDd
	wluudP7RF6LWxILQ58bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpvCX-00000009C0Q-2F4K;
	Wed, 05 Mar 2025 20:18:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpsuO-00000008qK7-0PpS;
	Wed, 05 Mar 2025 17:51:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=n3fedP2j29dzJv3iQBEaY09Mv/bRRJcSGOL0UIdLpZg=; b=KpRJ85NWygyAHN8HbcxaakUNFO
	ihqAWFrDoZvZSe3SuhLCxT6YmmPsamgr+rOxHYubtTj4ZNO44WafHpBCOaVzOF4DDJnnB73QCFQIX
	GwjN8YdXhA67meKqscS22p4I+iMizwIpETGqUuvZMmLVCXnMi5R2sNgtxkRJW5jWRU4LlLa49fIAG
	3TrXWVo3v26EVFt1pW28cHu8r0DiP1SNirY4lnvF6sgk5ynJ3TYZoIpF3fNnuWHrgIheZrZ/MgBas
	8ovbdMmbCBml1e8DNHxKaaTUr268Ejk/scgoABYiTiL+eTp8KtZq7w0J5EOad+NpLyAW9WeSacMJx
	nq6ghPaQ==;
Received: from i53875a38.versanet.de ([83.135.90.56] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tpsuF-0004MI-U0; Wed, 05 Mar 2025 18:51:43 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>
Cc: Chukun Pan <amadeus@jmu.edu.cn>, Yao Zi <ziyao@disroot.org>,
 Lee Jones <lee@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add rk3528 QoS register node
Date: Wed, 05 Mar 2025 18:51:43 +0100
Message-ID: <3543865.CbtlEUcBR6@diego>
In-Reply-To: <20250305171724.GA2149138-robh@kernel.org>
References: <20250305140009.2485859-1-amadeus@jmu.edu.cn>
 <52155b03-20f3-4e64-b636-70042db03ffa@kernel.org>
 <20250305171724.GA2149138-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_095152_159550_17A7E2F1 
X-CRM114-Status: GOOD (  22.67  )
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

QW0gTWl0dHdvY2gsIDUuIE3DpHJ6IDIwMjUsIDE4OjE3OjI0IE1FWiBzY2hyaWViIFJvYiBIZXJy
aW5nOgo+IE9uIFdlZCwgTWFyIDA1LCAyMDI1IGF0IDA0OjQxOjIzUE0gKzAxMDAsIEtyenlzenRv
ZiBLb3psb3dza2kgd3JvdGU6Cj4gPiBPbiAwNS8wMy8yMDI1IDE1OjAwLCBDaHVrdW4gUGFuIHdy
b3RlOgo+ID4gPiBDb3B5IFFvUyBub2RlcyBhbmQgYWRkIHJrMzUyOCBjb21wYXRpYmxlIGZyb20g
YnNwIGtlcm5lbCwKPiA+IAo+ID4gTm8sIGRvbid0IGNvcHkgc3R1ZmYgZnJvbSBCU1Aga2VybmVs
LiBJdCByZXN1bHRzIGluIHRlcnJpYmxlIERUUy4KPiA+IAo+ID4gPiB0aGVzZSBjYW4gYmUgdXNl
ZCBmb3IgcG93ZXItZG9tYWluLgo+ID4gPiAKPiA+ID4gU2lnbmVkLW9mZi1ieTogQ2h1a3VuIFBh
biA8YW1hZGV1c0BqbXUuZWR1LmNuPgo+ID4gPiAtLS0KPiA+ID4gIGFyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTI4LmR0c2kgfCAxNjAgKysrKysrKysrKysrKysrKysrKysrKysKPiA+
ID4gIDEgZmlsZSBjaGFuZ2VkLCAxNjAgaW5zZXJ0aW9ucygrKQo+ID4gPiAKPiA+ID4gZGlmZiAt
LWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTI4LmR0c2kgYi9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzUyOC5kdHNpCj4gPiA+IGluZGV4IDViMzM0NjkwMzU2
YS4uNzk0ZjM1NjU0OTc1IDEwMDY0NAo+ID4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzUyOC5kdHNpCj4gPiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszNTI4LmR0c2kKPiA+ID4gQEAgLTEyMiw2ICsxMjIsMTY2IEBAIGdpYzogaW50ZXJydXB0
LWNvbnRyb2xsZXJAZmVkMDEwMDAgewo+ID4gPiAgCQkJI2ludGVycnVwdC1jZWxscyA9IDwzPjsK
PiA+ID4gIAkJfTsKPiA+ID4gIAo+ID4gPiArCQlxb3NfY3J5cHRvX2E6IHFvc0BmZjIwMDAwMCB7
Cj4gPiA+ICsJCQljb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzUyOC1xb3MiLCAic3lzY29uIjsK
PiA+ID4gKwkJCXJlZyA9IDwweDAgMHhmZjIwMDAwMCAweDAgMHgyMD47Cj4gPiA+ICsJCX07Cj4g
PiA+ICsKPiA+ID4gKwkJcW9zX2NyeXB0b19wOiBxb3NAZmYyMDAwODAgewo+ID4gPiArCQkJY29t
cGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1MjgtcW9zIiwgInN5c2NvbiI7Cj4gPiA+ICsJCQlyZWcg
PSA8MHgwIDB4ZmYyMDAwODAgMHgwIDB4MjA+Owo+ID4gPiArCQl9Owo+ID4gCj4gPiAKPiA+IERp
ZCB5b3UganVzdCBkZWZpbmUgc3lzY29uIHBlciBmZXcgcmVnaXN0ZXJzPyBUaGlyZCBjYXNlIGxh
c3Qgd2Vla3MuLi4KPiA+IHNvIG5vLCBkZWZpbmUgd2hhdCBpcyB5b3VyIGRldmljZSBoZXJlLiA4
IHJlZ2lzdGVycyBpcyBub3QgYSBkZXZpY2UgdXN1YWxseS4KPiAKPiBXZWxsLCBpdCBpcyBqdXN0
IGEgbmV3IGNvbXBhdGlibGUgb24gdG9wIG9mIGV4aXN0aW5nICdxb3MnIGNvbXBhdGlibGVzLgo+
IEFuZCBpbiBhIHF1aWNrIHNjYW4gSSBkaWRuJ3Qgc2VlIG90aGVyIHRoaW5ncyBhZGphY2VudC4g
CgpBbHNvLCB0aG9zZSAiUXVhbGl0eS1vZi1TZXJ2aWNlIiByZWdpc3Rlci1zZXRzIGFyZSBnZW5l
cmFsbHkgaWRlbnRpY2FsbHkgYW5kCmNvbmZpZ3VyZSB0aGUgaW50ZXJjb25uZWN0LXZvb2RvbyBm
b3IgdGhlIGluZGl2aWR1YWwgZGV2aWNlcyB0aGV5J3JlCmF0dGFjaGVkIHRvLgoKQW5kIHdoaWxl
IHdlIGFyZSBub3QgInR1bmluZyIgc3R1ZmYgYXQgdGhlIG1vbWVudCwgdGhlIHJlZ2lzdGVyIGNv
bnRlbnRzCm5lZWQgdG8gYmUgc2F2ZWQgYW5kIHJlc3RvcmVkIHdoZW4gdGhlIGRldmljZSdzIHBv
d2VyLWRvbWFpbiBpcwp0dXJuZWQgb2ZmIG9yIG9uLgoKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
