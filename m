Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2940EC43334
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Jun 2022 22:59:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y4YnbVrTHCNPJDFBJsBfgyuRtrWcNCkPR1eJHbLAJeY=; b=NI0TJ2kzx0tN6W
	YktaodOcSNZZ8Ik3lgF8QVMsTQ5PVu2Y3cWIok/juAKEf5QyBApuE0HLZc+okUjKNwk364U01sh5V
	wYeP6Bkkl4xtzB7/Q5HjKFwOiilp86ZkkZvbwmswOfg2SS2/CDoLk5N6oTVx4Lz/DACGoJ2o9lpKk
	m2NDYeeaYqPSdVUkFznZjP+TTAG9Cprtn2Xx4S7PCVmPH2B6EiufJ9PeE/yIfFdNJBogh5AjDSuOA
	mY623k8OpZ2pkSNt+jVCEKohLDNli9aunqpp5oH9x0oP4ulI+Av18bJvb5iH6OqTDGW1gnlt+FKfc
	NsAA+gjrrYZXmzgVze8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0WY2-000UND-J6; Sun, 12 Jun 2022 22:59:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0WY0-000ULn-AV; Sun, 12 Jun 2022 22:59:09 +0000
Received: from p57b77a67.dip0.t-ipconnect.de ([87.183.122.103] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1o0WXZ-0004F4-F7; Mon, 13 Jun 2022 00:58:41 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: devicetree@vger.kernel.org,
	=?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Nishanth Menon <nm@ti.com>,
	Ray Jui <rjui@broadcom.com>,
	Fabio Estevam <festevam@gmail.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	linux-imx@nxp.com,
	Scott Branden <sbranden@broadcom.com>,
	kernel@pengutronix.de,
	bcm-kernel-feedback-list@broadcom.com,
	linux-rockchip@lists.infradead.org,
	Tero Kristo <kristo@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	Wei Xu <xuwei5@hisilicon.com>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Shawn Guo <shawnguo@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Andy Gross <agross@kernel.org>,
	Li Yang <leoyang.li@nxp.com>,
	Vignesh Raghavendra <vigneshr@ti.com>
Subject: Re: (subset) [PATCH 0/6] arm64: dts: Add missing space around properties
Date: Mon, 13 Jun 2022 00:58:37 +0200
Message-Id: <165507470068.2008466.15707795117164470550.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220612223201.2740248-1-niklas.soderlund+renesas@ragnatech.se>
References: <20220612223201.2740248-1-niklas.soderlund+renesas@ragnatech.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220612_155908_401762_1D8C5907 
X-CRM114-Status: UNSURE (   9.70  )
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

T24gTW9uLCAxMyBKdW4gMjAyMiAwMDozMTo1NSArMDIwMCwgTmlrbGFzIFPDtmRlcmx1bmQgd3Jv
dGU6Cj4gV2hpbGUgZGVidWdnaW5nIGFuIGlzc3VlIG9uIGEgUmVuZXNhcyBib2FyZCBJIGZvdW5k
IGEgdHlwbyB3aXRoIG1pc3NpbmcKPiBzcGFjZXMgYXJvdW5kIHByb3BlcnRpZXMgdGhhdCBoYWQg
YmVlbiBjb3BpZWQgYXJvdW5kIFsxXS4gVGhpcyBleHRlbmRzCj4gdGhpcyBmaXggZm9yIGFsbCBh
cm02NCBmaWxlcy4KPiAKPiAxLiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1yZW5lc2Fz
LXNvYy8yMDIyMDYwODE3NTcyOC4xMDEyNTUwLTEtbmlrbGFzLnNvZGVybHVuZCtyZW5lc2FzQHJh
Z25hdGVjaC5zZS8KPiAKPiBOaWtsYXMgU8O2ZGVybHVuZCAoNik6Cj4gICBhcm02NDogZHRzOiBi
cm9hZGNvbTogQWRkIG1pc3Npbmcgc3BhY2UgYXJvdW5kIHN0YXR1cyBwcm9wZXJ0eQo+ICAgYXJt
NjQ6IGR0czogcm9ja2NoaXA6IEFkZCBtaXNzaW5nIHNwYWNlIGFyb3VuZCByZWd1bGF0b3ItbmFt
ZSBwcm9wZXJ0eQo+ICAgYXJtNjQ6IGR0czogZnJlZXNjYWxlOiBBZGQgbWlzc2luZyBzcGFjZSBh
cm91bmQgcHJvcGVydGllcwo+ICAgYXJtNjQ6IGR0czogaGlzaWxpY29uOiBBZGQgbWlzc2luZyBz
cGFjZSBhcm91bmQgcHJvcGVydGllcwo+ICAgYXJtNjQ6IGR0czogcWNvbTogQWRkIG1pc3Npbmcg
c3BhY2UgYXJvdW5kIHByb3BlcnRpZXMKPiAgIGFybTY0OiBkdHM6IHRpOiBBZGQgbWlzc2luZyBz
cGFjZSBhcm91bmQgcHJvcGVydGllcwo+IAo+IFsuLi5dCgpBcHBsaWVkLCB0aGFua3MhCgpbMi82
XSBhcm02NDogZHRzOiByb2NrY2hpcDogQWRkIG1pc3Npbmcgc3BhY2UgYXJvdW5kIHJlZ3VsYXRv
ci1uYW1lIHByb3BlcnR5CiAgICAgIGNvbW1pdDogZDA0MGU4MWJlYzQwNzA1N2I2ZGVhOWRhZGZl
NWUxNWI5ODQ1YjAxMAoKQmVzdCByZWdhcmRzLAotLSAKSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNu
dGVjaC5kZT4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
