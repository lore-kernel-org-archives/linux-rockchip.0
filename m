Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D32ACCFA18
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Nov 2025 14:01:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BVFPZtzCqmfxKbiwq+JVQbmBOBS8eFQv8mKbKelugOo=; b=LqV3zIwdepBaW0
	xR5FTlXNETMJBZUW05gGVLDd09oSrVFCKYcgL5vEwB9IHu5sR6NaQuO3Bl/WAqau2FdKMKBYlDv4f
	aZhJQhq8n5Py7/OIGZCOClzeXWUdyPtltIMUApfrLqXVWiQv0Y4oyH42tbiVf/NHZZj82P+gw0E+H
	LmDn4M1S4HV5ra1UKrwFVaoFn49ssItMLHo/GZcU7haa/RBjrhtfpBdDgBorhGaY0B6S6f/e3mwog
	qZrvQrLDGRyF5lUm8n1MqAoN3X7C/B/2bVyuPAWvma/nzPOBfuGXvILghGvGNxL9bcEvYw8c7lgzC
	wF4ie7eIcuLpjsTk509A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIovb-00000007HLb-0ju3;
	Tue, 11 Nov 2025 14:00:59 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIovX-00000007HKa-20pS;
	Tue, 11 Nov 2025 14:00:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 317F343B0B;
	Tue, 11 Nov 2025 14:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 04F89C116D0;
	Tue, 11 Nov 2025 14:00:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762869654;
	bh=f2fo/lMwwwTFs05IRMmwp7u2nd3gJMMvyXczqFBKzc0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mOszoN0EVkDNaWiWT/dOfBVBREwWsaVPDEGgezj7eMzfFJ9X1OoM3t/4ldDkESoI0
	 9vdP4ZBbU1P0o79MbD0CLokJBT4Sh1gjMWlCF/3sNJGOfaaoIbYpd8VN5GaP3Cl5Q0
	 1cjXs4XF7MgSNYKXDpDh0yI7t0wMSXlR06GHCXg2gK0YRozBI/hDD2+SeeAJZM9Yud
	 8qLnNKy86+Ne+HzRkTrRuaYLfL142/T49KYaGGKIbIog7L81ls5n9iI5bT3/GM1LMG
	 JfZomoFK8p5IRHGgHnQELr0Sggxf4YmETL8BhtOim0JVGLBiJNjcLl1ksNgX+rZV1+
	 iIcsfjVsSbScQ==
Date: Tue, 11 Nov 2025 19:30:38 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Lukas Wunner <lukas@wunner.de>
Cc: Niklas Cassel <cassel@kernel.org>, Jingoo Han <jingoohan1@gmail.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?B?V2lsY3p577+9P3NraQ==?= <kwilczynski@kernel.org>, Rob Herring <robh@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
	Shawn Lin <shawn.lin@rock-chips.com>, FUKAUMI Naoki <naoki@radxa.com>, 
	Krishna chaitanya chundru <quic_krichai@quicinc.com>, linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH 0/6] PCI: dwc: Revert Link Up IRQ support
Message-ID: <admktutwz6542najyyo5vlrci5euqlxnwueaqxixxy7pruqoe5@6qbbejnn5gpb>
References: <20251111105100.869997-8-cassel@kernel.org>
 <aRMZS3EUYx189Xup@wunner.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aRMZS3EUYx189Xup@wunner.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251111_060055_539797_AD2DB0E0 
X-CRM114-Status: GOOD (  18.98  )
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

T24gVHVlLCBOb3YgMTEsIDIwMjUgYXQgMTI6MDg6NTlQTSArMDEwMCwgTHVrYXMgV3VubmVyIHdy
b3RlOgo+IE9uIFR1ZSwgTm92IDExLCAyMDI1IGF0IDExOjUxOjAwQU0gKzAxMDAsIE5pa2xhcyBD
YXNzZWwgd3JvdGU6Cj4gPiBSZXZlcnQgYWxsIHBhdGNoZXMgcmVsYXRlZCB0byBwY2llLWRlc2ln
bndhcmUgUm9vdCBDb21wbGV4IExpbmsgVXAgSVJRCj4gPiBzdXBwb3J0Lgo+ID4gCj4gPiBXaGls
ZSB0aGlzIGZha2UgaG90cGx1Z2dpbmcgd2FzIGEgbmljZSBpZGVhLCBpdCBoYXMgc2hvd24gdGhh
dCB0aGlzIGZlYXR1cmUKPiA+IGRvZXMgbm90IGhhbmRsZSBQQ0llIHN3aXRjaGVzIGNvcnJlY3Rs
eToKPiBbLi4uXQo+ID4gRHVyaW5nIHRoZSBpbml0aWFsIHNjYW4sIFBDSSBjb3JlIGRvZXNuJ3Qg
c2VlIHRoZSBzd2l0Y2ggYW5kIHNpbmNlIHRoZSBSb290Cj4gPiBQb3J0IGlzIG5vdCBob3QgcGx1
ZyBjYXBhYmxlLCB0aGUgc2Vjb25kYXJ5IGJ1cyBudW1iZXIgZ2V0cyBhc3NpZ25lZCBhcyB0aGUK
PiA+IHN1Ym9yZGluYXRlIGJ1cyBudW1iZXIuIFRoaXMgbWVhbnMsIHRoZSBQQ0kgY29yZSBhc3N1
bWVzIHRoYXQgb25seSBvbmUgYnVzCj4gPiB3aWxsIGFwcGVhciBiZWhpbmQgdGhlIFJvb3QgUG9y
dCBzaW5jZSB0aGUgUm9vdCBQb3J0IGlzIG5vdCBob3QgcGx1Zwo+ID4gY2FwYWJsZS4KPiA+IAo+
ID4gVGhpcyB3b3JrcyBwZXJmZWN0bHkgZmluZSBmb3IgUENJZSBlbmRwb2ludHMgY29ubmVjdGVk
IHRvIHRoZSBSb290IFBvcnQsCj4gPiBzaW5jZSB0aGV5IGRvbid0IGV4dGVuZCB0aGUgYnVzLiBI
b3dldmVyLCBpZiBhIFBDSWUgc3dpdGNoIGlzIGNvbm5lY3RlZCwKPiA+IHRoZW4gdGhlcmUgaXMg
YSBwcm9ibGVtIHdoZW4gdGhlIGRvd25zdHJlYW0gYnVzc2VzIHN0YXJ0cyBzaG93aW5nIHVwIGFu
ZAo+ID4gdGhlIFBDSSBjb3JlIGRvZXNuJ3QgZXh0ZW5kIHRoZSBzdWJvcmRpbmF0ZSBidXMgbnVt
YmVyIGFmdGVyIGluaXRpYWwgc2Nhbgo+ID4gZHVyaW5nIGJvb3QuCj4gCj4gSW4gcHJpbmNpcGxl
IGl0IGlzIHBvc3NpYmxlIHRvIHNldCB0aGUgaXNfaG90cGx1Z19icmlkZ2UgZmxhZyBvbiB0aGUK
PiBicmlkZ2UgdG8gZm9yY2UgYWxsb2NhdGlvbiBvZiBtb3JlIGJ1c2VzLiAgV2UndmUgYWxyZWFk
eSBnb3QgYSBxdWlyawo+IHRvIHNldCB0aGUgZmxhZyBvbiBhIENvbnZlbnRpb25hbCBQQ0kgYnJp
ZGdlIHdob3NlIGhvdHBsdWcgY2FwYWJpbGl0eQo+IGNhbm5vdCBiZSBkaXNjb3ZlcmVkIG90aGVy
d2lzZSAoc2VlIHF1aXJrX2hvdHBsdWdfYnJpZGdlKCkgaW4KPiBkcml2ZXJzL3BjaS9xdWlya3Mu
YykuCgpCdXQgaGVyZSwgdGhlIGJyaWRnZXMgYXJlIG5vdCBob3RwbHVnIGNhcGFibGUgYXQgYWxs
LiBUaGV5IGRvIG5vdCBzdXBwb3J0IHRoZQpQQ0kgSG90LVBsdWcgU3BlY2lmaWNhdGlvbi4gU28g
c2V0dGluZyB0aGUgZmxhZyB3b3VsZCBiZSBpbmNvcnJlY3QuCgotIE1hbmkKCi0tIArgrq7grqPg
rr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
