Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DD96EB64D9
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Jul 2023 11:32:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+VGH0puvh167VzAoG46FH5I+oH7sGXdoNL5sPsgJwDc=; b=ARaLnfdg8So9C0
	EkVxHkVTbTZzR441w5/7le0E9AB+/UqXjETPU2+/s0Pp6HruZSV3L3huKKjgiDIlZ67AGRPrQpJjW
	554aBtEhcoctO/l9FVb8MF9DpFZrIbgaFerBVKQcVxSTXqglVPBcgK98Pq5YcDYsFExMWqxWAvIDr
	ot8GVwf6tCreY8U7vkj8bURwQVdqqHEOj9v/PVQPaH0UEpQPRRpEY6vrZVsbt8rNsJz2YeVrA6JYp
	W9wi3aVi1CliVxbBkJcxfTe9wFVV8X/S5sSOtnvjWFznsz3TOWd7bIxuvaTBbtKkAfRXPSoftwM+I
	8zn2KrNlt9PQruD9Opow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qHNDT-001UH1-2O;
	Thu, 06 Jul 2023 11:32:07 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qHNDO-001UFX-0H;
	Thu, 06 Jul 2023 11:32:05 +0000
Received: from [IPv6:2a00:23c8:b70a:ae01:35d0:8e34:613c:c44e] (unknown [IPv6:2a00:23c8:b70a:ae01:35d0:8e34:613c:c44e])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: obbardc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 3139D6602242;
	Thu,  6 Jul 2023 12:31:57 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1688643117;
	bh=vbQlxNw0xEqKNvHiDqAMddYkxm9j3O7CBi79bnRH9OA=;
	h=Subject:From:To:Date:In-Reply-To:References:From;
	b=XufG4a28u8HEBpH5Bc44w6ttJ9HFg4VfUA7GIp7wQKH1dzHWlYNnGA2bT1m6yFA1M
	 pfalPAwYQohuHaQ7tnI0cTShYTKrF4mAeeXm/SohNWOlSwUJhZFu3QOsqgILVD+T5K
	 YopF3r68h43t3TpULniFd3PSMvcoeGZKHTC3dGgHvbwuAYFfgBYyAEDhMFmERUXELa
	 LWYXdwhNyAvgqPXIf02q0S86Fmn1Vt0fOFJGIDCYHQgG9yjIkPb+KKq0FiDdM9ZWjO
	 ImBXBlU6DmBB7HixR+hypF4SoQsHtPRd45z/w51EWifbNPlOPCDhyT78nbOXNoAy0J
	 07Ac3r9PniF8Q==
Message-ID: <3efcb6215c19ff70e2b9ef8ed5bf48813c1499c9.camel@collabora.com>
Subject: Re: [RFT PATCH 2/3] arm64: dts: rockchip: correct audio-codec
 interrupt flag in Rock Pi 4B
From: Christopher Obbard <chris.obbard@collabora.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>,  Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
Date: Thu, 06 Jul 2023 12:31:55 +0100
In-Reply-To: <20230705064823.9210-2-krzysztof.kozlowski@linaro.org>
References: <20230705064823.9210-1-krzysztof.kozlowski@linaro.org>
	 <20230705064823.9210-2-krzysztof.kozlowski@linaro.org>
User-Agent: Evolution 3.48.4-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230706_043202_345885_CFECD5CC 
X-CRM114-Status: GOOD (  14.32  )
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

SGkgS3J6eXN6dG9mLAoKT24gV2VkLCAyMDIzLTA3LTA1IGF0IDA4OjQ4ICswMjAwLCBLcnp5c3p0
b2YgS296bG93c2tpIHdyb3RlOgo+IEdQSU9fQUNUSVZFX3ggZmxhZ3MgYXJlIG5vdCBjb3JyZWN0
IGluIHRoZSBjb250ZXh0IG9mIGludGVycnVwdCBmbGFncy4KPiBUaGVzZSBhcmUgc2ltcGxlIGRl
ZmluZXMgc28gdGhleSBjb3VsZCBiZSB1c2VkIGluIERUUyBidXQgdGhleSB3aWxsIG5vdAo+IGhh
dmUgdGhlIHNhbWUgbWVhbmluZzogR1BJT19BQ1RJVkVfSElHSCA9IDAgPSBJUlFfVFlQRV9OT05F
Lgo+IAo+IENvcnJlY3QgdGhlIGludGVycnVwdCBmbGFncywgYXNzdW1pbmcgdGhlIGF1dGhvciBv
ZiB0aGUgY29kZSB3YW50ZWQgc2FtZQo+IGxvZ2ljYWwgYmVoYXZpb3IgYmVoaW5kIHRoZSBuYW1l
ICJBQ1RJVkVfeHh4IiwgdGhpcyBpczoKPiDCoCBBQ1RJVkVfTE9XwqAgPT4gSVJRX1RZUEVfTEVW
RUxfTE9XCj4gCj4gU2lnbmVkLW9mZi1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9m
Lmtvemxvd3NraUBsaW5hcm8ub3JnPgo+IC0tLQoKVGhpcyB3b3JrcyBmaW5lIG9uIG15IGhhcmR3
YXJlLiBXaXRoIHRoYXQ6CgpUZXN0ZWQtYnk6IENocmlzdG9waGVyIE9iYmFyZCA8Y2hyaXMub2Ji
YXJkQGNvbGxhYm9yYS5jb20+Cgo+IMKgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMz
OTktcm9jay1waS00Yi1wbHVzLmR0cyB8IDIgKy0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrLXBpLTRiLXBsdXMuZHRzIGIvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazMzOTktcm9jay1waS00Yi1wbHVzLmR0cwo+IGluZGV4IGNlYzNiN2Ix
Yjk0Ny4uOGExN2MxZWFhZTE1IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszMzk5LXJvY2stcGktNGItcGx1cy5kdHMKPiArKysgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrLXBpLTRiLXBsdXMuZHRzCj4gQEAgLTMxLDcgKzMxLDcg
QEAgYnJjbWY6IHdpZmlAMSB7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjb21w
YXRpYmxlID0gImJyY20sYmNtNDMyOS1mbWFjIjsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoHJlZyA9IDwxPjsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludGVy
cnVwdC1wYXJlbnQgPSA8JmdwaW8wPjsKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
aW50ZXJydXB0cyA9IDxSS19QQTMgR1BJT19BQ1RJVkVfSElHSD47Cj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoGludGVycnVwdHMgPSA8UktfUEEzIElSUV9UWVBFX0xFVkVMX0hJR0g+
Owo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZXJydXB0LW5hbWVzID0gImhv
c3Qtd2FrZSI7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBwaW5jdHJsLW5hbWVz
ID0gImRlZmF1bHQiOwo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcGluY3RybC0w
ID0gPCZ3aWZpX2hvc3Rfd2FrZV9sPjsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
