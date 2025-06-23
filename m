Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1C60C77B7C
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Jun 2025 00:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lD6GGsV9M1UTeMv7xpq7q8t4PLhrZ1T9AUzlU2d1oi4=; b=OJLfvmo/kbk9vS
	/ZK2nNmRl+2D04fte0DA6DWK7CAGxpEsM4nLlBMkN7cpahqM+bcU8d/c3bnxnNmnKgJyqj9C+e5PX
	BtUdBe5l4OBRLyzp1dpSH6sSRU2XDwdnDZtevO70pLLRWfkCO05/AdaEfIpJrSYWJlmpFH0PE9hWM
	QBqqwvt4lhS/rnpW2UFt03+8PLb4cH35D8Vbm7a46HRhqOg22UrhsBKkBMK3yfMQmDjRzRWvaKf33
	E0+YjhwBUIJiGr39JSoTp25gsD488v4OqHPHa7lP/PUH8X43uvyjdwTtcyIl26VkZHWzbQBmOMGJt
	gVmTRqsnXJ1NfEAOThDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTrbB-00000004HfS-043J;
	Tue, 24 Jun 2025 00:33:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uToXW-00000003zkn-2egI;
	Mon, 23 Jun 2025 21:17:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=U3UErYnrVYZ1g9kUUb3a1dfR1/w+hPH2Q/0/oF/UJJM=; b=NBBdcAa17Q+xwBYcEk2T6MBbry
	w7IWwueFxcfmjTlpHwOGRhXYx5Fuy0Z+BbUbgg9Va1yENMiAG2uL4ZAFmI+LKgJ+qMR9O+Rj+DMnM
	Mf6QJ+ALWgWZxJL4mGvlqr+tVfF3BKK3cgqEO6LzZI+CDS1eSTU5cC12HQJpqCwRRPQihZJCcGQui
	/fNd/rcdv0yWaazQDq9y4npbIarXGCzCMf+996ZwLU1wH0rpbucuPRZ30hdnZoE2y3j56zr0bMGiq
	8+7rqqKvZUQR5xEbiDf5zgOdHekB+imCHSnFp81KD5lQJE4FZmUu6UHVyfSzKbdzxpQTYftX/b7Mh
	Sty6zhGw==;
Received: from [185.15.108.45] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uToXM-0006NM-Cv; Mon, 23 Jun 2025 23:17:08 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>,
 Alexey Charkov <alchark@gmail.com>, Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH 1/4] arm64: dts: rockchip: list all CPU supplies on ArmSoM Sige5
Date: Mon, 23 Jun 2025 23:17:06 +0200
Message-ID: <12692993.O9o76ZdvQC@phil>
In-Reply-To: <90b7a1b6-bc49-414d-9cde-e6fad46d2650@kwiboo.se>
References: <20250603-sige5-updates-v1-0-717e8ce4ab77@gmail.com>
 <dd1d0676-4eaa-4df7-b557-676b3de9a52e@kwiboo.se>
 <90b7a1b6-bc49-414d-9cde-e6fad46d2650@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_141718_688693_21670710 
X-CRM114-Status: GOOD (  22.35  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, XiaoDong Huang <derrick.huang@rock-chips.com>, linux-rockchip@lists.infradead.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gTW9udGFnLCAyMy4gSnVuaSAyMDI1LCAyMzowNzo1MyBNaXR0ZWxldXJvcMOkaXNjaGUgU29t
bWVyemVpdCBzY2hyaWViIEpvbmFzIEthcmxtYW46Cj4gT24gMjAyNS0wNi0yMyAxOTo0MCwgSm9u
YXMgS2FybG1hbiB3cm90ZToKPiA+IE9uIDIwMjUtMDYtMjMgMTc6MDIsIFBpb3RyIE9uaXN6Y3p1
ayB3cm90ZToKPiA+Pgo+ID4+Cj4gPj4+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IEFsZXhl
eSBDaGFya292IDxhbGNoYXJrQGdtYWlsLmNvbT4gdyBkbml1IDIzIGN6ZSAyMDI1LCBvIGdvZHou
IDE1OjU4Ogo+ID4+Pgo+ID4+PiBPbiBNb24sIEp1biAyMywgMjAyNSBhdCAxOjE54oCvUE0gQWxl
eGV5IENoYXJrb3YgPGFsY2hhcmtAZ21haWwuY29tPiB3cm90ZToKPiA+Pj4+Cj4gPj4+Pgo+ID4+
Pgo+ID4+PiBPa2F5LCBJJ3ZlIGJpc2VjdGVkIHRoaXMuCj4gPj4+Cj4gPj4+IFRMRFI6IExpbnV4
IGFuZCB1LWJvb3Qgc2VlbSB0byBoYXZlIG5vdGhpbmcgdG8gZG8gd2l0aCBpdCwgb3BlbnNvdXJj
ZQo+ID4+PiBURi1BIGRvZXNuJ3Qgd29yaywgYmluYXJ5IEJMMzEgc3RhcnRpbmcgd2l0aCB2MS4w
OSBkbyBub3Qgd29yay4gQkwzMQo+ID4+PiB2MS4wOCBhbmQgZWFybGllciB3b3JrIGZpbmUuCj4g
PiAKPiA+IHYxLjA5IGFkZGVkIHN1cHBvcnQgZm9yIDEgR0h6IGhydGltZXIgaW4gYWRkaXRpb24g
dG8gdGhlIG5vcm1hbCAyNCBNSHoKPiA+IHJhdGUuIE1haW5saW5lIFUtQm9vdCBtYXkgb25seSBz
dXBwb3J0IHVzZSBvZiAyNCBNSHogaHJ0aW1lciwgdW5zdXJlCj4gPiB3aGF0IGltcGFjdCB0aGUg
aHJ0aW1lciByYXRlIGhhcy4gTWl4aW5nIGJsb2JzIHdpdGgvd2l0aG91dCAxIEdIego+ID4gc3Vw
cG9ydCBpcyBrbm93biB0byBjYXVzZSBpc3N1ZXMuIEF0IG9uZSBwb2ludCB0aGUgbGF0ZXN0IHJr
YmluIHRyZWUgbWF5Cj4gPiBoYXZlIGNvbnRhaW5lZCBpbmNvbXBhdGlibGUgcmszNTc2IGJsb2Jz
IChtaXhlZCAxIGdoeiB2cyAyNCBtaHogcmF0ZSkuCj4gCj4gQ2xhcmlmaWNhdGlvbjoKPiBGb2xs
b3dpbmcgYm9vdDEgcGFyYW1ldGVyIGFjdGl2YXRlcyB1c2Ugb2YgMSBHSHogaHJ0aW1lciwgc2Vl
IFszXS4KPiAKPiBUaGlzIHBhcmFtZXRlciB3YXMgYWRkZWQgdG8gcmtiaW4gcmVwbyBiZWZvcmUg
YWxsIGJsb2JzIHdhcyB1cGRhdGVkIHRvCj4gZnVsbHkgc3VwcG9ydCB1c2Ugb2YgdGhlIDEgZ2h6
IG1vZGUsIGFuZCBpcyB0aGUgc291cmNlIGZvciBpbmNvbXBhdGlibGUKPiBibG9icyBJIHJlZmVy
ZW5jZWQgYWJvdmUuCj4gCj4gICBbQk9PVDFfUEFSQU1dCj4gICBXT1JEXzI9MHgxMDAKCndoaWNo
IEkgZ3Vlc3MgaXMgc29tZXRoaW5nIHdlIGRvbid0IGRvIGluIHUtYm9vdCBhdCBhbGwgcmlnaHQg
bm93PwpXaGljaCB3b3VsZCBhbHNvIG1lYW4sIHRoYXQgc29tZXRoaW5nIG1heSBoYXZlIGJyb2tl
biB3aXRoIHRoZSAyNE1IeiBtb2RlCndoZW4gdGhlIDFHSHogdGhpbmcgd2FzIGFkZGVkLiBBbmQg
bm9ib2R5IGV2ZXIgcmVhbGl6ZWQgdGhhdCBiZWNhdXNlIHRoZQpSb2NrY2hpcCB0aGluZyB1c2Vz
IHRoYXQgYm9vdCBwYXJhbSBmb3IgYWxsIG9mIHRoZW0/CgoKPiAKPiBbM10gaHR0cHM6Ly9naXRo
dWIuY29tL3JvY2tjaGlwLWxpbnV4L3JrYmluL2NvbW1pdC9jYmJjNjg2ODIyMWZiNDE2ZDRmMGQ4
NmExMGU0OTNkYmJiYzFmMTE3Cj4gCj4gUmVnYXJkcywKPiBKb25hcwo+IAo+ID4gCj4gPiBEaWQg
eW91IHRyeSB3aXRoIG5ld2VyIGJsb2JzLCBpLmUuIGRkciBpbml0IHYxLjA5LCBibDMxIHYxLjE5
IGJsb2JzIFsxXQo+ID4gYW5kIG1haW5saW5lIFUtQm9vdCBbMl0gPwo+ID4gCj4gPiBbMV0gaHR0
cHM6Ly9naXRodWIuY29tL3JhZHhhL3JrYmluL2NvbW1pdHMvZGV2ZWxvcC12MjAyNS4wNC8KPiA+
IFsyXSBodHRwczovL3NvdXJjZS5kZW54LmRlL3UtYm9vdC9jb250cmlidXRvcnMva3dpYm9vL3Ut
Ym9vdC8tL2NvbW1pdHMvcmszNTc2Cj4gPiAKPiA+IFJlZ2FyZHMsCj4gPiBKb25hcwo+ID4gCj4g
Pj4KPiA+Pgo+ID4+IGp1c3QgZnlpOiAKPiA+PiB0byBjb25maXJtOiByZXBsYWNpbmcgb25seSBi
bDMxIHRvIDEuMDggbWFrZXMgYWxsIGdvb2QKPiA+PiB3aXRoIHBlcmYgZ292LiBjbG9ja3Mgc3Rh
eWluZyBvbiAyMjAwLzIzMDAKPiA+PiBjbG9jayBlc3RpbWF0aW9ucyBhcmUgcHJlZGljdGFibGUs
IGNvbnN0YW50IGFuZCBlc3RpbWF0aW5nIGNvbnN0YW50bHkgMjQwMAo+ID4+IHV4IGlzIOKAnmxp
a2XigJ0gb24gMzU4OAo+ID4+Cj4gPj4gQWxleGV5OiBtYW55IHRoeCBmb3IgZmluZGluZyByb290
IGNhdXNlIGNvbXBvbmVudCEKPiA+PiAgIAo+ID4+ICAgIAo+ID4gCj4gCj4gCgoKCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
