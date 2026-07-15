Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD7BAC44507
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jul 2026 19:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8DPmE55hqc/rsojlO8Hix2QhGlyR9TLZVC7g5PP8Ztg=; b=RyhOWc27ls0NF6
	VizvOK/h6ZibiVnWMaMzNXTRNj6OYAlr4sZH0WKUnAzPslbTAiVLXqmAGhmMGdkA20qWN67pTTzmI
	6ysUXkIWpCSu1XQ43bcKV3IT6x1SkwT2QpuhbL4UWqgsHIUgXt/jRI6eLSw2oM8qn5MMDCsqxLOTQ
	nOouW4I/xcD5SUiYIQkVKSwHu2axMCFNUH13HirLLY0xxIc1bCu3va5IBw2DbzXaS3Q+ihKFKA+C9
	zwdgWFi5qQANg4jenhhOM1/Q/S6faHorfLTYbyOHFG5XTpL/BQ2GMnXTQNd5+jXH0ekRnkuWBnc8j
	bNomtc3zuer/OsLO1I7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk5Li-0000000Fn9L-43JF;
	Wed, 15 Jul 2026 19:32:54 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk5Lg-0000000Fn8s-3iGO;
	Wed, 15 Jul 2026 19:32:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=K2kRxoCAum/25lk+JMgZ5Et4r6PioAkR1hFgQluxBjo=; b=nCrsCUz9KVyqdkiPlRd3mu0BPT
	BY/lltifM6/ZbtqRxSSVVnMfwnl35jU1PkPGYv8A+wbOsLSpMRK/gb5sCfaHkhKsLqnEVYDUgmpNd
	5uQpr/PPok9rRtziKGPHpBUZ8W3XMUksi8/X8IePJZZ2oEaLTHHQ8RMRSqiCsYhAR3dCRgd/+c4iY
	57tkbVxfBWJ+8jYeCmFop9LlFXC0GOorAfeQIyY/XzyzbdKrtmZyo1kL5WaGTFDbuoywDiBHRTon7
	r4AfvXEBr55f9k89DnejsBRcgAWYPmXHtT/kKU+J3OYevOpTGz8abQTlmWkU/i+utCoaoWxcIjRWf
	9rr15+0g==;
From: Heiko Stuebner <heiko@sntech.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Simon Glass <sjg@chromium.org>
Cc: Jiri Slaby <jirislaby@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-serial@vger.kernel.org,
 Simon Glass <sjg@chromium.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: serial: snps-dw-apb-uart: Add RV1106 compatible
Date: Wed, 15 Jul 2026 21:32:47 +0200
Message-ID: <15791133.tv2OnDr8pf@phil>
In-Reply-To: <20260714132035.v2.1.c1d92213393f49330ec14d0c670a802181b4fcbf@changeid>
References: <20260714132035.v2.1.c1d92213393f49330ec14d0c670a802181b4fcbf@changeid>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_123252_920896_7AD42D94 
X-CRM114-Status: GOOD (  13.02  )
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

QW0gRGllbnN0YWcsIDE0LiBKdWxpIDIwMjYsIDIxOjIwOjM2IE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgU2ltb24gR2xhc3M6Cj4gQWRkIHRoZSBjb21wYXRpYmxlIGZvciB0
aGUgVUFSVHMgb2YgdGhlIFJvY2tjaGlwIFJWMTEwNiwgd2hpY2ggYXJlCj4gY29tcGF0aWJsZSB3
aXRoIHRoZSBTeW5vcHN5cyBEZXNpZ25XYXJlIEFQQiBVQVJULgo+IAo+IFNpZ25lZC1vZmYtYnk6
IFNpbW9uIEdsYXNzIDxzamdAY2hyb21pdW0ub3JnPgoKUmV2aWV3ZWQtYnk6IEhlaWtvIFN0dWVi
bmVyIDxoZWlrb0BzbnRlY2guZGU+Cgo+IC0tLQo+IAo+IENoYW5nZXMgaW4gdjI6Cj4gLSBTcGxp
dCBvdXQgaW50byBpdHMgb3duIHBhdGNoCj4gCj4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9zZXJpYWwvc25wcy1kdy1hcGItdWFydC55YW1sIHwgMSArCj4gIDEgZmlsZSBjaGFu
Z2VkLCAxIGluc2VydGlvbigrKQo+IAo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3Mvc2VyaWFsL3NucHMtZHctYXBiLXVhcnQueWFtbCBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9zZXJpYWwvc25wcy1kdy1hcGItdWFydC55YW1sCj4gaW5k
ZXggNDlmNTFiMDAyODc5Li5jMGQwNTI0NDU4YzEgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NlcmlhbC9zbnBzLWR3LWFwYi11YXJ0LnlhbWwKPiArKysg
Yi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc2VyaWFsL3NucHMtZHctYXBiLXVh
cnQueWFtbAo+IEBAIC03Miw2ICs3Miw3IEBAIHByb3BlcnRpZXM6Cj4gICAgICAgICAgICAgICAg
LSByb2NrY2hpcCxyazM1NzYtdWFydAo+ICAgICAgICAgICAgICAgIC0gcm9ja2NoaXAscmszNTg4
LXVhcnQKPiAgICAgICAgICAgICAgICAtIHJvY2tjaGlwLHJ2MTEwM2ItdWFydAo+ICsgICAgICAg
ICAgICAgIC0gcm9ja2NoaXAscnYxMTA2LXVhcnQKPiAgICAgICAgICAgICAgICAtIHJvY2tjaGlw
LHJ2MTEwOC11YXJ0Cj4gICAgICAgICAgICAgICAgLSByb2NrY2hpcCxydjExMjYtdWFydAo+ICAg
ICAgICAgICAgICAgIC0gc29waGdvLHNnMjA0NC11YXJ0Cj4gLS0tCj4gYmFzZS1jb21taXQ6IDNi
MDI5YzAzNWIzNGJiYzY5MzQwNWRkZjc1OWYwZTliOTIwYzI3ZjEKPiBicmFuY2g6IHJ2MTEwNmMy
Cj4gCj4gCgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
