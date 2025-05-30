Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB2ADC5AD49
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 May 2025 16:02:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h/BB2K51SeW/icvL0uNF+NhR4qhEIyRfH800EV/QnT0=; b=nRkFqRDes5KVdy
	hK12VS9REoovUL+gtMYwswicEo7uBLqdUPxlXoMv3tnP9sSUarZH8WntAhT52djh8BqC0ttd+kkNq
	lchFUx8brDwdwvNHQF7Dmx2FQhgOgQ/EUZwEfPyzxTC9m87grnF7/6MT5tR7F6o0ZpdTiOMCzrIn5
	nSu3FxsBtBug6tlbYbvpbatKEV1a3LT/i/KCDT25ACwAqOKN4MlZihtdhooMbdvVjxWlh6VJVuO5b
	FJIyMcHmRIHrXmscyyB2xtq0m5HuqITgt/RjIXCbmC+BA6QC/WtWQWQS60d72s05NYQ0PW8kvJAn/
	jnZ8jihffIBRjh4w2XlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uL2Bc-000000016Hn-052Q;
	Fri, 30 May 2025 16:02:24 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uL29Q-000000015gt-2xkc
	for linux-rockchip@lists.infradead.org;
	Fri, 30 May 2025 16:00:10 +0000
Received: by mail-pf1-x432.google.com with SMTP id d2e1a72fcca58-742c5eb7d1cso2397629b3a.3
        for <linux-rockchip@lists.infradead.org>; Fri, 30 May 2025 09:00:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748620807; x=1749225607; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=77+FrcIpWSxgma5SjFDEMO5xH+4H9hBqTDfsgt+zhq4=;
        b=Gw2YyRReZltXJcKALKiC+sFVT1bUhIuTokutVw+dd4UPI52zA3uctp+EIekBTIZlvj
         5fwyDUIiDrK+v/z8mTc9viNh43+8kslU1RKEweZfwWf8d0rYeO2+HHDvRT7YjXBWiB1B
         yC/VZk08MHn2NVK5vNyyIb8tR9N6r0yHgPJ+52CilhwLvYSAUgNMczfS100AKqNmB/uO
         jcsNE6UkZcCUurf28p1yOVRxWX7xxjQ4t4gCRhG5wKjBawsRFSE0ChBvHjhd7OWpZN09
         slCrf4MXRDlYVk79vCWfYpm486Y2kbKPLWqSDu34FyZBa+ivwke213l7Vf2ryEsF+g1k
         SWxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748620807; x=1749225607;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=77+FrcIpWSxgma5SjFDEMO5xH+4H9hBqTDfsgt+zhq4=;
        b=Vn41enVWW+DMjNWvEiLse8EghTauY2ondtg3aSO44jBQT7dAH+mrLtlR2FIUIzKaVG
         0DhZKs0a1/N5ie81OxPtfBYwIXOLvnrHSyAgGYILPNIZ0zEVu9lxpJ1sFBJfCx8Rvglp
         RTk138p/Oo489K8dzVZWxikdy4z09E0L7mnfBv8LCDCLg69m+SOCRzFRvkjqdk49qps3
         gRtMECQys2NKZ1D4B4x5dDDXqnhWQEmzEMHNrDdDgVOzy1fEnCFlsllDq8OD0UqA1Rlq
         U9CncO8NF/0cvKKCaeRFylnHB/o8FZPi8zyX4qS4kheqCZ011VO+T2IF0nhT9zMLoicz
         L3CA==
X-Forwarded-Encrypted: i=1; AJvYcCW3HkzthxU7BeHRVxgOQqJb36h8RNp9l+6HZKFiS7zZW0NmdBlnKe/j4e16HXSNuhy7A536a0i9cljo7qdUzA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyRaSYOebiWyf701jguPH54SyCaBAfgEneZ/tIk9wQCa6nAf/rD
	QNIiXBjjAEyoHx8jrRX0BS8IP5lTFW7umnLBCtV5BxcjOusy/VUjcxJcuihOf78/Hg==
X-Gm-Gg: ASbGncueoVVoirz5pavw0f4j3Uo7VaAi4K0pm3/eH2Z0N+wB8myHdB5MpSzLWB4Ghrc
	1BWsXmDIZQ5CiuKFTqWiL9RYTrOlOE2qmhz+q6nl9Ae0PFyPdgYrPZ0GMYoaDdhI411pM/D2+gW
	KlkO5EgMYpl7F9MwTO2vIbUurhjG9oSfUYSfs5yNOap50VBQ6qt1dj6dStMCXya6jHXWgLRbnZV
	+xvCFkHP0BqsPObBjt1lNg7Ak7aaoL98AMn5RuleA86bYJtJ5JLLBvEr9ld0q9oCQv7frVX7a5i
	RKOrU/u7APTUx7qEShT+PT+9JSUTCKXfyrDLRMLmyBKYa/QhqmPB8jxNTRy96JEdVNxmg0Kr
X-Google-Smtp-Source: AGHT+IF/8QTsNcVL/z+rQlAga/Geyj/2FCJ5vD5YDtu2ldaYPZerMoqgdp4D+2pixaewJCBXnV6XdQ==
X-Received: by 2002:a05:6a00:1743:b0:736:43d6:f008 with SMTP id d2e1a72fcca58-747bd980d13mr5393036b3a.12.1748620804748;
        Fri, 30 May 2025 09:00:04 -0700 (PDT)
Received: from thinkpad ([120.60.139.33])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-747afed34fdsm3213450b3a.75.2025.05.30.09.00.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 May 2025 09:00:04 -0700 (PDT)
Date: Fri, 30 May 2025 21:29:57 +0530
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
Message-ID: <fbvatgydh64wr2z2srivbuurjonxpq46xie3bq57grtosesfti@v6vplhyxc343>
References: <20250506073934.433176-7-cassel@kernel.org>
 <20250528224251.GA58400@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250528224251.GA58400@bhelgaas>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250530_090008_796773_1D2AD570 
X-CRM114-Status: GOOD (  23.51  )
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

T24gV2VkLCBNYXkgMjgsIDIwMjUgYXQgMDU6NDI6NTFQTSAtMDUwMCwgQmpvcm4gSGVsZ2FhcyB3
cm90ZToKPiBPbiBUdWUsIE1heSAwNiwgMjAyNSBhdCAwOTozOTozNkFNICswMjAwLCBOaWtsYXMg
Q2Fzc2VsIHdyb3RlOgo+ID4gQ29tbWl0IGVjOWZkNDk5YjljNiAoIlBDSTogZHctcm9ja2NoaXA6
IERvbid0IHdhaXQgZm9yIGxpbmsgc2luY2Ugd2UgY2FuCj4gPiBkZXRlY3QgTGluayBVcCIpIGNo
YW5nZWQgc28gdGhhdCB3ZSBubyBsb25nZXIgY2FsbCBkd19wY2llX3dhaXRfZm9yX2xpbmsoKSwK
PiA+IGFuZCBpbnN0ZWFkIGVudW1lcmF0ZSB0aGUgYnVzIHdoZW4gcmVjZWl2aW5nIGEgTGluayBV
cCBJUlEuCj4gPiAKPiA+IExhc3psbyBGaWF0IHJlcG9ydGVkIChvZmYtbGlzdCkgdGhhdCBoaXMg
UExFWFRPUiBQWC0yNTZNOFBlR04gTlZNZSBTU0QgaXMKPiA+IG5vIGxvbmdlciBmdW5jdGlvbmFs
LCBhbmQgc2ltcGx5IHJldmVydGluZyBjb21taXQgZWM5ZmQ0OTliOWM2ICgiUENJOgo+ID4gZHct
cm9ja2NoaXA6IERvbid0IHdhaXQgZm9yIGxpbmsgc2luY2Ugd2UgY2FuIGRldGVjdCBMaW5rIFVw
IikgbWFrZXMgaGlzCj4gPiBTU0QgZnVuY3Rpb25hbCBhZ2Fpbi4KPiA+IAo+ID4gSXQgc2VlbXMg
dGhhdCB3ZSBhcmUgZW51bWVyYXRpbmcgdGhlIGJ1cyBiZWZvcmUgdGhlIGVuZHBvaW50IGlzIHJl
YWR5Lgo+ID4gQWRkaW5nIGEgbXNsZWVwKFBDSUVfVF9SUlNfUkVBRFlfTVMpIGJlZm9yZSBlbnVt
ZXJhdGluZyB0aGUgYnVzIGluIHRoZQo+ID4gdGhyZWFkZWQgSVJRIGhhbmRsZXIgbWFrZXMgdGhl
IFNTRCBmdW5jdGlvbmFsIG9uY2UgYWdhaW4uCj4gCj4gVGhpcyBzb3VuZHMgbGlrZSBhIHByb2Js
ZW0gdGhhdCBjb3VsZCBoYXBwZW4gd2l0aCBhbnkgY29udHJvbGxlciwgbm90Cj4ganVzdCBkdy1y
b2NrY2hpcD8gIEFyZSB3ZSBtaXNzaW5nIHNvbWUgcmVxdWlyZWQgZGVsYXkgdGhhdCBzaG91bGQg
YmUKPiBpbiBnZW5lcmljIGNvZGU/ICBPciBpcyB0aGlzIGEgUExFWFRPUiBkZWZlY3QgdGhhdCBl
dmVyeWJvZHkgaGFzIHRvCj4gcGF5IHRoZSBwcmljZSBmb3I/Cj4gCj4gRGVsYXlzIGxpa2UgdGhp
cyBhcmUgcmVhbGx5IGhhcmQgdG8gZ2V0IHJpZCBvZiBvbmNlIHdlIGFkZCB0aGVtLCBzbwo+IEkn
bSBhIGxpdHRsZSBiaXQgY2F1dGlvdXMuCj4gCgpPaywgSSBkaWdnZWQgaW50byB0aGUgc3BlYyBh
IGxpdHRsZSBtb3JlIGFuZCBJIGNvdWxkIHNlZSBiZWxvdyBwYXJhZ3JhcGggaW4KcjYuMCwgc2Vj
IDYuNi4xIGZvciBkZXZpY2VzIG5vdCBzdXBwb3J0aW5nIERldmljZSBSZWFkaW5lc3MgU3RhdHVz
IChEUlMpOgoKIldpdGggYSBEb3duc3RyZWFtIFBvcnQgdGhhdCBkb2VzIG5vdCBzdXBwb3J0IExp
bmsgc3BlZWRzIGdyZWF0ZXIgdGhhbiA1LjAgR1QvcywKc29mdHdhcmUgbXVzdCB3YWl0IGEgbWlu
aW11bSBvZiAxMDAgbXMgZm9sbG93aW5nIGV4aXQgZnJvbSBhIENvbnZlbnRpb25hbCBSZXNldApi
ZWZvcmUgc2VuZGluZyBhIENvbmZpZ3VyYXRpb24gUmVxdWVzdCB0byB0aGUgZGV2aWNlIGltbWVk
aWF0ZWx5IGJlbG93IHRoYXQKUG9ydC4KCldpdGggYSBEb3duc3RyZWFtIFBvcnQgdGhhdCBzdXBw
b3J0cyBMaW5rIHNwZWVkcyBncmVhdGVyIHRoYW4gNS4wIEdUL3MsCnNvZnR3YXJlIG11c3Qgd2Fp
dCBhIG1pbmltdW0gb2YgMTAwIG1zIGFmdGVyIExpbmsgdHJhaW5pbmcgY29tcGxldGVzIGJlZm9y
ZQpzZW5kaW5nIGEgQ29uZmlndXJhdGlvbiBSZXF1ZXN0IHRvIHRoZSBkZXZpY2UgaW1tZWRpYXRl
bHkgYmVsb3cgdGhhdCBQb3J0LgpTb2Z0d2FyZSBjYW4gZGV0ZXJtaW5lIHdoZW4gTGluayB0cmFp
bmluZyBjb21wbGV0ZXMgYnkgcG9sbGluZyB0aGUgRGF0YSBMaW5rCkxheWVyIExpbmsgQWN0aXZl
IGJpdCBvciBieSBzZXR0aW5nIHVwIGFuIGFzc29jaWF0ZWQgaW50ZXJydXB0CihzZWUgwqcgU2Vj
dGlvbiA2LjcuMy4zICkuIEl0IGlzIHN0cm9uZ2x5IHJlY29tbWVuZGVkIGZvciBzb2Z0d2FyZSB0
byB1c2UgdGhpcwptZWNoYW5pc20gd2hlbmV2ZXIgdGhlIERvd25zdHJlYW0gUG9ydCBzdXBwb3J0
cyBpdC4iCgpXZSBhcmUgbm90IGNoZWNraW5nIGZvciBEUlMgYWZ0ZXIgdGhlIFBFUlNUIyBkZWFz
c2VydCBvciBhZnRlciBsaW5rIGlzIHVwLCBJCnRoaW5rIERSUyBjaGVjayBvbmx5IGFwcGxpZXMg
dG8gZW51bWVyYXRlZCBkZXZpY2VzLCBidXQgSSdtIG5vdCAxMDAlIHN1cmUuIEJ1dAppZiB3ZSBh
c3N1bWUgdGhhdCB0aGUgZGV2aWNlcyBkb2Vzbid0IHN1cHBvcnQgRFJTLCB0aGVuIHdlIHNob3Vs
ZCBtYWtlIHN1cmUKdGhhdCBhbGwgY29udHJvbGxlciBkcml2ZXJzIHdhaXQgZm9yIDEwMG1zIGV2
ZW4gYWZ0ZXIgbGluayB1cCBldmVudCBiZWZvcmUKaXNzdWluZyB0aGUgY29uZmlnIHJlcXVlc3Qu
CgpTbyBJIGRvbid0IHRoaW5rIHRoaXMgaXMgYSBkZXZpY2Ugc3BlY2lmaWMgaXNzdWUgYnV0IHJh
dGhlciBjb250cm9sbGVyIHNwZWNpZmljLgpBbmQgdGhpcyBtYWtlcyB0aGUgUWNvbSBwYXRjaCB0
aGF0IEkgZHJvcHBlZCBhIHZhbGlkIG9uZSAob2ZjIHdpdGggY2hhbmdlIGluCmRlc2NyaXB0aW9u
KS4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprg
rr/grrXgrq7gr40KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
