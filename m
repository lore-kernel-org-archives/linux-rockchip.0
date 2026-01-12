Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD865C9EC6B
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jan 2026 11:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=679KlR4ADWsh+WXrO7/xo4g13FYQf7Iwjcsc7+8f5GE=; b=AkmdapSZF+rn9M
	2soJ7pav6ErhnpeaqhjGtPpATaq/ZYm76sk4FzRd6jWldtsT1Gc/iCNoK80+oIUXsiMcfiXqn7Aza
	alWbrBFBxsnL/GFpEL+gI3lIwkUZf8YGoxQBAzUlcdJjV+QXvbHvdzI47k8lGKdF8qXBXGPWpPp/p
	7EUyeEEEWhXUsMGG9S+Q4gANNYGJbQQwmL1LQ9zRPK9cqsqzoEwIQR4zT05XGwNAyd+zOV5bZTU5i
	jzpp4oyjdzdG5aKFRTAr2Kex+HPhPue4NXzTEOhRgqRTNijWEVnDHmtI8UCPi4pNXs+z0ppeFXsWh
	z7W6hSMrtd7Hul/hZSBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfFmf-00000005DhY-2nbZ;
	Mon, 12 Jan 2026 11:08:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfFmc-00000005DhC-3eay
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Jan 2026 11:08:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=4/h7OXFLoj5sNu8S6Ib2yARBNSTdc9EF/svbaK+WcVg=; b=zxmuozqEE9XnFS/kEQkum8DqoK
	bDgV+E5qNQAO80gCNPmTebT0wcqNfSgworJ2jeSi9q2Xx/RGgO6vrPjDThY6D9HXcDfqYlsMy98rn
	GLdoxgjOYnQ6+RvNKR6y3Rf/lYxTMth/5T9NU7PNUomyAynHNZ5jB/OECRa0wEsRfvEoaRB8DLOuT
	cPfjQLkbaIoaw3yO7Lq2RvWTB6V8jsYvUgNhvDXXgeCp2GMt8h8JG9jcURjDe7blX1P9UeHcQeNzA
	n79MtaHF75I4ZzrySaJU1TU1LZ3RWZ5cuqdfz1Oj6TaWjG5B1q3Z9eLvGLOAWpJxL54N36naSxhdo
	ZHxd2OxQ==;
Received: from i53875b6a.versanet.de ([83.135.91.106] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vfFma-001wNx-Bj; Mon, 12 Jan 2026 12:08:24 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 FUKAUMI Naoki <naoki@radxa.com>,
 Marco Schirrmeister <mschirrmeister@gmail.com>,
 John Clark <inindev@gmail.com>, Tianling Shen <cnsztl@gmail.com>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add cd-gpios for sdmmc of RK3576 EVB1
Date: Mon, 12 Jan 2026 12:08:24 +0100
Message-ID: <2246870.KiezcSG77Q@diego>
In-Reply-To: <1768189768-96333-4-git-send-email-shawn.lin@rock-chips.com>
References: <1768189768-96333-1-git-send-email-shawn.lin@rock-chips.com>
 <1768189768-96333-4-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_030826_911876_B58B7811 
X-CRM114-Status: GOOD (  11.94  )
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

SGksCgpBbSBNb250YWcsIDEyLiBKYW51YXIgMjAyNiwgMDQ6NDk6MjggTWl0dGVsZXVyb3DDpGlz
Y2hlIE5vcm1hbHplaXQgc2NocmllYiBTaGF3biBMaW46Cj4gV2l0aG91dCBjZC1ncGlvcywgdGhl
IHNkbW1jIHdvdWxkIG5vdCBiZSBkZXRlY3RlZCwgYmVjYXVzZSBkdXJpbmcKPiBydW50aW1lIFBN
LCB0aGUgY2xvY2sgaXMgZ2F0ZWQgd2hpY2ggcHJldmVudHMgdGhlIGlycSBmcm9tIGlzc3Vpbmcu
Cj4gCgp0aGlzIGNvdWxkIHVzZSBhIGZpeGVzLXRhZyBwZXJoYXBzPwoKPiBTaWduZWQtb2ZmLWJ5
OiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4KPiAtLS0KPiAKPiAgYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NzYtZXZiMS12MTAuZHRzIHwgMSArCj4gIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni1ldmIxLXYxMC5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU3Ni1ldmIxLXYxMC5kdHMKPiBpbmRleCAwNzg5NzMzLi5iNTgzY2VjIDEw
MDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LWV2YjEtdjEw
LmR0cwo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LWV2YjEtdjEw
LmR0cwo+IEBAIC05NTgsNiArOTU4LDcgQEAKPiAgCWJ1cy13aWR0aCA9IDw0PjsKPiAgCWNhcC1t
bWMtaGlnaHNwZWVkOwo+ICAJY2FwLXNkLWhpZ2hzcGVlZDsKPiArCWNkLWdwaW9zID0gPCZncGlv
MCBSS19QQTcgR1BJT19BQ1RJVkVfTE9XPjsKPiAgCWRpc2FibGUtd3A7Cj4gIAltYXgtZnJlcXVl
bmN5ID0gPDIwMDAwMDAwMD47Cj4gIAluby1zZGlvOwo+IAoKCgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
