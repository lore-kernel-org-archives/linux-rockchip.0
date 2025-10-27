Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 514B9CCF9EA
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Oct 2025 09:14:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x6YVD4D4226Bxsp6dUSCZjzOYfd9YxXp3++onJM1Q1U=; b=0DG1BEwZ9oObZW
	nfPRL9onJwic0e+/zkdIvzjGKYnq75Vm9cZPz69e7fKZyMlc7EiERcJvbzyDbOyVMxCNe7Vuhd1/Q
	gy3QsaZW1ADycU8d8VYIALiZCMLfn0NIqXDwdii02WsXP17cr8ZaPA+k0Pl1ALqsPzEy1QavBy4/W
	GweeAc8341Y8Vu/6+nQqvPGtFUAe+92OmBLsP47yL3zwyf+FHp4ua7NNisWh37KolLCS/xU5zbeX6
	dHyThIf/TN8qVLyvfySWy83cv8x6WW19Zts7pRByNJGMYEQ1kezsqu70xhpGRN1quvEJpI+eEHyZt
	cevm/FNTiS/atf555yuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDJJK-0000000DVFU-3WTk;
	Mon, 27 Oct 2025 09:14:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDJJK-0000000DVFE-07mP
	for linux-rockchip@bombadil.infradead.org;
	Mon, 27 Oct 2025 09:14:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=k3ckgEiSkq+y7z9usMTBGQkVGgGdig/5c1NbkqTAlEY=; b=kr4U+T4fYkicTgdBntJQQJcGN4
	aBArk8CNpBLU9uk/521LA784dy3QbhpuRJYQOCHw2or5jJRDv1Jgz18kzFMYWmU57RtB58gWHhPnh
	Ku3e+lkY0xX9exoxgWpzv9uwGKsr0qceqzFuQX1oCoS0hF16/0/JBx50xa7dFDEcGdAAjco5iPmnG
	q/dnGNwYwrUnOWnHOaCWY26eovnYLvsl0k40fCskSGMeTi3xPmR+VjPLLmQXUWjmbDSqTSWgRXchk
	aHvVRZ1Er0LhA8jYTSYoE1LbCy0qBte/mzhhdoouqZlkA8icO61D2fg8hMgZh+kt1RKfboX1SmHPB
	VpkN9+bw==;
Received: from mail-qt1-x82c.google.com ([2607:f8b0:4864:20::82c])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDIRW-00000001icK-3Ke9
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Oct 2025 08:19:08 +0000
Received: by mail-qt1-x82c.google.com with SMTP id d75a77b69052e-4ed02d102e2so1418421cf.1
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Oct 2025 02:14:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761556476; x=1762161276; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k3ckgEiSkq+y7z9usMTBGQkVGgGdig/5c1NbkqTAlEY=;
        b=c9vED40XQJRS3l1OLjd+tvKKEh/UxLWlfaepZmOX7xPc7BHJK44TKHCiVSHSzAz4px
         HDTyRunes0NmRRVx8E4u8OwX3Zvn2I/woLwy0/8P9PjRL1QdoAy5UE/ZLUYAy9T9zwMl
         2lr0iNjI9CnA92GSMbEkD4CBkpcsRN4vS5y7tlrasEUv57O3hdlE0MYUwvzAPzR4JR1f
         Ej2V98S6xabfQCPgFUmPyVzvr2MF5E4QwZHDhi0POMEsEX4rANFr8FuLm+mz80Lixcv6
         5ispZTbHrXG2fLVSFfGfWp7aneRY66ouUKDpdgwgbRfZ80bGcRDNxHgfbwkH5RSvL5gn
         TMQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761556476; x=1762161276;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k3ckgEiSkq+y7z9usMTBGQkVGgGdig/5c1NbkqTAlEY=;
        b=nN5+ITlrbyYuiipP2fyM2VeTw7ERXbQm2rhT+AeANhpJZwUg9fPArRFWYXDmO+pTvK
         5BbUXPG0AxnHVcPKjYKClJa4thqbPDgKhilfYEWjPO+ubDQOxgZVQxKugKOaMymXoPTr
         +HVctxQY4gfTOGNW87qFRCVI8LnzW4bRGTjQP7eHLaqzozde/crh4l13gmQ6/obqXm/N
         thLUZ7CPRmgVS8K85j9ARKbbJdZEGUcS2lNrbKo7uPTTSOXoPHVIEFBU53ZpFJ2qZwS0
         lguxRe+Ca0Dv0pVKCoip5mAn+vQMruBNs9dEQt47wUu/417axskpjbZ1Zz1DPZEE9NJq
         grKg==
X-Forwarded-Encrypted: i=1; AJvYcCVD2Ebo37PIBIQGNTFp4hmZvfkYihSfKjd3/EFM7IgHtHFZ8uJUOCKvu7gcYDXOZi30t0PTN8QK9T9WzVJD+A==@lists.infradead.org
X-Gm-Message-State: AOJu0YwTdU+4huzQ+YIDVMO+hKjEFJWE1ws7I+XaTq7AEEHcbw0/S6Ya
	FYmup57LWZ3NmQLUFdlBVNaRbE8xANrQhF68Ybey7+oxca+1RNKBCh9Ch02jAsEfmrUQpQ7l/V0
	jNpqL1nUHC+/jcIIfyotFrjFMIxtTVBs=
X-Gm-Gg: ASbGncvWor7Q6bpCMrqkL8NYEJpt8D0jU1E8d9T7OBhGSCXdDsbGkYQ8zW402la+qIl
	+Hem3odA6aY2L54c/t5E1EDE7xc4zV4+sgZHq2aWilIhoj5JzOq53aTA2N4e1HbhuOq+gn8yd1A
	IsPrwtXGLGCrDc53pqV4ZCAq9oHO8M0pWHSIm0tSLESY3moBp3Z/8PY0nkHp2ZIUqBUp8y3MafW
	bhK9TqdtQtuusehrxsFtWSQaSncVMKUD/JG6umGuzh8FiPXVDkZZ2ZMX3kXcUEumDea6L2oJdnk
	nKIFTghm7+KjPzxPM2OlqIZ7Hq0p
X-Google-Smtp-Source: AGHT+IF/2QvCzE1TEuKomhBiAScmROMfTstvpHg7L8JdAeBZ1CrC1wuEfqNsUGGYV9Dp9piQXEYqMgRlhzJKaaFXdAc=
X-Received: by 2002:a05:622a:d16:b0:4eb:a2ab:4182 with SMTP id
 d75a77b69052e-4eba2ab4738mr100138481cf.22.1761556476187; Mon, 27 Oct 2025
 02:14:36 -0700 (PDT)
MIME-Version: 1.0
References: <20251026194858.92461-1-sigmaris@gmail.com>
In-Reply-To: <20251026194858.92461-1-sigmaris@gmail.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 27 Oct 2025 13:14:28 +0400
X-Gm-Features: AWmQ_bny2G__jDeyWDUL9Y-J8F57fNDWZftO8M3HOK0HvZdNg6brhmmHAL6LiRE
Message-ID: <CABjd4YxsfxwEbic8QEabX1h9j0B3DBw9LWwctJx7SzdvXZdDhA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: pwm-fan overlay for NanoPC-T6
To: Hugh Cole-Baker <sigmaris@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_081907_028532_CCB1C232 
X-CRM114-Status: GOOD (  10.46  )
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

SGkgSHVnaCwKCk9uIE1vbiwgT2N0IDI3LCAyMDI1IGF0IDE6MDnigK9QTSBIdWdoIENvbGUtQmFr
ZXIgPHNpZ21hcmlzQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBGcmllbmRseUVMRUMgb2ZmZXJzIGFu
IG9wdGlvbmFsIGhlYXRzaW5rIGFuZCBmYW4gYWRkb24gZm9yIHRoZSBOYW5vUEMtVDYKPiBhbmQg
VDYgTFRTLiBBZGQgYW4gb3ZlcmxheSB3aGljaCBjYW4gYmUgYXBwbGllZCBpZiB0aGUgZmFuIGlz
IGZpdHRlZCBhbmQKPiBjb25maWd1cmVzIHRoZSBmYW4gYXMgYW4gYWN0aXZlIGNvb2xpbmcgZGV2
aWNlIGZvciB0aGUgU29DIHBhY2thZ2UuCj4KPiBTaWduZWQtb2ZmLWJ5OiBIdWdoIENvbGUtQmFr
ZXIgPHNpZ21hcmlzQGdtYWlsLmNvbT4KPiAtLS0KPiBGcmllbmRseUVMRUMgaGVhdHNpbmsgd2l0
aCBmYW4gYWRkb246Cj4gaHR0cHM6Ly93d3cuZnJpZW5kbHllbGVjLmNvbS9pbmRleC5waHA/cm91
dGU9cHJvZHVjdC9wcm9kdWN0JnByb2R1Y3RfaWQ9MzA1Cj4gVmVuZG9yIERUIHdpdGggdHJpcCBw
b2ludHMgYW5kIFBXTSBkdXR5IGN5Y2xlIHZhbHVlczoKPiBodHRwczovL2dpdGh1Yi5jb20vZnJp
ZW5kbHlhcm0va2VybmVsLXJvY2tjaGlwL2Jsb2IvNDk0NDYwMjU0MGI2MmY1YWFkMTM5ZmU2MDJh
NzZjZjdjMzE3NjEyOC9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1uYW5vcGk2
LXJldjAxLmR0cyNMNzUtTDkwCgpJcyB0aGVyZSBhbnkgZG93bnNpZGUgdG8gZW5hYmxpbmcgdGhp
cyB1bmNvbmRpdGlvbmFsbHkgaW4gdGhlIGJvYXJkCi5kdHM/IE92ZXJsYXlzIHJlcXVpcmUgbW9y
ZSB1c2VyIGNvbmZpZ3VyYXRpb24sIGFuZCBub3QgYWxsCmJvb3Rsb2FkZXJzIHN1cHBvcnQgdGhl
bSBkaXJlY3RseSAoZS5nLiBzeXN0ZW1kLWJvb3QgdXNlcnMgd291bGQKc3RydWdnbGUpLiBDb21w
aWxpbmcgd2l0aCBvdmVybGF5cyBlbmFibGVkIGFsc28gbWFrZXMgLmR0YidzIGEgbG90Cmxhcmdl
ciBkdWUgdG8gYWRkZWQgc3ltYm9scyBpbmZvcm1hdGlvbi4KCkJlc3QgcmVnYXJkcywKQWxleGV5
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
