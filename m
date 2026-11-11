Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82044606A31C
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Nov 2026 08:02:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=yoavO3VC;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=hCIlTlgF
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Wi6Gg8Le7c40GJM/0C6xodDAgqrluphwFCW823bXGXY=; b=yoavO3VC6K4WbQX7MpOvqPiLMQ
	YAbK+EsAOP7YZ7sou2+7zHNrCF+RTA54M1SuB7jOQ4qrjJN70rkMHW/cjRL6jk+tOcOGeUF+3YwKa
	HQu/tGF73p/97I9xULjsOGlW/ss9Xr3KT9NkVnzdhL8NZo+S3GTyLrBM3HJd/rk6/Xxhz3R5J9Nnd
	91fJsR8y1wb6s2zvqqfTY5x3a9Q74giJvrmcmPOCwweYtFyvYJYP3qIeAxt6ZX5BtN/JR5KJ0OfVk
	gIMkNObrt7HBUwG/LTL6338sS1aB4nMDy8LxDF0eyWmqISPPe+dm5jq0NCUbGpfpuK/lzlSyTT6S+
	VhpcG/pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR3I1-00000005you-3yIl;
	Wed, 11 Nov 2026 08:02:41 +0000
Received: from mail-m16023653109.xmail.ntesmail.com ([160.236.53.109])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR3Hx-00000005yns-16DG;
	Wed, 11 Nov 2026 08:02:40 +0000
Received: from [172.16.12.48] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 54484c7da;
	Wed, 11 Nov 2026 16:02:32 +0800 (GMT+08:00)
Message-ID: <ea8fa04c-4a8c-4c55-b4fa-f37d74267e93@rock-chips.com>
Date: Wed, 11 Nov 2026 16:02:30 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux.dev, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Simon Xue <xxm@rock-chips.com>, "finley.xiao" <finley.xiao@rock-chips.com>
Subject: Re: [PATCH 0/5] iommu/arm-smmu-v3: power domain and clock of the
 RK3588 PCIe SMMU
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, aiyengar1990@gmail.com,
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 "Joerg Roedel (AMD)" <joro@8bytes.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Niklas Cassel <cassel@kernel.org>
References: <20261110-smmu-v3-pcie-pd-v1-0-628819ca44b9@gmail.com>
 <7e053777-31ee-4127-af53-0820e852d375@rock-chips.com>
 <10924894.NyiUUSuA9g@diego>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <10924894.NyiUUSuA9g@diego>
X-HM-Tid: 0aa1c9a1463a03a4kunm2b6e8798a32d5
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZGk1DQlYYHUNKTR9OSU
	5PH0pWFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSU9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=hCIlTlgFF/kKTXUuZVx/XhX8o7QJdJ+96qL0DuZYrqBXvyGZPtEdoBeK+UO2IOftGEVA1yGcuB+UBEdSIvIcdwHKA4SjzmpOygnm9r+Dem6PagJBcf0HDmlACy3u6ESAGYis6gwxdbHTUhLuAuu4JaNmq1l/tS+DGnRhn5VOxMI=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=Yuxn6nAj6P3P6ckbI3C72QXKUgrDwijmCt+4xPmcvBg=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261111_000237_900529_9CCB2D74 
X-CRM114-Status: GOOD (  16.25  )
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
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgSGVpa28KCuWcqCAyMDI2LzExLzEwIOaYn+acn+S6jCAxNjo0OSwgSGVpa28gU3TDvGJuZXIg
5YaZ6YGTOgo+IEFtIERpZW5zdGFnLCAxMC4gTm92ZW1iZXIgMjAyNiwgMDk6NDA6NDQgTWl0dGVs
ZXVyb3DDpGlzY2hlIE5vcm1hbHplaXQgc2NocmllYiBTaGF3biBMaW46Cj4+IENjOiBTaW1vbiBh
bmQgRmlubGV5Cj4+Cj4+IOWcqCAyMDI2LzExLzEwIOaYn+acn+S6jCAxNToxMSwgQXJ1biBJeWVu
Z2FyIHZpYSBCNCBSZWxheSDlhpnpgZM6Cj4+PiBUaGUgTU1VLTYwMCBpbiBmcm9udCBvZiB0aGUg
UENJZSBjb250cm9sbGVycyBvZiB0aGUgUm9ja2NoaXAgUkszNTg4Cj4+PiAobW11NjAwX3BjaWUp
IGlzIGVuYWJsZWQgZm9yIGV2ZXJ5IFJLMzU4OCBib2FyZCwgYnV0IGl0cyBub2RlIGRlc2NyaWJl
cwo+Pj4gbmVpdGhlciB0aGUgcG93ZXIgZG9tYWluIGl0IGxpdmVzIGluIChSSzM1ODhfUERfUENJ
RSkgbm9yIGl0cyBjbG9jawo+Pj4gKEFDTEtfTU1VX1BDSUUpLiBCb3RoIGFyZSBoZWxkIGJ5IGFu
eSBlbmFibGVkIFBDSWUgY29udHJvbGxlciwgd2hpY2ggaXMKPj4+IHdoeSBub2JvZHkgbm90aWNl
ZDogb24gYSBib2FyZCB0aGF0IGVuYWJsZXMgbm8gUENJZSBjb250cm9sbGVyIGluIHRoYXQKPj4+
IGRvbWFpbiAoYW4gT3JhbmdlIFBpIDUgd2l0aCBpdHMgTS4yIHNsb3QgaW4gU0FUQSBtb2RlLCBv
ciBhbnkgUkszNTg4Cj4+PiBib2FyZCB3aXRob3V0IFBDSWUpLCBnZW5wZCBwb3dlcnMgdGhlIGRv
bWFpbiBvZmYgYW5kIHRoZSBjbG9jayBmcmFtZXdvcmsKPj4+IGdhdGVzIHRoZSBjbG9jayBhcyB1
bnVzZWQgYWZ0ZXIgYm9vdCwgd2hpbGUgYXJtLXNtbXUtdjMgc3RheXMgYm91bmQuCj4+PiBBdCBy
ZWJvb3QsIGFybV9zbW11X2RldmljZV9zaHV0ZG93bigpIHRoZW4gd3JpdGVzIENSMCBhbmQgcG9s
bHMgQ1IwQUNLIG9uCj4+PiB0aGUgZGVhZCBibG9jaywgdGhlIGludGVyY29ubmVjdCBzdGFsbHMs
ICJyZWJvb3Q6IFJlc3RhcnRpbmcgc3lzdGVtIiBpcwo+Pj4gbmV2ZXIgcmVhY2hlZCBhbmQgdGhl
IGJvYXJkIG9ubHkgY29tZXMgYmFjayB+OTAgcyBsYXRlciB3aGVuIHRoZQo+Pj4gd2F0Y2hkb2cg
ZmlyZXMuCj4gCj4gV2UgaGF2ZSBhIHdvcmstYXJvdW5kIGZvciB0aGF0IGluIHNvbWUgYm9hcmRz
LCBtYW51YWxseSBkaXNhYmxpbmcgdGhlCj4gc21tdSB1bnRpbCBub3cuIEFzIHRoZSBTTU1VIGlz
IHBhcnQgb2YgdGhlIFNvQyBhbmQgYWx3YXlzIHByZXNlbnQKPiB0aGUgZ2VuZXJhbCBEVCBwcmFj
dGljZSBpcyB0byBoYXZlIGl0IGFsd2F5cyBlbmFibGVkLCBhcyBpdCBkb2VzIG5vdAo+IGRlcGVu
ZCBvbiB0aGUgYWN0dWFsIGJvYXJkIGRlc2lnbi4KPiAKPiBIZW5jZSB3ZSBlbmQgdXAgaW4gdGhl
IHNpdHVhdGlvbiBkZXNjcmliZWQgYWJvdmUuCj4gCgpJIG5vdGljZSB0aGF0IG1tdTYwMF9waHAg
aXMgZGlzYWJsZWQgaW4gcmszNTg4LWJhc2UuZHRzaS4gSWYgZGVzY3JpYmluZwp0aGUgU01NVSB0
aGF0IHdheSBpcyBpbmNvcnJlY3QsIHNob3VsZCB3ZSBlbmFibGUgbW11NjAwX3BocCBhcyB3ZWxs
PyBJJ20KYXNraW5nIGJlY2F1c2UgSSBzZWUgYSBkaWZmZXJlbnQgcGljdHVyZSBpbiB0aGUgUksz
NTg4IFRSTTogYm90aAptbXU2MDBfcGhwIGFuZCBtbXU2MDBfcGNpZSByZXNpZGUgdW5kZXIgUERf
UEhQLCBub3QgUERfUENJRS4gVGhlcmVmb3JlLApldmVuIHdpdGhvdXQgYW55IFBDSWUgY29udHJv
bGxlciBlbmFibGVkLCBQRF9QSFAgc2hvdWxkIHJlbWFpbiBwb3dlcmVkCm9uIChpdCBpcyBuZXZl
ciBhZGRlZCBpbiByazM1ODgtYmFzZS5kdHNpLCBzbyBpdCBzaG91bGQgYmUgb3V0c2lkZSB0aGUK
a2VybmVs4oCZcyBzY29wZSkuIEhvdyBkb2VzIHRoZSBvcmlnaW5hbCBwcm9ibGVtIG9jY3VyIGlu
IHRoYXQgY2FzZT8KCj4gU28gdGhpcyBzZXJpZXMgZml4ZXMgdGhlIGFjdHVhbCB1bmRlcmx5aW5n
IHByb2JsZW0sIG1ha2luZyB0aGVzZQo+IHdvcmthcm91bmRzIHVubmVjZXNzYXJ5IGluIHRoZSBm
dXR1cmUgOi0pCj4gCj4gCj4gU28gZGVmaW5pdGx5IHRoYW5rcyBhIGxvdAo+IEhlaWtvCj4gCj4g
Cj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
