Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3380E7491E
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Dec 2025 08:04:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MLyGvqCxwYvFfEQR1sWsuf9RBI2Ubj0YezB/3M8IUzw=; b=yy1dWPROS3bg1J
	XxXpDnLUMwxfcCSGnjCFNZnGtH1/o5OzwcTRJ1Rg8psSk0JO+Lu/WB14/yrWa651w/60MIv9mlnHM
	ASxQBcbMOy42V2SnBKld2y7zk3KSBiEiEIDFZ88LKtljKU0khjOW3i6Z0+SO2ZtF/oricJf8T3ESD
	uuNs+CF9x2bam4JKGJLyMsjMUn9MNAqk5i1QywmxZxSSy7lHEwya01TzlCxcZ+d4vfo1l3+9LYn2e
	VpyZiC3EiuA0lQ/Dk99yJKyNoaeaqZ5jh4fCaF/j1UxEumJpZ9oZ6EqdUtpeyKg7n6vv6PSLhgfUY
	0QJ0JZBEgsyL6FiG3uRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYJrR-0000000GZDW-3z03;
	Wed, 24 Dec 2025 08:04:45 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYJrP-0000000GZCk-0xVe
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Dec 2025 08:04:44 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-64d2c50f0d6so4767873a12.3
        for <linux-rockchip@lists.infradead.org>; Wed, 24 Dec 2025 00:04:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766563481; x=1767168281; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+TfuYlLvMaLWTZmZDZsnA49hO+ryorTTCnTkX2pKAFY=;
        b=edqqkvtfTWZgWVWreMyP88uP5q2FwT/CJm1ZqC4UBEHfqwzICKlogtZ0E+mIDyKyJr
         Fa7VEqZg423fUxMp3Htx3eYC1YCPQbS5ERpU+D1pKhm3gTNykNJTtdfzD4TW9UPyB2Xd
         fkH4y9AWyJ2lsJrky9hg779GNZEw60ZanoK9CM3H3lu2q5gfPg3/PG1PgN9lKj3OjGpn
         BZMEQBDnFh16KXS/mlonS3IZhoQPEwa2nfhvtGvNFx0JiLnCCvZEQ04sETcraydfpw9F
         wrEPvQFdoDp8/o9PjvJhBDi05EOpw4EXHWFSzEg/mTTLhx6Cf7YXP9r0Iff9Z43n3GUd
         i0Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766563481; x=1767168281;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+TfuYlLvMaLWTZmZDZsnA49hO+ryorTTCnTkX2pKAFY=;
        b=xL/uW/9CoDvijYpsL58gh+9uic/jOmAo7wzMPF4R6TSzg9Chq47o53WtuilklWpEZX
         lGmLO0N7ixdE38rPTAAj4GxLK8CWuDt5kRa0SkcUfjf847dt9TUQvrbquuxZzU7qYREJ
         /eeXtar+90841Ng0NVWdkM/+pegifGhcbhj/15VZHsMIAeffp+AuskfgrKIqtijxk7cB
         f7A/kc5YsX4dFY0DfWsD1xRl4chXQ2TwexFtt66Rywnrr5XV8qWXmx/9iAjjDnbdZyOP
         gFHpt9zWcCyRFO77yFZ7fTOS2S6tY+gVJmm2yP5ULI31jdHbwpPYVinLfvCjbK5AupEm
         nSaQ==
X-Forwarded-Encrypted: i=1; AJvYcCWwVHyjVNCbNV7SutcXz/L5k/Ll0z6+uip7PUs164J0Qrqgl1X3OPd4HlvDyqYPUK1PgdCOg3A07QAlNwIdKQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzCXu8Qvr2AY13pOCR+cXLICZ8zTMahQFd9fSXagC7ieMIUhYA/
	wej50deKoTZZxUeQrqONG+k3wgMBBq78WJRd0ji2cBjXQQZfRFMlB2YOMTkESpMj8+LE8EWSYoX
	zkwMC6B0LU3TXkoO+3WeO3ErPCLKUqeQ=
X-Gm-Gg: AY/fxX6jFcyTbENUI/cRAtR/U4mEIPJPAK98m0O8+XNnxbYYjUYFflTZHbdzUkgIDd5
	4X81FXBfu9xq+3f3udIghn24IZ8CtK94+EPKtCPszSHYbSmtKW7rLbChB0SNahlKnibd3JDrKh8
	p27JE6jP4tK5NRHcvWB3SKJKRrcqo81dTvpCKAcWNxaf1ZoCrNvBA6gPHeAbUOjeW3y/9DKgr+e
	NXB0wC44BARaESabd8bBJMI0C0zOepHcDOdD0ktVCnUC97Vr71ETMlCDKG1UFOLjLs=
X-Google-Smtp-Source: AGHT+IFNXz2QU01SE+DL2c1ZCqqAJiAT079DS2+XmSlL7nM5RGPoflTCsCJq7MHCePPbrmgdDllZFgH4/zk85C3yl5w=
X-Received: by 2002:a05:6402:50cc:b0:64d:4a01:fc23 with SMTP id
 4fb4d7f45d1cf-64d4a020dfamr9289029a12.10.1766563480975; Wed, 24 Dec 2025
 00:04:40 -0800 (PST)
MIME-Version: 1.0
References: <cover.1763415705.git.geraldogabriel@gmail.com>
 <eaa9c75ca02a53f8bcc293b8bc73d013e26ec253.1763415706.git.geraldogabriel@gmail.com>
 <CANAwSgQ726J_vnDKEKd94Kq62kx8ToZzUGysz4r3tNAXvfAbGA@mail.gmail.com> <CAEsQvctSY7-RQEQF2TmJU2qKPZOe9TC5g-7Jat0LQKRHYz_6dQ@mail.gmail.com>
In-Reply-To: <CAEsQvctSY7-RQEQF2TmJU2qKPZOe9TC5g-7Jat0LQKRHYz_6dQ@mail.gmail.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Wed, 24 Dec 2025 13:34:23 +0530
X-Gm-Features: AQt7F2qzfCdogAfkIVvQ40sYz72XmKQPz1kBLtv40YPxaEuaYu_edJzXc4ZwP9s
Message-ID: <CANAwSgQPQUBi6VVb+hZNraMt71vnRpki+YK_at=Luo4aPVtOPg@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] PCI: rockchip: limit RK3399 to 2.5 GT/s to prevent damage
To: Geraldo Nascimento <geraldogabriel@gmail.com>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Johan Jonker <jbx6244@gmail.com>, Dragan Simic <dsimic@manjaro.org>, 
	linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251224_000443_285655_F2A4C80D 
X-CRM114-Status: GOOD (  18.43  )
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

SGkgR2VyYWxkbywKCk9uIFdlZCwgMjQgRGVjIDIwMjUgYXQgMTE6MDgsIEdlcmFsZG8gTmFzY2lt
ZW50bwo8Z2VyYWxkb2dhYnJpZWxAZ21haWwuY29tPiB3cm90ZToKPgo+IE9uIFdlZCwgRGVjIDI0
LCAyMDI1IGF0IDI6MTjigK9BTSBBbmFuZCBNb29uIDxsaW51eC5hbW9vbkBnbWFpbC5jb20+IHdy
b3RlOgo+ID4KPiA+IEhpIEdlcmFsZG8sCj4gPgo+ID4gT24gVHVlLCAxOCBOb3YgMjAyNSBhdCAw
MzoxNywgR2VyYWxkbyBOYXNjaW1lbnRvCj4gPiA8Z2VyYWxkb2dhYnJpZWxAZ21haWwuY29tPiB3
cm90ZToKPiA+ID4KPiA+ID4gU2hhd24gTGluIGZyb20gUm9ja2NoaXAgaGFzIHJlaXRlcmF0ZWQg
dGhhdCB0aGVyZSBtYXkgYmUgZGFuZ2VyIGluIHVzaW5nCj4gPiA+IHRoZWlyIFBDSWUgd2l0aCA1
LjAgR1QvcyBzcGVlZHMuIFdhcm4gdGhlIHVzZXIgaWYgdGhleSBtYWtlIGEgRFQgY2hhbmdlCj4g
PiA+IGZyb20gdGhlIGRlZmF1bHQgYW5kIGRyaXZlIGF0IDIuNSBHVC9zIG9ubHksIGV2ZW4gaWYg
dGhlIERUCj4gPiA+IG1heC1saW5rLXNwZWVkIHByb3BlcnR5IGlzIGludmFsaWQgb3IgaW5leGlz
dGVudC4KPiA+ID4KPiA+ID4gVGhpcyBjaGFuZ2UgaXMgY29ycm9ib3JhdGVkIGJ5IFJLMzM5OSBv
ZmZpY2lhbCBkYXRhc2hlZXQgWzFdLCB3aGljaAo+ID4gPiBzYXlzIG1heGltdW0gbGluayBzcGVl
ZCBmb3IgdGhpcyBwbGF0Zm9ybSBpcyAyLjUgR1Qvcy4KPiA+ID4KPiA+ID4gWzFdIGh0dHBzOi8v
b3BlbnNvdXJjZS5yb2NrLWNoaXBzLmNvbS9pbWFnZXMvZC9kNy9Sb2NrY2hpcF9SSzMzOTlfRGF0
YXNoZWV0X1YyLjEtMjAyMDAzMjMucGRmCj4gPiA+Cj4gPiBUbyBhY2N1cmF0ZWx5IGRldGVybWlu
ZSB0aGUgb3BlcmF0aW5nIHNwZWVkLCB3ZSBjYW4gbGV2ZXJhZ2UgdGhlCj4gPiBQQ0lFX0NMSUVO
VF9CQVNJQ19TVEFUVVMwLzEgZmllbGRzLgo+ID4gVGhpcyBwcm92aWRlcyBhIGR5bmFtaWMgbWVj
aGFuaXNtIHRvIHJlc29sdmUgdGhlIGlzc3VlLgo+ID4KPiA+IFsxXSBodHRwczovL2dpdGh1Yi5j
b20vdG9ydmFsZHMvbGludXgvYmxvYi9tYXN0ZXIvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2ll
LXJvY2tjaGlwLWVwLmMjTDUzMy1MNTk1Cj4gPgo+ID4gVGhhbmtzCj4gPiAtQW5hbmQKPgo+IEhp
IEFuYW5kLAo+Cj4gbm90IHRvIHB1dCB5b3UgZG93biBidXQgSSB0aGluayB5b3VyIGFwcHJvYWNo
IGFkZHMgdW5uZWNlc3NhcnkgY29tcGxleGl0eS4KPgo+IEFsbCBJIGNhcmUgcmVhbGx5IGlzIHRo
YXQgdGhlIEtlcm5lbCBQcm9qZWN0IGlzbid0IGJsYW1lZCBpbiB0aGUKPiBmdXR1cmUgaWYgc29t
ZW9uZSBoYXBwZW5zIHRvIGxvc2UgdGhlaXIgZGF0YS4KPgpBbGxvdyB0aGUgaGFyZHdhcmUgdG8g
bmVnb3RpYXRlIHRoZSBsaW5rIHNwZWVkIGJhc2VkIG9uIHRoZSBhdmFpbGFibGUKbnVtYmVyIG9m
IGxhbmVzLgpJIGRvbuKAmXQgYW50aWNpcGF0ZSBhbnkgZGF0YSBsb3NzLCBzaW5jZSBQQ0llIHdp
bGwgYXV0b21hdGljYWxseQpjb25maWd1cmUgdGhlIGRldmljZSBzcGVlZAp3aXRoIGxpbmsgdHJh
aW5pbmcuLgoKPiBUaGFua3MsCj4gR2VyYWxkbyBOYXNjaW1lbnRvCgpUaGFua3MKLUFuYW5kCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
