Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 784E8C52D6F
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Aug 2024 08:56:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sdaPLi272HI9S0kxvZDLZGqvqvzGtYlprhWDKehrEsY=; b=Ct/7PE0x6m9EUjkOQ/R6S/HTLX
	JZPBXoJywr86ZUMHnznQQRj9ZWyvL7sy8UjBCJErzT0hw8Y4hZycJSSEl1qw689ZlV1dV+MzhwCYN
	6+DJ5+MB3vvgeMZbiG2eyl9sBGNi+7mahNeTrWmWH/16e3vtGojbD3NQqsiGUgSMr0IiOmjUBuf71
	Hffz2S+R54dJBx0CG8ucqqeHIiJDxiii5fKuZALhC8985EU31EreyGf+NbZd/PWvEEeiSfCSoV+D1
	ocamlxKHxQrrL3JA35Kx0fO6f406ljJnLXoOrhhO4j1GUtbM4HLbwWb7CnkHaDqXbhMHegtXiv7vZ
	pbS8wtUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgh8k-00000008AVh-0HhG;
	Wed, 21 Aug 2024 08:56:26 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgh7z-00000008AMJ-2CPO;
	Wed, 21 Aug 2024 08:55:40 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1724230538;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=o5+mhHoQRTBRXRWrYFtxPdPmjZzokWCEndZVOtR565Y=;
	b=m6DfmStz8SOfq5zC8n1iqsMD1H19KuNWrmoKefRudJe2SkRfA0y5bX/XXa4rrZVRZ+6eUb
	fhTu99IP0+sYoeXAs5dGU6hk3Z0JirUAhpOMWvtcE+aN5+z/gn8u2/anp4jSzqNa6lSvi8
	8fBcf4z49/bRRjAVWUM+seXMepVHObDXjV8HwR8f6xOh8wHGAKz+N9GpXRZ3t+0tCeYKIu
	DUCrbTxs51/FT/yRKtRqKcgIfWT0BNEdRLR5y99K8XG1H89jkoHqTkl47ulw780M7f2zhL
	m7RieNEze6AZNPDpju8msLMsOmJoDzZ6Ji3fg7IAKJd/brqK8obynNDzMOpyUw==
Date: Wed, 21 Aug 2024 10:55:38 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
 vkoul@kernel.org, kishon@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] phy: phy-rockchip-inno-usb2: Handle failed extcon
 allocation better
In-Reply-To: <39189616.J2Yia2DhmK@diego>
References: <cover.1724225528.git.dsimic@manjaro.org>
 <96200baf794a0c451f3bbc3f5530b8cf0e359dfc.1724225528.git.dsimic@manjaro.org>
 <39189616.J2Yia2DhmK@diego>
Message-ID: <8f1f70ffdf5f52347c47cad31bf0a7da@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240821_015539_723278_A6EEEDAD 
X-CRM114-Status: UNSURE (   7.47  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjAyNC0wOC0yMSAxMDo0MSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gTWl0dHdvY2gs
IDIxLiBBdWd1c3QgMjAyNCwgMDk6Mzc6NTQgQ0VTVCBzY2hyaWViIERyYWdhbiBTaW1pYzoKPj4g
UmV0dXJuIHRoZSBhY3R1YWwgZXJyb3IgY29kZSB1cG9uIGZhaWx1cmUgdG8gYWxsb2NhdGUgZXh0
Y29uIGRldmljZSwgCj4+IGluc3RlYWQKPj4gb2YgaGFyZGNvZGluZyAtRU5PTUVNLiAgVXNlIGRl
dl9lcnJfcHJvYmUoKSB0byBhbHNvIGxvZyBhcHByb3ByaWF0ZSAKPj4gbWVzc2FnZXMsCj4+IHdo
aWNoIGlzIGZpbmUgYmVjYXVzZSB0aGUgY29udGFpbmluZyBmdW5jdGlvbiBpcyB1c2VkIGluIHRo
ZSBwcm9iZSAKPj4gcGF0aC4KPj4gCj4+IEhlbHBlZC1ieTogSGVpa28gU3R1Ym5lciA8aGVpa29A
c250ZWNoLmRlPgo+IAo+IEhvdyBkaWQgSSBoZWxwIHdpdGggdGhpcz8gOi1ECj4gCj4gUmV2aWV3
ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CgpUaGFua3MgZm9yIHlvdXIg
cmV2aWV3LiAgV2VsbCwgeW91IHN1Z2dlc3RlZCB0aGF0IGRldl9lcnJfcHJvYmUoKSBpcyAKdXNl
ZC4gOikKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
