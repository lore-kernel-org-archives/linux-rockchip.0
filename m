Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B116BD5B871
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Dec 2025 21:48:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kCjNqID0RD6+fnzuutdrwMcdf5iMQOjQaTvnuJfGeHY=; b=qokd4h3tzlCI90
	5vUvDofRzV9RmyeJM+eW521dt3lK6UaDfrKMukOIPrCIN1wdA4S9u+SuyYNoHR/vj3EouBKU+MNta
	ZowRdAR8/gO/UmoV++Ov8OSbIflp1LotKUlGSjc7YJPRru1kbE8xNNaplLKf+MN3GDIzIjILkczMA
	eX6XB6hZCk0JyqMeM3m25zcFKwGR+WNSnV6U9XwArGZnYK0CgvjUDH+h7dJ4FsQPNSOI9lE+OYV2Z
	YXKzYSY1dfcg/EXpRA8D/LLXIXAtRD10aJZRPav1TbiToBwQvleowGIBBuzF5nkLzO0AdR80SgXAF
	4q481PdbtjfG1ShmCmiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVGQE-00000004KVb-3Cl5;
	Mon, 15 Dec 2025 21:48:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVGQC-00000004KUr-19VH;
	Mon, 15 Dec 2025 21:48:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=OI1MY4kOzgLcU2iIDea7bQ2I0yRp8F1R+dwEE1LToL8=; b=qtsMobJ81loav8R/ZLTl3g8U1R
	L2p+F7xhPDfocdnt+ksIho08Wf/uA8kiKZoc9oe+GmwipM8X4W/cOGhVhXb/TxLCdS44J3cbq3HdL
	wU9DU4mrnDwLovhiHhVDAlziOkk30fvlqhYskGn2HIwN5ExSSokSJRP959789FdLPOf5MInF5i6JA
	fbIlsb6GrPBhrRg0a+9V3ZMz1ut2RGdejRQR89FtifAaFIMNRahTtxwRJRA1gii+Bb+Z+aW+5V6Kw
	DiRYPdNFKgnsMT+CcXTTfeZcDxTX3GMWr0x6C9zKuYQujZ+jAK+i5wS4Y/H1WOhhD4AEyturWb5eC
	oBnGTi2Q==;
Received: from i53875adc.versanet.de ([83.135.90.220] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vVGQ8-0006sg-2B; Mon, 15 Dec 2025 22:47:56 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Martin =?UTF-8?B?SG9sb3Zza8O9IChQcm9iYWJseSBOb3RoaW5nIHMuci5vLiAp?=
 <mh@probably.group>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: enable dual 2.5GbE on Rock 5T
Date: Mon, 15 Dec 2025 22:47:55 +0100
Message-ID: <2080394.PIDvDuAF1L@diego>
In-Reply-To: <176580661874.1441131.12947657582985645446.b4-ty@sntech.de>
References: <96516D1F-9787-47FE-A67E-4745D11D9207@probably.group>
 <176580661874.1441131.12947657582985645446.b4-ty@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_134800_339635_5211B939 
X-CRM114-Status: GOOD (  15.32  )
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

QW0gTW9udGFnLCAxNS4gRGV6ZW1iZXIgMjAyNSwgMTQ6NTE6MDMgTWl0dGVsZXVyb3DDpGlzY2hl
IE5vcm1hbHplaXQgc2NocmllYiBIZWlrbyBTdHVlYm5lcjoKPiAKPiBPbiBGcmksIDEyIERlYyAy
MDI1IDE3OjIzOjM1ICswMTAwLCAiTWFydGluIEhvbG92c2vDvSAoUHJvYmFibHkgTm90aGluZyBz
LnIuby4gKSIgd3JvdGU6Cj4gPiBUaGUgUmFkeGEgUm9jayA1VCBib2FyZCBmZWF0dXJlcyB0d28g
UlRMODEyNUIgMi41R2JFIEV0aGVybmV0IGNvbnRyb2xsZXJzCj4gPiBjb25uZWN0ZWQgdmlhIFBD
SWUgbGFuZXMgcGNpZTJ4MWwwIChmZTE3MDAwMCkgYW5kIHBjaWUyeDFsMiAoZmUxOTAwMDApLgo+
ID4gQ3VycmVudGx5IG9ubHkgb25lIGludGVyZmFjZSBpcyBmdW5jdGlvbmFsIGJlY2F1c2UgdGhl
IFBDSWUgY29udHJvbGxlcgo+ID4gbm9kZXMgbGFjayB0aGUgbmVjZXNzYXJ5IHJlc2V0IEdQSU8g
Y29uZmlndXJhdGlvbi4KPiA+IAo+ID4gV2l0aG91dCB0aGUgcmVzZXQtZ3Bpb3MgcHJvcGVydHks
IHRoZSBSVEw4MTI1QiBQSFlzIHJlbWFpbiBpbiByZXNldCBzdGF0ZQo+ID4gYW5kIGFyZSBub3Qg
ZW51bWVyYXRlZCBieSB0aGUgUENJZSBidXMuIFRoaXMgcmVzdWx0cyBpbiBvbmx5IG9uZSBFdGhl
cm5ldAo+ID4gaW50ZXJmYWNlIGJlaW5nIGRldGVjdGVkLCBvciBub25lIGF0IGFsbCBkZXBlbmRp
bmcgb24gVS1Cb290IGluaXRpYWxpemF0aW9uLgo+ID4gCj4gPiBbLi4uXQo+IAo+IEFwcGxpZWQs
IHRoYW5rcyEKPiAKPiBbMS8xXSBhcm02NDogZHRzOiByb2NrY2hpcDogZW5hYmxlIGR1YWwgMi41
R2JFIG9uIFJvY2sgNVQKPiAgICAgICBjb21taXQ6IDk2MDI5ZmZlY2NmNjc3YjFlNGJhYTk4ZjMw
OTA5YTgzYTQ4NWI2ZDcKPiAKPiBJJ3ZlIHJlc29ydGVkIGJvdGggdGhlIHBjaWUgcGhhbmRsZXMg
YXMgd2VsbCBhcyB0aGUgcGluY3RybCBlbnRyaWVzCj4gcGNpZTItMCBjb21lcyBiZWZvcmUgcGNp
ZTItMSBldGMgOi0pIC4KCmFuZCBkcm9wcGVkIGFnYWluLgoKUGxlYXNlIHJlc2VuZCB0aGlzIHBh
dGNoIHdpdGggYSBwcm9wZXIgU2lnbmVkLW9mZi1ieSBsaW5lLCBhcyBzdGF0ZWQKYnkgdGhlIGRl
dmVsb3BlcnMgY2VydGlmaWNhdGUgb2Ygb3JpZ2luLgoKQWxzbywgd2hhdCBpcyB0aGlzIHByb2Jh
Ymx5IG5vdGhpbmcgcy5yLm8/CgpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
