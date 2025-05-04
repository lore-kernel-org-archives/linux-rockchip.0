Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EADBC369DC
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 May 2025 22:10:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4jkyORWJz3Pr7eDV1FSzG7b3oAbsQmnm6E/Rb/uNzuw=; b=eDgAkTlMiWylGg
	iEx8AfVS8hE+Nq13n9279ZgoEiFlBuip/ixYrDN6RnYnnqIwo2kcUeVo1JIqkyVbICt7dKNqalhOX
	WGaT+yOkJ8bIFZBDIQkwA3c6vgDJpWR3RN9Q+cmeQKosKNMRMrvWRAZ0VcNaHCmel6ADx9z6gf35k
	uG43Kxjhn9oQleIgnKRpDGzusONL+fzf0ZMB1eiH7LEFiGGHLWTZ11yENgv0Y3EQhKPO4nb8eqC5c
	eUunYupyTr4XSwvkowym7CeMfXchC93E/oafWOL3ssoQ0yrJ2Q+P0SVKmw2XqnZK6QEvJHqogVNN2
	HePXl3pD/IEzmM3bDCuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBhXK-000000062LK-3gTO;
	Sun, 04 May 2025 22:10:14 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBhXJ-000000062Km-1l5M;
	Sun, 04 May 2025 22:10:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References;
	bh=sLpW6jTBTWl6wB5elGwC1n2v3ZUSHcQl9rZfk83A14c=; b=AKeciERUlG++PembkUMAJdd63H
	3v1llWiYQP4DTT+yzeVR18isqNCTLiYN73K/RLwsG4gwH7VGxUbAeGBHTikmXrWXFaAfdhphARTI+
	4vP4VxsE3YTbUKJxOhF1izBTda2CCbcgDStmw9sxeCvVyOnUIuotfNTm3OcP6jlw6pbi6yEjKrEdG
	zcS+HVUibELouIA/ic+R3zVAW8V/JTWI6nEWmZQGntlw6Rt1E2B3Yk0/NWEbZAQPk221arAWeYrne
	5uvqYzip67fbqn4o6MYsI6rhQe6RWDBQK0A/RzDqQ0juzeYsCS35km+qvq6kmPebeqXbocQyad5Im
	J+h66POQ==;
Received: from i53875bbc.versanet.de ([83.135.91.188] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uBhXI-0006CM-6R; Mon, 05 May 2025 00:10:12 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts fixes for 6.15 #1
Date: Mon, 05 May 2025 00:10:11 +0200
Message-ID: <2923598.88bMQJbFj6@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250504_151013_459192_5027276B 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
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

SGkgQXJuZCwgS2V2aW4sIE9sb2YsCgpwbGVhc2UgZmluZCBhIGJlbG93IHNvbWUgZml4ZXMgZm9y
IHRoZSBjdXJyZW50IDYuMTUgcmVsZWFzZS1jeWNsZS4KClBsZWFzZSBwdWxsCgpUaGFua3MKSGVp
a28KCgpUaGUgZm9sbG93aW5nIGNoYW5nZXMgc2luY2UgY29tbWl0IDBhZjJmNmJlMWI0MjgxMzg1
YjYxOGNiODZhZDk0NmVkZWQwODlhYzg6CgogIExpbnV4IDYuMTUtcmMxICgyMDI1LTA0LTA2IDEz
OjExOjMzIC0wNzAwKQoKYXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6Cgog
IGdpdDovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9tbWluZC9saW51
eC1yb2NrY2hpcC5naXQgdGFncy92Ni4xNS1yb2NrY2hpcC1kdHNmaXhlczEKCmZvciB5b3UgdG8g
ZmV0Y2ggY2hhbmdlcyB1cCB0byA0YmY1OTNiZTJlNDYyNjIzYzRjMzRjN2UzYjYwNGViM2Y4Zjlk
ZTQ1OgoKICBhcm02NDogZHRzOiByb2NrY2hpcDogZml4IFNpZ2U1IFJUQyBpbnRlcnJ1cHQgcGlu
ICgyMDI1LTA0LTI5IDIzOjIxOjQ5ICswMjAwKQoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpSZW1vdmFsIG9mIG9wZXJhdGlu
Zy1wb2ludHMgYWJvdmUgd2hhdCB0aGUgcmszNTg4aiBzb2MgaXMgcmF0ZWQgZm9yLCBhbmQKYSBu
dW1iZXIgb2Ygc21hbGxlciBmaXhlczogVHVyaW5nIFJLMSBmYW4gY2FuIHNwaW4gZG93biBhZ2Fp
biwgZml4ZWQgcGlucywKcGlubXV4aW5nIGFuZCBjbG9ja3MgYW5kIHNvbWUgZGV2aWNldHJlZS1j
b3JyZWN0bmVzIGltcHJvdmVtZW50cy4KCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KRHJhZ2FuIFNpbWljICgxKToKICAgICAg
YXJtNjQ6IGR0czogcm9ja2NoaXA6IFJlbW92ZSBvdmVyZHJpdmUtbW9kZSBPUFBzIGZyb20gUksz
NTg4SiBTb0MgZHRzaQoKS3J6eXN6dG9mIEtvemxvd3NraSAoMSk6CiAgICAgIGFybTY0OiBkdHM6
IHJvY2tjaGlwOiBBbGlnbiB3aWZpIG5vZGUgbmFtZSB3aXRoIGJpbmRpbmdzIGluIENCMgoKTmlj
b2xhcyBGcmF0dGFyb2xpICgxKToKICAgICAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IGZpeCBTaWdl
NSBSVEMgaW50ZXJydXB0IHBpbgoKUm9iIEhlcnJpbmcgKEFybSkgKDIpOgogICAgICBhcm02NDog
ZHRzOiByb2NrY2hpcDogVXNlICJyZWd1bGF0b3ItZml4ZWQiIGZvciBidHJlZyBvbiBweDMwLWVu
Z2ljYW0gZm9yIHZjYzN2My1idHJlZwogICAgICBhcm02NDogZHRzOiByb2NrY2hpcDogRml4IG1t
Yy1wd3JzZXEgY2xvY2sgbmFtZSBvbiByb2NrLXBpLTQKClNhbSBFZHdhcmRzICgxKToKICAgICAg
YXJtNjQ6IGR0czogcm9ja2NoaXA6IEFsbG93IFR1cmluZyBSSzEgY29vbGluZyBmYW4gdG8gc3Bp
biBkb3duCgpUb20gVmluY2VudCAoMSk6CiAgICAgIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBBc3Np
Z24gUlQ1NjE2IE1DTEsgcmF0ZSBvbiByazM1ODgtZnJpZW5kbHllbGVjLWNtMzU4OAoKVXdlIEts
ZWluZS1Lw7ZuaWcgKDEpOgogICAgICBhcm02NDogZHRzOiByb2NrY2hpcDogQWRkIHBpbm11eGlu
ZyBmb3IgZU1NQyBvbiBRTkFQIFRTNDMzCgogLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3B4MzAtZW5n
aWNhbS1jb21tb24uZHRzaSAgICAgfCAgMyArLQogLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3B4MzAt
ZW5naWNhbS1jdG91Y2gyLmR0c2kgICAgfCAgMiArLQogLi4uL3JvY2tjaGlwL3B4MzAtZW5naWNh
bS1weDMwLWNvcmUtZWRpbW0yLjIuZHRzICAgfCAgMiArLQogYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazMzOTktcm9jay1waS00LmR0c2kgfCAgMiArLQogLi4uL2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU2Ni1iaWd0cmVldGVjaC1jYjIuZHRzaSAgfCAgMiArLQogYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazM1NjgtcW5hcC10czQzMy5kdHMgfCAgMiArCiAuLi4vYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTc2LWFybXNvbS1zaWdlNS5kdHMgICAgICB8ICAyICstCiAuLi4vZHRzL3Jv
Y2tjaGlwL3JrMzU4OC1mcmllbmRseWVsZWMtY20zNTg4LmR0c2kgICB8ICA0ICsrCiAuLi4vYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXR1cmluZy1yazEuZHRzaSB8ICAyICsKIGFyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4ai5kdHNpICAgICAgICAgIHwgNTMgKysrKysr
Ky0tLS0tLS0tLS0tLS0tLQogMTAgZmlsZXMgY2hhbmdlZCwgMzEgaW5zZXJ0aW9ucygrKSwgNDMg
ZGVsZXRpb25zKC0pCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
