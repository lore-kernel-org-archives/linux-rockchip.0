Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1ACA2C79F89
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Sep 2026 14:14:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id
	:Date:Subject:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7Of4w+/eaMN0udVQ7CQ4BngrnOaE4iiP3Mft6qegIr4=; b=ZqP9Sw142agTB5
	vsv5m5xPzff1ddJv8+CCy/LkNxoHlhhdoVeEAJVg0SSy2vUAQTpLCKXmJC0EyzoLvW0mdG8lKw/W2
	SOns5v6BSDD/+mAsU0o09bMzptIbF8huQjnqP74MNUcgD6kE8ozAZ0WXKNlGxukMjevZM0pvL66kB
	TmZr45sAUgcK+IjjKunV7RMsoXt/QZqaGv+qhua/bo6dlpnERB2REeFDAHF/9Hm/dU1qcdBWRwH0/
	UIt8yIGlhPe5mysN6aolx2AgpPRbT5CBwiRVBiZs6k4FhISyZIwiX+YTJz2/OBuglkIPepsV30Eha
	kPLiG/rQWk4IUFC62i4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3a70-00000007162-2z7z;
	Mon, 07 Sep 2026 14:14:18 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3a6y-0000000715D-3H4b;
	Mon, 07 Sep 2026 14:14:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 1E06543A28;
	Mon,  7 Sep 2026 14:14:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA673C2BCFA;
	Mon,  7 Sep 2026 14:14:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788790456;
	bh=upxHPP9ArbDCrRBkmQM8oFLShkIqVXPIci/IXpan42U=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=Rr58TWjMVe+P2pY9jidCowTTYxQBFO8VSsJky9yv/Tl5UuulSgYESfY7QiulrJ3j/
	 gOxxKtfFlYzTBRMFMtn6FOJShlvrTIGUXrwvbT3KjZX876AgjMmQNvGIIVPWzox/zd
	 TTctrpMobaTc7rVTfohhgtEeDDToDC1e7xd4e49eNv69zCsO52Rq9sasVm2LBBjC62
	 WckQlbp+Ot1mjfm5IoXtciokIQawc/PirjEUKFvoWMMRbj/LEzJ9YrnMmEZ1BmZkyL
	 eeJSlaJjJBK0NCO8cbjobDkcy02f69otykUvSSyxMLyYorRkkJK03Ql+pRb4qigIWl
	 mJUifSibh/b0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C204CC79F99;
	Mon,  7 Sep 2026 14:14:15 +0000 (UTC)
From: =?utf-8?q?=E5=AE=89=E5=AE=B9_via_B4_Relay?= <devnull+HystericalDragons.proton.me@kernel.org>
Subject: [PATCH v2 0/3] arm64: dts: rockchip: Add FriendlyElec NanoPi R28S
Date: Mon, 07 Sep 2026 22:13:54 +0800
Message-Id: <20260907-r28s-upstream-v2-0-21ab570fc91c@proton.me>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/3WNQQ6CMBBFr0JmbU07hgquuIdhgTBITaBkphAN6
 d2luHb5kvff30CIHQncsg2YVifOTzvgKYN2aKYnKdftDKjR6lLnirEQtcwSmJpRERokvHbW2Bz
 2zczUu/fRu9c/luXxojakSDIGJ8Hz5zhcTfL+tVejtOpt0eWXokRbNtXMPvjpPBLUMcYv9b06Y
 rwAAAA=
X-Change-ID: 20260905-r28s-upstream-e212e27d6165
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Chukun Pan <amadeus@jmu.edu.cn>, jensen <jensenhuang@friendlyarm.com>, 
 =?utf-8?q?=E5=AE=89=E5=AE=B9?= <HystericalDragons@proton.me>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2794;
 i=HystericalDragons@proton.me; h=from:subject:message-id;
 bh=upxHPP9ArbDCrRBkmQM8oFLShkIqVXPIci/IXpan42U=;
 b=owGbwMvMwCUmepz3XUtTHjvjabUkhqx5x7bFa+woUbApXbLNuU94kVaD381VvSaSt7dlMakVs
 /7N/J7VUcrCIMbFICumyCK7qTpSaFX0zCIWqeMwc1iZQIYwcHEKwETKvzD8z+ngy/h3aQK3qujx
 umh1VcNjc3crHphRbbmzYRbDJ02mDEaGH145tVeF41u+ry5YVfmy4ec6hhWr591KDQv6IyGZeug
 OLwA=
X-Developer-Key: i=HystericalDragons@proton.me; a=openpgp;
 fpr=1DB27B5912AA5B9972041AC715C70DEE84826E07
X-Endpoint-Received: by B4 Relay for HystericalDragons@proton.me/default
 with auth_id=1004
X-Original-From: =?utf-8?q?=E5=AE=89=E5=AE=B9?= <HystericalDragons@proton.me>
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
Reply-To: HystericalDragons@proton.me
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

VGhlIE5hbm9QaSBSMjhTIGlzIGEgZHVhbCBnaWdhYml0IEV0aGVybmV0IHJvdXRlciBib2FyZCBi
YXNlZCBvbiB0aGUKUm9ja2NoaXAgUkszNTI4IFNvQzoKCiAgaHR0cHM6Ly93aWtpLmZyaWVuZGx5
ZWxlYy5jb20vd2lraS9pbmRleC5waHAvTmFub1BpX1IyOFMKCkl0IGlzIGNsb3NlbHkgcmVsYXRl
ZCB0byB0aGUgYWxyZWFkeSBzdXBwb3J0ZWQgTmFub1BpIFplcm8yLCBzaGFyaW5nCm1vc3Qgb2Yg
aXRzIHBvd2VyIHRyZWUgYW5kIHBlcmlwaGVyYWwgcm91dGluZy4gUGF0Y2ggMiB0aGVyZWZvcmUg
bW92ZXMKdGhlIGNvbW1vbiBwYXJ0cyBpbnRvIHJrMzUyOC1uYW5vcGkuZHRzaSwgYW5kIHBhdGNo
IDMgYWRkcyB0aGUgYm9hcmQgb24KdG9wIG9mIGl0LiBUaGUgc3BsaXQgbGVhdmVzIHRoZSBOYW5v
UGkgWmVybzIgZHRiIHVuY2hhbmdlZDsgSSB2ZXJpZmllZAp0aGlzIGJ5IGRlY29tcGlsaW5nIHRo
ZSBkdGIgYmVmb3JlIGFuZCBhZnRlciB0aGUgc3BsaXQgYW5kIGNvbXBhcmluZwp0aGVtIHdpdGgg
dGhlIHBoYW5kbGUgbnVtYmVyaW5nIG5vcm1hbGlzZWQuCgpUaGUgZGV2aWNldHJlZSB3YXMgZGVy
aXZlZCBmcm9tIHRoZSB2ZW5kb3IgdHJlZToKCiAgaHR0cHM6Ly9naXRodWIuY29tL2ZyaWVuZGx5
YXJtL2tlcm5lbC1yb2NrY2hpcC9jb21taXQvZWU2NDBjNTM0NGIxM2EwYTMxNzQzNmUyMzU3ZGYw
MWFmODI2OGNlNwoKYnV0IHdpdGggbWFueSBjaGFuZ2VzIHRvIG1ha2UgaXQgc3VpdGFibGUgZm9y
IG1haW5saW5lLgoKVGVzdGVkIG9uIGEgbWV0YWwtY2FzZSB1bml0IHdpdGhvdXQgdGhlIG9wdGlv
bmFsIG9uYm9hcmQgZU1NQzogYm9vdHMKZnJvbSBtaWNyb1NELCBib3RoIEV0aGVybmV0IHBvcnRz
IGxpbmsgdXAgYXQgMTAwMCBNYnBzLCB0aGUgSFlNODU2MyBSVEMKcmVnaXN0ZXJzLCBhbmQgYWxs
IHRocmVlIExFRHMgYXJlIGZ1bmN0aW9uYWwuIFRoZSBVU0IgVHlwZS1DIGNvbm5lY3RvcgpyZWdp
c3RlcnMgYXMgYSBEV0MzIFVEQyBpbiBwZXJpcGhlcmFsIG1vZGU7IGdhZGdldCBlbnVtZXJhdGlv
biBhZ2FpbnN0CmEgVVNCIGhvc3Qgd2FzIG5vdCBjb21wbGV0ZWQsIGJlY2F1c2UgdGhhdCBjb25u
ZWN0b3IgaXMgYWxzbyB0aGUgNVYKaW5wdXQgYW5kIGEgUEMgcG9ydCBjYW5ub3QgcG93ZXIgdGhl
IGJvYXJkLgoKVHdvIHRoaW5ncyBJIGRpZCBub3QgZG8sIGJlY2F1c2UgbXkgaGFyZHdhcmUgY2Fu
bm90IHZlcmlmeSB0aGVtOgoKLSBUaGUgQUlDU2VtaSBBSUM4ODAwRDgwIFdpRmkgY2hpcCBvbiBz
ZGlvMCBoYXMgbm8gdXBzdHJlYW0gZHJpdmVyLCBzbwogIG9ubHkgdGhlIFNESU8gY29udHJvbGxl
ciBpcyBkZXNjcmliZWQuCi0gVGhlIGVNTUMgaXMgZGVzY3JpYmVkIGFzIEhTMjAwIHJhdGhlciB0
aGFuIHRoZSB2ZW5kb3IncyBIUzQwMCB3aXRoCiAgZW5oYW5jZWQgc3Ryb2JlLCBzaW5jZSB0aGUg
Ym9hcmQgYXQgaGFuZCBoYXMgYW4gdW5wb3B1bGF0ZWQgZU1NQwogIGZvb3RwcmludCBhbmQgdGhl
IGZhc3RlciBtb2RlcyBjb3VsZCBub3QgYmUgdmVyaWZpZWQuCgotLS0KQ2hhbmdlcyBpbiB2MjoK
LSBTcGxpdCB0aGUgcGFydHMgc2hhcmVkIHdpdGggdGhlIE5hbm9QaSBaZXJvMiBpbnRvIGEgbmV3
CiAgcmszNTI4LW5hbm9waS5kdHNpIChuZXcgcGF0Y2ggMikuIFRoZSBOYW5vUGkgWmVybzIgZHRi
IGlzIHVuY2hhbmdlZC4KLSBOYW1lIHRoZSBwaW5jdHJsIGxhYmVscyBhZnRlciB0aGUgbmV0cyBp
biB0aGUgc2NoZW1hdGljOiB1c3JfYnRuLAogIGxlZDEsIGxlZDIsIGxlZF9zeXMsIHB3cl93ZiBh
bmQgcGNpZV9ldGhfcGVyc3RiLgotIFJlbmFtZSB0aGUgYnV0dG9uIG5vZGUgdG8gYnV0dG9uLXVz
ZXIgYW5kIGl0cyBsYWJlbCB0byAiVVNFUiIuCi0gTGluayB0byB2MTogaHR0cHM6Ly9wYXRjaC5t
c2dpZC5saW5rLzIwMjYwOTA1LXIyOHMtdXBzdHJlYW0tdjEtMC1mNjhkNTM4OTI2OWFAcHJvdG9u
Lm1lCgotLS0K5a6J5a65ICgzKToKICAgICAgZHQtYmluZGluZ3M6IGFybTogcm9ja2NoaXA6IEFk
ZCBGcmllbmRseUVsZWMgTmFub1BpIFIyOFMKICAgICAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IFNw
bGl0IG91dCB0aGUgY29tbW9uIE5hbm9QaSBSSzM1MjggcGFydHMKICAgICAgYXJtNjQ6IGR0czog
cm9ja2NoaXA6IEFkZCBkZXZpY2V0cmVlIGZvciB0aGUgRnJpZW5kbHlFbGVjIE5hbm9QaSBSMjhT
CgogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwgICAgICAgICAgfCAg
IDUgKwogYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZSAgICAgICAgICAgICAg
fCAgIDEgKwogLi4uL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzUyOC1uYW5vcGktcjI4cy5k
dHMgfCAxNDIgKysrKysrKysrKysKIC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazM1MjgtbmFub3Bp
LXplcm8yLmR0cyAgICAgIHwgMjcxICstLS0tLS0tLS0tLS0tLS0tLS0tCiBhcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzUyOC1uYW5vcGkuZHRzaSAgICB8IDI3OSArKysrKysrKysrKysr
KysrKysrKysKIDUgZmlsZXMgY2hhbmdlZCwgNDI4IGluc2VydGlvbnMoKyksIDI3MCBkZWxldGlv
bnMoLSkKLS0tCmJhc2UtY29tbWl0OiAzMmUwZjY0NjQwZDU1OGEwZjU0MTBhYzVjZGQ4ZWJmMzcx
YzVlNmE2CmNoYW5nZS1pZDogMjAyNjA5MDUtcjI4cy11cHN0cmVhbS1lMjEyZTI3ZDYxNjUKCkJl
c3QgcmVnYXJkcywKLS0gIArlronlrrkgPEh5c3RlcmljYWxEcmFnb25zQHByb3Rvbi5tZT4KCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
