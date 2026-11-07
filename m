Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9376606A32C
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Nov 2026 17:06:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=emwMsKb3;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=gqBwnHBb
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=EEdeQn6xG0i1vZvzpuhnBtDN31rP5fNnst4tsofXEvE=; b=emwMsKb38DMP/twDGjX4qvUM7m
	ue5sMJAoah/BQwAhVUVBEkViQx1SBC6DROC7EWlIZfVReeFWqBYtZV1lmw80uo1I9uQig7UyDUeSz
	ePibgAqH4nWOrSXUOFJ3CIq3AZ6qC8e/Y3gBCtF6If47kBALKFLqAB+La9KMFWA7Ywo7o+rBksTTV
	kygm0K8BINqPpYDDxZb6RW23xvxj79NFyFtuhkVKYeFbRptAENo2uW0L95aJnoerNCskRlidy2Pip
	dnsYEWhuELPWGihc4Bt+mzd9BiptY+I+g3ZC9vzOa29Fbq4V8Fh/A0D9DTq+21FoieCeIm0gO0p1E
	xVcLto0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPjrh-0000000F4m7-1DCR;
	Sat, 07 Nov 2026 17:06:05 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPjrf-0000000F4kl-49jg;
	Sat, 07 Nov 2026 17:06:04 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 8C9F16020A;
	Sat,  7 Nov 2026 17:06:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 991641F008A1;
	Sat,  7 Nov 2026 17:06:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794071162;
	bh=Fe4F4dXUwFtHilALHNjDKqLA8kT583a1m+7DZY5OsBc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=gqBwnHBbT4ltjC04v5T/t2uExKYybCerw9doHxHPyU8ZjB7LhTARzIskVeS1s4LsY
	 niBjboNRR3EEqKstWkSmfEyI0DI/5lK2LS8gZ0SEkSkxuLVvP4IHNTGZ7B0nFdWLdv
	 SriFBZ1beIye7YD1SV6ffuDrMOUZeQ+PsZ4z1Ke03+WZN/bXPee09MrElNMgwPt7tC
	 6WVFnI9qER3+JTIRHSyuIju+QyVvo3w7KszLuVp0koF3g/OG8Jhgnn5EM2Vd6odkRf
	 IH7zZMz0qk0jr5pNVQepPry2IH2nuCl66eMzB0Znga6KdrwqE3+cmFX0Khr5tnl3pr
	 kWsxvBA3mAGVA==
From: Manivannan Sadhasivam <mani@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
 Igor Velkov <iav@iav.lv>
Cc: Rob Herring <robh@kernel.org>, linux-pci@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20261103-rockchip-pcie-async-v1-1-4dcadb94af64@iav.lv>
References: <20261103-rockchip-pcie-async-v1-1-4dcadb94af64@iav.lv>
Subject: Re: [PATCH] PCI: rockchip-host: Enable async probe by default
Message-Id: <179407116151.87338.4711703729751463299.b4-ty@b4>
Date: Sat, 07 Nov 2026 22:36:01 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Mailer: b4 0.16.0
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
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Ck9uIFR1ZSwgMDMgTm92IDIwMjYgMDY6MDc6MzUgKzAwMDAsIElnb3IgVmVsa292IHdyb3RlOgo+
IFRoZSBwcm9iZSB3YWl0cyBmb3IgdGhlIGxpbmsgdG8gY29tZSB1cCwgYW5kIHdpdGggYW4gZW1w
dHkgc2xvdCBpdAo+IGhvbGRzIHRoZSBkZWZlcnJlZC1wcm9iZSB3b3JrZXIgZm9yIGFib3V0IDAu
NyBzLiBPbiBST0NLIFBpIDQgd2l0aAo+IFVIUy1JIGVuYWJsZWQgZm9yIHRoZSBTRCBjYXJkLCB0
aGUgSS9PLWRvbWFpbiBkcml2ZXIgdGhlbiBiaW5kcyBvbmx5Cj4gYWZ0ZXIgdGhlIGNhcmQgaGFz
IHN3aXRjaGVkIHRvIDEuOCBWLCBhbmQgdHVuaW5nIGZhaWxzICgiQWxsIHBoYXNlcwo+IGJhZCEi
KS4KPiAKPiBQcm9iZSBhc3luY2hyb25vdXNseSwgYXMgY29tbWl0IGMwZTFlYjQ0MWIxZCAoIlBD
STogcWNvbTogRW5hYmxlIGFzeW5jCj4gcHJvYmUgYnkgZGVmYXVsdCIpIGRvZXMgZm9yIHRoZSBR
dWFsY29tbSBob3N0IGRyaXZlci4gVGhpcyBkb2VzIG5vdAo+IG9yZGVyIHRoZSBJL08gZG9tYWlu
IGJlZm9yZSBkd19tbWMgaW4gZ2VuZXJhbDsgYW4gZXhwbGljaXQgZGVwZW5kZW5jeQo+IHdhcyBw
cm9wb3NlZCBpbiBbMV0gYW5kIG5vdCBtZXJnZWQuCj4gCj4gWy4uLl0KCkFwcGxpZWQsIHRoYW5r
cyEKClsxLzFdIFBDSTogcm9ja2NoaXAtaG9zdDogRW5hYmxlIGFzeW5jIHByb2JlIGJ5IGRlZmF1
bHQKICAgICAgY29tbWl0OiBhYmM1M2UxNGI1N2FhMjlmYjBlYzgyMmEyYTllYjViMjc5Y2QwNWIw
CgpCZXN0IHJlZ2FyZHMsCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+
4K6a4K6/4K614K6u4K+NCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
