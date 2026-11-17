Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56FC1606A330
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2026 17:35:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=3XfkUrZP;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=m+OoLnyK
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Cc:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=lAVoDFOjLFkhQber/khK9SRZUAKuinawP6SIBgagk4Q=; b=3XfkUrZPGWNBPcFLnk6xAkGgKG
	0yBL1UKc1dTTaafBj6JBMsuUDUvbl9aeBkxW8kvMx3/PuGeUEXJarWp2BRdXY9fdqPwsDvJd7Z+4v
	6RNXsjPK6rWMNipx/FY5Yj2sLXWIu0jENd/04CCHpxxhzH+OqiTbqTDm4HcXNn/fDpKQdDnvXuiNV
	N2rBwPN5onptZ2uj7lwbUauiV+3elZs1Jnv7+/0ZKTf6V1cTA2QjJ+Mhr/PmXeHt0McrwlSvYibb2
	Z1fCPtzZ46DovoNQGQdMgwz5nC5NaVtwcQpIDRGoS2mj8c9a+AfBEfcvzCW0JqKWYNc9N0LD6m30F
	DBGgOWEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTN5X-00000006avy-3QDi;
	Tue, 17 Nov 2026 17:35:23 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTN5N-00000006apm-3k7P;
	Tue, 17 Nov 2026 17:35:14 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 2A60860F8E;
	Tue, 17 Nov 2026 17:35:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6DABF1F000CA;
	Tue, 17 Nov 2026 17:35:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794936912;
	bh=nB6Yq8d6ULrFd8IzeuoWmxpqPH/+v/zha4BrdYeZUfE=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=m+OoLnyKEqRzuR8W24SKYyqeH6WL7WtYTv9Yk+iWroEVoyZLBNbO3Y34RvRRI3Li6
	 /dqFOQJYNXfrnUueeuBIWz/Pq55xJASipZl83hyCmOTvWei+1Qp2rFUZsB73vFGKtm
	 35NfflWKQng5deftSY4vK2xDDXYheYikiiyUb5Q0Kcbktk7ZGkEdfKE9+8qnPoZ3qN
	 haR1l3Sym7RSui+tJMYRXzDxK5wtrwbpjr72i54Gv/hCOuiF69sGojba3BwyK8pw83
	 v2XOdBeqx0jm8zY6gQyw7yR8rBSPJgHHM4BG5gHI15d5XFldxiAdymXaSy7s7+hiPY
	 xYZp9hwEuww5Q==
Subject: Re: [PATCH 2/9] dt-bindings: ata: rockchip,dwc-ahci: Allow iommus
From: netdev-bot+sashiko@kernel.org
To: aiyengar1990@gmail.com
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@kernel.org,
 kuba@kernel.org, pabeni@redhat.com, david.wu@rock-chips.com,
 dlemoal@kernel.org, cassel@kernel.org, fancer.lancer@gmail.com,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-ide@vger.kernel.org, praan@google.com,
 will@kernel.org, robin.murphy@arm.com, iommu@lists.linux.dev,
 shawn.lin@rock-chips.com, sebastian.reichel@collabora.com
Date: Tue, 17 Nov 2026 17:35:10 +0000
Message-ID: <179493691098.3136.12498888747300831285@kernel.org>
In-Reply-To: <20261113-mmu600-php-v1-2-231196049a3b@gmail.com>
References: <20261113-mmu600-php-v1-2-231196049a3b@gmail.com>
X-sashiko-severity: Low
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
bW9yZSBzZXZlcmUKaXNzdWUocykgaW4gb3RoZXIgcGF0Y2hlcyBvZiB0aGlzIHNlcmllcy4gVGhp
cyBtYWlsIGlzIG9ubHkgYW4gRllJLCBpbiBjYXNlCnlvdSB3YW50IHRvIGFkZHJlc3MgdGhlIG5p
dCBwaWNrcyBiZWxvdyB3aGVuIHlvdSByZXNwaW4uCgpMb3cgcHJpb3JpdHkgLyBuaXQgcGlja3Mg
Zm9yIHlvdXIgY29uc2lkZXJhdGlvbjoKCi0gW0xvd10gVGhlIHBhdGNoIGFkZHMgYGlvbW11czog
bWF4SXRlbXM6IDFgIGF0IHRoZSB0b3AgbGV2ZWwgb2YKICBgRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL2F0YS9yb2NrY2hpcCxkd2MtYWhjaS55YW1sYCAobGluZXPigKYKCi0tCgpk
dC1iaW5kaW5nczogYXRhOiByb2NrY2hpcCxkd2MtYWhjaTogQWxsb3cgaW9tbXVzCgpUaGlzIGFk
ZHMgYW4gaW9tbXVzIHByb3BlcnR5LCBsaW1pdGVkIHRvIG9uZSBpdGVtLCB0byB0aGUgUm9ja2No
aXAgRFdDCkFIQ0kgYmluZGluZy4gVGhlIGNvbW1pdCBtZXNzYWdlIHNheXMgdGhlIFJLMzU4OCBT
QVRBIGNvbnRyb2xsZXJzIHNpdApiZWhpbmQgdGhlIFBIUCBTTU1VLgoKPiBkaWZmIC0tZ2l0IGEv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2F0YS9yb2NrY2hpcCxkd2MtYWhjaS55
YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2F0YS9yb2NrY2hpcCxkd2Mt
YWhjaS55YW1sCj4gaW5kZXggYjVlY2FhYmZlMmUyNS4uZTMzZThiNTU5MWVlNSAxMDA2NDQKPiAt
LS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXRhL3JvY2tjaGlwLGR3Yy1h
aGNpLnlhbWwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXRhL3Jv
Y2tjaGlwLGR3Yy1haGNpLnlhbWwKPiBAQCAtMzQsNiArMzQsOSBAQCBwcm9wZXJ0aWVzOgo+ICAg
ICAgICAgICAgLSByb2NrY2hpcCxyazM1ODgtZHdjLWFoY2kKPiAgICAgICAgLSBjb25zdDogc25w
cyxkd2MtYWhjaQo+ICAKPiArICBpb21tdXM6Cj4gKyAgICBtYXhJdGVtczogMQo+ICsKCltTZXZl
cml0eTogTG93XQpTaG91bGQgaW9tbXVzIGJlIGxpbWl0ZWQgdG8gcm9ja2NoaXAscmszNTg4LWR3
Yy1haGNpPwoKQXMgYWRkZWQsIHRoZSBwcm9wZXJ0eSBpcyB1bmNvbmRpdGlvbmFsLiBUaGF0IG1h
a2VzIGl0IHZhbGlkIGZvciBhbGwKdGhyZWUgY29tcGF0aWJsZXMgaW4gdGhlIHNlbGVjdCBibG9j
azogcm9ja2NoaXAscmszNTY4LWR3Yy1haGNpLApyb2NrY2hpcCxyazM1NzYtZHdjLWFoY2kgYW5k
IHJvY2tjaGlwLHJrMzU4OC1kd2MtYWhjaS4KClRoZSBjb21taXQgbWVzc2FnZSBvbmx5IGdpdmVz
IGEgaGFyZHdhcmUgcmVhc29uIGZvciBSSzM1ODg6CgogIFRoZSBSSzM1ODggU0FUQSBjb250cm9s
bGVycyBhcmUgYmVoaW5kIHRoZSBQSFAgU01NVS4KClRoZSBpbi10cmVlIFNvQyBkZXNjcmlwdGlv
bnMgbWF0Y2ggdGhhdC4gbW11NjAwX3BocDogaW9tbXVAZmNiMDAwMDAKKGFybSxzbW11LXYzKSBl
eGlzdHMgb25seSBpbiByazM1ODgtYmFzZS5kdHNpLiBJbiByazM1NngtYmFzZS5kdHNpIGFuZApy
azM1NzYuZHRzaSwgdGhlIG9ubHkgSU9NTVVzIGFyZSBmb3IgbWVkaWEgYmxvY2tzICh2ZHB1LCB2
ZXB1LCB2aWNhcCwKdm9wLCB2ZGVjKSwgYW5kIG5vbmUgb2YgdGhlbSBzaXQgaW4gZnJvbnQgb2Yg
dGhlIFNBVEEgbm9kZXMuCgpUaGUgYmluZGluZyBhbHJlYWR5IGhhcyBhIHNlcGFyYXRlIGFsbE9m
IGVudHJ5IGZvciB0aGUgb2xkZXIgU29DczoKCiAgLSBpZjoKICAgICAgcHJvcGVydGllczoKICAg
ICAgICBjb21wYXRpYmxlOgogICAgICAgICAgY29udGFpbnM6CiAgICAgICAgICAgIGVudW06CiAg
ICAgICAgICAgICAgLSByb2NrY2hpcCxyazM1NjgtZHdjLWFoY2kKICAgICAgICAgICAgICAtIHJv
Y2tjaGlwLHJrMzU3Ni1kd2MtYWhjaQogICAgdGhlbjoKICAgICAgcHJvcGVydGllczoKICAgICAg
ICBjbG9ja3M6CiAgICAgICAgICBtYXhJdGVtczogMwoKV2l0aCB0aGlzIHBhdGNoLCBkdGJzX2No
ZWNrIHdvdWxkIG5vIGxvbmdlciBmbGFnIGFuIGlvbW11cyBwcm9wZXJ0eQphZGRlZCBieSBtaXN0
YWtlIHRvIGFuIFJLMzU2OCBvciBSSzM1NzYgU0FUQSBub2RlLgoKT25lIG9wdGlvbiBpcyB0byBh
ZGQgaW9tbXVzOiBmYWxzZSB0byB0aGUgcmszNTY4L3JrMzU3NiB0aGVuOiBicmFuY2guCkFub3Ro
ZXIgaXMgdG8gYWxsb3cgaW9tbXVzIG9ubHkgaW4gdGhlIHJrMzU4OCBicmFuY2guCgpzbnBzLGR3
Yy1haGNpLnlhbWwsIHdoaWNoIHRoZSBjb21taXQgbWVzc2FnZSBjaXRlcywgZG9lcyBhbGxvdyBp
b21tdXMKdW5jb25kaXRpb25hbGx5LiBUaGlzIGJpbmRpbmcgaXMgcGVyLVNvQywgdGhvdWdoLCBh
bmQgYWxyZWFkeSBoYXMKcGVyLWNvbXBhdGlibGUgY29uc3RyYWludHMuCgo+ICAgIHBvcnRzLWlt
cGxlbWVudGVkOgo+ICAgICAgY29uc3Q6IDEKPgoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0
dHBzOi8vbmV0ZGV2LWFpLmJvdHMubGludXguZGV2L3Nhc2hpa28vIy9wYXRjaHNldC8yMDI2MTEx
My1tbXU2MDAtcGhwLXYxLTAtMjMxMTk2MDQ5YTNiJTQwZ21haWwuY29tCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
