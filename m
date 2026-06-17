Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55C50CD98E2
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jun 2026 08:46:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L7nz05MnNTr6DaYXdMCx2f1Bwpot3qOmA/8Qe2NCw8E=; b=p1FLaQzePcohfs
	UJr3Zm9GqbQKoyhaob9pDhk/Tngu5eZyb1nhpFvmUftzeshwV2dZqPLI7tagkUwKhHGen6MWCuGGR
	4W9u7DaP/7ZrTRvXPb6ej5muU6TF2tVvKfzdDyyfaH/7dL1IH7PaMLPVQTo+MZjr+8U9x11SGUy2P
	dR6syJtXnyCDbHhhYE8Ie8JEScOzSM/TnQT9c7M2gK/8vvVDeMGi+jKL/Nk8dgebvyV3G/IE3zeoJ
	Lj+G92lKvC1ewIyfBsnbQxAgR5SnyljkJmc+mvmSaoUVHGhYMekMULa3uN720CfarZ2usYZTUUbaQ
	a9uGEWYFF0+om+v3U+2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZluP-0000000GuAW-2fPj;
	Wed, 17 Jun 2026 08:46:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZluM-0000000Gu97-1WXF
	for linux-rockchip@lists.infradead.org;
	Wed, 17 Jun 2026 08:46:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=f3REGreE4tNwBVU21du2PQUXcdWXNCqzjBMlGKeBltU=; b=VBcwNLhjJ7qXZNnx9H8uu3FkZ3
	jMmAsibmyV2DdpoFfwbh6FPzXDlj9bZqk5ABcC4eJkNaYUgu7j7ahJQgtHrrSLCEStNk1MYegVwoy
	HCCrly9eu24aogXaxRp2hqYD9G8ZXEbnwlN5INlH9N7rPFwvoRzAIRSDLevjB/dGczlgefHM3KJQk
	HDj8pcO17yVMclb7vLW0mttcdbTd0mr06mR8ttfBdT+y2KqUiMmFOoP8FzvHVmWTeKXIfBpkCucwH
	JwiceUo8AUSRAGInRCVp3VPFTaCD+lV9lMIulJTgUNi3BFxoCpYjXKcboRpTCNR0gcMvKM/vTBIMl
	18YWW8FA==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Shawn Lin <shawn.lin@rock-chips.com>,
 Damon Ding <damon.ding@rock-chips.com>, Vicente Bergas <vicencb@gmail.com>
Cc: Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Subject: Re: [REGRESSION][BISECTED] No display on rk3399-gru-kevin
Date: Wed, 17 Jun 2026 10:45:54 +0200
Message-ID: <14488973.RDIVbhacDa@diego>
In-Reply-To: <CAAMcf8CXfvzvEUyoASmp=6efRDNszyPJuFg0OU63Z7gT+oVQ8A@mail.gmail.com>
References: <CAAMcf8CXfvzvEUyoASmp=6efRDNszyPJuFg0OU63Z7gT+oVQ8A@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260617_014602_567682_A785AC94 
X-CRM114-Status: GOOD (  11.83  )
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

SGkgVmljZW50ZSwKCkFtIE1pdHR3b2NoLCAxNy4gSnVuaSAyMDI2LCAwMTowNToyNyBNaXR0ZWxl
dXJvcMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIFZpY2VudGUgQmVyZ2FzOgo+IEhlbGxvLAo+
IHRoZXJlIGFyZSB0d28gaXNzdWVzIHRoYXQgcmVzdWx0IG9uIGEgYmxhY2sgc2NyZWVuIG9uIHRo
ZSByazMzOTktZ3J1LWtldmluLgo+IAo+IFRoZSBmaXJzdCBvbmUgaXMgZHVlIHRvOgo+IGM4MDc5
ZjgzZTBiZjMxMjY0NTA1MGMxN2Q5Yzg3ZGViNzA3MzY5YzEKPiBncGlvOiByb2NrY2hpcDogY29u
dmVydCB0byBkeW5hbWljIEdQSU8gYmFzZSBhbGxvY2F0aW9uCgpjYW4geW91IGNoZWNrIHRoYXQg
eW91ciBrZXJuZWwgY29udGFpbnMKImdwaW86IHJvY2tjaGlwOiBGaXggR1BJTyByZWdyZXNzaW9u
IGFmdGVyIGNvbnZlcnNpb24gdG8gZHluYW1pYyBiYXNlIGFsbG9jYXRpb24iCmh0dHBzOi8vZ2l0
Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L25leHQvbGludXgtbmV4dC5naXQv
Y29tbWl0Lz9pZD01Y2Q5YzZkMzMyZjQ2ZDFkZThiNjgxMTdmZTJhM2YxYjA4ZWU4MGZmCgoKPiBS
ZXZlcnRpbmcgdGhpcyBkb2VzIG5vdCBmaXggdGhlIHByb2JsZW0gYXMgdGhlcmUgaXMgYSBzZWNv
bmQgb25lOgo+IDUxZWI1NDhhZGUyMDE1OGI0ZjRmODY5M2E5NWIxZjMxYTI0ODBlOGUKPiBkcm0v
YnJpZGdlOiBhbmFsb2dpeF9kcDogQXBwbHkgRFAgaGVscGVyIEFQSSBkcm1fZHBfY2hhbm5lbF9l
cV9vaygpCj4gCj4gVGhhdCBzZWNvbmQgb25lIGRlcGVuZHMgb246Cj4gZDg0YjA4N2M3NjYyZGQ2
NWNkNTFiMjI4MjE5OTg3YzMxYjFjZWUwMgo+IGRybS9icmlkZ2U6IGFuYWxvZ2l4X2RwOiBBcHBs
eSBEUCBoZWxwZXIgQVBJcyB0byBnZXQgYWRqdXN0ZWQgdm9sdGFnZXMKPiBhbmQgcHJlLWVtcGhh
c2lzZXMKPiAKPiBSZXZlcnRpbmcgYWxsIHRocmVlIGNvbW1pdHMgZnJvbSB2Ny4xIG1ha2UgdGhl
IGRpc3BsYXkgd29yayBhZ2Fpbi4KPiAKPiBQbGVhc2UsIGNhbiB0aGlzIGJlIHJlc29sdmVkPwoK
YW5kIGFzIERhbW9uIHdyb3RlLCBwbGVhc2UgcHJvdmlkZSBsb2dzLCBzbyB3ZSBjYW4gc2VlIHRo
ZSBhY3R1YWwgcHJvYmxlbQoKClRoYW5rcwpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
