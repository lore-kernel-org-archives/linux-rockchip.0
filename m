Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A393606A334
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 20:48:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Dcz18lt0;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=Z+kKRryW
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=PrkdNwEGSs+Qfp++goaqU+HRqKLby4lpG0hvsf/kOAA=; b=Dcz18lt0NUMCSkkQVldQQx4Zmc
	/Zp62QMdF4Oij7UMXGpmal0b+ytb7tyr236cUPShThHmPoeIec06Y/MCH7HSAl8NavPFESjN+H4VC
	5s3PxzIZocY6kznKDxUfXXCOoeriNbfRZVIxA0fuL7OQ6dToWCoBXW36mlVbEKlCG/MCDPMsNmW2L
	zV3Y0xBLzcyMc4IvPUOC6q+OIfWkaw17yaIM9wAfu6Uq3Y9zbaIjDG3JhYMT+4SA+bVUZV8sTvzNa
	7oqlF0ZZFNiw2HqBwI4LCCq8ST4B78CLfJPyaBH7GKHx1yN7zZ+7/qMz8MpfEjFdWrDfweP0szKni
	CqbDHszA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRyCM-0000000EUIV-0a3F;
	Fri, 13 Nov 2026 20:48:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRyCH-0000000EUGF-2hCs;
	Fri, 13 Nov 2026 20:48:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=4yDZRfV74gzkAKxidzXBIKvKLnHRDrSBTaKHel/+/uo=; b=Z+kKRryWqzzXo7N0Sw4YRsMx0U
	ooA+n1KLL0vRvKl0ksWJUpF9NphOyllBA22gtQf7PrzXQILiV6FaI/cu2r8f1aCbIVIsV7UD+w8Hn
	79hx9VjKATUDTwLleielum70OnlKZgJeLDSRKRw3bjQYxzj+OlNY7CXCLwmcqovn2xzjI4ZBdL/cn
	d7NOhSl43eEOEjqhkumM60IyzCMvg7w1dtGaOAryVbXttvgmOdQOXWzZDf49l0XeZBEd0QoszaxVB
	+9OG2VQbQYAzRRbxtt4GBeU7CD3941BdZ2eoLGLXpYhbl4B8bEHP5n+4yQ0vQQ9yVFegqy/jiP3t1
	WY3BVGJQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Chris Morgan <macroalpha82@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, david@ixit.cz, detlev.casanova@collabora.com,
 maz@kernel.org, michael.riesch@collabora.com, diederik@cknow-tech.com,
 shawn.lin@rock-chips.com, conor+dt@kernel.org, krzk+dt@kernel.org,
 robh@kernel.org, tglx@kernel.org, daniel.lezcano@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: timer: rockchip: Add rk3568 compatible
Date: Fri, 13 Nov 2026 21:48:28 +0100
Message-ID: <OwFpcaCvQyCpxGXRrBGjPA@sntech.de>
In-Reply-To: <20261103192331.394489-2-macroalpha82@gmail.com>
References: <20261103192331.394489-1-macroalpha82@gmail.com>
 <20261103192331.394489-2-macroalpha82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_124833_689270_C87A9088 
X-CRM114-Status: GOOD (  12.23  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgQ2hyaXMsCgpBbSBEaWVuc3RhZywgMy4gTm92ZW1iZXIgMjAyNiwgMjA6MjM6MzAgTWl0dGVs
ZXVyb3DDpGlzY2hlIE5vcm1hbHplaXQgc2NocmllYiBDaHJpcyBNb3JnYW46Cj4gRnJvbTogQ2hy
aXMgTW9yZ2FuIDxtYWNyb21vcmdhbkBob3RtYWlsLmNvbT4KPiAKPiBBZGQgY29tcGF0aWJsZSBz
dHJpbmcgZm9yIFJvY2tjaGlwIFJLMzU2OCB0aW1lci4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJp
cyBNb3JnYW4gPG1hY3JvbW9yZ2FuQGhvdG1haWwuY29tPgoKY2FuIHlvdSBpZGVhbGx5IHNlbmQg
dGhpcyBvbmUgc2VwYXJhdGVseSB0byB0aGUgY2xvY2tzb3VyY2UgcGVvcGxlLCBzbwp0aGF0IGlz
IG1heWJlIGlzIGNsZWFyZXIgdGhhdCB0aGlzIHBhdGNoIHNob3VsZCBnbyB0aHJvdWdoIHRoZSBj
bG9ja3NvdXJjZQpkcml2ZXIgdHJlZT8KCgpIZWlrbwoKPiAtLS0KPiAgRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3RpbWVyL3JvY2tjaGlwLHJrLXRpbWVyLnlhbWwgfCAxICsKPiAg
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4gCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy90aW1lci9yb2NrY2hpcCxyay10aW1lci55YW1sIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3RpbWVyL3JvY2tjaGlwLHJrLXRpbWVy
LnlhbWwKPiBpbmRleCA2ZDBlYjAwMTRlZWUuLmIyNDVhMzA1MWQ2NiAxMDA2NDQKPiAtLS0gYS9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdGltZXIvcm9ja2NoaXAscmstdGltZXIu
eWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy90aW1lci9yb2Nr
Y2hpcCxyay10aW1lci55YW1sCj4gQEAgLTI0LDYgKzI0LDcgQEAgcHJvcGVydGllczoKPiAgICAg
ICAgICAgICAgICAtIHJvY2tjaGlwLHJrMzIyOC10aW1lcgo+ICAgICAgICAgICAgICAgIC0gcm9j
a2NoaXAscmszMjI5LXRpbWVyCj4gICAgICAgICAgICAgICAgLSByb2NrY2hpcCxyazMzNjgtdGlt
ZXIKPiArICAgICAgICAgICAgICAtIHJvY2tjaGlwLHJrMzU2OC10aW1lcgo+ICAgICAgICAgICAg
ICAgIC0gcm9ja2NoaXAscmszNTc2LXRpbWVyCj4gICAgICAgICAgICAgICAgLSByb2NrY2hpcCxy
azM1ODgtdGltZXIKPiAgICAgICAgICAgICAgICAtIHJvY2tjaGlwLHB4MzAtdGltZXIKPiAKCgoK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
