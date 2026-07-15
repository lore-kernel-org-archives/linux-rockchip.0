Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67F61C44501
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jul 2026 19:33:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ItfS4AgpCnogE2gCbHQ8WJRSLo5KrPPnuPF26NuMfEw=; b=e8McGH3hcPlRz2
	26bTWbWhWsb3Ms1ihcxHM8HswLykEnf7lP0UwjjUc7J1npz0x313uFBSxnMHsyH4BKoapgYuaibE3
	QsHCgS11jmvfav3QWoeMC02vMUzfBY02qKhrAaoak2tOe1JdmdQHbWJ04iK+euDzKNqfyG7FBK84+
	3sWoA6kypq36TcEAZ3ue+wDshcydT3w0tu558nWZHQWjJC8QF8m3PMKy6c2cuiSmBLDNQ5Pv/o/SH
	dT/zJx5arGs1XhoLvqaJE4u7x81mTGT94bqF3Dl0dSYcMu62TGznx55TCgueMultrjBAibyrco1sq
	QPvcsP0T9/7SDGgQL+MA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk5MH-0000000FnFt-12HE;
	Wed, 15 Jul 2026 19:33:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk5ME-0000000FnEX-0bMk;
	Wed, 15 Jul 2026 19:33:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=ENi8hJBzRE8JvriWtXhPZ9ZVhtE90LD36e7AByEnCf4=; b=a+ZV63U8WuOqoQ3yu+1/ONPnRh
	Di8rhROtW1YUP2SLJdPOCAUnMPVeznK3zanPyIualIBpdxK7c0rKBwXy2+iCGcIzOqkGA3FRcAEYV
	/zshvt3M8G1U7uwCxbOqf7g7eowWf7sstsiGB+BTbwQQuUJBNtk8g8pX+ElDNCVogWRwZo+t41GQ4
	aR3OI//ADBpYYIDMNB1NmG/QnMLWqzvxC8KN8hdGAG+4dpfY/1E5UKc5liNE+EsjJ/8bOTed8yDup
	6tFQ00SLDDB5ramSD3LixhZiOfOAUxRrHDkzsFpd2/szCG6dIA2mWVbvvTUTIeUk7xEN+W86Og+WA
	yGsLS3ow==;
From: Heiko Stuebner <heiko@sntech.de>
To: Wim Van Sebroeck <wim@linux-watchdog.org>,
 Guenter Roeck <linux@roeck-us.net>, Simon Glass <sjg@chromium.org>
Cc: Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-watchdog@vger.kernel.org,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Simon Glass <sjg@chromium.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
 Jamie Iles <jamie@jamieiles.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: watchdog: snps,dw-wdt: Add RV1106 compatible
Date: Wed, 15 Jul 2026 21:33:16 +0200
Message-ID: <2785624.BddDVKsqQX@phil>
In-Reply-To: <20260714131856.v2.1.b5339e64b3fe4338b3924ebd9dc0096904699744@changeid>
References: <20260714131856.v2.1.b5339e64b3fe4338b3924ebd9dc0096904699744@changeid>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_123326_184065_A9031AEE 
X-CRM114-Status: GOOD (  12.42  )
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

QW0gRGllbnN0YWcsIDE0LiBKdWxpIDIwMjYsIDIxOjE4OjU3IE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgU2ltb24gR2xhc3M6Cj4gQWRkIHRoZSBjb21wYXRpYmxlIGZvciB0
aGUgd2F0Y2hkb2cgb2YgdGhlIFJvY2tjaGlwIFJWMTEwNiwgd2hpY2ggaXMKPiBjb21wYXRpYmxl
IHdpdGggdGhlIFN5bm9wc3lzIERlc2lnbldhcmUgd2F0Y2hkb2cuCj4gCj4gU2lnbmVkLW9mZi1i
eTogU2ltb24gR2xhc3MgPHNqZ0BjaHJvbWl1bS5vcmc+Cj4gQWNrZWQtYnk6IEtyenlzenRvZiBL
b3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lAb3NzLnF1YWxjb21tLmNvbT4KClJldmlld2Vk
LWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgoKPiAtLS0KPiAKPiAobm8gY2hh
bmdlcyBzaW5jZSB2MSkKPiAKPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3dh
dGNoZG9nL3NucHMsZHctd2R0LnlhbWwgfCAxICsKPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspCj4gCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy93YXRjaGRvZy9zbnBzLGR3LXdkdC55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3dhdGNoZG9nL3NucHMsZHctd2R0LnlhbWwKPiBpbmRleCA5ZDI1ZjVlNDk3ZTIuLjJi
MTZiN2MyNzg3YiAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3Mvd2F0Y2hkb2cvc25wcyxkdy13ZHQueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy93YXRjaGRvZy9zbnBzLGR3LXdkdC55YW1sCj4gQEAgLTM1LDYgKzM1LDcg
QEAgcHJvcGVydGllczoKPiAgICAgICAgICAgICAgICAtIHJvY2tjaGlwLHJrMzU3Ni13ZHQKPiAg
ICAgICAgICAgICAgICAtIHJvY2tjaGlwLHJrMzU4OC13ZHQKPiAgICAgICAgICAgICAgICAtIHJv
Y2tjaGlwLHJ2MTEwM2Itd2R0Cj4gKyAgICAgICAgICAgICAgLSByb2NrY2hpcCxydjExMDYtd2R0
Cj4gICAgICAgICAgICAgICAgLSByb2NrY2hpcCxydjExMDgtd2R0Cj4gICAgICAgICAgICAgICAg
LSByb2NrY2hpcCxydjExMjYtd2R0Cj4gICAgICAgICAgICAtIGNvbnN0OiBzbnBzLGR3LXdkdAo+
IC0tLQo+IGJhc2UtY29tbWl0OiAzYjAyOWMwMzViMzRiYmM2OTM0MDVkZGY3NTlmMGU5YjkyMGMy
N2YxCj4gYnJhbmNoOiBydjExMDZkMgo+IAo+IAoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
