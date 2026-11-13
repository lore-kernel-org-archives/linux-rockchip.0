Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FBAD606A31C
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 11:22:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=GhkSSk54;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=Wmgl2w+X
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=oNeLAuiTTnlb67nWaopxF/Q8tSIsx/8aytAwz8EVfhU=; b=GhkSSk54ECQcyshRlAkR5O1B5+
	212Wm6/Wmb/ZNC2VdezaxytWRgXj1KuHJU5BPwcEqZ93LoppojUgLYIqEatyG1lJJ5bSoQOMmrURo
	F2Lmjxdvkp7plVf2rqsc4cflCxIRptJXhHApoRsc9Gj6XVnRzDQzgM0zM6Q3zWSC9kHIoEXmeTRbf
	yBpQFNYU0Lf2sf+jKUmEWHRY6cvKO4kSTxtYijqp+5LSOpFA00qleVlK0Dcj96PfQnz88EOAcKboD
	N3PAB0HlFyL14S4ZicRTNrTHWpCiDpRfnFy8k/tdcKbqCIIwg3gtqg1pY9VpEE+ebd5KwzaWeiy5+
	KT4q7GmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRpMC-0000000CWjW-38dH;
	Fri, 13 Nov 2026 11:22:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRpMA-0000000CWiY-2Tvr
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Nov 2026 11:22:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=g04SOYmzklvge6qxNQH5eg0kIpI49Svgnw/i8VcIyqE=; b=Wmgl2w+XvtWGckmCuoRoG5OllI
	tGDVKCzWK2RRDqtu0qJaA5E973VmfiepWjZJCsbCaGUVaQW/ruaOh8lEoUakcEv4c97U1dijQTkpL
	Zm/aCRqgaet+L9FS95Vc1YOwyL+x+QFcIxOa/AX9QnqPb9LXRzYSee4NkXeDZA+n7FjV9rfBRmkRe
	G2mIz9O9MCioFTZW/PseerarAV0rFGM8kyiQUxicV+j1VNkBM/JzYTzkl3pBPfyQoW/elAGeesodr
	IMfd2XG8eWooY7SF1MFSyyg6m+vCo5QSXeIFyJ+TGCpBKRZSO845HC1fHNcsWJkKAnOy8VR4zL3Ts
	mwRwyY+w==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: royalnet026@gmail.com, dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
 tomeu@tomeuvizoso.net, Jiaxing Hu <gahing@gahingwoo.com>
Subject: Re: [PATCH v2] accel/rocket: request the core clocks by name
Date: Fri, 13 Nov 2026 12:22:08 +0100
Message-ID: <vdyoxwjeQRquzXX4VbEghg@sntech.de>
In-Reply-To: <20260831080356.80952-1-gahing@gahingwoo.com>
References: <20260729130743.128876-1-royalnet026@gmail.com>
 <20260831080356.80952-1-gahing@gahingwoo.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_032210_637184_4358B846 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

QW0gTW9udGFnLCAzMS4gQXVndXN0IDIwMjYsIDEwOjAzOjU2IE1pdHRlbGV1cm9ww6Rpc2NoZSBO
b3JtYWx6ZWl0IHNjaHJpZWIgSmlheGluZyBIdToKPiBIaSBJZ29yLAo+IAo+IEhlYWRzIHVwIGJl
Zm9yZSB5b3Ugc2VlIHRoaXMgcGF0Y2ggYXJyaXZlIGFzIDAxLzE0IG9mIG15IHNlcmllcy4KPiAK
PiBUb21ldSBhc2tlZCBmb3IgaXQgb24gdGhlIHYxMCBjb3ZlcjoKPiAKPiAgICJTYXNoaWtvIGlz
IG5vdCByZXZpZXdpbmcgdGhpcyBzZXJpZXMgYmVjYXVzZSBpdCBkb2Vzbid0IG5vdCB1bmRlcnN0
YW5kCj4gICAgeWV0IHByZXJlcXVpc2l0ZS1wYXRjaC1pZC4gQ2FuIHlvdSBwbGVhc2UgcmVzdWJt
aXQgdGhlIHNlcmllcyB3aXRoCj4gICAgSWdvcidzIChwcmVzdW1hYmx5KSBwYXRjaGVzIGJ1bmRs
ZWQgaW4gaXQ/Igo+IAo+IFNvIHYxMSBjYXJyaWVzIGl0IGFzIDAxLzE0LiBVbmNoYW5nZWQsIHVu
ZGVyIHlvdXIgbmFtZSwgeW91ciBTaWduZWQtb2ZmLWJ5Cj4gZmlyc3QgYW5kIG1pbmUgdW5kZXJu
ZWF0aCBhcyB0aGUgcGVyc29uIHBhc3NpbmcgaXQgb24sIHdpdGggdGhlIGZvdXIgdGFncwo+IGl0
IGhhcyBjb2xsZWN0ZWQuCgpqdXN0IGNpdGluZyBoZXJlIHRvbywgd2hhdCBJIHNhaWQgZWxzZXdo
ZXJlCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8xMzcwMTI4MS5aWW01bUxjNmtOQGRpZWdv
LwoKCmFkZGl0aW9uYWxseSwgd2hpbGUgcmVhZGluZyB0aGUgZm9sbG93dXAgcGF0Y2hlcywgcGxl
YXNlIGludHJvZHVjZSBzb21lCmNvbnN0YW50cyBmb3IgdGhlIGluZGljZXMuIFJPQ0tFVF9DTEtf
QUNMSywgLi4uIG9yIHNvbWUgb3RoZXIgbmFtZS4KQmVjYXVzZSB3aGVuIHlvdSBhY2Nlc3MgdGhl
bSBsYXRlciBieSBpbmRleCwgdGhhdCBtYWtlcyB0aGluZ3MgaGFyZGVyCnRvIHJlYWQgYW5kIGZv
bGxvdyAoZXNwZWNpYWxseSBpbiB0aGUgZnV0dXJlKQoKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
