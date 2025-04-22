Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E58DC369C2
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Apr 2025 10:42:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vp/PHFerAZh9doF4BOwKEQGvy/i25N6v/apf5g45ZZA=; b=S/06Ol7y3ZHtwI
	GFL9hpv58iynYNGZnkE0dQiZYj0Fu20lyQj4PsPtJrwT6VA5XP5od5NF4k+EstdxGSZ7Yr9I5yVCz
	d7F7FDmvmj1P2tlcOLTjDbDB0PVYR3umOzOK7Sh4CdW2RqLqbo/MDVvl6sSHz00bSvwDeWbx6dK8i
	J4VHrA2lt+JHpTOUVcefupONEr6tR4EBWsA5lB6PFi9iq0UZ/OalXOQPJD+8jgSRGlV8SpyuTyn3a
	TQjatK71E/org2ietnn3BKMtcRCIlHAew8SzyzrdXxbC5ZvM2bmkgHnjqYDcTxJAfY1oUmu4ZlmWg
	3/mCEI8tJv02XTnLuSog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7B59-00000006oTm-28Dk;
	Tue, 22 Apr 2025 10:42:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7AXC-00000006gHB-156R;
	Tue, 22 Apr 2025 10:07:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=HZBXPRHY3UE9SrReW3ywpmh7huR69l16j+Wq7+1X+gU=; b=c2fpnOGYE9q/rLy/8Lg49CeLcs
	yW5x7DHAk16cRzODCRCE44mz+kR1zvcaepbBuPL+D1vkSM4/hI0NZXroFVxi1Qx+GB/EhJVNvqN22
	7h/E+BajWiUH125isixFu8bobNB/O6XZhVe+DWiojffWOgInZSA/uZf3epuUQpuRzYfJQuCnph9yD
	8RmWsXC5z8fCdlGkiecC4s5x1a37sm2ry3TUgI0JdrHr3kSllK+b0IfcWV14AVFuLkkIr6P7t83fw
	645Qniyv4R1rbSJS1zSHD9w95Ec2GVnkS5YJNDr7JhoPhxKMy7S+DITlWSvfH3kSvNvqywSzrVYzr
	7gDnMIAQ==;
Received: from i53875b95.versanet.de ([83.135.91.149] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1u7AXB-0001SH-2a; Tue, 22 Apr 2025 12:07:21 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org,
 Finley Xiao <finley.xiao@rock-chips.com>,
 Kever Yang <kever.yang@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: Re: [PATCH v3 3/3] nvmem: rockchip-otp: Add support for rk3562
Date: Tue, 22 Apr 2025 12:07:20 +0200
Message-ID: <1834328.VLH7GnMWUR@diego>
In-Reply-To: <20250415103203.82972-4-kever.yang@rock-chips.com>
References: <20250415103203.82972-1-kever.yang@rock-chips.com>
 <20250415103203.82972-4-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_030722_296279_F4E888B4 
X-CRM114-Status: UNSURE (   7.26  )
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

QW0gRGllbnN0YWcsIDE1LiBBcHJpbCAyMDI1LCAxMjozMjowMyBNaXR0ZWxldXJvcMOkaXNjaGUg
U29tbWVyemVpdCBzY2hyaWViIEtldmVyIFlhbmc6Cj4gRnJvbTogRmlubGV5IFhpYW8gPGZpbmxl
eS54aWFvQHJvY2stY2hpcHMuY29tPgo+IAo+IFRoaXMgYWRkcyB0aGUgbmVjZXNzYXJ5IGRhdGEg
Zm9yIGhhbmRsaW5nIG90cCBvbiB0aGUgcmszNTYyLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEZpbmxl
eSBYaWFvIDxmaW5sZXkueGlhb0Byb2NrLWNoaXBzLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBLZXZl
ciBZYW5nIDxrZXZlci55YW5nQHJvY2stY2hpcHMuY29tPgoKUmV2aWV3ZWQtYnk6IEhlaWtvIFN0
dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
