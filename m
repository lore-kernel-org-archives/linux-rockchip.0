Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CF14C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Jan 2022 14:50:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uz7jQbVq5bUpNsglDJKSSFaipROHq0mdKRj58ftf8Zk=; b=H6plizjUuUnxld
	oXC/sut6L2JM5RBX5xHjaStJOyp6V6TPavlCrIVQdD/3LdvV7mMlRr7L5YvUaAgn1Ph1CwQUy+S1h
	IsdRkaMvkAuZNnJP3r34U86jNQg0BXiBmw1n81duWoi1qdAEQdSdfeP+LYNmgc1507ELQXysVUMc0
	Sfo+HEGnpVKKheNP+i+rA66PxOtpEBR7aSEfAC2gNS4/P4KOWmgZz4DWiA+t0a8X0Gnt5+sds8C9K
	ZIyneWmE/pIQj0a7HjQom7UcuZFNQ2AKVFHCCfgsKaBTyFtkDslJzBuT9Ev5AStAhMENglqZJFZgQ
	slgy4rs3Daybd3fIo6nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nBHj5-00HRBd-QD; Sat, 22 Jan 2022 14:50:47 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nBHj2-00HRAr-KZ; Sat, 22 Jan 2022 14:50:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1642863025;
 bh=zB56piMqb3QFqfIGyw04VjXD8/VAFWe90tLhSM6eli8=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=KVYfPXTomdn+GqrI/6yF9fuvolYVGeJftbnKC31EYcyktsm+Hne3Zy+yCwbZgySo7
 LCyBzZ0X5fDRQ+JtOLNkrpEDy5vfCvo1FcugEqceKG86PT4frfTzPYHpymdSh/GcbD
 NEZlkHf8rJZ+9J9MJ1SFFZwYiGaj6azqnhP55wdA=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [80.245.72.118] ([80.245.72.118]) by web-mail.gmx.net
 (3c-app-gmx-bap44.server.lan [172.19.172.114]) (via HTTP); Sat, 22 Jan 2022
 15:50:25 +0100
MIME-Version: 1.0
Message-ID: <trinity-d0efbf68-ed45-47d4-97b3-d3788c5a9de6-1642863025116@3c-app-gmx-bap44>
From: Frank Wunderlich <frank-w@public-files.de>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, Johan Jonker <jbx6244@gmail.com>,
 Frank Wunderlich <linux@fw-web.de>, "open list:ARM/Rockchip SoC..."
 <linux-rockchip@lists.infradead.org>, Rob Herring <robh+dt@kernel.org>,
 devicetree <devicetree@vger.kernel.org>, arm-mail-list
 <linux-arm-kernel@lists.infradead.org>, Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>
Subject: Aw: Re: [PATCH v1 1/3] dts64: rk3568: drop pclk_xpcs from gmac0
Date: Sat, 22 Jan 2022 15:50:25 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <236548630.RelmrRfzIS@diego>
References: <20220116124911.65203-1-linux@fw-web.de>
 <trinity-5a2f356e-2777-4624-b921-f8f56ce282c7-1642420742957@3c-app-gmx-bap64>
 <CAMdYzYrNQCcOiLf=jUGtCTM44SU8bUpBBOac6_SGJtqX+hvUuA@mail.gmail.com>
 <236548630.RelmrRfzIS@diego>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:gaQ/3c90UUPF2Jbp9f8wd+LAvN1+K6cRGUCFerTnftOdNHcZoI5Y0mvrnVNcvgE/UFZNW
 /XxzKKffXwCh0BSOElja30guvJfvN+rmvt4k03zwsIC8dp3cDiotLKXeIxWVoJ7HoixZ9iGMI10a
 pLk/0kBQu0rNos48UGn1voyGpaZX/8Z5ZzYHiwbXXgKRrtwh4OoniXU6uzR78W34uMeVljDax8EI
 /qd1zhfBV+g3DAl7+J8RUKFtotPosfSU1cvFKXnY3V62OjJxvtQAOlRJrTVasV2uVNk8w2PGklja
 UA=
X-UI-Out-Filterresults: notjunk:1;V03:K0:iL8gm4DntU0=:1mM0GcOTKFCz6W/iyoa47m
 ajofLsDYUm7ymKbdmmtoek6INbOCCJc5/VdD31L4XT6hbz9yIe9/NJGZm3E0t3N0O9zdtP9SX
 XQNXInRSYbdWW4cwfgAk6cc47M7o0ewooYtOFTxK0kKyyXjs+Hy3oGCj4+F0haitm+yBtKiUL
 1mo5KsW+jOPcx59a9PC5xMJ2nUZAtv8ZaIS9Lxah+UR+m/39PHJ5CQFUli+TxT52q8CeQG30T
 XSSOZD2O0koW94NiucEGKKJY3w7r8Uw45SmGQUIILmYHcpI5wqLzL/KiERldPkH/RhV5HiaOf
 Uw7P77g9qmOmx8g14Da0SSUlL1/M4gkdlIZTjN3amXZGLLsDdgxHgFt+AS9Sv1Fl8AgWwy2tf
 QoLYp/+jq6m+8jROdbRqaSf2vo84dpSFLM9/osaHzDFAmFUo4YGO3cGBW94dAx7KuRFQUruti
 bp1jzQaLFd/GqYz/Ut4uxxSUtI2s59z1qsi6AkbzQg3585vtO6rFZnlFUYNsKDqjm0gsVuwL1
 ECU0/nMifLkhD1YWbWufc7hbedgVg/EFyAOdRHKWaX1+/JnedrvIFqCiyEs+PgmqzHZ7H9d7l
 dmAbJQNsgtXFrKhUO6IDI7UqRBtZ7XJP0ffVyIv3f+HVjVt3pwXyCvdZD7P9KNAHakOQlo7EZ
 oPBWN1aBb9Mbr7tAwCDrZQXN87acLEzb3XiTGa3QDqMWRG4E9ALOHDTmJkp/zghAjMgJ6nQUa
 UzY3f3otzOyGcebMNip7X7JSpXFjpO8Lhy3UBjd9q0JVs+wgITRAvN4yH7yIQ80kpH/W91o+u
 5bO7FPB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220122_065045_056227_A7072485 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

SGksCgppIHBsYW4gdG8gc2VuZCBhIHYyIG9mIHRoZSBzZXJpZXMgYWZ0ZXIgNS4xNy1yYzEgaXMg
b3V0LCBiZWNhdXNlIGkgaGF2ZSBub3cgdmVyaWZpZWQKdGhlIGZ1bmN0aW9ucyBmcm9tIGdwaW8g
aGVhZGVyIGFuZCBmb3VuZCBzb21lIHBpbmN0cmwtY2hhbmdlcy4gVjEgaGFkIG9ubHkgcHJlcGFy
ZWQKdGhlIG5vZGVzIHRvIGtub3cgd2hpY2ggZGV2aWNlcyBhcmUgcHJlc2VudCBvbiB0aGlzIGhl
YWRlci4KCnNob3VsZCBpIGluY2x1ZGUgdGhpcyBwYXRjaCBhZ2FpbiBvciBkbyB5b3UgcHVsbCBp
dCBmcm9tIHYxIChtYXliZSBhcyBmaXgpPwoKcmVnYXJkcyBGcmFuawoKCj4gR2VzZW5kZXQ6IE1v
bnRhZywgMTcuIEphbnVhciAyMDIyIHVtIDIyOjA1IFVocgo+IFZvbjogIkhlaWtvIFN0w7xibmVy
IiA8aGVpa29Ac250ZWNoLmRlPgoKPiBGcm9tIGxvb2tpbmcgYXQgdGhlIGRvY3VtZW50YXRpb24g
SSBnb3QgdGhlIGltcHJlc3Npb24gdGhhdCB0aGUKPiBwY2xrX3hwY3MgaXMgcmVsYXRlZCB0byB0
aGUgc2VwYXJhdGUgcXNnbWlpX3BjcyBpbiB0aGUgbWVtb3J5IG1hcC4KPiAKPiBTbyB5ZXMsIEkg
ZnVsbHkgYWdyZWUgdG8gZHJvcHBpbmcgdGhpcyBjbG9jayBmcm9tIGhlcmUgYW5kIHRoZW4gYWRk
aW5nCj4gdGhlbSB0byB3aGF0ZXZlciBpcCBibG9jayByZWFsbHkgbmVlZHMgaXQuCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
