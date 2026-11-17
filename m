Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A19CD606A31C
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2026 08:16:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=4FQJBz+V;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=zohomail header.b=XibOEBQh
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=UZscmR6sLDe0EP9Ar9CXWobu/S+YZ6GxuI43zwFbz1Y=; b=4FQJBz+VJ7AJn7jQAZoz1n5+k9
	OKfk+/aW6i4S3AH8GhULaEayeWwiZ7OtmnPHPDL2atzjn5nfRc79ZQC90ITcRcIpTxdZwABQFPe1E
	OBOIflih46uo0jgEkB+NeN2JQbrVzD9xp97knupMmRWai/LvoqnUR5v2xen0cryyJOze/RfQZtEMd
	NaPbLLseDopSQ4wrRbeP540BjGbNzZ9QBOxF3w6ysyhM2RKUv3DdXypxCLhsL7L5WY9QnrL4N3m42
	9HHosWM5SkyIgOd3r6nRy+Ckb9AmchetOLvu0oxrpI+Vr54izBnXqjmFP0+HLGuuGnFyHL/tiFvQ7
	Xt62k4VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTEMt-00000004rSB-30hU;
	Tue, 17 Nov 2026 08:16:43 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTEMq-00000004rRB-2zsF;
	Tue, 17 Nov 2026 08:16:41 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1794903392; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=nVi1itKM2VEMnfTFsm/6uPeY1mwe6+SgpzO1nnkwknXBj1m0bcDW5rwKJDrOhfY6+fGn0p7xMO36NH045ZEg5UDIusqHNU8OMuPV8633d+TIyiXbFHj8mjrbnHGU/MzBcY0qfadmsWeJiz8Gg0hxhuxyo9DwV5/erhdRNMp6Fmw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1794903392; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=3XJmTMYUz16JNiSAMEHddAj4414anMwgEM5quAuGPSg=; 
	b=SDg0jEKjhSzX29+MrdRkaNEHTk90tOx7qyosAeD+xyTx3YUga255xDZ1QCzNvhUtmtbkZI/3bVrE3AwyUUxR/5Kf2eppIE/1oKD8bF2h1GCW/UP/m7L+5aPH4qJ7Paioxo6c4GE+K3ZnNxIj656wbwH6PStc+rcP56oHbXF+XLU=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=michael.riesch@collabora.com;
	dmarc=pass header.from=<michael.riesch@collabora.com>
DKIM-Signature: a=rsa-sha256; b=XibOEBQhIAomoBWVCSW4lGsxqc8bKaXJLXreKl1su0qOdrtW7br+Oi+0p4NR8/U4EU6vSOKHo/JTbF2bJNMwKcdXfm8Uaea4TXs1bTp2aP2XRZpWHyqHkKvI2pFyqjHU0srAWiQkJE8DNMMN+2UvejdwRF55ZX15e47+KpASH1Q=; c=relaxed/relaxed; s=zohomail; d=collabora.com; v=1; bh=3XJmTMYUz16JNiSAMEHddAj4414anMwgEM5quAuGPSg=; h=Content-Description:Content-ID:Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:List-Subscribe:List-Post:List-Owner:List-Id:List-Archive:List-Help:List-Unsubscribe:MIME-Version:Message-ID:Resent-Sender:Resent-Cc:Resent-Date:Resent-To:Reply-To:Resent-Message-ID:Resent-From:Sender:Subject:To:Date:From:Message-Id:Reply-To:Subject:To:Cc;
Received: by smtp.zohomail.com with SMTPS id 179490338955423.03246426210353;
	Tue, 17 Nov 2026 00:16:29 -0800 (PST)
Message-ID: <d3e91164-9da9-4f20-9165-5a586d9aa55b@collabora.com>
Date: Tue, 17 Nov 2026 09:16:24 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 3/9] phy: rockchip-samsung-dcphy: Unwind power-on on
 PLL lock failure
To: =?UTF-8?B?5qWK5pm65oiQ?= <jason98166@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Guochun Huang <hero.huang@rock-chips.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Sashiko <sashiko-bot@kernel.org>
References: <20261110-dcphy-rx-v1-v6-0-d681ba20b36a@gmail.com>
 <20261110-dcphy-rx-v1-v6-3-d681ba20b36a@gmail.com>
 <3ab93996-7e37-4143-aa4c-b4b4b0e025d8@collabora.com>
 <CAPwA33JHxsd=nr9F9_KFKWPx+HGaR8P3ee7hxMc8XCS6QY46gw@mail.gmail.com>
 <0d837fe2-e192-4fc6-a2e5-c23df40684ab@collabora.com>
 <CAPwA33LgQqQSnn3vUOQF2wTUiqP2QROKfUpsASJZqjJP6WDi7A@mail.gmail.com>
Content-Language: en-US
From: Michael Riesch <michael.riesch@collabora.com>
In-Reply-To: <CAPwA33LgQqQSnn3vUOQF2wTUiqP2QROKfUpsASJZqjJP6WDi7A@mail.gmail.com>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_001640_832202_063F5242 
X-CRM114-Status: GOOD (  16.57  )
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
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgSmFzb24sCgpPbiAxMS8xNy8yNiAwNzo0MSwg5qWK5pm65oiQIHdyb3RlOgo+IEhpIE1pY2hh
ZWwsCj4gCj4gT24gMTEvMTYvMjYgMTE6MDAsIE1pY2hhZWwgUmllc2NoIHdyb3RlOgo+PiBTdGls
bCB3aGF0IHdlIGRpc2N1c3NlZCBtYWtlcyBzZW5zZSwgc28gbGV0IHVzIGRvIHNvbWUgcmVmYWN0
b3JpbmcgaW4gYQo+PiBsYXRlciBzZXJpZXMuCj4gCj4gQXMgZGlzY3Vzc2VkLCBJIHBsYW4gdG8g
YWRkIHRoZSB0eF8gcHJlZml4IHRvIHRoZSBQTEwgaGVscGVycyBpbiA2LzkuCgpPaCwgc2VlbXMg
SSBtaXNzZWQgdGhhdC4gT0ssIGNhcnJ5IG9uIDotKQoKPiBJIGFsc28gbm90aWNlZCB0aGF0IHN0
cnVjdCBzYW1zdW5nX21pcGlfcGh5IGhvbGRzIHBoeSBhbmQgbGFuZXMsIHdoaWNoCj4gVFggYW5k
IFJYIGJvdGggdXNlLCBidXQgYWxzbyB0aGUgUlgtb25seSBocyogZmllbGRzIGFkZGVkIGluIDgv
OSwgd2hpbGUKPiB0aGUgVFgtb25seSBQTEwgc3RhdGUgc3RheXMgaW4gc3RydWN0IHNhbXN1bmdf
bWlwaV9kY3BoeS4KPiAKPiBJIGFtIHRoaW5raW5nIGFib3V0IHRoZSBmb2xsb3dpbmc6Cj4gCj4g
MSkgT25lIHN0cnVjdCBwZXIgZGlyZWN0aW9uOgo+IAo+IHN0cnVjdCBzYW1zdW5nX21pcGlfcGh5
X3R4IHsKPiAgIHN0cnVjdCBwaHkgKnBoeTsKPiAgIHVuc2lnbmVkIGludCBsYW5lczsKPiAgIHN0
cnVjdCByZXNldF9jb250cm9sICptX3BoeV9yc3Q7Cj4gICBib29sIGxlZ2FjeV9taXNtYXRjaDsK
PiAgIHN0cnVjdCB7IC4uLiB9IHBsbDsKPiB9Owo+IAo+IHN0cnVjdCBzYW1zdW5nX21pcGlfcGh5
X3J4IHsKPiAgIHN0cnVjdCBwaHkgKnBoeTsKPiAgIHVuc2lnbmVkIGludCBsYW5lczsKPiAgIHN0
cnVjdCByZXNldF9jb250cm9sICpzX3BoeV9yc3Q7Cj4gICB1bnNpZ25lZCBsb25nIGxvbmcgaHNf
Y2xrX3JhdGU7Cj4gICB1MTYgaHNmcmVxX2NmZzsKPiB9Owo+IAo+IDIpIEtlZXAgb25seSBwaHkg
YW5kIGxhbmVzIGluIHN0cnVjdCBzYW1zdW5nX21pcGlfcGh5LCBhbmQgbW92ZSB0aGUgaHMqCj4g
ZmllbGRzIHRvIHN0cnVjdCBzYW1zdW5nX21pcGlfZGNwaHksIG5leHQgdG8gdGhlIFBMTCBzdGF0
ZToKPiAKPiBzdHJ1Y3Qgc2Ftc3VuZ19taXBpX2RjcGh5IHsKPiAgIC4uLgo+ICAgc3RydWN0IHNh
bXN1bmdfbWlwaV9waHkgdHg7Cj4gICBzdHJ1Y3Qgc2Ftc3VuZ19taXBpX3BoeSByeDsKPiAgIC4u
Lgo+ICAgc3RydWN0IHsgLi4uIH0gcGxsOwo+ICAgdW5zaWduZWQgbG9uZyBsb25nIHJ4X2hzX2Ns
a19yYXRlOwo+ICAgdTE2IHJ4X2hzZnJlcV9jZmc7Cj4gfTsKPiAKPiBPcHRpb24gMSBjaGFuZ2Vz
IDYvOSB0byA4LzksIG9wdGlvbiAyIG9ubHkgOC85LiBXaGljaCBvbmUgd291bGQgYmUgbW9yZQo+
IGNvbnZlbmllbnQgZm9yIHlvdXIgZnV0dXJlIHdvcms/CgpUaGFuayB5b3UgZm9yIGFza2luZy4g
T3B0aW9uIDEgc2VlbXMgYSB0YWQgY2xlYW5lciB0byBtZS4KClBsZWFzZSBub3RlIHRoYXQgdGhl
cmUgY291bGQgYmUgYSB2YXJpYXRpb24gb2Ygb3B0aW9uIDEsIHNvbWV0aGluZyBsaWtlCgpzdHJ1
Y3Qgc2Ftc3VuZ19taXBpX2RjcGh5IHsKICAuLi4KICBzdHJ1Y3Qgc2Ftc3VuZ19taXBpX3BoeSB0
eDsKICBzdHJ1Y3Qgc2Ftc3VuZ19taXBpX3BoeSByeDsKICAuLi4uCn07Cgp3aGVyZQoKc3RydWN0
IHNhbXN1bmdfbWlwaV9waHkgewogIHN0cnVjdCBwaHkgKnBoeTsKICB1bnNpZ25lZCBpbnQgbGFu
ZXM7CiAgc3RydWN0IHJlc2V0X2NvbnRyb2wgKnBoeV9yc3Q7CiAgdW5pb24gewogICAgIHN0cnVj
dCB7CiAgICAgICB1bnNpZ25lZCBsb25nIGxvbmcgaHNfY2xrX3JhdGU7CiAgICAgICB1MTYgaHNm
cmVxX2NmZzsKICAgICB9IHJ4X3N0dWZmOwogICAgIHN0cnVjdCB7CiAgICAgICBib29sIGxlZ2Fj
eV9taXNtYXRjaDsKICAgICAgIHN0cnVjdCB7IC4uLiB9IHBsbDsKICAgICB9IHR4X3N0dWZmOwog
IH07Cn07CgpNYXliZSB0aGlzIGlzIGFuIGFjY2VwdGFibGUgYXBwcm9hY2ggZm9yIHlvdT8KCkJl
c3QgcmVnYXJkcywKTWljaGFlbAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
