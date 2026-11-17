Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3910606A338
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2026 17:35:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=zgBUkFcc;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=DB31nbrg
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Cc:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=azdKlyiItryMIfG/Roj5oi1mCSqcv1kiVhDIn4RR+3M=; b=zgBUkFccBWq2yOYavtX+jS4M3S
	ZNa+updK6hFdgDBYEQrUOpthQM7opvx+u/b/TdIiu+lmEnwfILH/QyWSYH4tCQDBBGgnfvYYhS4qn
	ilH04Vew6Mvw9d/1sChP3rRtzYV5JJq5BKZuL8MnRgQ1mgFnMA1YYXLJkeW+ruv7cPcHkm1zhhoUa
	h8hSJVh+pQF4sWzmMDmc2uI/DT8NQXfU+biibIArmlsdVJpbSlpILMesUvJEfdi4XTJCsg6PsbzdF
	8fq0wLWPWiOZcXPzFuSlPuWg/ViG9Xf5+MPya2xTRhYNGDUcMzUscT0gD+01vR/yNRzEILG5HPl1j
	0+yxjSIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTN5N-00000006aqC-2hrG;
	Tue, 17 Nov 2026 17:35:13 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTN5L-00000006apX-3Rp9;
	Tue, 17 Nov 2026 17:35:11 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1DB23605ED;
	Tue, 17 Nov 2026 17:35:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8297B1F000C4;
	Tue, 17 Nov 2026 17:35:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794936910;
	bh=+KzEQNGHNyX+d3v3aVcwTAOvdhg7OdW27uOcL3lFZr8=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=DB31nbrgHw4cb5wk09Uoa3sTa0f48KHnVB0If14yyoePPs2K870d/2jEQ5MCJTxk7
	 0HbKP/tiPgmXoOHfj2InyasAd47uGI8E/6iSoGTJhOzM8dvbDWG7HZPRHc1peUVljb
	 bpK0ef6TRTVaBEeQgE1lXV+qAr6GbTkVpd+c0RE4ulHrao45SJHUPegpUWrKFnclEo
	 FQCp6PuFn/QNCouwAXCJuSg2lpyRKy7uDDr02088M4XQa+eLK4f+LEVvyBEA+6Nq0M
	 nYXgyZYAq/AsgoC+Rn+TdaHymUq0WvnTsk/kCX4Ps8PLhsT1M+7GNk3Jc4PC38jZgV
	 TkXzr9kfqXCiA==
Subject: Re: [PATCH 1/9] dt-bindings: net: rockchip-dwmac: Allow iommus
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
Date: Tue, 17 Nov 2026 17:35:09 +0000
Message-ID: <179493690908.3136.827247860672592948@kernel.org>
In-Reply-To: <20261113-mmu600-php-v1-1-231196049a3b@gmail.com>
References: <20261113-mmu600-php-v1-1-231196049a3b@gmail.com>
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
Zm9yIHlvdXIgY29uc2lkZXJhdGlvbjoKCi0gW0xvd10gVGhpcyBwYXRjaCAoImR0LWJpbmRpbmdz
OiBuZXQ6IHJvY2tjaGlwLWR3bWFjOiBBbGxvdyBpb21tdXMiKQogIGFkZHMgYGlvbW11czogbWF4
SXRlbXM6IDFgIHRvIHRoZSB0b3AtbGV2ZWwgYHByb3BlcnRpZXM6YCBtYXAgb2bigKYKCi0tCgpk
dC1iaW5kaW5nczogbmV0OiByb2NrY2hpcC1kd21hYzogQWxsb3cgaW9tbXVzCgpUaGlzIGNvbW1p
dCBhZGRzIGFuIGlvbW11cyBwcm9wZXJ0eSwgbGltaXRlZCB0byBvbmUgZW50cnksIHRvIHRoZQpS
b2NrY2hpcCBEV01BQyBiaW5kaW5nLiBUaGUgY29tbWl0IG1lc3NhZ2Ugc2F5cyB0aGUgUkszNTg4
IEdNQUNzIHNpdApiZWhpbmQgdGhlIFBIUCBTTU1VLgoKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9yb2NrY2hpcC1kd21hYy55YW1sIGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9yb2NrY2hpcC1kd21hYy55YW1sCj4gaW5k
ZXggZThkZGExOTYxYWIzMS4uMmEwY2Q1NmZiNGZlOSAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L3JvY2tjaGlwLWR3bWFjLnlhbWwKPiArKysgYi9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L3JvY2tjaGlwLWR3bWFjLnlhbWwK
PiBAQCAtODcsNiArODcsOSBAQCBwcm9wZXJ0aWVzOgo+ICAKPiAgICBkbWEtY29oZXJlbnQ6IHRy
dWUKPiAgCj4gKyAgaW9tbXVzOgo+ICsgICAgbWF4SXRlbXM6IDEKPiArCgpbU2V2ZXJpdHk6IExv
d10KVGhlIGNvbW1pdCBtZXNzYWdlIG9ubHkgZ2l2ZXMgYSByZWFzb24gZm9yIFJLMzU4OCwgYnV0
IGlvbW11cyBpcyBhZGRlZCB0bwp0aGUgdG9wLWxldmVsIHByb3BlcnRpZXMgd2l0aG91dCBhbnkg
Y29tcGF0aWJsZS1iYXNlZCBjb25kaXRpb24uIFdhcyBpdAppbnRlbmRlZCB0byBhbGxvdyBpb21t
dXMgb24gZXZlcnkgUm9ja2NoaXAgR01BQyBjb21wYXRpYmxlIChweDMwLCByazMxMjgsCnJrMzIy
OCwgcmszMjg4LCByazMzMDgsIHJrMzMyOCwgcmszMzY2LCByazMzNjgsIHJrMzM5OSwgcmszNTA2
LCByazM1MjgsCnJrMzU2OCwgcmszNTc2LCBydjExMDgsIHJ2MTEyNik/CgpJbiB0aGUgaW4tdHJl
ZSBEVFMsIHRoZSBvbmx5IFNNTVUgYSBHTUFDIGNvdWxkIHJlZmVyZW5jZSBhcHBlYXJzIHRvIGJl
Cm1tdTYwMF9waHAgaW4gcmszNTg4LWJhc2UuZHRzaToKCmFyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTg4LWJhc2UuZHRzaToKCW1tdTYwMF9waHA6IGlvbW11QGZjYjAwMDAwIHsKClRo
ZSBzYW1lIGJpbmRpbmcgYWxyZWFkeSByZXN0cmljdHMgdGhlIFBIUC1zcGVjaWZpYyByb2NrY2hp
cCxwaHAtZ3JmCnByb3BlcnR5IHRvIHRoZSBTb0NzIHRoYXQgaGF2ZSBpdDoKCiAgLSBpZjoKICAg
ICAgcHJvcGVydGllczoKICAgICAgICBjb21wYXRpYmxlOgogICAgICAgICAgY29udGFpbnM6CiAg
ICAgICAgICAgIGVudW06CiAgICAgICAgICAgICAgLSByb2NrY2hpcCxyazM1NzYtZ21hYwogICAg
ICAgICAgICAgIC0gcm9ja2NoaXAscmszNTg4LWdtYWMKICAgIHRoZW46CiAgICAgIHJlcXVpcmVk
OgogICAgICAgIC0gcm9ja2NoaXAscGhwLWdyZgogICAgZWxzZToKICAgICAgcHJvcGVydGllczoK
ICAgICAgICByb2NrY2hpcCxwaHAtZ3JmOiBmYWxzZQoKQXMgd3JpdHRlbiwgYSBHTUFDIG5vZGUg
Zm9yIGEgbm9uLVJLMzU4OCBTb0MgdGhhdCBjYXJyaWVzIGFuIGlvbW11cwpwaGFuZGxlIChmb3Ig
ZXhhbXBsZSwgb25lIGNvcGllZCBmcm9tIGFuIFJLMzU4OCBub2RlKSB3b3VsZCBwYXNzCmR0YnNf
Y2hlY2sgd2l0aG91dCBhIHdhcm5pbmcuCgpDb3VsZCBpb21tdXMgYmUgc2NvcGVkIGluIGEgc2lt
aWxhciBjb25kaXRpb25hbCwgd2l0aCBpb21tdXM6IGZhbHNlIGZvcgp0aGUgY29tcGF0aWJsZXMg
b3RoZXIgdGhhbiByb2NrY2hpcCxyazM1ODgtZ21hYz8gSWYgYWxsb3dpbmcgaXQgb24gYWxsCnZh
cmlhbnRzIGlzIGludGVudGlvbmFsLCBjb3VsZCB0aGUgY29tbWl0IG1lc3NhZ2Ugc2F5IHNvPwoK
PiAgICBjbG9ja19pbl9vdXQ6Cj4gICAgICBkZXNjcmlwdGlvbjoKPiAgICAgICAgRm9yIFJHTUlJ
LCBpdCBtdXN0IGJlICJpbnB1dCIsIG1lYW5zIG1haW4gY2xvY2soMTI1TUh6KQoKLS0gClNhc2hp
a28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vbmV0ZGV2LWFpLmJvdHMubGludXguZGV2L3Nhc2hpa28v
Iy9wYXRjaHNldC8yMDI2MTExMy1tbXU2MDAtcGhwLXYxLTAtMjMxMTk2MDQ5YTNiJTQwZ21haWwu
Y29tCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
