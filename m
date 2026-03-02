Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E7C3E9B35A
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Mar 2026 10:36:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=15zaOcFg+kN04hDlpMS1Z3aiyXyftlmhi5u10JODI3g=; b=pS8wiXxzC7mDJI
	FVwda9dJ/AYuXum0Hu+mTDfHM4ab0Tt7qZ97VVjqBZ9nP5i+noDkir+J3mTxrYsx5VXWJ0xpidav1
	i+knRKT/14kmuC3iSgFXCitiMwYRN5h9AJl8ypmGKV8sUe6bUGWAktWhrG0XPrf3uBqSotcMmdRW4
	zr163WuhxVzC9BScvvtctty+yJ5ZX/ecNuv1HkiY0iYvHOhxyVePbDwq4O+e92K8y/l4jvtDLU79Q
	3Mno+I5+JZmUcVqmKOPxsY11XdIhmf/hTWlYI8P5D09kV1fzt4/k6EtykV18geHIivdPygqWtywcV
	IiCH1SMmaPQpGCrxzmkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx0dw-0000000CimM-0dkq;
	Mon, 02 Mar 2026 10:36:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx0dt-0000000Cilp-1C28;
	Mon, 02 Mar 2026 10:36:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=kO11BKmKFYoC09eco+6dmdwTd3OQRCC8tF7pTfHduz0=; b=EKp0nFdi5sCj9Lg7x8UsS+uiqc
	uOvigeWC9f4WnNKIN4GhoQw2dIh6fy7FDYFCbKnU/BNYLRbxws6nPC7s/rEmjkgmWtVT2qypJS6gE
	dSF84nfAkxRlqNyP86G63N5Ly7nfyn6gi3VYt479afbCYyC7CSljkjfZ3hhyrMagc6HHw1qyOmncN
	qH67492d+MY9KH43uYzR/wO0arMiOe/1VsHZK2Guye+xehGUYaiMgxPdCbXJsduK7c/P1pjB4ZEL5
	MWiykNb/FfbPcqLWjTIIFfXoSWW+Xnao4VUjXPfbxZhGJY+ylhYwamAaFx0+UAnk1SC28k0LNdI+N
	yFzfzckw==;
From: Heiko Stuebner <heiko@sntech.de>
To: Fabio Estevam <festevam@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] ARM: dts: rockchip: rk3036: Move PHY reset to ethernet-phy
 node
Date: Mon, 02 Mar 2026 11:36:42 +0100
Message-ID: <5051965.GXAFRqVoOG@phil>
In-Reply-To: <CAOMZO5CfmS2UEd8JwbR7WHRhTVR4m6cOZUBxhXWAf2zxNhY-Fw@mail.gmail.com>
References: <20260228013257.256973-1-festevam@gmail.com> <2819870.mvXUDI8C0e@phil>
 <CAOMZO5CfmS2UEd8JwbR7WHRhTVR4m6cOZUBxhXWAf2zxNhY-Fw@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260302_023649_493590_720C4157 
X-CRM114-Status: GOOD (  17.04  )
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

SGV5IEZhYmlvLAoKQW0gU2Ftc3RhZywgMjguIEZlYnJ1YXIgMjAyNiwgMTM6MTU6NTIgTWl0dGVs
ZXVyb3DDpGlzY2hlIE5vcm1hbHplaXQgc2NocmllYiBGYWJpbyBFc3RldmFtOgo+IEhpIEhlaWtv
LAo+IAo+IE9uIFNhdCwgRmViIDI4LCAyMDI2IGF0IDg6NDDigK9BTSBIZWlrbyBTdHVlYm5lciA8
aGVpa29Ac250ZWNoLmRlPiB3cm90ZToKPiAKPiA+IHBsZWFzZSBkb24ndCBzZW5kIHBhdGNoZXMg
dGhhdCAic2ltcGx5IiBmaXggZGV2aWNldHJlZSB3YXJuaW5ncy4KPiA+Cj4gPiBBcyB5b3UgY2Fu
IHNlZSBpbiBbMF0gdGhlIGRyaXZlciB1c2VzIHRoZXNlIHByb3BlcnRpZXMgY3VycmVudGx5Lgo+
ID4gU28gd2hpbGUgdGhpcyBmaXhlcyBzY2hlbWEgd2FybmluZ3MsIGl0IHdpbGwgYnJlYWsgdGhl
IGFjdHVhbCBib2FyZHMuCj4gPgo+ID4gU28gZmlyc3Qgb2YgYWxsIHlvdSdsbCBuZWVkIHRvIGFk
YXB0IHRoZSBkcml2ZXIgdG8gaGFuZGxlIHRoZSAib2ZmaWNpYWwiCj4gPiBwcm9wZXJ0aWVzIGFu
ZCBhbHNvIHByb3ZpZGUgYSBmYWxsYmFjayBpbiB0aGUgZHJpdmVyIGZvciBvbGQgZGV2aWNldHJl
ZXMuCj4gCj4gVGhlIHJrMzA2NmEtcmF5ZWFnZXIgYm9hcmQgZGVzY3JpYmVzIHRoZSByZXNldC1n
cGlvcyBpbnNpZGUgdGhlCj4gRXRoZXJuZXQgUEhZIG5vZGU6Cj4gCj4gaHR0cHM6Ly9naXRodWIu
Y29tL3RvcnZhbGRzL2xpbnV4L2Jsb2IvbWFzdGVyL2FyY2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzA2NmEtcmF5ZWFnZXIuZHRzI0wxNTUtTDE1Nwo+IAo+IElzIHRoaXMgYnJva2VuPwoKTm8g
aXQgaXNuJ3QgOi0pIC4KClRoYXQncyB3aGF0IEkgZ2V0IHdoZW4gSSB0cnkgbG9va2luZyBhdCBw
YXRjaGVzIG9uIGEgc2F0dXJkYXkgYmVmb3JlCmNvZmZlZSA7LSkgLgoKV2l0aCB0aGUgcmVzZXQg
bW92aW5nIGludG8gdGhlIHBoeS1ub2RlLCB0aGUgcGh5IGRyaXZlciB3aWxsIHRyaWdnZXIgaXRz
CnJlc2V0IGl0c2VsZiBvZiBjb3Vyc2UuIFRoZSBhcmMtbWRpbyBhbHNvIHJlcXVlc3QgdGhlIHJl
c2V0LWdwaW8gYXMKb3B0aW9uYWwsIHNvIHRoZSB3aG9sZSB0aGluZyB3b24ndCBmYWlsIGlmIHRl
IGdwaW8gaXMgbm90IHByZXNlbnQuCgpTb3JyeSBhYm91dCB0aGUgbm9pc2UsIHRoZSBwYXRjaCBp
cyBjb3JyZWN0IG9idmlvdXNseS4KCgpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
