Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4AE2C3ABC3
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 May 2025 10:53:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=90rH/jApvnrKLqlogQHftY/LPZxqNvCM8l+dQLi2ANE=; b=ZnuGptZQtpOZ3E
	FyUUgq+0soOj+1azu6S9xbBjQiws/Jfsst9XjFqAZD61XP6wrn9cVZpj9cbMGSJ7w3v5tO/em2DGu
	jIuKBK9Xp6Q/OOkK5B+RhFlqwBBimEOXLJEOfnGGKa5SzbgkEYzduTBtvVHXumPxOXSnt0LXsL2LJ
	jXVxahl/zib5Vb4GoUigQz1e3PWIpePEbxNE9ZR0wWAt3zoye/4YxbR4sib5D3QgWjzRqgcE+yEmT
	EMYUklWXO0rCHwsNYND2mqCQzUfx7tL9bTrpGltvycyTXdoRuwRIaLZI3dwtN7tpdmzPGxIyxlUym
	/2qQGu026vnuzN54+VzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uEnGT-0000000CBs1-1hfB;
	Tue, 13 May 2025 10:53:37 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uEnGQ-0000000CBqH-2D0d
	for linux-rockchip@lists.infradead.org;
	Tue, 13 May 2025 10:53:35 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-441c99459e9so36832995e9.3
        for <linux-rockchip@lists.infradead.org>; Tue, 13 May 2025 03:53:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747133613; x=1747738413; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=E5XqWRuALq+1KPuNnLLJTpIo8i27168N3j9dyvRLwpM=;
        b=kAFMHMZd3IXolOawFUyZDC2Vx0Hmj7AHqBSsIZTYtxRpKqYK2LeiFYFLIrxXLSWO1l
         QrdZve0A7PMSdgPsWuxPrbUsICxv3WwQODDAoEzYZbGrQB/NEDbJCke6syAa8LqbhCke
         qftf+HSaiwH7RWKyC94cRnm70Ge11qK1g49es1yhHtiHHe/7CotiUEh79wX+X5gMn/AE
         GnGz4zUUYK3LWwJMWBjQAdWc9lPwZ1/L9SW41UaM0lxCs8CBoU5yDIvdcOrXSHzqyTUu
         Iam20HzxEiKgaorzOPoaN0ZnGhakcfPruWaefL9xWYQw5GJjhm8X8miSbQ160qGhcTr5
         o1BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747133613; x=1747738413;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=E5XqWRuALq+1KPuNnLLJTpIo8i27168N3j9dyvRLwpM=;
        b=AOSG+qwCXUbOqu6EOAlePK6Tz7UOvF/3DtnzES5tXfM1MwxbyF1qOorFTFiZcHQQTJ
         2OqNazNyZeBTNSmZ2RtaAmKPJZkFmsORB0rbupq/rlZEsZJmLrOWYM7553l+9yoO6kfo
         FyCBQeutq3iRQ4QzMbUCJtN0TdrGv4YOE1r84nARcSaLRiGluMN0qAOF8kgdJL2qBMjC
         y8sExzQsb4U/0L73teZLN/T6Wo5qd3n8qk0A+mWHaNwZcUeXKswmtTDT2TrkaOsSxcfZ
         eMUbqeGLEqucTEmyVchO13FIyqBqflmFBMDMk8ri9TTKfmOIXYVbdY9lBzuQmEv/JZg9
         O8vA==
X-Forwarded-Encrypted: i=1; AJvYcCU8+WxRuk28aLCTV0h/F77HXvx3L/a9xB1viKdk+VeEnCTBqKkNz6jCLdFcSaaQXQGb2EQoRs0EColCuU4Pcg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxGaPuz2L6A+2p5/dJJny3aCVPIafmLcboJtaz3cCZaP7vbGfzQ
	0Ypym1c8uWQArk1+HxRljg1gCRa960e6QuEhB6oZ9nXnI0RvP2Jkq+SsVwEaoA==
X-Gm-Gg: ASbGncsl4W29gZsdKV4ZA83w9+RjkLW60YHbMSVjpQeZQ0JkqvgPgyIAC1CigkrIZ5P
	wFU7czg1C8DxUwjPWWpDsrGL095ciJfYbvWrQVXmMcspeOxXFjN0ujzSxdeg6N0V9Ux3iYfe+po
	Inj46fvtG8KoyaPeiIPETgcNNZ0QDgZjuV5teLbB1qCdRbPFCvKX4bfHlazFn1G05bqaGUueUcR
	ng7jKqb2/gvJZmi3PE0YRUygvzKEtj3OM8P1laafXtMOHe9Q685d24pjJnLz9KpyqelxVOCkfQF
	lXKTIh52HoPiLuS0it9eZwGdFFm40aZoOHa18Q8hyM0ZMeVizNffESBcF7f6KMOpaUNpYgB9NdO
	dzwJb2R8UmFAWMw==
X-Google-Smtp-Source: AGHT+IF4m8noQnB4eGSySi2oqV3PlKbLI8UICKwhBvvGk/TXUW4E0JigYf7vcXqZztR8zC1h2uVMZw==
X-Received: by 2002:a05:600c:34d5:b0:43c:fe5e:f040 with SMTP id 5b1f17b1804b1-442d6dd21bfmr124187975e9.23.1747133612718;
        Tue, 13 May 2025 03:53:32 -0700 (PDT)
Received: from thinkpad (110.8.30.213.rev.vodafone.pt. [213.30.8.110])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442d67df5ecsm161692715e9.9.2025.05.13.03.53.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 May 2025 03:53:32 -0700 (PDT)
Date: Tue, 13 May 2025 11:53:29 +0100
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Rob Herring <robh@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
	Krishna chaitanya chundru <quic_krichai@quicinc.com>, Wilfred Mallawa <wilfred.mallawa@wdc.com>, 
	Damien Le Moal <dlemoal@kernel.org>, Hans Zhang <18255117159@163.com>, 
	Laszlo Fiat <laszlo.fiat@proton.me>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v2 0/4] PCI: dwc: Link Up IRQ fixes
Message-ID: <7zcrjlv5aobb22q5tyexca236gnly6aqhmidx6yri6j7wowteh@mylkqbwehak7>
References: <20250506073934.433176-6-cassel@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250506073934.433176-6-cassel@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250513_035334_577504_9A367188 
X-CRM114-Status: GOOD (  14.89  )
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

T24gVHVlLCBNYXkgMDYsIDIwMjUgYXQgMDk6Mzk6MzVBTSArMDIwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBIZWxsbyB0aGVyZSwKPiAKPiBDb21taXQgOGQzYmYxOWYxYjU4ICgiUENJOiBkd2M6
IERvbid0IHdhaXQgZm9yIGxpbmsgdXAgaWYgZHJpdmVyIGNhbiBkZXRlY3QKPiBMaW5rIFVwIGV2
ZW50IikgYWRkZWQgc3VwcG9ydCBmb3IgRFdDIHRvIG5vdCB3YWl0IGZvciBsaW5rIHVwIGJlZm9y
ZQo+IGVudW1lcmF0aW5nIHRoZSBidXMuIEhvd2V2ZXIsIHdlIGNhbm5vdCBzaW1wbHkgZW51bWVy
YXRlIHRoZSBidXMgYWZ0ZXIKPiByZWNlaXZpbmcgYSBMaW5rIFVwIElSUSwgd2Ugc3RpbGwgbmVl
ZCB0byB3YWl0IFBDSUVfVF9SUlNfUkVBRFlfTVMgdGltZQo+IHRvIGFsbG93IGEgZGV2aWNlIHRv
IGJlY29tZSByZWFkeSBhZnRlciBkZWFzc2VydGluZyBQRVJTVC4gVG8gYXZvaWQKPiBicmluZ2lu
ZyBiYWNrIGFuIGNvbmRpdGlvbmFsIGRlbGF5IGR1cmluZyBwcm9iZSwgcGVyZm9ybSB0aGUgd2Fp
dCBpbiB0aGUKPiB0aHJlYWRlZCBJUlEgaGFuZGxlciBpbnN0ZWFkLgo+IAoKVGhpcyB3YWl0IHRp
bWUgaXMgYSBncmV5IGFyZWEgaW4gdGhlIHNwZWMgdGJoLiBJZiB0aGUgUmVhZGluZXNzIE5vdGlm
aWNhdGlvbgooUk4pIGlzIG5vdCBzdXBwb3J0ZWQsIHRoZW4gdGhlIHNwZWMgc3VnZ2VzdHMgd2Fp
dGluZyAxcyBmb3IgdGhlIGRldmljZSB0bwpiZWNvbWUgJ2NvbmZpZ3VyYXRpb24gcmVhZHknLiBU
aGF0J3Mgd2h5IHdlIGhhdmUgdGhlIDFzIGRlbGF5IGluIGR3YyBkcml2ZXIuCgpBbHNvLCBpdCBo
YXMgdGhlIGJlbG93IGluIHI2LjAsIHNlYyA2LjYuMToKCmBgYAoqIE9uIHRoZSBjb21wbGV0aW9u
IG9mIExpbmsgVHJhaW5pbmcgKGVudGVyaW5nIHRoZSBETF9BY3RpdmUgc3RhdGUsIHNlZSDCpwpT
ZWN0aW9uIDMuMiApLCBhIGNvbXBvbmVudCBtdXN0IGJlIGFibGUgdG8gcmVjZWl2ZSBhbmQgcHJv
Y2VzcyBUTFBzIGFuZCBETExQcy4KKiBGb2xsb3dpbmcgZXhpdCBmcm9tIGEgQ29udmVudGlvbmFs
IFJlc2V0IG9mIGEgZGV2aWNlLCB3aXRoaW4gMS4wIHMgdGhlIGRldmljZQptdXN0IGJlIGFibGUg
dG8gcmVjZWl2ZSBhIENvbmZpZ3VyYXRpb24gUmVxdWVzdCBhbmQgcmV0dXJuIGEgU3VjY2Vzc2Z1
bApDb21wbGV0aW9uIGlmIHRoZSBSZXF1ZXN0IGlzIHZhbGlkLiBUaGlzIHBlcmlvZCBpcyBpbmRl
cGVuZGVudCBvZiBob3cgcXVpY2tseQpMaW5rIHRyYWluaW5nIGNvbXBsZXRlcy4gSWYgUmVhZGlu
ZXNzIE5vdGlmaWNhdGlvbnMgbWVjaGFuaXNtcyBhcmUgdXNlZCAoc2VlCsKnIFNlY3Rpb24gNi4y
MiAuKSwgdGhpcyBwZXJpb2QgbWF5IGJlIHNob3J0ZXIuCmBgYAoKQXMgcGVyIHRoZSBmaXJzdCBu
b3RlLCBvbmNlIGxpbmsgdHJhaW5pbmcgaXMgY29tcGxldGVkLCB0aGUgZGV2aWNlIHNob3VsZCBi
ZQpyZWFkeSB0byBhY2NlcHQgY29uZmlndXJhdGlvbiByZXF1ZXN0cyBmcm9tIHRoZSBob3N0LiBT
byBubyBkZWxheSBzaG91bGQgYmUKcmVxdWlyZWQuCgpCdXQgdGhlIHNlY29uZCBub3RlIHNheXMg
dGhhdCB0aGUgMXMgZGVsYXkgaXMgaW5kZXBlbmRlbnQgb2YgaG93IHF1aWNrbHkgdGhlCmxpbmsg
dHJhaW5pbmcgY29tcGxldGVzLiBUaGlzIGVzc2VudGlhbGx5IGNvbnRyYWRpY3RzIHdpdGggdGhl
IGFib3ZlIHBvaW50LgoKU28gSSB0aGluayBpdCBpcyBub3QgcmVxdWlyZWQgdG8gYWRkIGRlbGF5
IGFmdGVyIGNvbXBsZXRpbmcgdGhlIExUU1NNLCB1bmxlc3MKc29tZW9uZSBzZWVzIGFueSBpc3N1
ZS4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprg
rr/grrXgrq7gr40KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
