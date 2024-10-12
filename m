Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2A69CF2560
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Oct 2024 10:06:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QJxkFjuhVuLAaTTVVTTb9LnngKmLRrEnBvpnJiJsjXs=; b=ibv9oQEEBO5vQU
	p5DEQ2IlVobmV69j8HGGR8F04Napjy1qz/M7DLb/cZDJr81qsHcVE2xPoo2QMKD+96esVUIsypTD3
	BikO/7u70Asr41Ae9TrUA2EM3sM2HsFPSXKiKkt8pHrSWtUfFROFUD5FOqHm79OkD4HYjB4v2+J0o
	VCR25VbiIb76VSKn5MxdN9hMlgh7mxsHVlYwMggDVzcxObjg7qTS0nZ9UaOQ6emLM7CJQQxYvBL4s
	9UtvYq7C6vmMQPqbSxHUI6xEAz+gBdzwqN0iJzc1yYZhzg7ZaiRn9dwWaTkAjCMTswaeZu9j44NwK
	rf8q1NLtqShhir8VS0dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szZ0k-00000000xPM-0LDN;
	Sat, 12 Oct 2024 10:06:10 +0000
Received: from mail-oi1-x22a.google.com ([2607:f8b0:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szYzW-00000000xDO-3Ebp;
	Sat, 12 Oct 2024 10:04:56 +0000
Received: by mail-oi1-x22a.google.com with SMTP id 5614622812f47-3e5d3662432so215148b6e.0;
        Sat, 12 Oct 2024 03:04:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728727494; x=1729332294; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gO4kjj+gL6Indly0NQhATno213Dzkmc07GqZgCf6Kto=;
        b=kC3gOcAD+XRbxTipUTiBFGFoP9yyLH86Q1iJaHJDLQlD9E68ZLD93CblbRIlepR6Ds
         UEv76kAUTszalaxQKnKNbg5kLlQMgbJoTk5/8ObLWqSCL83sqmKHB+3fEM6Zx1QLxbdz
         KRstXpxrJnv51i6Up7SMc5aiD2NBRXwUbaZhclNledPtDABxYAM/nWr3oQFrhATZiMSZ
         G3mnkbSfZgIm4LD2zXx8+hTtJnikvQoyh392W7KFZy4UEzFD52ftoYpTGOsvBfgER8XH
         DL+eh4gkdPvOlhStjJnNkVpv+UogCdnLSeNROv100MDqO51gFOpWGk8LrW5I1tdBBGHX
         GsUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728727494; x=1729332294;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gO4kjj+gL6Indly0NQhATno213Dzkmc07GqZgCf6Kto=;
        b=Tpoa8InryMP/RxmU0PwLqvE+0zVjvxN8cHxyCTNCqeV2hCcQM0XznWY/M19kV0Losc
         /5Cg9IgIRp2InlAL1IAaRLsOzdQGki9fQHbtxLQgF+2BMGf8Lf4L+eBsSv5o7QncCLE/
         mNkxFIcw+MhNix5gAP6rYpR/pb+eaB6UgktWbutymV3gPFLRYQHTq0+/TLTkVaizSY/n
         1P0UuPnaQfPjya5n+eMPCSmBkBF6kXoZV32EjO82DzJ+wmM6UDDjWw8dsUfQpo5SmD0D
         A4XzVpiYpAFPGdqz2GV6/hjrDApKxIA3wwGR2dGM53QH3Nib77/0IZzTnshHNzWKCOJ9
         SCEw==
X-Forwarded-Encrypted: i=1; AJvYcCWuPdOPnKTa8sazA6Tv8QTlyAN+Qq4AiYDPO1lQax0nfPBKN1+l8adNlPP03xT9lnaf474x6AF7hfPTbfsFyQo=@lists.infradead.org, AJvYcCX4UUDAuCAfQWeIKaVI7unEPe9UuKfeb8Ak9ZQxvpSVykgj9P3YIQ89WT5/T+qyEf1bHLI4cChDd8c3DwYBxvdF@lists.infradead.org
X-Gm-Message-State: AOJu0YzoEKr+ALbQbB2hfGScuwFm+ZXXK7ytiNYi5E1g0w4el2Hnqva6
	am8VX5bXMnCdoBDiBInTp2HwwuhF1B1IQ6Vbj+LksehGhyYi8Xp9SsazIHJ+ZcwTpW9LqhxXCdW
	g2dhwR7MToaIgyrUvabiAu6svIYI=
X-Google-Smtp-Source: AGHT+IE7W0pbRF971bx8pW3JLSkhmzMUxOjnWJVV7TQD/4voz8E00YBsFMzM60SCIby1MmjtiQEG9O2RHkAv0Q1EHpg=
X-Received: by 2002:a05:6870:4154:b0:277:f713:c101 with SMTP id
 586e51a60fabf-2886d7f7e17mr3005473fac.15.1728727494118; Sat, 12 Oct 2024
 03:04:54 -0700 (PDT)
MIME-Version: 1.0
References: <20241012050611.1908-1-linux.amoon@gmail.com> <20241012050611.1908-4-linux.amoon@gmail.com>
 <20241012062033.2w7jbfiptvdlklzl@thinkpad> <CANAwSgS68sL2JE5wafq98gFV-jhWFx5594Ax6+aVW8mpiBgHnQ@mail.gmail.com>
 <20241012080213.rxllcpofy2at5vnz@thinkpad>
In-Reply-To: <20241012080213.rxllcpofy2at5vnz@thinkpad>
From: Anand Moon <linux.amoon@gmail.com>
Date: Sat, 12 Oct 2024 15:34:38 +0530
Message-ID: <CANAwSgTFXso_1vhWSmKdHq_vjithFuTK-3TKV2uBKbdT7QVbZw@mail.gmail.com>
Subject: Re: [PATCH v7 3/3] PCI: rockchip: Refactor rockchip_pcie_disable_clocks()
 function signature
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
	Philipp Zabel <p.zabel@pengutronix.de>, 
	"open list:PCIE DRIVER FOR ROCKCHIP" <linux-pci@vger.kernel.org>, 
	"open list:PCIE DRIVER FOR ROCKCHIP" <linux-rockchip@lists.infradead.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241012_030454_828981_D99AF7DB 
X-CRM114-Status: GOOD (  18.26  )
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

SGkgTWFuaXZhbm5hbiwKCk9uIFNhdCwgMTIgT2N0IDIwMjQgYXQgMTM6MzIsIE1hbml2YW5uYW4g
U2FkaGFzaXZhbQo8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFyby5vcmc+IHdyb3RlOgo+Cj4g
T24gU2F0LCBPY3QgMTIsIDIwMjQgYXQgMTI6NTU6MzhQTSArMDUzMCwgQW5hbmQgTW9vbiB3cm90
ZToKPiA+IEhpIE1hbml2YW5uYW4sCj4gPgo+ID4gVGhhbmtzIGZvciB5b3VyIHJldmlldyBjb21t
ZW50cy4KPiA+Cj4gPiBPbiBTYXQsIDEyIE9jdCAyMDI0IGF0IDExOjUwLCBNYW5pdmFubmFuIFNh
ZGhhc2l2YW0KPiA+IDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9yZz4gd3JvdGU6Cj4g
PiA+Cj4gPiA+IE9uIFNhdCwgT2N0IDEyLCAyMDI0IGF0IDEwOjM2OjA1QU0gKzA1MzAsIEFuYW5k
IE1vb24gd3JvdGU6Cj4gPiA+ID4gUmVmYWN0b3IgdGhlIHJvY2tjaGlwX3BjaWVfZGlzYWJsZV9j
bG9ja3MgZnVuY3Rpb24gdG8gYWNjZXB0IGEKPiA+ID4gPiBzdHJ1Y3Qgcm9ja2NoaXBfcGNpZSBw
b2ludGVyIGluc3RlYWQgb2YgYSB2b2lkIHBvaW50ZXIuIFRoaXMgY2hhbmdlCj4gPiA+ID4gaW1w
cm92ZXMgdHlwZSBzYWZldHkgYW5kIGNvZGUgcmVhZGFiaWxpdHkgYnkgZXhwbGljaXRseSBzcGVj
aWZ5aW5nCj4gPiA+ID4gdGhlIGV4cGVjdGVkIGRhdGEgdHlwZS4KPiA+ID4gPgo+ID4gPiA+IFJl
dmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBs
aW5hcm8ub3JnPgo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEFuYW5kIE1vb24gPGxpbnV4LmFtb29u
QGdtYWlsLmNvbT4KPiA+ID4gPiAtLS0KPiA+ID4gPiB2NzogTm9uZQo+ID4gPiA+IHY2OiBGaXgg
dGhlIHN1YmplY3QsIGFkZCB0aGUgbWlzc2luZyAoKSBpbiB0aGUgZnVuY3Rpb24gbmFtZS4KPiA+
ID4KPiA+ID4gRGlkIHlvdSByZW1vdmUgaXQgaW4gdjc/IFBsZWFzZSBkb24ndCBkbyB0aGF0LCBp
dCBqdXN0IGluY3JlYXNlcyB0aGUgYnVyZGVuIG9uCj4gPiA+IHJldmlld2Vycy4KPiA+ID4KPiA+
ID4gLSBNYW5pCj4gPiBFYXJsaWVyLCBpdCB3YXMgcmVwb3J0ZWQgdGhhdCBmdW5jdGlvbiAoKSBz
aG91bGQgYmUgdXNlZCBpbiB0aGUgZnVuY3Rpb24gbmFtZS4KPgo+IEhtbS4gV2h5IGNhbid0IHlv
dSBkbyB0aGUgc2FtZSBmb3IgdGhlIGRlc2NyaXB0aW9uIGFsc28/Cj4KT2ssIEkgbWlzc2VkIHRo
aXMgcG9pbnQuCj4gLSBNYW5pCj4KPiAtLQo+IOCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDg
rprgrqTgrr7grprgrr/grrXgrq7gr40KClRoYW5rcwoKLUFuYW5kCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
