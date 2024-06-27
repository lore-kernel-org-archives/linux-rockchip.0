Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CC09C3064D
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jun 2024 13:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=44rb9xFSaR0ulv5g9fZpqDSXMRcU70VSANrj2VhUOXg=; b=t04sHvepnFEv2O
	vKV7z3MamRxvqse00h8xNdegsxl73HM9lnc2wky9mF/lAaOVyqgmLRN5u7awzia48c2OyQO9IE3vd
	jbhFVjRWlqoz8oRgRT+pD6EYBYIF68HQA16AhJ7C4qpO9i8nk3QYcwVvYk3YN1QL86xBgDy6R7E43
	JCIYhKmGei5njngryWUZ9YUnDDaGs7esyf+OSqJBSGww1CqJ7bBfquOqcbNPgp0Zopd+AyOj+y5Hq
	2/LxvS7b9AoES4FxpQijQFl60HTkcc+uuCYDUxqEV56O9IvHqrbv+ALxbgIetREnFOHCNQcOKg1uW
	Gd8LvAhyWrWkIPErSYBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMpYu-0000000AXAA-08m8;
	Thu, 27 Jun 2024 13:53:20 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMpYp-0000000AX8Q-2Z3y
	for linux-rockchip@lists.infradead.org;
	Thu, 27 Jun 2024 13:53:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1719496392;
	bh=mKgxZFERBkLeUE2nY35u5owDkA0UeUZU/3BEl4SzNH8=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=chxmMBze7QEbuDf1i5ujeX+ucPi5EsGeeQUsojAcsx3/WZjSZ3omK2B1fE1oRS9S0
	 7m35maflibi2jM2C+mZksYjRd6DstbZxkDZhdXCTnYLuMw2zoR/OBq3n3KHqipQlHa
	 YUhTPGRjcFtypvPeW/FBFL+3rKpwceBcKKOMxYNx+t5nVo6XO5QUd/79+av4ONLZVH
	 jomqckRPJAwDMYux7uTMY42nPVsPFt66WGXcX9mQjU+ccDhJtMtjY7F2mDfWn1xBDh
	 k2Y9OICU1wku6HqFtUGOQPQcKceI1SV0D7SNAkI+ItU/ZXIkhWrcEg5xJdCK+ULuye
	 /eQK+R9B3lY0w==
Received: from nicolas-tpx395.localdomain (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 2016E3781188;
	Thu, 27 Jun 2024 13:53:10 +0000 (UTC)
Message-ID: <0fe5ee653af4e7ecdf8a7a605e9e80c91011a53d.camel@collabora.com>
Subject: Re: [PATCH v7 6/6] arm64: dts: rockchip: Add VPU121 support for
 RK3588
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Jianfeng Liu <liujianfeng1994@gmail.com>
Cc: conor+dt@kernel.org, detlev.casanova@collabora.com, 
	devicetree@vger.kernel.org, ezequiel@vanguardiasur.com.ar, 
	frattaroli.nicolas@gmail.com, heiko@sntech.de, kernel@collabora.com, 
	krzk+dt@kernel.org, linkmauve@linkmauve.fr, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	p.zabel@pengutronix.de, robh@kernel.org, sebastian.reichel@collabora.com, 
	sigmaris@gmail.com
Date: Thu, 27 Jun 2024 09:53:01 -0400
In-Reply-To: <20240627081310.583427-1-liujianfeng1994@gmail.com>
References: <f04e25bf3c09c55049775e8f012cb653cb4682ba.camel@collabora.com>
	 <20240627081310.583427-1-liujianfeng1994@gmail.com>
User-Agent: Evolution 3.52.2 (3.52.2-1.fc40) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240627_065316_000560_A5245961 
X-CRM114-Status: GOOD (  30.85  )
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

TGUgamV1ZGkgMjcganVpbiAyMDI0IMOgIDE2OjEzICswODAwLCBKaWFuZmVuZyBMaXUgYSDDqWNy
aXTCoDoKPiBIaSBOaWNvbGFzLAo+IAo+IE9uIFdlZCwgMjYgSnVuIDIwMjQgMTM6NDY6MDMgLTA0
MDAsIE5pY29sYXMgRHVmcmVzbmUgd3JvdGU6Cj4gPiBKdXN0IHRvIGNsYXJpZnksIHNpbmNlIHlv
dSBhcmUgcmlnaHQgdGhhdCBpdCB3b24ndCB3b3JrIHdlbGwgd2l0aCBHU3RyZWFtZXIuIEl0Cj4g
PiBkb2VzIHdvcmsgd2l0aCBtdWx0aXBsZSBkZWNvZGVycyAoaXQgZXhwb3NlcyB0aGVtIGFsbCks
IGl0IGlzIHNpbXBseSB0aGF0IGl0Cj4gPiB3aWxsIHJhbmRvbWx5IHBpY2sgb25lIHdoZW4gZGVj
b2RpbmcsIGFuZCBpdCBtYXkgbm90IHBpY2sgdGhlIGJlc3Qgb25lLgo+IAo+IEkgaGF2ZSB0ZXN0
ZWQgcmt2ZGVjMiBhbmQgdnB1MTIxIHdpdGggZ3N0cmVhbWVyIDEuMjQuMiBvbiByazM1NnggdG8g
ZGVjb2RlCj4gYSA0SyB2aWRlbywgYW5kIGdzdHJlYW1lciBhbHdheXMgZmFsbCB3aXRoIGVycm9y
Ogo+ICJ2NGwyc2xoMjY0ZGVjMDogRmFpbGVkIHRvIGNvbmZpZ3VyZSBIMjY0IGRlY29kZXIiLgo+
IEkgZ3Vlc3MgdGhhdCdzIGJlY2F1c2UgMTA4MHAgdnB1IGlzIGF0IGZkZWEwMDAwIHdoaWNoIGlz
IGFsd2F5cwo+IGluaXRpYWxpemVkIGVhcmxpZXIgdGhhbiBya3ZkZWMyIGF0IGZkZjgwMjAwLCBz
byBnc3RyZWFtZXIgd2lsbCBhbHdheXMKPiBjaG9vc2UgdGhlIDEwODBwIGRlY29kZXIuCgpJJ3Zl
IG5ldmVyIGRvbmUgYW55IHJlc2VhcmNoLCBidXQgdGhhdCBpcyBwbGF1c2libGUuCgotIFByb2Jl
IGhhcHBlbiBpbiBhZGRyZXNzIG9yZGVyLCBzaW5jZSBEVCBhcmUgaW4gYWRkcmVzcyBvcmRlcgot
IE1lZGlhIG5vdGVzIGFyZSBhc3NpZ25lZCBpbiBwcm9iZSBvcmRlcgotIEdTdHJlYW1lciByZWdp
c3RlciB0aGUgZWxlbWVudCBpbiB0aGUgc2FtZSBvcmRlciBpbiBpdHMgcmVnaXN0cnkKLSBJbiBh
ZHNlbmNlIG9mIGEgcmFuayBvciBjYXBhYmlsaXRpZXMgdG8gZGlmZmVyZW50aWF0ZSwgdGhlIHBy
b2JlIG9yZGVyIGlzCm1haW50YWluZWQuCgo+IAo+ID4gSW4gdGhlIGxvbmcgdGVybSwgSSdkIGxp
a2UgdG8gc3RvcCBoYXZpbmcgdG8gZG8gImxpa2UgZG93bnN0cmVhbSIgYW5kIGV4cG9zZQo+ID4g
dGhlbSBhbGwuIEkgYmVsaWV2ZSB0aGUgZml4IGlzIGZhaXJseSBzdHJhaWdodGZvcndhcmQgaW4g
R1N0cmVhbWVyLiBXZSBuZWVkIHRvCj4gPiBleHBvc2UgaW4gdGhlIGdlbmVyYXRlZCBlbGVtZW50
IHRoZSB3aWR0aC9oZWlnaHQgcmFuZ2VzLCBhbmQgZm9yIEguMjY0IHRoZQo+ID4gc3VwcG9ydGVk
IHByb2ZpbGVzIGFuZCBsZXZlbC4gV2l0aCB0aGF0LCB3ZSBhdCBsZWFzdCB3b24ndCByYW5kb21s
eSBmYWlsIGF0Cj4gPiBkZWNvZGluZyA0SywgYW5kIGl0IHNob3VsZCBiZSBnb29kIGVub3VnaC4K
PiAKPiBOb3Qgb25seSBnc3RyZWFtZXIsIGNocm9taXVtIGFsc28gaGFzIHNpbWlsYXIgaXNzdWUu
IENocm9taXVtIHdpbGwgb25seQo+IGNoZWNrIHZpZGVvIHJlc29sdXRpb24gZ2xvYmFsbHkgYmVm
b3JlIHN0YXJ0aW5nIHRvIHVzZSBvbmUgZGVjb2RlcjogaWYKPiB0aGVyZSBpcyBhIDRLIGRlY29k
ZXIgZGV0ZWN0ZWQgYmVmb3JlLCBpdCB3aWxsIG1hcmsgNEsgcmVzb2x1dGlvbiBhcwo+IHN1cHBv
cnRlZC4gQnV0IHdoZW4gZGVjb2RpbmcgdmlkZW9zLCBpdCB3aWxsIGNob29zZSB0aGUgZmlyc3Qg
ZGVjb2Rlcgo+IHN1cHBvcnRpbmcgcHJvZmlsZSBsaWtlIEgyNjQuIFNvIGNocm9taXVtIG1heSB1
c2UgYSAxMDgwcCBkZWNvZGVyIHRvCj4gZGVjb2RlIGEgNEsgdmlkZW8uCj4gCj4gQ2hyb21pdW0n
cyBjb2RlIGFib3V0IHY0bDIgaXMgY29tcGxpY2F0ZWQgZm9yIG1lLiBJIG1heSBjcmVhdGUgYSBi
dWcgYWJvdXQKPiBpdC4gQnV0IGNocm9tZSBvcyBkb2Vzbid0IHN1cHBvcnQgZGV2aWNlcyB3aXRo
IG11bHRpIHY0bDIgZGVjb2RlcnMgbGlrZQo+IHJvY2tjaGlwJ3Mgc29jcywgSSBkb24ndCBrbm93
IGlmIHRoZXkgaGF2ZSB0aGUgbW90aW9uIHRvIGZpeCBpdCBxdWlja2x5LgoKVGhhdCdzIGFuIGlu
dGVyZXN0aW5nIGJ1Zywgd2hpY2ggbWFrZXMgaXRzIG1vcmUgb2YgbGVzcyBlcXVhbCB0byBHU3Ry
ZWFtZXIKInVuaW1wbGVtZW50ZWQgYmVoYXZpb3VyIi4gRmlsaW5nIGEgYnVnIGlzIGJlc3QgaW5k
ZWVkLCBDaHJvbWVPUyB0ZWFtLCB3aG8KbWFpbnRhaW5zIHRoaXMsIGlzIHByb2JhYmx5IHVuYXdh
cmUgYXMgdGhleSBkb24ndCBoYXZlIGFueSBTb0Mgd2l0aCBtdWx0aXBsZQpkZWNvZGVycy4gRXZl
biBvbiBQQyBzaWRlLCB0aGVpciBDaHJvbWVib29rcyBvbmx5IGV2ZXIgaGF2ZSBhIHNpbmdsZSBH
UFUsIEkKaGF2ZW4ndCBoZWFyZCBhYm91dCBhbnkgZUdQVSBzdXBwb3J0IGVpdGhlci4KCj4gCj4g
PiBGb3IgUkszNTg4LCB3aGljaCBpcyBhIG5ldyBTb0MsIGl0cyBub3QgYSBwcm9ibGVtIHRvIHVw
c3RyZWFtIHNvbWV0aGluZyB0aGF0Cj4gPiBkb2VzIG5vdCB3b3JrIHdpdGggZXhpc3RpbmcgdXNl
cnNwYWNlLiBJdCB3b3VsZCBvbmx5IGJlIGEgcmVncmVzc2lvbiBpZiB3ZSB3aGVyZQo+ID4gdG8g
ZW5hYmxlIFZEUFUxMjEgb24gUkszMzk5LCBhcyBub3cgdXBkYXRpbmcgbGludXggd291bGQgY2F1
c2UgYnVncyB3aXRoCj4gPiBleGlzdGluZyB1c2Vyc3BhY2UuCj4gCj4gVGhlcmUgaXMgYW4gb2xk
IHNvYyBqdXN0IGxpa2UgUkszMzk5OiBSSzMzMjgsIHdoaWNoIGFsc28gaGFzIGEgMTA4MHAKPiBo
YW50cm8gaDI2NCBkZWNvZGVyIGFuZCBhIDRLIHJrdmRlYyBoMjY0IGRlY29kZXIuIEkgZ3Vlc3Mg
bGVzcyBwZW9wbGUgY2FyZQo+IGFib3V0IGl0cyBtYWlubGluZSBkZWNvZGluZyB3aXRoIGdzdHJl
YW1lci9jaHJvbWl1bSBzbyBpdCBzdGlsbCBoYXMgMTA4MHAKPiBkZWNvZGVyIGVuYWJsZWQuCgpX
aGF0IEkgbWVhbnQgYnkgbmV3L29sZCwgaXMgc3VwcG9ydGVkIG1haW5saW5lIG9yIG5vdC4gQnV0
IHllcywgb24gdGltZWxpbmUsCnRoZXJlIGlzIG1hbnkgb2xkZXIgU29DIHdpdGggZHVhbCBkZWNv
ZGVycyBpbiB0aGUgUm9ja2NoaXAgbGluZS4KCj4gCj4gPiBGb3IgdXNlcnMsIGl0IHdvdWxkIGJl
IGJlc3QgaWYgd2UgZ2V0IHRoaXMgc29ydGVkIG91dCBpbiBHU3RyZWFtZXIgYnkgdGhlIHRpbWUK
PiA+IHdlIGhhdmUgYSBzZWNvbmQgZGVjb2Rlci4gTm90ZSB0aGF0IEkgaGF2ZSBzb21lIHZhY2F0
aW9uIGNvbWluZyB1cCB0aGlzIG1vbnRoLAo+ID4gc28gdGhlcmUgbWlnaHQgYmUgZXh0cmEgZGVs
YXlzLiBZZXQsIGl0cyBsb2dpY2FsIHRvIG1lcmdlIHRoaXMgKHRoZSAid29yc3QiCj4gPiBkZWNv
ZGVyKSBmaXJzdCwgc2luY2UgdGhlbiByYW5kb21seSBwaWNraW5nIGEgYmV0dGVyIG9uZSB3b24n
dCBiZSBhIHJlZ3Jlc3Npb24uCj4gCj4gSGFwcHkgdmFjYXRpb24gZGF5cyEgSSB3aWxsIGFsc28g
dGFrZSBhIGxvb2sgYXQgY2hyb21pdW0ncyBjb2RlIHRvIHNlZSBpZgo+IEkgY2FuIGZpeCBpdC4K
CkdyZWF0LCBsZXQncyBrZWVwIGV2ZXJ5b25lIG9uIHN5bmMsIEknbSBzdXJlIHdlIGNhbiBjb21l
IHVwIHdpdGggc29tZXRoaW5nCmJldHRlciB0aGVuIGRpc2FibGluZyB0aGUgcG9zc2libHkgdXNl
ZnVsIGhhcmR3YXJlLgoKTmljb2xhcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
