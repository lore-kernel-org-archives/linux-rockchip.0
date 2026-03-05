Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C573DEDEC07
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Mar 2026 05:07:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f3H4uFyfkcZEMDmL0+gGyjWu3S1DE1VihFPv0rj80+Q=; b=SwKxXKkF2cC+0f
	+vxINnjA7/FgOFo+Kbt9Wk76x2kDaP4jb3zSv3pFcGtxtSyFVyD+zrxZHNQhJ9ERKVoMysnnn3Mee
	y/IwZeknujXP9lUtHhPEKJXjK/zRdBmKzvhxFg/VCgKsQfpI3tAv2JVDAO+P1WBKPd4qdGEKzDHmS
	DK8wbfNJAbMlv6PMotXgU/fRMgJx3UsjDeSfr4+qMjO0WtJoWfQhte+tgSqgqtCNPa7cJVDFed1V/
	b2GRldsT029leOglj+AIvOCCNdoyIRkArMzDqYgprws8TA2olHegQ+FIcxP9py70XgrQCvi33v6Gz
	btViS6lurIrSXJ3pAqKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy0w6-00000000vhY-3JnM;
	Thu, 05 Mar 2026 05:07:46 +0000
Received: from mail-vs1-xe2c.google.com ([2607:f8b0:4864:20::e2c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy0w4-00000000vgt-2646
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Mar 2026 05:07:45 +0000
Received: by mail-vs1-xe2c.google.com with SMTP id ada2fe7eead31-5ffa0b23a1aso767426137.3
        for <linux-rockchip@lists.infradead.org>; Wed, 04 Mar 2026 21:07:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772687263; x=1773292063; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AdZmXhXnDlZdyTZS1Hc7DYg2ETszFmyndF++qZZtg5Y=;
        b=ViH/pMf+TgIH3nPnNRfciDjYhx4QlKz5i8gbuXUB7yynsQpGorUkHXXr9VDl3ahx2q
         LR83wrS5U2MkD+NWwtik/DOuGdeW3BLEm55P/CwFTclNOuO3GbSzfdraHdx3kiUTA7jF
         CkLVA8l97cCrEOPhLyjjS+w+8urxie58LoKYtVlIBsW+tPtpMFxGINee8icdtvKxU9vL
         8GE5c0TRCdPZbL2cmh7tc7mF3o5T6tNkK8FEHz2HwiI5oB25FXK4VEeYi/wsSmnE/7xP
         ILCcMsixUxDrEBrXIpGQ61BwH2522i1H1osW9EyozcpShjEQr8QakKcy9MtSrIP2R/WD
         C19A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772687263; x=1773292063;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AdZmXhXnDlZdyTZS1Hc7DYg2ETszFmyndF++qZZtg5Y=;
        b=g6pIYYWjU1b/eTA0cLwAw1WRPkpgWk/ZC8SxuF3kzHd3YojIw9kt+HiNzpaoQ/cLes
         B0ROdF4/wAzlwIT0qoFNKVheUAyyQzPxGpLdbL9z6QzFFGI6RtfSoepDihfR4WG0BH5n
         3X70ISkSJNuYtyavF9EeNzo1GfjfN5KRZbReL4HNIz82Zbv4JwYmesGgyaL/EDSkxWrM
         OaIujWVQpBgjAtATxGweMRKKoQUCSyqxCufPk+UlMXS5iYrdo28F7B1cvSUZaOpWmxnO
         3+3LOg/4OqLit21FWteujyeGkD3ZIYu29OXHvu2ezxVve5mGS2w1MNJsW54tJ+kETYsa
         dXaQ==
X-Forwarded-Encrypted: i=1; AJvYcCXGhkSbHwOiUPt3hyK9Ja008LvQKW+rl9EqIOMvydd99TKVj6Ltd0qAx5uzYmF6qucTBuUXqV7HtHU6jEbq/Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YxFBkC/JwcEsJkNIqFzTjjgu/3n5qTrWp+2UXZDzAdx8AUW1obE
	GOcVaBiYSwWSrwrG8oHlYkmptojSNVfngjUb4WFpN4WkkFZYoQNOUALx
X-Gm-Gg: ATEYQzyUZxCmyaGAa1JbURw2MAhwRcfDWnfcgbuzvtCvMCk8cBP/0kHQOb/nl8qrgOu
	UofHC2XAPR/rPUEPNJpaodiB/xIU8BTDJh0K/gMbB0/6nBP4wamcLQ+WY1/1dMoKlvvv80OwkNF
	2Gdn9H55lj97nz2ybltEso8A9MFeQP0q7KwGB7hzBQqpgqsKhsUPYTv35WaciTwQsfyjbf9/VvX
	w+ReF+olerza2PoOKJv+qh+qMnbpqTDbXLP2NXDdsWL1fSavPA1xRCVFIukaZHn1qf+mbumdTGc
	LwSf0V7GJ+kRGRxwpPipfxZPgi+AdzRx9U/MRRk7h2vdW7UzXiN2tbvQo8zqPiOOBork892k8uW
	EQUnDze8S31Dw7cQyBnEGgKu6nK/Afa71+kCxuODnWvNc6FML9IXHV7VnHCU868xW9SaKQIfznh
	s=
X-Received: by 2002:a05:6102:c4b:b0:5f1:70fe:3027 with SMTP id ada2fe7eead31-5ffaae99a69mr1529688137.24.1772687263133;
        Wed, 04 Mar 2026 21:07:43 -0800 (PST)
Received: from geday ([2804:7f2:8080:fd2e::1])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ffaca9c848sm4177694137.10.2026.03.04.21.07.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 21:07:42 -0800 (PST)
Date: Thu, 5 Mar 2026 02:07:36 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Dragan Simic <dsimic@manjaro.org>, Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 3/4] PCI: rockchip: drive at 2.5 GT/s, error other
 speeds
Message-ID: <aakPmB9-A0yS8qKM@geday>
References: <cover.1772239598.git.geraldogabriel@gmail.com>
 <2a0a4aa97bb8b0cb511cb651c5d66c9ec8bab97a.1772239598.git.geraldogabriel@gmail.com>
 <d2b91260-7666-3606-69ec-0e7cb7a48c02@manjaro.org>
 <l3y3isas7rfe47uwk3bcvx4qpkpfen3j32omy6r4rxe6kn4kas@c4z5ydkervkm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <l3y3isas7rfe47uwk3bcvx4qpkpfen3j32omy6r4rxe6kn4kas@c4z5ydkervkm>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_210744_573952_52814C53 
X-CRM114-Status: UNSURE (   9.17  )
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

T24gVGh1LCBNYXIgMDUsIDIwMjYgYXQgMTA6MTg6MzRBTSArMDUzMCwgTWFuaXZhbm5hbiBTYWRo
YXNpdmFtIHdyb3RlOgo+IFBhdGNoZXMgMyY0IGNhbiBiZSBzcXVhc2hlZCB0b2dldGhlciwgYnV0
IHRoZSByZXN0IHNob3VsZCBiZSBpbiBzZXBhcmF0ZSBwYXRjaGVzCj4gYXMgdGhleSB0YXJnZXQg
ZGlmZmVyZW50IGRyaXZlcnMuIElmIHdlIHdlcmUgdG8gcmV2ZXJ0IGFueSBvZiB0aGVzZSBpbiB0
aGUKPiBmdXR1cmUsIGl0IGJlY29tZXMgZWFzeS4KCkFoLCBPSywgTWFuaSwgdGhhbmtzIGZvciB0
aGUgY2xhcmlmaWNhdGlvbi4KCkdlcmFsZG8gTmFzY2ltZW50bwoKPiAKPiAtIE1hbmkKPiAKPiAt
LSAKPiDgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+N
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
