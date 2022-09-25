Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6676CC04A95
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Sep 2022 12:40:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ydq39/4sMIA1+FKyDfo8WyAHERVpS9SeH1VCIY/wucI=; b=UsWd28DnQYbGdr
	km0ViQ0gmOArFAXjVinOrJot9nHwjaiAMG107tu1EueYGDp+TCPgReBmaGG+kaaMgHN4RQZoDRO26
	i453R/qqydtA8Xf+Oa0CIoUq9sPT6H59yIhrBtmXGjoGv+iI0oUxjJQvgMLuOEU9Rke600tE2lj8f
	6TRP8LgzedJR9VZVUfIbV/XWtVP7fZWkAlxBIVqfnPyOuDA98QMfrJQY0vAS53/XEFOYyda+iMPhi
	eljIudIjELtWQ1gFR87npKFwd0oCdGL9YlpLnQi1JVzq2xPwH6V4jUM/a5GUr8rb/nxQsdAxaz//l
	5sEcoEewxs2vAyDPdT2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocQvh-00DVld-F3; Sun, 25 Sep 2022 12:40:17 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocQvT-00DVcR-Sq; Sun, 25 Sep 2022 12:40:05 +0000
Message-ID: <ce61fb9a-dcf4-27a2-ac03-62060a1512f9@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1664109595;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=OXUDIYwGS8VQVu3j8KhtahQQnFOQ52Ygtum7FlzQF2Q=;
	b=eOF+RH4Gwk0Wt8HCyeyTDsQaH9OC+2fvvQtX/WG/mqdKDEO1c5HVQiAtdL1ahS+olMee36
	Xt280jYvWK1ZDTUr13B0zYE2TVKgmgS9JH5ojzFrsUVupBzOoli90t+MZlUOX5BJcRKbfc
	gqpOKDifPJO6HYTYe8QYMifHMdFkna8Zs1VyMY9CG3oKQCgtm2e9wy5pLKD7YIdXP5nk0V
	1Ua4wKOlgHOP6FG/UyWp83qie5+8z0Y0HFKZzOQZVT3cUsQOV/CN4wa4hr9f9SSkCMwgZu
	XbcFVY9x9wBaFNSigtTDjhf1tc+YEUt1dTBYTLwevb4C8Lzz1JPIcye5v7iwSA==
Date: Sun, 25 Sep 2022 14:39:54 +0200
MIME-Version: 1.0
Subject: Re: [PATCH] arm64: dts: rockchip: fix quartz64-a bluetooth
 configuration
To: Lev Popov <leo@nabam.net>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220925123144.70639-1-leo@nabam.net>
Content-Language: da-DK
From: Dan Johansen <strit@manjaro.org>
Organization: Manjaro ARM
In-Reply-To: <20220925123144.70639-1-leo@nabam.net>
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=strit@manjaro.org smtp.mailfrom=strit@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220925_054004_144031_FE29E92E 
X-CRM114-Status: GOOD (  13.31  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CkRlbiAyNS4wOS4yMDIyIGtsLiAxNC4zMSBza3JldiBMZXYgUG9wb3Y6Cj4gRm9yICJRdWFydHo2
NCBNb2RlbCBBIiBhZGQgbWlzc2luZyBSVFMgbGluZSB0byB0aGUgVUFSVCBpbnRlcmZhY2UgdXNl
ZCBieQo+IGJsdWV0b290aCBhbmQgc3dhcCBibHVldG9vdGggaG9zdC13YWtldXAgYW5kIGRldmlj
ZS13YWtldXAgZ3BpbyBwaW5zIHRvCj4gbWF0Y2ggdGhlIGJvYXJkcyBwaHlzaWNhbCBsYXlvdXQu
IFRoaXMgY2hhbmdlcyBhcmUgbmVjZXNzYXJ5IHRvIG1ha2UKPiBibHVldG9vdGggcHJvdmlkZWQg
YnkgdGhlIHdpcmVsZXNzIG1vZHVsZSB3b3JrLgpZb3Ugc2hvdWxkIGFkZApGaXhlczrCoCBjZDQx
NGQ1YWMxZmRlZWNmMDYxNzczN2U2ODhhMWFmMDA4NTgyNTNhIChhcm02NDogZHRzOiByb2NrY2hp
cDogCnJlbmFtZSBRdWFydHo2NC1BIGJsdWV0b290aCBncGlvcykKSSB0aGluaywgYXMgdGhhdCB3
YXMgdGhlIGxhc3QgY29tbWl0IHRoYXQgdG91Y2hlZCB0aGUgZ3BpbyBsaW5lcy4KPiBTaWduZWQt
b2ZmLWJ5OiBMZXYgUG9wb3YgPGxlb0BuYWJhbS5uZXQ+Cj4gLS0tCj4gICBhcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU2Ni1xdWFydHo2NC1hLmR0cyB8IDYgKysrLS0tCj4gICAxIGZp
bGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdp
dCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY2LXF1YXJ0ejY0LWEuZHRzIGIv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjYtcXVhcnR6NjQtYS5kdHMKPiBpbmRl
eCBhMDU0NjBiOTI0MTUuLjkxOTA4MDgxYzVlZCAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU2Ni1xdWFydHo2NC1hLmR0cwo+ICsrKyBiL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszNTY2LXF1YXJ0ejY0LWEuZHRzCj4gQEAgLTc0MCw3ICs3NDAs
NyBAQCAmdWFydDAgewo+ICAgCj4gICAmdWFydDEgewo+ICAgCXBpbmN0cmwtbmFtZXMgPSAiZGVm
YXVsdCI7Cj4gLQlwaW5jdHJsLTAgPSA8JnVhcnQxbTBfeGZlciAmdWFydDFtMF9jdHNuPjsKPiAr
CXBpbmN0cmwtMCA9IDwmdWFydDFtMF94ZmVyICZ1YXJ0MW0wX2N0c24gJnVhcnQxbTBfcnRzbj47
Cj4gICAJc3RhdHVzID0gIm9rYXkiOwo+ICAgCXVhcnQtaGFzLXJ0c2N0czsKPiAgIAo+IEBAIC03
NDgsOCArNzQ4LDggQEAgYmx1ZXRvb3RoIHsKPiAgIAkJY29tcGF0aWJsZSA9ICJicmNtLGJjbTQz
NDM4LWJ0IjsKPiAgIAkJY2xvY2tzID0gPCZyazgxNyAxPjsKPiAgIAkJY2xvY2stbmFtZXMgPSAi
bHBvIjsKPiAtCQlkZXZpY2Utd2FrZXVwLWdwaW9zID0gPCZncGlvMiBSS19QQzEgR1BJT19BQ1RJ
VkVfSElHSD47Cj4gLQkJaG9zdC13YWtldXAtZ3Bpb3MgPSA8JmdwaW8yIFJLX1BDMCBHUElPX0FD
VElWRV9ISUdIPjsKPiArCQlob3N0LXdha2V1cC1ncGlvcyA9IDwmZ3BpbzIgUktfUEMxIEdQSU9f
QUNUSVZFX0hJR0g+Owo+ICsJCWRldmljZS13YWtldXAtZ3Bpb3MgPSA8JmdwaW8yIFJLX1BDMCBH
UElPX0FDVElWRV9ISUdIPjsKPiAgIAkJc2h1dGRvd24tZ3Bpb3MgPSA8JmdwaW8yIFJLX1BCNyBH
UElPX0FDVElWRV9ISUdIPjsKPiAgIAkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiAgIAkJ
cGluY3RybC0wID0gPCZidF9ob3N0X3dha2VfbCAmYnRfd2FrZV9sICZidF9lbmFibGVfaD47Ci0t
IApLaW5kIHJlZ2FyZHMKKkRhbiBKb2hhbnNlbioKUHJvamVjdCBsZWFkIG9mIHRoZSAqTWFuamFy
byBBUk0qIHByb2plY3QKTWFuamFyby1BUk0gPGh0dHBzOi8vbWFuamFyby5vcmc+CgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
