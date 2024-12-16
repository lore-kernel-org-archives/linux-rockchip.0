Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 521C2E7717F
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Dec 2024 09:30:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pyUb9HBdk/0tKMbfwWgfjR0zNl8rkys4y1p1FHoEZZA=; b=oZ6Ap2LHtFV0rK
	WVecq29qVKdyBwIimiAw5y5pguu7D6frlVO7a/UN0g47WeL+s8Ng41m97d45By7PZSPsQSSgW80KG
	j6SIpoyIJl+RE73a1fuuhzgvypeld2GukaKs7NaMAHQ5ERB8AFHDWQsKpu69tdGR/jmXa6l4r2O4c
	6gd6lYQyZhk39x6AIzaFhfKO3+5YwxNswFzBGOCScwMMGKWln8sbNIJBZsjG6AlH4xt4d/7gVATgM
	BaKN3gJv4hsDdrhKOm9yfUI5WSd/UEKfQEuCLG9Dd3l07YbRojZUC4Aj4VHBpBr04A59msdELYjyK
	AkPNhPboGVvFR0k+w0EA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tN7QQ-00000009XgS-1BbU;
	Mon, 16 Dec 2024 09:30:02 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN7Oe-00000009XNs-3WTh;
	Mon, 16 Dec 2024 09:28:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 37551A40AB3;
	Mon, 16 Dec 2024 09:26:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F40C0C4CED0;
	Mon, 16 Dec 2024 09:28:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734341291;
	bh=zplvDS/JfEKmgoJ/gVJLJ7g8FjSFAlfcgjYGedG7zmw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pElc97kdQ16eMIdJ0baZfJlFx+orrh97gDCgqBl4L0z4QnDHvBVE7JHL0IOAUT0g9
	 +bGEXcfrbenR6AFVHKWu90CPoavRiA5G1BH6R8QjWUWOVZKZFcD9MD+HzlIRvnQWIb
	 AK4pipDyVacG/UcT3D8QDTP8u9r6BJ0TYMcm3Ad5pDTEqOXlh+Lr8k/Kv3vgozNWiO
	 dWkxH8QCMTZfsSn5D9PNT2IO3QOembvdsREuETSKOsaPBX5QxhSkrEYD7Isu3cBscX
	 yFiP+ZBhPUktKnF87GMho/D6Dw4WuXgR039vaLugO27/n5PF0jt3xJljlhADiOAH9r
	 JHnn29sWfMZUw==
Date: Mon, 16 Dec 2024 10:28:08 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Shimrra Shai <shimrrashai@gmail.com>
Cc: linux-kernel@vger.kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, heiko@sntech.de, krzk+dt@kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	robh@kernel.org
Subject: Re: [PATCH v3 3/3] dt-bindings: arm: rockchip: Add Firefly ITX-3588J
 board
Message-ID: <x7y24y3bkbj5fzx5pdprjr5umg6egxsy2xscfbj3xgzgzubvdk@ppncjiqoekk7>
References: <20241215032507.4739-1-shimrrashai@gmail.com>
 <20241215032507.4739-4-shimrrashai@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241215032507.4739-4-shimrrashai@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_012812_948226_548ECFE6 
X-CRM114-Status: UNSURE (   8.55  )
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

T24gU2F0LCBEZWMgMTQsIDIwMjQgYXQgMDk6MjQ6NTVQTSAtMDYwMCwgU2hpbXJyYSBTaGFpIHdy
b3RlOgo+IFVwZGF0ZWQgRFQgYmluZGluZyBkb2N1bWVudGF0aW9uIHBlciBASGVpa28gU3TDvGJu
ZXIncyBzdWdnZXN0aW9uLCB0bwo+IHJlZmxlY3QgdGhlIGJpcGFydGl0ZSBuYXR1cmUgb2YgdGhl
IGJvYXJkLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFNoaW1ycmEgU2hhaSA8c2hpbXJyYXNoYWlAZ21h
aWwuY29tPgo+IC0tLQo+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3Jv
Y2tjaGlwLnlhbWwgfCA3ICsrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygr
KQo+IAoKT3JkZXIgeW91ciBwYXRjaGVzIGNvcnJlY3RseSAoYmluZGluZ3MgYXJlIGFsd2F5cyBi
ZWZvcmUgdXNlcnMpLCBzbyB5b3UKd29uJ3QgcmVjZWl2ZSBmZWVkYmFjayBvZiB1bmRvY3VtZW50
ZWQgY29tcGF0aWJsZXMuIFNlZSBzdWJtaXR0aW5nCnBhdGNoZXMgaW4gYmluZGluZ3MgZGlyZWN0
b3J5LgoKCkFja2VkLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tp
QGxpbmFyby5vcmc+CgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
