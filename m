Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95B98C5B552
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Jun 2025 10:00:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r1kiKhA0NjrZmmmlLbax7hKvGsFe7yACzUTHSwsrlog=; b=UFr+T6p90sH+wl
	RrmFunOS4cph51VKknd3ripJYixxJujvpPCIxO+JE06/8AiWBdCnCR7o2uILw5fnfUr8+hUQ1EiVP
	2VPoLvsXmfaKiLG+qRhE9/S6BEiaBd4tOuxWx/Sf7hm3JMV35If0eMjm3O2TBG26HNNmADAg7+kaj
	POhIf1suqAJoxCADiH/R01R4DeB07Us746uTsh38a+BhdXh6Y1pWj+8I1yfa5hFRrAVsdPXiaVKPy
	RHpoVXDtXtJY2CqdauOoqmyX34eIMXNBLCcHLksJeuo+XRFKiIhuwCkUJZFftXPK0ZZzcTF1H4D/I
	7P3+VmEiyU+wutUMnHyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOZIU-00000003qwg-2JPx;
	Mon, 09 Jun 2025 10:00:06 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOZFT-00000003qcs-1niR;
	Mon, 09 Jun 2025 09:57:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=6DvcsTsouDL2xyct8nJS/5GZ1osdIxIFWhYhic/hWMY=; b=URNFd0PSsk0P7K0Be6K+rbYh5F
	YFOT1i5tAEzi4qVMmo2RYnmW7JeMvwjeZ+Gjgs++GiDpvyM2EVWHvu9fvuh7UDagqGLDoOPqvHfyq
	JCtKJFT8b3VbzgFWPXUx0aThsllZ/pbVmG9Rki9yO4LIqbU3De5KlWrsjtKfbDCdXZYQM7XkLvy7k
	BO60Rh3Ir/Vs9nLxZP7M2vobuXXU+yK/1WEa6x3n74nz3e/QrpMm7hsaCdK8/PVq8mqHyDR4OAnEG
	y8bVWLJ/Mfsei0haUi6GtY3TxPvKcXGtYnq+Eem393Q1dmTSfsK3awMP8KWzMjEAkEtXStDavTNZ8
	/IuybvlQ==;
Received: from i53875b1c.versanet.de ([83.135.91.28] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uOZFP-00062Y-Hr; Mon, 09 Jun 2025 11:56:55 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Quentin Schulz <foss+kernel@0leil.net>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Quentin Schulz <quentin.schulz@cherry.de>
Subject: Re: [PATCH] arm64: dts: rockchip: support camera module on Haikou Video Demo
 on PX30 Ringneck
Date: Mon, 09 Jun 2025 11:56:54 +0200
Message-ID: <2806486.NG923GbCHz@phil>
In-Reply-To: <20250516-ringneck-haikou-video-demo-cam-v1-1-fff23160395f@cherry.de>
References: <20250516-ringneck-haikou-video-demo-cam-v1-1-fff23160395f@cherry.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250609_025659_485265_B9D5774F 
X-CRM114-Status: GOOD (  11.55  )
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

SGkgUXVlbnRpbiwKCkFtIEZyZWl0YWcsIDE2LiBNYWkgMjAyNSwgMTk6MjY6MTAgTWl0dGVsZXVy
b3DDpGlzY2hlIFNvbW1lcnplaXQgc2NocmllYiBRdWVudGluIFNjaHVsejoKPiArJmlzcCB7Cj4g
KwlzdGF0dXMgPSAib2theSI7Cj4gKwo+ICsJcG9ydHMgewo+ICsJCXBvcnRAMCB7Cj4gKwkJCW1p
cGlfaW5fY2FtOiBlbmRwb2ludEAwIHsKPiArCQkJCXJlZyA9IDwwPjsKPiArCQkJCWRhdGEtbGFu
ZXMgPSA8MSAyPjsKPiArCQkJCXJlbW90ZS1lbmRwb2ludCA9IDwmY2FtX291dD47Cj4gKwkJCX07
Cj4gKwkJfTsKPiArCX07Cj4gIH07CgpkdGMgaXMgcXVpdGUgdW5oYXBweSBhYm91dCB0aGlzIGNv
bnN0cnVjdCA7LSkgLgoKd2l0aCBhIFc9MSBidWlsZCBvcHRpb24gd2hlbiBjb21waWxpbmcgRFRC
cyB3ZSBlbmQgdXAgd2l0aCBhIG51bWJlcgpvZiBjb21wbGFpbnRzIGFib3V0IG1pc3NpbmcgYW5k
L29yIHVubmVlZGVkIGFkZHJlc3MtY2VsbHMvc2l6ZS1jZWxscwpvciAib25seSBvbmUgZW5kcG9p
bnQsIEAwIG5vdCBuZWNlc3NhcnkiLgoKSSB0aGluayBpdCB3b3VsZCBtYWtlIHNlbnNlIHRvIGdp
dmUgdGhlIGlzcCBwb3J0IGEgcGhhbmRsZSBpbiB0aGUKcHgzMC5kdHNpIGFuZCByZWZlcmVuY2Ug
dGhhdCBvbmUgaGVyZSAtIHNpbWlsYXIgdG8gaG93IHRoZSBkc2ktcGFuZWwKd29ya3MuCgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
