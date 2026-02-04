Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD3CBEA7946
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Feb 2026 20:01:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7b0+Exx4jQNNJhV6PxAun8Dk0RJ2lpT9VmdB9VdwpyQ=; b=LwsHqqhcetaZwj
	fvE1O3AO6K/9nMukfjvQPpDSHSKdIc5Z+/xfOT/8SEgdtelk6zGPYQR7KiAoR1JFMpEGKEkn8cVIn
	STnC1LSyCVLd61q5ryYm4KuZ4QrFjn+Ck3AocfhvFr6+3ogGr7KOJACoxoG2x/c0lwTzfn5tux/K3
	puhF87alcfoxSzYGQhpjADsHKCCz/vWncDSXkh4CnaIHYM2ZLQiE8v0WSQVdFdIVMzTIv3FnE6JBW
	8jPHVnMbPlL79cOesrdeWyWtALMPFzY2RN/1F1z4nfCElUW79RFEsSZEGuc1u8BPXCjTBn6mk2DY9
	b3UhXDXigEfCFBLTbZYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnj4H-000000091Gi-106y;
	Wed, 04 Feb 2026 20:01:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnj4F-000000091BP-1J9s;
	Wed, 04 Feb 2026 20:01:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=Kd5J4KD+UWilIWXl775s3u3AtyqpuOqe1d0igb4DjAA=; b=Plki93Y0Vg2Z02yx9+FEnzgMGz
	Frkfzx0V8NKR4Lr+NCI7ylSr+VZTvlviKazEkMiKPHd5IwUjcNh4BGvNf8oAJsLtj8X+uBU04qai8
	wWvG/SBIpAGg5VcA1fTk499mXZ/ZM/N4ipqii10r41A8Mdajmur6vspH3hiISQEFG2DK1HXYwnoMu
	sk5ZwInCtUpoPCH80rFz7gJWyy0M5b8Pd90Qsv+KWdwh6a7R9HknzaHrBJKIuUf8hPqJiQE4k9FsX
	V9iv09y9VOLtZWNa+ovsYVgwILrUFUp9A4XgvxEdIZBYpL9QJIinzHwBXvtbmNYT6PE3NdXKUkBU9
	D/JiwJNQ==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnj47-00000001BQP-3IVf;
	Wed, 04 Feb 2026 20:01:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Kd5J4KD+UWilIWXl775s3u3AtyqpuOqe1d0igb4DjAA=; b=t1vzuh4BbUI7J8iR5DF6aPXWu9
	cRtor9rSOEClYtro/eJzqXsDxY1ywe6TGGvU5O9n5Hk8vm+q+BrFZJifHcC55IEY+0ODy+z5hyqM7
	B60pbQ9Jgn2LCQYdppcEiH5llI1QB4NbPb2B/7C/ybfAT3n9xcYKVhdalqfUVQwVM+u+r+Og4qEiN
	xgzswZdFjAsPvvBrJOuSDtLYippmhkiClUgHWbvzT792dOmvEdRaBv46sQbmrhmTTU9vlUra2V3NB
	sTITHHb1Xxb8/C8MbAiIczc+6fMdbJTVM2vikQ1mrertPl2tgRBrIk02sJuydrSBANQQCAjNsqe18
	WQt2CSkQ==;
Received: from i53875ac7.versanet.de ([83.135.90.199] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vnj3v-0070xM-9X; Wed, 04 Feb 2026 21:01:19 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Andrew Lunn <andrew@lunn.ch>,
 "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, netdev@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>
Subject: Re: [PATCH net-next 4/6] net: stmmac: rk: rk3528: gmac0 only supports RMII
Date: Wed, 04 Feb 2026 21:01:19 +0100
Message-ID: <3881472.Sgy9Pd6rRy@diego>
In-Reply-To: <E1vnYy1-00000007hp3-0hKm@rmk-PC.armlinux.org.uk>
References: <aYMN2gZMfLPKuukG@shell.armlinux.org.uk>
 <E1vnYy1-00000007hp3-0hKm@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_200134_602550_F189FD9F 
X-CRM114-Status: UNSURE (   9.24  )
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

QW0gTWl0dHdvY2gsIDQuIEZlYnJ1YXIgMjAyNiwgMTA6MTQ6MzMgTWl0dGVsZXVyb3DDpGlzY2hl
IE5vcm1hbHplaXQgc2NocmllYiBSdXNzZWxsIEtpbmcgKE9yYWNsZSk6Cj4gUkszNTI4IGdtYWMw
IGR0c2kgY29udGFpbnM6Cj4gCj4gICAgICAgICAgICAgICAgIGdtYWMwOiBldGhlcm5ldEBmZmJk
MDAwMCB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgcGh5LWhhbmRsZSA9IDwmcm1paTBfcGh5
PjsKPiAgICAgICAgICAgICAgICAgICAgICAgICBwaHktbW9kZSA9ICJybWlpIjsKPiAKPiAgICAg
ICAgICAgICAgICAgICAgICAgICBtZGlvMDogbWRpbyB7Cj4gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBybWlpMF9waHk6IGV0aGVybmV0LXBoeUAyIHsKPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgcGh5LWlzLWludGVncmF0ZWQ7Cj4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICB9Owo+ICAgICAgICAgICAgICAgICAgICAgICAgIH07Cj4gICAg
ICAgICAgICAgICAgIH07Cj4gCj4gVGhpcyBmb2xsb3dzIHRoZSBzYW1lIHBhdHRlcm4gYXMgcmsz
MzI4LCB3aGVyZSB0aGlzIGdtYWMgaW5zdGFuY2UKPiBvbmx5IHN1cHBvcnRzIFJNSUkuIERpc2Fi
bGUgUkdNSUkgaW4gcGh5bGluaydzIHN1cHBvcnRlZF9pbnRlcmZhY2VzCj4gbWFzayBmb3IgdGhp
cyBnbWFjIGluc3RhbmNlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFJ1c3NlbGwgS2luZyAoT3JhY2xl
KSA8cm1rK2tlcm5lbEBhcm1saW51eC5vcmcudWs+CgpSZXZpZXdlZC1ieTogSGVpa28gU3R1ZWJu
ZXIgPGhlaWtvQHNudGVjaC5kZT4KCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
