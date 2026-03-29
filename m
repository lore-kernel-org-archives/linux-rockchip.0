Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38CF2FC97E2
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Mar 2026 18:50:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:
	Message-Id:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n/MDtzR5dIVfiKAI5o2fJRoJW9QwLoLEsAdvaCFCv6k=; b=vU2vz2+BCvGOMD
	4Wz6DiXspmCMcQX3yvNBRSCQrlO6xwDgHQYUPJBPQMDQkRrSvXJVkdSYeapSRGsrMXq3AQ1RKolHb
	BMzsn+CYLAMAHRuDHoUWjIrRLM3swT4cK/Sq3MiIZhkak6e605tQZEeqdhl33G5vTbEyprteDKW6T
	qaNACmD+3O90xP2XfllaB5NwVTLfVWc4MlVgAZ515IW+QYEOmekv0GY//XL7LpWff1OtnmX5HW5C8
	UpX7xn/2cmGUVIewOkLoVQGdl4EJPJTZ2TeN/hMDTdiai5R521ekVjP5xPvhBzaalZOJMeKougg+2
	u9pYuY/FPP7AevUUcs7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6vDf-0000000AFf2-1Gus;
	Sun, 29 Mar 2026 18:50:43 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6vDc-0000000AFec-2AKp;
	Sun, 29 Mar 2026 18:50:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 3A2C941B20;
	Sun, 29 Mar 2026 18:50:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1DD7AC2BCB1;
	Sun, 29 Mar 2026 18:50:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774810239;
	bh=O82FpE/7ZgUmCxQeK0am6BAdKnT2A6ZdwoNVv3WFz5w=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=FaRTxRSG1VuymtP02WGPHzUkmXvzxs2ZnPhrpHxCDzor/J0ZcNxBiOQTGAmm6Dbdj
	 IojhvHCiJMHRNo0yWJtMkS7fhNE/bo5AbTpRhjvq24fIElUnik4SHYeO9MpG7nOuZP
	 tNvWXfSol5idU2kOwo3qymDS3DVHkl5rl0GvhU1vT2XOk47maa9uhTTFbP/laHLfgh
	 Au9F3RDZVp4xzUjopO2WRirIEsUFzUgj1vFcul8FzE/bQ+wLbojC+SWhIkArHhcysz
	 /Bi7Ei6gj7lB+kIlZWdXAQRv8TD6+BUY+QxBRek0mF68LYoY2PeQqMEV2wZO0bgMVD
	 5V76/1hQhNHPw==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 02DD13930012;
	Sun, 29 Mar 2026 18:50:25 +0000 (UTC)
MIME-Version: 1.0
Subject: Re: [PATCH] net: stmmac: dwmac-rk: Fix typo in comment
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <177481022378.437043.15447396546007070348.git-patchwork-notify@kernel.org>
Date: Sun, 29 Mar 2026 18:50:23 +0000
References: <tencent_833D2AD6577F21CF38ED1C3FE8814EB4B308@qq.com>
In-Reply-To: <tencent_833D2AD6577F21CF38ED1C3FE8814EB4B308@qq.com>
To: =?utf-8?b?6LCi6Ie06YKmIChYSUUgWmhpYmFuZykgPFlla2luZ0ByZWQ1NC5jb20+?=@aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org
Cc: linux-rockchip@lists.infradead.org, Yeking@Red54.com, heiko@sntech.de,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@foss.st.com, rmk+kernel@armlinux.org.uk,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260329_115040_576372_BF64290F 
X-CRM114-Status: UNSURE (   9.02  )
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

SGVsbG86CgpUaGlzIHBhdGNoIHdhcyBhcHBsaWVkIHRvIG5ldGRldi9uZXQtbmV4dC5naXQgKG1h
aW4pCmJ5IEpha3ViIEtpY2luc2tpIDxrdWJhQGtlcm5lbC5vcmc+OgoKT24gU2F0LCAyOCBNYXIg
MjAyNiAxMzo0MzozMSArMDAwMCB5b3Ugd3JvdGU6Cj4gQ29ycmVjdCB0aGUgdHlwbyAicmszNTIw
IiB0byAicmszNTI4IiBpbiBjb21tZW50Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IOiwouiHtOmCpiAo
WElFIFpoaWJhbmcpIDxZZWtpbmdAUmVkNTQuY29tPgo+IC0tLQo+ICBkcml2ZXJzL25ldC9ldGhl
cm5ldC9zdG1pY3JvL3N0bW1hYy9kd21hYy1yay5jIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwg
MSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCkhlcmUgaXMgdGhlIHN1bW1hcnkgd2l0aCBs
aW5rczoKICAtIG5ldDogc3RtbWFjOiBkd21hYy1yazogRml4IHR5cG8gaW4gY29tbWVudAogICAg
aHR0cHM6Ly9naXQua2VybmVsLm9yZy9uZXRkZXYvbmV0LW5leHQvYy8zMGZjZjI4ZDgzZWUKCllv
dSBhcmUgYXdlc29tZSwgdGhhbmsgeW91IQotLSAKRGVldC1kb290LWRvdCwgSSBhbSBhIGJvdC4K
aHR0cHM6Ly9rb3JnLmRvY3Mua2VybmVsLm9yZy9wYXRjaHdvcmsvcHdib3QuaHRtbAoKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
