Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08928606A33B
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Nov 2026 08:41:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=hfO2xYuk;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=Ub1Vz6pg
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=EKC9h0iV5Pm1hCDb1vbks9fU+7PwMzTQIY2EqitTfgs=; b=hfO2xYukCGLK5LZXDny2rFftM8
	iKMMN/sb2J9A1YI6R4T/bBlQkPAruRwMly8LOksTfLPLkPYFk8ll3eu5d7meTHRXuMbIVjUKYOh9J
	0MoIL561SmJhjLfD7kZF+SX8uoCirxa7vEnwn3aUad59xGfdRBviAFHIdveusf6bPbVlvXvm6L00z
	MupZVKg8bUVkrLNNn+d2FLKYsJhizu1hPvngCjshA/x7IXc/JFZlxUoTbDQhPgp8dzK2TvMfqqVO2
	R39wY0eMEYn1Ah8isgA/RQZNcYWD3P/VqGIb98zbPWOVEUpVWUNHZLXRa3k9PIvjLAADQz2xNT3Hb
	MyYuRkrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQhPX-0000000392n-1zmx;
	Tue, 10 Nov 2026 08:40:59 +0000
Received: from mail-m1085.netease.com ([154.81.10.85])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQhPT-0000000390Y-3Vob;
	Tue, 10 Nov 2026 08:40:59 +0000
Received: from [172.16.12.48] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 5423d7e15;
	Tue, 10 Nov 2026 16:40:46 +0800 (GMT+08:00)
Message-ID: <7e053777-31ee-4127-af53-0820e852d375@rock-chips.com>
Date: Tue, 10 Nov 2026 16:40:44 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux.dev, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Simon Xue <xxm@rock-chips.com>, "finley.xiao" <finley.xiao@rock-chips.com>
Subject: Re: [PATCH 0/5] iommu/arm-smmu-v3: power domain and clock of the
 RK3588 PCIe SMMU
To: aiyengar1990@gmail.com, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, "Joerg Roedel (AMD)" <joro@8bytes.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Niklas Cassel <cassel@kernel.org>
References: <20261110-smmu-v3-pcie-pd-v1-0-628819ca44b9@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20261110-smmu-v3-pcie-pd-v1-0-628819ca44b9@gmail.com>
X-HM-Tid: 0aa1c49deb4a03a4kunme182f695684554
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkaTxgYVk8dSRkfTh5OTx9ITFYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=Ub1Vz6pg4k6UDZWkqzesWeqUcDzAnME4g7qqjqvvetdVS/Ss/SwQXxpNyBNYMdrUu/8p/ufPvd5dmdHK4QSGnWfq3IjAecSeG3pCLk7ElJpWWcjAWfAbiW1rMa5gcgNzalcqvN8CF4cWUxh29xpvhKY4L5PyMUWV01V2VvR56Bg=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=2tnTx+Y1fIgKicxn0toiFZfZX4oNt2OFXzdiYm7aVCA=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_004057_246488_862DEF63 
X-CRM114-Status: GOOD (  26.25  )
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

Q2M6IFNpbW9uIGFuZCBGaW5sZXkKCuWcqCAyMDI2LzExLzEwIOaYn+acn+S6jCAxNToxMSwgQXJ1
biBJeWVuZ2FyIHZpYSBCNCBSZWxheSDlhpnpgZM6Cj4gVGhlIE1NVS02MDAgaW4gZnJvbnQgb2Yg
dGhlIFBDSWUgY29udHJvbGxlcnMgb2YgdGhlIFJvY2tjaGlwIFJLMzU4OAo+IChtbXU2MDBfcGNp
ZSkgaXMgZW5hYmxlZCBmb3IgZXZlcnkgUkszNTg4IGJvYXJkLCBidXQgaXRzIG5vZGUgZGVzY3Jp
YmVzCj4gbmVpdGhlciB0aGUgcG93ZXIgZG9tYWluIGl0IGxpdmVzIGluIChSSzM1ODhfUERfUENJ
RSkgbm9yIGl0cyBjbG9jawo+IChBQ0xLX01NVV9QQ0lFKS4gQm90aCBhcmUgaGVsZCBieSBhbnkg
ZW5hYmxlZCBQQ0llIGNvbnRyb2xsZXIsIHdoaWNoIGlzCj4gd2h5IG5vYm9keSBub3RpY2VkOiBv
biBhIGJvYXJkIHRoYXQgZW5hYmxlcyBubyBQQ0llIGNvbnRyb2xsZXIgaW4gdGhhdAo+IGRvbWFp
biAoYW4gT3JhbmdlIFBpIDUgd2l0aCBpdHMgTS4yIHNsb3QgaW4gU0FUQSBtb2RlLCBvciBhbnkg
UkszNTg4Cj4gYm9hcmQgd2l0aG91dCBQQ0llKSwgZ2VucGQgcG93ZXJzIHRoZSBkb21haW4gb2Zm
IGFuZCB0aGUgY2xvY2sgZnJhbWV3b3JrCj4gZ2F0ZXMgdGhlIGNsb2NrIGFzIHVudXNlZCBhZnRl
ciBib290LCB3aGlsZSBhcm0tc21tdS12MyBzdGF5cyBib3VuZC4KPiBBdCByZWJvb3QsIGFybV9z
bW11X2RldmljZV9zaHV0ZG93bigpIHRoZW4gd3JpdGVzIENSMCBhbmQgcG9sbHMgQ1IwQUNLIG9u
Cj4gdGhlIGRlYWQgYmxvY2ssIHRoZSBpbnRlcmNvbm5lY3Qgc3RhbGxzLCAicmVib290OiBSZXN0
YXJ0aW5nIHN5c3RlbSIgaXMKPiBuZXZlciByZWFjaGVkIGFuZCB0aGUgYm9hcmQgb25seSBjb21l
cyBiYWNrIH45MCBzIGxhdGVyIHdoZW4gdGhlCj4gd2F0Y2hkb2cgZmlyZXMuCj4gCj4gUGF0Y2hl
cyAxIGFuZCAyIGFsbG93IHBvd2VyLWRvbWFpbnMgYW5kIGNsb2NrcyBpbiB0aGUgYXJtLHNtbXUt
djMKPiBiaW5kaW5nIChhcm0sc21tdS55YW1sIGFscmVhZHkgYWxsb3dzIGJvdGggZm9yIHRoZSBl
YXJsaWVyIFNNTVVzKS4KPiBQYXRjaCAzIG1ha2VzIHRoZSBkcml2ZXIgZ2V0IGFuZCBlbmFibGUg
dGhlIGNsb2NrcyBvZiBpdHMgZmlybXdhcmUgbm9kZQo+IGJlZm9yZSB0aGUgZmlyc3QgcmVnaXN0
ZXIgYWNjZXNzLCBmb3IgYXMgbG9uZyBhcyBpdCBpcyBib3VuZDsgbm9kZXMKPiB3aXRob3V0IGNs
b2NrcyAoYW5kIEFDUEkvSU9SVCBzeXN0ZW1zKSBhcmUgdW5hZmZlY3RlZC4gUGF0Y2hlcyA0IGFu
ZCA1Cj4gZGVzY3JpYmUgdGhlIHBvd2VyIGRvbWFpbiBhbmQgdGhlIGNsb2NrIGluIHJrMzU4OC1i
YXNlLmR0c2kuIEJvdGggRFQKPiBwYXRjaGVzIGFyZSBuZWVkZWQ6IHdpdGggdGhlIHBvd2VyIGRv
bWFpbiBhbG9uZSB0aGUgY2xvY2sgaXMgc3RpbGwKPiBnYXRlZCBhbmQgdGhlIHNodXRkb3duIHN0
aWxsIGhhbmdzLgo+IAo+IFJlbGF0ZWQ6IFByYW5qYWwgU2hyaXZhc3RhdmEncyAiaW9tbXUvYXJt
LXNtbXUtdjM6IEFkZCBydW50aW1lIFBNCj4gc3VwcG9ydCIgdjExICgyMDI2LTA5LTI5LCAyMDI2
MDkyOTAzNDUxMC4yMDIzMTczLTEtcHJhYW5AZ29vZ2xlLmNvbSwKPiBub3QgbWVyZ2VkKSBhZGRz
IHBtX2RvbWFpbi1iYXNlZCBydW50aW1lIFBNIGFuZCByZXN1bWVzIHRoZSBTTU1VIGFyb3VuZAo+
IHNodXRkb3duLCBidXQgaGFzIG5vIGNsb2NrIGhhbmRsaW5nLiBUaGlzIHNlcmllcyBpcyBjb21w
YXRpYmxlIHdpdGggaXQ6Cj4gb25jZSBpdCBsYW5kcywgdGhlIGNsb2NrcyBmcm9tIHBhdGNoIDMg
c2hvdWxkIG1vdmUgaW50byBpdHMgcnVudGltZQo+IHN1c3BlbmQvcmVzdW1lIGNhbGxiYWNrcy4K
PiAKPiBUZXN0ZWQgb24gYW4gT3JhbmdlIFBpIDUgKFJLMzU4OFMpIHdpdGggdGhlIE0uMiBzbG90
IGluIFNBVEEgbW9kZSBhbmQKPiB0aGUgcm9vdCBmaWxlc3lzdGVtIG9uIHRoZSBTQVRBIFNTRCwg
d2hlcmUgZXZlcnkgcmVib290IHVzZWQgdG8gaGFuZzoKPiB0aHJlZSBjb25zZWN1dGl2ZSByZWJv
b3RzIHByaW50ZWQgInJlYm9vdDogUmVzdGFydGluZyBzeXN0ZW0iIGFuZCB0aGUKPiBib290IGxv
YWRlciBzdGFydGVkIDAuNiBzIGxhdGVyIChwcmV2aW91c2x5IH44OSBzLCBmcm9tIHRoZSB3YXRj
aGRvZyk7Cj4gY2xrX3N1bW1hcnkgc2hvd3MgYWNsa19tbXVfcGNpZSBlbmFibGVkIHdpdGggaW9t
bXVAZmM5MDAwMDAgYXMgY29uc3VtZXIKPiBhbmQgcG1fZ2VucGRfc3VtbWFyeSBzaG93cyBQRF9Q
Q0lFIG9uOyB0aGUgU01NVSBwcm9iZXMgYXMgYmVmb3JlIGFuZAo+IFNBVEEga2VlcHMgcnVubmlu
ZyBhdCA2LjAgR2JwcyB3aXRob3V0IGVycm9ycy4gV2l0aCBwYXRjaCA0IGFsb25lCj4gKHBvd2Vy
IGRvbWFpbiwgY2xvY2sgc3RpbGwgZ2F0ZWQpIHRoZSByZWJvb3Qgc3RpbGwgaHVuZyBhdAo+ICJh
cm0tc21tdS12MyBmYzkwMDAwMC5pb21tdTogc2h1dGRvd24iIG9uIHRoZSBzZXJpYWwgY29uc29s
ZS4gQm9hcmRzCj4gd2l0aCBQQ0llIGVuYWJsZWQgYXJlIGFscmVhZHkgaW4gdGhlIHN0YXRlIHRo
ZXNlIHBhdGNoZXMgZGVzY3JpYmUuCj4gCj4gVGhpcyBzZXJpZXMgd2FzIGRldmVsb3BlZCB3aXRo
IENsYXVkZSAoQW50aHJvcGljKSBhcyBhIGNvZGluZyBhc3Npc3RhbnQ6Cj4gaXQgd3JvdGUgdGhl
IGNvZGUgYW5kIHRoZSBjb21taXQgbWVzc2FnZXMsIGFuZCBJIHJldmlld2VkIGFuZCB0ZXN0ZWQK
PiBldmVyeSBjaGFuZ2UgYXMgZGVzY3JpYmVkIGFib3ZlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEFy
dW4gSXllbmdhciA8YWl5ZW5nYXIxOTkwQGdtYWlsLmNvbT4KPiAtLS0KPiBBcnVuIEl5ZW5nYXIg
KDUpOgo+ICAgICAgICBkdC1iaW5kaW5nczogaW9tbXU6IGFybSxzbW11LXYzOiBhbGxvdyBhIHBv
d2VyIGRvbWFpbgo+ICAgICAgICBkdC1iaW5kaW5nczogaW9tbXU6IGFybSxzbW11LXYzOiBhbGxv
dyBjbG9ja3MKPiAgICAgICAgaW9tbXUvYXJtLXNtbXUtdjM6IGVuYWJsZSBvcHRpb25hbCBjbG9j
a3MKPiAgICAgICAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IGFkZCB0aGUgUENJZSBwb3dlciBkb21h
aW4gdG8gdGhlIFJLMzU4OCBQQ0llIFNNTVUKPiAgICAgICAgYXJtNjQ6IGR0czogcm9ja2NoaXA6
IGFkZCB0aGUgY2xvY2sgb2YgdGhlIFJLMzU4OCBQQ0llIFNNTVUKPiAKPiAgIERvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9pb21tdS9hcm0sc21tdS12My55YW1sIHwgMTAgKysrKysr
KysrKwo+ICAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtYmFzZS5kdHNpICAg
ICAgICAgICAgfCAgMiArKwo+ICAgZHJpdmVycy9pb21tdS9hcm0vYXJtLXNtbXUtdjMvYXJtLXNt
bXUtdjMuYyAgICAgICAgICAgICAgfCAgNyArKysrKysrCj4gICAzIGZpbGVzIGNoYW5nZWQsIDE5
IGluc2VydGlvbnMoKykKPiAtLS0KPiBiYXNlLWNvbW1pdDogMmNmNGJlNTdiMzAxZWQyZDdhZjgy
ZTcwY2ZmNWRmZDk2ODk0ZDhkZQo+IGNoYW5nZS1pZDogMjAyNjExMTAtc21tdS12My1wY2llLXBk
LWEyZjEyN2I4MWQ4Zgo+IAo+IEJlc3QgcmVnYXJkcywKPiAtLQo+IEFydW4gSXllbmdhciA8YWl5
ZW5nYXIxOTkwQGdtYWlsLmNvbT4KPiAKPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+IExp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCj4gCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
