Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DDBBC61DB2
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jun 2025 22:48:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w/Jt9KPQGLWu/nQCMxGR7Flj2L5RFrJmpk++fhSk43s=; b=ht6l4+BSFWUtg3
	T4ZaXLlblWV5qZdAHf/GEMi6Rn5EknAttkWTaS7BAv46/kIAoVBojEJ9s5mkU4Jrwizb+V2t97nGo
	fBtzEGFwUm9bh6QkKGT/TiSBQm9jUBI61iJepz+19j+V17dFXKESagO9QpciCm4qEl7ffhun0QH4c
	cmKAHi8w5DamiX7vPDeco/kdn6ECpeANnFXyzdVo6/qVo+dew/cn3ZGzM134xUIQDxw4qrD5hu3Bw
	n7nKWKNPBI1QYrAgmGmxebCm4lcoABq2ZFdIkPgRIuVDgRFs7cIde9q5HVauhwqrmbET2fPNhSYuH
	ZoPTMp1TmeE9zVJbrklg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uP7lX-00000008FFz-3RPE;
	Tue, 10 Jun 2025 22:48:23 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uP3ZM-00000007mZ5-1kaD;
	Tue, 10 Jun 2025 18:19:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1749579569;
	bh=Sf+/PTs/Lz5YxcSzgeZ6krRCOhaKZUsHSbB6B664SQM=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=W1JWv9KpviFteALr6LtWRjuNi/DB62SY7Z7oPEpnHgI/4Lfy85z1VLQ+27tsGhOxY
	 vRxxj/L5s8IpBFHQuyOPcflvF7qUr87yiWLTk9ezT/TWxhfODcCbJIh34EPjqKGM3h
	 wrDIld7ZbHxppg0CNIkKJkh2h7ioXurEzICh4rsVOGu8shQgfzrRPxXym+8iqz1Gcc
	 d6QC7gHCDkaxNsqQggPfMPbkoXAI4w417r4SV+ituO8JQjEynKMllEBoQ9zoLGkfAa
	 9emBbI3vCLjLtvkCek1B6kkL/ZpMXmcjeoaOoQxGLD1lKy0Wbknxog7jm7VJj9RnSf
	 g/Y2ednB6sYtw==
Received: from [172.19.207.65] (unknown [66.205.13.70])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id E891C17E0FAD;
	Tue, 10 Jun 2025 20:19:09 +0200 (CEST)
Message-ID: <c666ab1bbc619cbb99fa38b96891a24ca22c9672.camel@collabora.com>
Subject: Re: [RFC PATCH 00/11] VC8000E H.264 V4L2 Stateless Encoder
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Marco Felsch <m.felsch@pengutronix.de>, benjamin.gaignard@collabora.com,
 	p.zabel@pengutronix.de, mchehab@kernel.org, shawnguo@kernel.org, Sascha
 Hauer	 <s.hauer@pengutronix.de>, kernel@pengutronix.de, festevam@gmail.com,
 	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 paulk@sys-base.io, 	hverkuil@xs4all.nl, laurent.pinchart@ideasonboard.com, 
	sebastian.fricke@collabora.com, ming.qian@nxp.com
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Date: Tue, 10 Jun 2025 14:19:02 -0400
In-Reply-To: <20250502150513.4169098-1-m.felsch@pengutronix.de>
References: <20250502150513.4169098-1-m.felsch@pengutronix.de>
Organization: Collabora Canada
User-Agent: Evolution 3.56.2 (3.56.2-1.fc42) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250610_111932_616223_E9477443 
X-CRM114-Status: GOOD (  12.30  )
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

SGkgTWFyY28sCgoKTGUgdmVuZHJlZGkgMDIgbWFpIDIwMjUgw6AgMTc6MDUgKzAyMDAsIE1hcmNv
IEZlbHNjaCBhIMOpY3JpdAo+IAo+IFsxXSBodHRwczovL2dpdGh1Yi5jb20vYm9vdGxpbi9saW51
eC90cmVlL2hhbnRyby9oMjY0LWVuY29kaW5nLXY1LjExCj4gWzJdIGh0dHBzOi8vZ2l0bGFiLmZy
ZWVkZXNrdG9wLm9yZy9kdWRlL2dzdHJlYW1lci8tL3RyZWUvaDI2NC1zdGF0ZWxlc3MtZW5jb2Rl
cgoKQ2FuIHlvdSByZWJhc2UgYWdhaW5zdCB0aGUgdXBzdHJlYW0gd29yazoKCmh0dHBzOi8vZ2l0
bGFiLmZyZWVkZXNrdG9wLm9yZy9nc3RyZWFtZXIvZ3N0cmVhbWVyLy0vbWVyZ2VfcmVxdWVzdHMv
NTY3NgoKQSBsb3Qgb2YgY2hhbmdlcyBNaWNoYWVsIG1hZGUgaW4geW91ciBicmFuY2ggYXJlIGFs
cmVhZHkgaW4gdGhlIHVwc3RyZWFtIE1SCmJyYW5jaC4gQW4gZXhhbXBsZSwgaW4gdGhlIHVwc3Ry
ZWFtIHZlcnNpb24sIHRoZSBzcmMgcGFkIChDQVBUVVJFKSBpcyBhbHJlYWR5CmJlaW5nIHNldCBi
ZWZvcmUgdGhlIHNpbmsgcGFkIChPVVRQVVQpLgoKSSdkIGxpa2UgdG8gb3BlbiB0aGUgZGlzY3Vz
c2lvbiBhYm91dCBzaXplcywgYXMgSSdtIHdyaXRpbmcgdGhpbmdzIGRvd24uCkluIHlvdXIgbW9k
aWZpY2F0aW9uLCB5b3UgYWZmaXJtIHRoYXQgdGhlIGVuY29kZXIgbXVzdCBpZ25vcmUgdGhlIHNp
emUKc2V0IG9uIHRoZSBDQVBUVVJFLiBBdCB0aGUgbW9tZW50IEkgdGVuZCB0byBkaXNhZ3JlZSB3
aXRoIHRoaXMKaW50ZXJwcmV0YXRpb24gYW5kIHdvdWxkIGxpa2Ugc29tZSBmZWVkYmFjay4KClRo
ZXJlIGlzIGNvdXBsZSBvZiBkaWZmZXJlbnQgc2l6ZXMgd2UnbGwgaGF2ZSB0byBzdXBwb3J0OgoK
MS4gQWxsb2NhdGlvbiBzaXplcwoyLiBjb2RlZCBzaXplCjMuIGRpc3BsYXkgc2l6ZQoKTXkgYmVs
aWV2ZSBpcyB0aGF0IHdlIHdhbnQgdG8gc3BsaXQgdGhlIHNpemUgaW4gMSBhbmQgMiBzaW5jZSB0
aGUgcGFkZGluZwphZGRlZCB0byB0aGUgYWxsb2NhdGVkIHNpemUgc2hvdWxkIG5vdCBhZmZlY3Qg
dGhlIGFtb3VudCBvZiBiaXRzIHRoYXQgd2lsbApiZSBjb21wcmVzc2VkLiBXZSBzaG91bGQgYmUg
YWJsZSB0byBmdXJ0aGVyIHBhZCBmcmFtZXMgd2l0aG91dCBpbmNyZWFzaW5nCnRoZSBjb21wcmVz
c2VkIHNpemUuCgpGb3IgdGhpcywgSSB3YW50ZWQgdG8gbWltaWMgdGhlIHN0YXRlbGVzcyBkZWNv
ZGVycywgYW5kIGRlZmluZSB0aGUgY29kZWQKc2l6ZSwgdGhlIG9uZSB0aGF0IG9jY3VweSBzcGFj
ZSBpbiB0aGUgYml0c3RyZWFtIGFuZCBmb3VuZCBpbiB0aGUgc2VxdWVuY2UKaGVhZGVycyB0byBt
YXRjaCB0aGUgQ0FUUFVSRSBzaXplLgoKMy4gZG9lcyBub3QgZXhpc3RzIGluIHN0YXRlbGVzcyBk
ZWNvZGVycywgc2luY2UgaXQgaGFzIG5vIGltcGxpY2F0aW9uCmluIHRoZSBkZWNvZGluZyBwcm9j
ZXNzLiBUaGlzIG9uZSBJJ2xsIGxlYXZlIG9wZW4gZm9yIG5vdywgc2luY2UgaXRzCm9ubHkgbmVl
ZGVkIGlmIHdlIGhhdmUgdG8gZ2VuZXJhdGUgc29tZSBoZWFkZXJzIGluIHRoZSBrZXJuZWwuIFdl
IGhhdmUKaGFkIGEgbG90IG9mIGRpc2N1c3Npb24gdG93YXJkIHRoYXQsIGFuZCBpZiBzbywgSSB3
aWxsIHB1bGwgaW4gdGhlCnVzZSBvZiBTX1NFTEVDVElPTi4KCnJlZ2FyZHMsCk5pY29sYXMKCiAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
