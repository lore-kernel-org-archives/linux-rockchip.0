Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58077606A32E
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Nov 2026 06:54:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=J7vaI4Oj;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=ZXmX7RJK
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=eEKdCadcSKGYJ8g1WU3X+ECrsWoeMQgi3zrWSWRR50M=; b=J7vaI4OjkxqAYKNWsOChfqoEwV
	G+GbW0ROAQbehhXcfS1xzPIOj9jIm/MO9UVxG+uxMseIxtRvt8W1J89MdJMla53VpI16oKYozTKbW
	n9ficDsEaQT76OhXQ4IheSMhcgqjF5nzAOXkV/wXcNJOWvBbk42vHx1OAISTdtX5NS709DP/3B1qE
	2ZtDqOC36t/Tx/LVoFMuNFbqGyANcZE1Jjp/mqlrdWAVRKGwH0TjFk09RL4656igvQ6pw+JI9xvAU
	y6mpO9rFFeoPV4mfGHc2unFsZCVtK+RlEDFYlgiJG+4zPUxV3vWhCDZmAeou8sELsEwM3xQnLP3OS
	Fh5+q02A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR2Db-00000005pSE-3dwh;
	Wed, 11 Nov 2026 06:54:03 +0000
Received: from mail-m6050.netease.com ([210.79.60.50])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR2DY-00000005pQl-2xDj;
	Wed, 11 Nov 2026 06:54:02 +0000
Received: from [172.16.12.48] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 544548e9e;
	Wed, 11 Nov 2026 14:53:54 +0800 (GMT+08:00)
Message-ID: <21a44f7b-e33c-4feb-a6ba-6d08bc796606@rock-chips.com>
Date: Wed, 11 Nov 2026 14:53:52 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux.dev, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 "finley.xiao" <finley.xiao@rock-chips.com>
Subject: Re: [PATCH 4/5] arm64: dts: rockchip: add the PCIe power domain to
 the RK3588 PCIe SMMU
To: aiyengar1990@gmail.com, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, "Joerg Roedel (AMD)" <joro@8bytes.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Niklas Cassel <cassel@kernel.org>
References: <20261110-smmu-v3-pcie-pd-v1-0-628819ca44b9@gmail.com>
 <20261110-smmu-v3-pcie-pd-v1-4-628819ca44b9@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20261110-smmu-v3-pcie-pd-v1-4-628819ca44b9@gmail.com>
X-HM-Tid: 0aa1c962725603a4kunmb3379dd7965f5
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCT0pJVh0aGUJMSE5CQk5OHlYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=ZXmX7RJKYwKpIGWxpcLGSdUNUfljyXvYiUtUbnsd6Phb8U97ZPSlESLvBbJzV8hWLtqOLLINOhn9P6waG42+wYWblD1kQZXqhbC50WlpggnfPocO8Xuj/NTbo3b2d0qqYsy7f9rFLq9MUTPEl7lBAdF+V7UrJIHQskw2aZytPko=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=GkcCvQ0Cm1Qyej4YW35+cOV6C99poT4s5onAksaynHE=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_225401_371683_A5171BA5 
X-CRM114-Status: GOOD (  17.29  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgQXJ1bgoK5ZyoIDIwMjYvMTEvMTAg5pif5pyf5LqMIDE1OjExLCBBcnVuIEl5ZW5nYXIgdmlh
IEI0IFJlbGF5IOWGmemBkzoKPiBGcm9tOiBBcnVuIEl5ZW5nYXIgPGFpeWVuZ2FyMTk5MEBnbWFp
bC5jb20+Cj4gCj4gVGhlIE1NVS02MDAgZm9yIHRoZSBQQ0llIGNvbnRyb2xsZXJzIChtbXU2MDBf
cGNpZSkgaXMgZW5hYmxlZCBmb3IgZXZlcnkKPiBSSzM1ODggYm9hcmQsIGJ1dCBpdHMgbm9kZSBk
b2VzIG5vdCBkZXNjcmliZSB0aGF0IGl0IGxpdmVzIGluCj4gUkszNTg4X1BEX1BDSUUuIEl0IG9u
bHkgd29ya3MgdG9kYXkgYmVjYXVzZSBURi1BIGxlYXZlcyB0aGUgZG9tYWluIG9uIGF0Cj4gYm9v
dCBhbmQsIG9uIG1vc3QgYm9hcmRzLCBhbiBlbmFibGVkIFBDSWUgY29udHJvbGxlciBob2xkcyBp
dCBvbiBsYXRlci4KPiAKPiBPbiBhIGJvYXJkIHRoYXQgZGlzYWJsZXMgYWxsIFBDSWUgY29udHJv
bGxlcnMgdXNpbmcgdGhhdCBkb21haW4gKHRoZQo+IE9yYW5nZSBQaSA1IHdpdGggaXRzIE0uMiBz
bG90IGluIFNBVEEgbW9kZSBpcyBvbmUpLCBnZW5wZCBwb3dlcnMKPiBQRF9QQ0lFIG9mZiBhcyB1
bnVzZWQgYWZ0ZXIgYm9vdCB3aGlsZSBhcm0tc21tdS12MyBpcyBzdGlsbCBib3VuZC4gVGhlbgo+
IGF0IHJlYm9vdCBhcm1fc21tdV9kZXZpY2Vfc2h1dGRvd24oKSB3cml0ZXMgQ1IwIGFuZCBwb2xs
cyBDUjBBQ0sgb24gdGhlCj4gdW5wb3dlcmVkIGJsb2NrLCB3aGljaCBzdGFsbHMgdGhlIGJ1czog
dGhlIGtlcm5lbCBuZXZlciByZWFjaGVzCj4gInJlYm9vdDogUmVzdGFydGluZyBzeXN0ZW0iIGFu
ZCB0aGUgYm9hcmQgb25seSBjb21lcyBiYWNrIG9uY2UgdGhlCj4gd2F0Y2hkb2cgZmlyZXMuCj4g
Cj4gRGVzY3JpYmUgdGhlIHBvd2VyIGRvbWFpbiwgc28gZ2VucGQga2VlcHMgaXQgb24gZm9yIGFz
IGxvbmcgYXMgdGhlIFNNTVUKPiBpcyBib3VuZC4KPiAKPiBGaXhlczogZGE5MmQzZGZjODcxICgi
YXJtNjQ6IGR0czogcm9ja2NoaXA6IGVuYWJsZSB0aGUgbW11NjAwX3BjaWUgSU9NTVUgb24gdGhl
IHJrMzU4OCBTb0MiKQo+IFNpZ25lZC1vZmYtYnk6IEFydW4gSXllbmdhciA8YWl5ZW5nYXIxOTkw
QGdtYWlsLmNvbT4KPiAtLS0KPiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4
LWJhc2UuZHRzaSB8IDEgKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4gCj4g
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWJhc2UuZHRz
aSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWJhc2UuZHRzaQo+IGluZGV4
IGFhNjlmZDM3OTNmZC4uYmNkMzQyYzAyNWM5IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszNTg4LWJhc2UuZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTg4LWJhc2UuZHRzaQo+IEBAIC01NjAsNiArNTYwLDcgQEAgbW11NjAw
X3BjaWU6IGlvbW11QGZjOTAwMDAwIHsKPiAgIAkJCSAgICAgPEdJQ19TUEkgMzY3IElSUV9UWVBF
X0VER0VfUklTSU5HIDA+Owo+ICAgCQlpbnRlcnJ1cHQtbmFtZXMgPSAiZXZlbnRxIiwgImdlcnJv
ciIsICJwcmlxIiwgImNtZHEtc3luYyI7Cj4gICAJCSNpb21tdS1jZWxscyA9IDwxPjsKPiArCQlw
b3dlci1kb21haW5zID0gPCZwb3dlciBSSzM1ODhfUERfUENJRT47CgpBcyBSSzM1ODggVFJNIFRh
YmxlIDcuMSBkZXNyaWJlcywgYm90aCBvZiBtbXU2MDBfcGNpZSBhbmQKbW11NjAwX3BocCBsaXZl
IHVuZGVyIFBEX1BIUC4KCj4gICAJfTsKPiAgIAo+ICAgCW1tdTYwMF9waHA6IGlvbW11QGZjYjAw
MDAwIHsKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
