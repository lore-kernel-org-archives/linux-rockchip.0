Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D03FC021B8
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Mar 2025 14:48:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kOdwomXGDfu1+5OvpCeYvwyT17ZjCdxZQ39jSaYEMTw=; b=S1JSxpZwxQ65my
	rW99PheOuk3rwPo61z4cqH/gaiBDF+Tnda7rxJoTiq9PnLpPhDMbeGzZDIuEOXD8BDNCl58pj2yzX
	jcD8oQAYA39tbeV4CwZm+IVGHyE/g5XX2zpi8BEIgInBzSHTmxiu24BFjjpiNJmJxD34qNrwTdXPt
	6v3Fz579Kdl53qcJVZMGCWm/fTGhgRVa1t/Jf7tKzlncXX7vxtkcBiIl9sjOH7Qm8SCErseJe5ErX
	JCIyIn+PQCPAzSKUT+YBtg4w5Uoojr0hekKBELlVkulWyCWbbwgFnWRu/yAWvYgUpjyGA5QNM4FXg
	lPTFSFovdcNH4gMD2O0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpTZZ-000000053pf-4AU5;
	Tue, 04 Mar 2025 14:48:41 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpTXz-000000053Ua-21hp;
	Tue, 04 Mar 2025 14:47:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 443FDA456BA;
	Tue,  4 Mar 2025 14:41:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9CD0DC4CEE7;
	Tue,  4 Mar 2025 14:46:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741099621;
	bh=rI+BVkT7Y2vGYeVP6jOXfszRKe3HLug8swUeKiDdZ2A=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=H9bOT7G9DGWcpw9B82UNVqOf3fzPTab4W0+jJ11PCHXDgeuFvcudBecTiFLVBdZni
	 rHV7ZvwklvbtY6HBm8LSSkfOLRcfQLIceMTB5paPOXFK48evlciiUrcYu6nprTwyPY
	 +cT6mt0pPjZ+2yVUVA9dp0j1YqRk+J7pbXrDFtgWx4i+GoB450j/vGRLT1e5Cf5Fxe
	 K5zerKk94DFg+qJmXED0I/o3HBH5JDwVz5lSanRZXZ4Svk+RGsDIU4SKzxbzyQUYO6
	 iU7/u7PGrSj3G8Dg6UGvRHpUaGHQZYzP3WfZhI1VQyyxX7+oHpWMghaIMllEj3dJfR
	 vUI1FW/rIRHmA==
Date: Tue, 4 Mar 2025 14:46:48 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Jonas Karlman <jonas@kwiboo.se>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Yao Zi <ziyao@disroot.org>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] iio: adc: rockchip_saradc: Add support for RK3528
Message-ID: <20250304144648.29f376f9@jic23-huawei>
In-Reply-To: <11022969.nUPlyArG6x@diego>
References: <20250227184058.2964204-1-jonas@kwiboo.se>
	<20250227184058.2964204-3-jonas@kwiboo.se>
	<11022969.nUPlyArG6x@diego>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.48; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_064703_582621_794FD0AB 
X-CRM114-Status: GOOD (  12.48  )
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

T24gVHVlLCAwNCBNYXIgMjAyNSAxMjo1MTo0NyArMDEwMApIZWlrbyBTdMO8Ym5lciA8aGVpa29A
c250ZWNoLmRlPiB3cm90ZToKCj4gQW0gRG9ubmVyc3RhZywgMjcuIEZlYnJ1YXIgMjAyNSwgMTk6
NDA6NTEgTUVaIHNjaHJpZWIgSm9uYXMgS2FybG1hbjoKPiA+IFRoZSBTdWNjZXNzaXZlIEFwcHJv
eGltYXRpb24gQURDIChTQVJBREMpIGluIFJLMzUyOCB1c2VzIHRoZSB2Mgo+ID4gY29udHJvbGxl
ciBhbmQgc3VwcG9ydDoKPiA+IC0gMTAtYml0IHJlc29sdXRpb24KPiA+IC0gVXAgdG8gMU1TL3Mg
c2FtcGxpbmcgcmF0ZQo+ID4gLSA0IHNpbmdsZS1lbmRlZCBpbnB1dCBjaGFubmVscwo+ID4gLSBD
dXJyZW50IGNvbnN1bXB0aW9uOiAwLjVtQSBAIDFNUy9zCj4gPiAKPiA+IEFkZCBzdXBwb3J0IGZv
ciB0aGUgNCBjaGFubmVscyBvZiAxMC1iaXQgcmVzb2x1dGlvbiBzdXBwb3J0ZWQgYnkgU0FSQURD
Cj4gPiBpbiBSSzM1MjguCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IEpvbmFzIEthcmxtYW4gPGpv
bmFzQGt3aWJvby5zZT4gIAo+IAo+IFJldmlld2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29A
c250ZWNoLmRlPgo+IAo+IApOb3Qgc3VyZSB3aHkgYnV0IEkgY2FuJ3QgcmVwbHkgdG8gY292ZXIg
bGV0dGVyLiAgQW55aG93LCByZXBseWluZyBoZXJlCmluc3RlYWQuICBBcHBsaWVkIHBhdGNoZXMg
MS0yIHRvIGlpby5naXQgLyB0b2dyZWcgd2hpY2ggSSdsbCBwdXNoIG91dAphIHRlc3RpbmcgZm9y
IDAtZGF5IHRvIHBva2UgYXQgaXQuCgpUaGFua3MsCgpKb25hdGhhbgoKPiAKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
