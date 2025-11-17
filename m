Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 691C0CEACEF
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Nov 2025 03:57:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IJLzBe2qfCocX/CpMUIljLgo5hXlAvAQXzvPF+8ebWo=; b=CkOst9DzjW0xsr
	Dk+EPH+REfRLgWncuXnqtfAbceDhhqttcQS3A9lFcNKchcYxFAdL0UxiH71jvG7+ISztf6MdBqf8C
	2Luc9TP9HcLwQzBqK3xWBtoiIsdOcFaAQc0YLLVzoj5Oy4KiBgreFvc6VUFd/T0urB8gKyeHWSBC3
	jG3gqDUZasC/Ht88/W2AN4aF5NrdLZPQTGTzSaBbiSTshxcRcM69Tu8iffrxZ3PR1aCzSgfHjUdNc
	xHS9eXI/Ri9oIdE4GXKXja9lDHFbLgoNn4IArPyQkysugrp0u1Ipg3BztdJet95cXo9TrAyZNfxsk
	yBTOh4SDBuLly8J9+9+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKqMj-0000000FOf7-3R7B;
	Mon, 17 Nov 2025 03:57:21 +0000
Received: from mail1.manjaro.org ([2a01:4f8:c010:b6e8::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKqMg-0000000FOed-2ToO;
	Mon, 17 Nov 2025 03:57:20 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 8855841196;
	Mon, 17 Nov 2025 04:57:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763351834; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=BT04am3Kehc9aOs97jW5wTodqgxSkKf04K5hJUaJPzg=;
	b=ReNdiVpeKrbgcSVmskmDotomCmwdsUx3+lrrU0N+K8oOwEV3dkiVyZQcohUTzaGNKRKgtk
	hYQeg1FoGF3ALHk6FnHSjPCylwzuNmoOROB/sIR2JgkwXRLPXXJyUkt5FtZYGs+l++rLVv
	j27F0p/AQ+LZm5JvqnMmp5we99oF8L1vBwyYj3OerttrRhPqqNq28yIBRY7ClbHIy/yamE
	lR4bThz0szV2dhvXjmty4JyC/IAItlWzSNa3kC+Md03xB4Z+TEZSUL5NgqEoLHZzudlAPP
	3yKvBIVIkDFCwAh8mhmlshQ5zUoBjFMjc8AkyMspHhP18woVqWhU4LspaHFCRQ==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <8f3cc1c1-7bf7-4610-b7ce-79ebd6f05a6e@rock-chips.com>
References: <cover.1763197368.git.geraldogabriel@gmail.com> <8f3cc1c1-7bf7-4610-b7ce-79ebd6f05a6e@rock-chips.com>
Date: Mon, 17 Nov 2025 04:57:11 +0100
Cc: "Geraldo Nascimento" <geraldogabriel@gmail.com>, "Lorenzo Pieralisi" <lpieralisi@kernel.org>, =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, "Manivannan Sadhasivam" <mani@kernel.org>, "Rob Herring" <robh@kernel.org>, "Bjorn Helgaas" <bhelgaas@google.com>, "Heiko Stuebner" <heiko@sntech.de>, linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Johan Jonker" <jbx6244@gmail.com>, linux-rockchip@lists.infradead.org
To: "Shawn Lin" <shawn.lin@rock-chips.com>
MIME-Version: 1.0
Message-ID: <257951b7-c22e-9707-6aba-3dc5794306bb@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH 0/3] =?utf-8?q?PCI=3A?==?utf-8?q?_rockchip=3A?=
 =?utf-8?q?_5=2E0?= GT/s speed may be dangerous
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251116_195718_884200_FAFA1352 
X-CRM114-Status: GOOD (  12.24  )
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

SGVsbG8gU2hhd24gYW5kIEdlcmFsZG8sCgpPbiBNb25kYXksIE5vdmVtYmVyIDE3LCAyMDI1IDA0
OjQyIENFVCwgU2hhd24gTGluIDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+IHdyb3RlOgo+IOWc
qCAyMDI1LzExLzE1IOaYn+acn+WFrSAxNzoxMCwgR2VyYWxkbyBOYXNjaW1lbnRvIOWGmemBkzoK
PiA+IEluIHJlY2VudCBpbnRlcmFjdGlvbnMgd2l0aCBTaGF3biBMaW4gZnJvbSBSb2NrY2hpcCBp
dCBjYW1lIHRvIG15Cj4gPiBhdHRlbnRpb24gdGhlcmUncyBhbiB1bmtub3duIGVycmF0YSByZWdh
cmRpbmcgNS4wIEdUL3Mgb3BlcmF0aW9uYWwKPiA+IHNwZWVkIG9mIHRoZWlyIFBDSWUgY29yZS4g
QWNjb3JkaW5nIHRvIFNoYXduIHRoZXJlJ3MgZ3JhdmUgZGFuZ2VyCj4gPiBldmVuIGlmIHRoZSBv
ZGRzIGFyZSBsb3cuIFRvIGNvbnRhaW4gYW55IGRhbWFnZSwgbGV0J3MgY292ZXIgdGhlCj4gPiBy
ZW1haW5pbmcgY29ybmVyLWNhc2VzIHdoZXJlIHRoZSBkZWZhdWx0IHdvdWxkIGxlYWQgdG8gNS4w
IEdUL3MKPiA+IG9wZXJhdGlvbiBhcyB3ZWxsIGFzIGFkZCBhIGNvbW1lbnQgdG8gUm9vdCBDb21w
bGV4IGRyaXZlciBjb3JlLAo+ID4gZG9jdW1lbnRpbmcgdGhpcyBkYW5nZXIuCj4gCj4gSSdtIG5v
dCBzdXJlIGp1c3QgYWRkaW5nIGEgd2FybiB3b3VsZCBiZSBhIGdvb2QgY2hvaWNlLiBDb3VsZCB3
ZSB0b3RhbGx5Cj4gZm9yY2UgdG8gdXNlIGdlbjEgYW5kIGFkZCBhIHdhcm4gaWYgdHJ5aW5nIHRv
IHVzZSBHZW4yLgoKSSB0aGluayB0aGF0IGZvcmNpbmcgMi41IEdUL3Mgd2l0aCBhbiBhcHByb3By
aWF0ZSB3YXJuaW5nIG1lc3NhZ2UKaXMgYSBnb29kIGlkZWEuICBUaGF0IHdvdWxkIGJlIGxpa2Ug
c29tZSBxdWlyayB0aGF0IGdldHMgYXBwbGllZAphdXRvbWF0aWNhbGx5LCB0byBwcmV2ZW50IGRh
dGEgY29ycnVwdGlvbiwgd2hpbGUgd2FybmluZyBwZW9wbGUKd2hvIGF0dGVtcHQgdG8gIm92ZXJj
bG9jayIgdGhlIFBDSWUgaW50ZXJmYWNlLgoKPiBNZWFud2hpbGUgYW1lbmQgdGhlIGNvbW1pdCBt
ZXNzYWdlIHRvIGFkZCBhIHJlZmVyZW5jZQo+IG9mIFJLMzM5OSBvZmZpY2lhbCBkYXRlc2hlZXRb
MV0gd2hpY2ggc2F5cyBQQ0llIG9uIFJLMzM5OSBzaG91bGQgb25seQo+IHN1cHBvcnQgMi41R1Qv
cz8KPiAKPiBbMV1odHRwczovL29wZW5zb3VyY2Uucm9jay1jaGlwcy5jb20vaW1hZ2VzL2QvZDcv
Um9ja2NoaXBfUkszMzk5X0RhdGFzaGVldF9WMi4xLTIwMjAwMzIzLnBkZgoKQWxzbywgcmV3b3Jk
aW5nIHRoZSBwYXRjaCBzdW1tYXJ5IGFzIGZvbGxvd3MgYmVsb3cgbWF5IGJlIGdvb2QsCmJlY2F1
c2UgdGhhdCB3b3VsZCBwcm92aWRlIG1vcmUgZGV0YWlsczoKCiAgUENJOiByb2NrY2hpcDogV2Fy
biBhYm91dCBHZW4yIDUuMCBHVC9zIG9uIFJLMzM5OSBiZWluZyB1bnNhZmUKCk9yLCBpZiB3ZSds
bCBnbyB3aXRoIHRoZSBhdXRvbWF0aWMgZG93bmdyYWRpbmcsIGxpa2UgdGhpczoKCiAgUENJOiBy
b2NrY2hpcDogTGltaXQgUkszMzk5IHRvIEdlbjEgMi41IEdUL3MgdG8gcHJldmVudCBicmVha2Fn
ZQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
