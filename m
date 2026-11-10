Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B783606A325
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Nov 2026 08:49:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=EpVmF7nq;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=KZ7GbPpj
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=/FsanozF0VSTKOqc7AIu43lRs/ZwKXmNCwe/7Bg4fVo=; b=EpVmF7nq800AB6OO0H4uhVmjoV
	gLlpSOp4P07jy/NIccpIn52SkWT9IWxzn5CnJ/KhZFy5Qt2kd677aox9+4vcWhx7f3K520zIW+CG2
	tNg9hiK6tdgxpQrJz4AszVYmyusXUM+x4PvZZUcnkX8T5PQ7vMCKR9jyFlj3sASoFHfp0X3ddpgEE
	J0z9kBs5cNEIMZZASSol/pwBpr+sEQ+9SJ45veW6td2tHLQPhPfy6eQyCHa2SYBJqo8Gh83t9p/cu
	+hu/lsqQumYcDHxOzHmL6bzMN32p5vu4HrqHEniePUUKhmorO7Tl2HK9BrqDR6nxfPSy/V9p6qb9P
	qXrsJh4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQhXw-00000003Af6-30WX;
	Tue, 10 Nov 2026 08:49:40 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQhXu-00000003AeI-1n8p;
	Tue, 10 Nov 2026 08:49:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=aHn8KcgHhLcXL95P9INTAmVAeZpvAJPCq7Suu5pEHwk=; b=KZ7GbPpjr8rhjj9TeCSN3isJMo
	4d122GgaAflfPr6ZO4ozp74l8SzqGjVsu5H6TFM2vMhzmL0KHht4wMTwld3FIKNZ8RCqHqHs4jcgV
	v83dvQpMXC0J35H4CocMuWLe3GQWQip4RgxB9bd28fy1oU+bREnQbTP6s89Rxpecyd3teH+M5USVw
	ZhnyQ/EhBeB8TNton7OX7iwnUvu+OQeTaHKe12xysLOnzjUoTwOovZI5eCPjfEW3Tjn10GDXQjiUk
	sMmsr7Jx78SnG58k0FIX2G0gYSMFPfijeXJxkR4cFyERpEqF35KcnYXRp1JFGQaq61Ii8HYqvm/vU
	7OtWoU3A==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: aiyengar1990@gmail.com, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, "Joerg Roedel (AMD)" <joro@8bytes.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Niklas Cassel <cassel@kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>
Cc: shawn.lin@rock-chips.com, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux.dev, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Simon Xue <xxm@rock-chips.com>, "finley.xiao" <finley.xiao@rock-chips.com>
Subject: Re: [PATCH 0/5] iommu/arm-smmu-v3: power domain and clock of the RK3588 PCIe
 SMMU
Date: Tue, 10 Nov 2026 09:49:29 +0100
Message-ID: <10924894.NyiUUSuA9g@diego>
In-Reply-To: <7e053777-31ee-4127-af53-0820e852d375@rock-chips.com>
References: <20261110-smmu-v3-pcie-pd-v1-0-628819ca44b9@gmail.com>
 <7e053777-31ee-4127-af53-0820e852d375@rock-chips.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_004938_491668_E73A44C2 
X-CRM114-Status: GOOD (  15.69  )
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
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

QW0gRGllbnN0YWcsIDEwLiBOb3ZlbWJlciAyMDI2LCAwOTo0MDo0NCBNaXR0ZWxldXJvcMOkaXNj
aGUgTm9ybWFsemVpdCBzY2hyaWViIFNoYXduIExpbjoKPiBDYzogU2ltb24gYW5kIEZpbmxleQo+
IAo+IOWcqCAyMDI2LzExLzEwIOaYn+acn+S6jCAxNToxMSwgQXJ1biBJeWVuZ2FyIHZpYSBCNCBS
ZWxheSDlhpnpgZM6Cj4gPiBUaGUgTU1VLTYwMCBpbiBmcm9udCBvZiB0aGUgUENJZSBjb250cm9s
bGVycyBvZiB0aGUgUm9ja2NoaXAgUkszNTg4Cj4gPiAobW11NjAwX3BjaWUpIGlzIGVuYWJsZWQg
Zm9yIGV2ZXJ5IFJLMzU4OCBib2FyZCwgYnV0IGl0cyBub2RlIGRlc2NyaWJlcwo+ID4gbmVpdGhl
ciB0aGUgcG93ZXIgZG9tYWluIGl0IGxpdmVzIGluIChSSzM1ODhfUERfUENJRSkgbm9yIGl0cyBj
bG9jawo+ID4gKEFDTEtfTU1VX1BDSUUpLiBCb3RoIGFyZSBoZWxkIGJ5IGFueSBlbmFibGVkIFBD
SWUgY29udHJvbGxlciwgd2hpY2ggaXMKPiA+IHdoeSBub2JvZHkgbm90aWNlZDogb24gYSBib2Fy
ZCB0aGF0IGVuYWJsZXMgbm8gUENJZSBjb250cm9sbGVyIGluIHRoYXQKPiA+IGRvbWFpbiAoYW4g
T3JhbmdlIFBpIDUgd2l0aCBpdHMgTS4yIHNsb3QgaW4gU0FUQSBtb2RlLCBvciBhbnkgUkszNTg4
Cj4gPiBib2FyZCB3aXRob3V0IFBDSWUpLCBnZW5wZCBwb3dlcnMgdGhlIGRvbWFpbiBvZmYgYW5k
IHRoZSBjbG9jayBmcmFtZXdvcmsKPiA+IGdhdGVzIHRoZSBjbG9jayBhcyB1bnVzZWQgYWZ0ZXIg
Ym9vdCwgd2hpbGUgYXJtLXNtbXUtdjMgc3RheXMgYm91bmQuCj4gPiBBdCByZWJvb3QsIGFybV9z
bW11X2RldmljZV9zaHV0ZG93bigpIHRoZW4gd3JpdGVzIENSMCBhbmQgcG9sbHMgQ1IwQUNLIG9u
Cj4gPiB0aGUgZGVhZCBibG9jaywgdGhlIGludGVyY29ubmVjdCBzdGFsbHMsICJyZWJvb3Q6IFJl
c3RhcnRpbmcgc3lzdGVtIiBpcwo+ID4gbmV2ZXIgcmVhY2hlZCBhbmQgdGhlIGJvYXJkIG9ubHkg
Y29tZXMgYmFjayB+OTAgcyBsYXRlciB3aGVuIHRoZQo+ID4gd2F0Y2hkb2cgZmlyZXMuCgpXZSBo
YXZlIGEgd29yay1hcm91bmQgZm9yIHRoYXQgaW4gc29tZSBib2FyZHMsIG1hbnVhbGx5IGRpc2Fi
bGluZyB0aGUKc21tdSB1bnRpbCBub3cuIEFzIHRoZSBTTU1VIGlzIHBhcnQgb2YgdGhlIFNvQyBh
bmQgYWx3YXlzIHByZXNlbnQKdGhlIGdlbmVyYWwgRFQgcHJhY3RpY2UgaXMgdG8gaGF2ZSBpdCBh
bHdheXMgZW5hYmxlZCwgYXMgaXQgZG9lcyBub3QKZGVwZW5kIG9uIHRoZSBhY3R1YWwgYm9hcmQg
ZGVzaWduLgoKSGVuY2Ugd2UgZW5kIHVwIGluIHRoZSBzaXR1YXRpb24gZGVzY3JpYmVkIGFib3Zl
LgoKU28gdGhpcyBzZXJpZXMgZml4ZXMgdGhlIGFjdHVhbCB1bmRlcmx5aW5nIHByb2JsZW0sIG1h
a2luZyB0aGVzZQp3b3JrYXJvdW5kcyB1bm5lY2Vzc2FyeSBpbiB0aGUgZnV0dXJlIDotKQoKClNv
IGRlZmluaXRseSB0aGFua3MgYSBsb3QKSGVpa28KCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
