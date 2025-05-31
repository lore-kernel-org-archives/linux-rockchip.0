Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D73EC5B552
	for <linux-rockchip@archiver.kernel.org>; Sat, 31 May 2025 06:48:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BDCNH6AF0403yPktNphItNtuqwgUSIGY5FHgA7+QJ30=; b=tW/hueq6oRaJ+b
	bVjuFf+eFMY24x5zGeIhfdQrbWp20WXWJViu6sutR3zvrKWKka5NUGHil4qKAV4GZTLPcSvAWu/Sx
	vbAugO9NCYrDvTB7mCt534ZrW9sjSLOW4SIFtvcCNHqAOexLAZqBP82gQ2zNFN/vBFBk1KvJ5TK46
	kQ81KmaS69gO3lf0M1evtBiwUWJgNxq4sogLka9TK7vesuiGCvIuU5GoR5BQec4axQunS2Bm9UIrm
	rSP2uTohMQhtMmgb+hJIBjCXJJC+YcvXWWYyV/dKPlYPQgCmulKNzL/qzkbdiq2e4O83kZLwmCJdZ
	3OFBBEbDaGf6XkzMYhqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLG0Z-00000003Rng-3ySG;
	Sat, 31 May 2025 06:47:55 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLG0W-00000003Rlr-2Lek
	for linux-rockchip@lists.infradead.org;
	Sat, 31 May 2025 06:47:53 +0000
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-7399838db7fso2557236b3a.0
        for <linux-rockchip@lists.infradead.org>; Fri, 30 May 2025 23:47:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748674071; x=1749278871; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=a5ZWLH4632Zz40l3FU4iRpheZh29+AsfRRhpH0NFHZY=;
        b=yRHCTEb+E3nEnXXUsuFlcWC74fgWd56MhERVsReu7uqlsy8OLKV2yG0XPfldkINqVC
         wrYSMnmHSH9i55jFu7PD0sNeaL/yItNHue43e61G25u9fx1yYGwCpU3nyv1+IzEK9q4y
         GLpwiqaTyzfVFHsrrrWsA6cwC0aXnoBE6MfENEnPolOqNltwm1kRnKeqMALxqMLNRFSq
         FGEay/e9XZ69jWkeaf0uP8vagQjFTb7gfckFa398wcBDT2mhijBmlivSlyeu8eAsXK3V
         3tLk2oezsyB4noRF1nBqF8gn9ftGDfViVi0Sh69J+Q5HDSsubnKCKqLKaMdnkk2CnUrH
         AL+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748674071; x=1749278871;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=a5ZWLH4632Zz40l3FU4iRpheZh29+AsfRRhpH0NFHZY=;
        b=ivvmIbfqZ7DOa+4WG55nOS0s8hdGXaLQoCy5jj+ejEhZ9iKNvaCW7VzMUofneztCaD
         SF2YcKu62aEPhqX0x52Dbo5JaGl44oCdCE0LB+nFX88mEOJFlbYQJhYch8UbszhlCe/A
         7P6nEGZiHIdvOx0QjAyubYCSNIJ7DcJOw0HiJRxSL0ihQGYxcZaBInigAPPsLYX+tOoP
         qCWB6lP6gVHxWrlo3zXYxLIt6Du19H5Px3sHgbgPDb4H+JJ9amxQpkH5RO/Ibw4JUIvJ
         g0qMnAYo+8l7KkSnSTT7ZRLwh11SZRDfe8lE+nerQKnJaelyL/KdADu2bRORaT19lmbO
         5fww==
X-Forwarded-Encrypted: i=1; AJvYcCVG5GomYnJur/oOGMiDBjMQYyhm3Mc0GaunsB8YybKZU0wTnWbwKxLB17xl5hChTekwwMSNZRkVvSLsfGXQpw==@lists.infradead.org
X-Gm-Message-State: AOJu0YymYg+L3nLhtAxn3FKk4eY+WhTUU6CMbgLIX40JzOtSilHZhKse
	EEOA+qEqGMNnWEm8YdKuj5/rlTL+/m872BJW1+67zit5wU/nTMBGRzub+FGxqY6Kjw==
X-Gm-Gg: ASbGnct9h+Gz3fdY2ldt/2N2kyYFVvnYLDjLNAdul1LUyoswFTQ2+JbturSO2ivaVsX
	+sJGXnSk/AkSlrKTFuAR5a5gj8HYY4bQbQLwhf78uN3y+wMJKFi0XeMwt9GJ7Z7igvTqXahEp8X
	rWnFGr4j3BK0/AOaCqr9sr11rneY5sweaznLKlpnneAtiubXTyy2H+NHGgcBr+p2/7p2X4qaTEX
	sKiWGbWqDeBsxZv7PsCrEX2xpvfT9ez+Q8TjgazwbGHWwQZQN38staSpXVrFqbgclGVrD4OXASp
	TgxHRU4TXLCJosQDgJqcrdg/BJKOTElRZBr/vvuuza7GjZUshqaHtYYwvZqTHQ==
X-Google-Smtp-Source: AGHT+IEKL4fPM3xoNxSzuxpYqv6nyVtXsn84i+gad0ylQKNT3LCGJ0g2SDcStXdW+/7FoA7i3aHggA==
X-Received: by 2002:a05:6a00:179b:b0:73d:fdd9:a55 with SMTP id d2e1a72fcca58-747bdd85a07mr9014475b3a.8.1748674071613;
        Fri, 30 May 2025 23:47:51 -0700 (PDT)
Received: from thinkpad ([120.56.204.95])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-747afe966easm4032172b3a.4.2025.05.30.23.47.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 May 2025 23:47:51 -0700 (PDT)
Date: Sat, 31 May 2025 12:17:43 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Niklas Cassel <cassel@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Heiko Stuebner <heiko@sntech.de>, Wilfred Mallawa <wilfred.mallawa@wdc.com>, 
	Damien Le Moal <dlemoal@kernel.org>, Hans Zhang <18255117159@163.com>, 
	Laszlo Fiat <laszlo.fiat@proton.me>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/4] PCI: dw-rockchip: Do not enumerate bus before
 endpoint devices are ready
Message-ID: <domwxd2beelpnuuzgbxuizqnfo24aekhtxsahodsbfkpc3n6fd@rahjejxklr47>
References: <76F22449-6A2D-4F64-BF23-DF733E6B9165@kernel.org>
 <20250530194347.GA217284@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250530194347.GA217284@bhelgaas>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250530_234752_599943_053DF751 
X-CRM114-Status: GOOD (  16.05  )
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

T24gRnJpLCBNYXkgMzAsIDIwMjUgYXQgMDI6NDM6NDdQTSAtMDUwMCwgQmpvcm4gSGVsZ2FhcyB3
cm90ZToKPiBPbiBGcmksIE1heSAzMCwgMjAyNSBhdCAwNzoyNDo1M1BNICswMjAwLCBOaWtsYXMg
Q2Fzc2VsIHdyb3RlOgo+ID4gT24gMzAgTWF5IDIwMjUgMTk6MTk6MzcgQ0VTVCwgQmpvcm4gSGVs
Z2FhcyA8aGVsZ2Fhc0BrZXJuZWwub3JnPiB3cm90ZToKPiA+ID4KPiA+ID5JIHRoaW5rIGFsbCBk
cml2ZXJzIHNob3VsZCB3YWl0IFBDSUVfVF9SUlNfUkVBRFlfTVMgKDEwMG1zKSBhZnRlciBleGl0
Cj4gPiA+ZnJvbSBDb252ZW50aW9uYWwgUmVzZXQgKGlmIHBvcnQgb25seSBzdXBwb3J0cyA8PSA1
LjAgR1Qvcykgb3IgYWZ0ZXIKPiA+ID5saW5rIHRyYWluaW5nIGNvbXBsZXRlcyAoaWYgcG9ydCBz
dXBwb3J0cyA+IDUuMCBHVC9zKS4KPiA+ID4KPiA+ID4+IFNvIEkgZG9uJ3QgdGhpbmsgdGhpcyBp
cyBhIGRldmljZSBzcGVjaWZpYyBpc3N1ZSBidXQgcmF0aGVyCj4gPiA+PiBjb250cm9sbGVyIHNw
ZWNpZmljLiAgQW5kIHRoaXMgbWFrZXMgdGhlIFFjb20gcGF0Y2ggdGhhdCBJIGRyb3BwZWQgYQo+
ID4gPj4gdmFsaWQgb25lIChvZmMgd2l0aCBjaGFuZ2UgaW4gZGVzY3JpcHRpb24pLgo+ID4gPgo+
ID4gPlVSTD8KPiA+IAo+ID4gUEFUQ0ggNC80IG9mIHRoaXMgc2VyaWVzLgo+IAo+IElmIHlvdSBt
ZWFuCj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDI1MDUwNjA3MzkzNC40MzMxNzYtMTAt
Y2Fzc2VsQGtlcm5lbC5vcmcsCj4gdGhhdCBwYXRjaCBtZXJlbHkgcmVwbGFjZXMgIjEwMCIgd2l0
aCBQQ0lFX1RfUFZQRVJMX01TLCB3aGljaCBkb2Vzbid0Cj4gZml4IGFueXRoaW5nIGFuZCBpcyB2
YWxpZCByZWdhcmRsZXNzIG9mIHRoaXMgUGxleHRvci1yZWxhdGVkIHBhdGNoCj4gKCJQQ0k6IGR3
LXJvY2tjaGlwOiBEbyBub3QgZW51bWVyYXRlIGJ1cyBiZWZvcmUgZW5kcG9pbnQgZGV2aWNlcyBh
cmUKPiByZWFkeSIpLgoKSXQgaXMgcGF0Y2ggMi80OgpodHRwczovL2xvcmUua2VybmVsLm9yZy9h
bGwvMjAyNTA1MDYwNzM5MzQuNDMzMTc2LTgtY2Fzc2VsQGtlcm5lbC5vcmcKCi0gTWFuaQoKLS0g
CuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
