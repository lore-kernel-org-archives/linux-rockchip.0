Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10551C369B8
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Apr 2025 11:16:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ajuF0jQLirx6t9IAVCFeniFNMbVb3YIUlM9LCLdjuI=; b=wbe/kDM70yCOWL
	HNtgSLE6FKIqTIu7QDg+pHzFvuiUoMTV3fPn9lNyU2yWZboA9d6EDlwL+JMN+vPFr53O4eoGV/cLR
	5lQ4zDQJ8De4QvtwEMRvgv3qImZbNReeqWkcBswO31GE8Y9WMtHIDtliqJsWdL/ZA67ywJSkt/LAd
	+C7209JZ/jI7E2rGZjOz6gSZJyRew2s+zcxmCuhMoBAWN2ZkU9uAPMuOrHGpD5wSwFyXBM+IQt6Wu
	YxJ/BUONodd6hT4XvmRzhwCQQeyfp6CJs4+G8MDvaHGhEFuhkwL8SWgy/ZoiYbpbF/oc1bukI3tJR
	FAMjFQsdtUl9yAir76QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4HnR-00000001itt-0eaW;
	Mon, 14 Apr 2025 11:16:13 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Hmo-00000001iXI-0moM
	for linux-rockchip@lists.infradead.org;
	Mon, 14 Apr 2025 11:15:35 +0000
Received: by mail-pf1-x432.google.com with SMTP id d2e1a72fcca58-736ab1c43c4so3704739b3a.1
        for <linux-rockchip@lists.infradead.org>; Mon, 14 Apr 2025 04:15:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744629333; x=1745234133; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RQlcYD4asnsxpVdwQG6h+GjZzibJklswImMXTXM/EgE=;
        b=pSWBhDDTUCDiIk2VAgztb/donb2EmZZCrzfWOPAuR5p9ZFWq19DPw43DdjTeRRSWY6
         y+H1BQwikM/luBXufmff/TbY0+qP5v7+U0xGbJsSZ0jysxvWmtNeumimc7OkNG/1ruAa
         OoZ7a6lAJB2Ck77PJYyWiDK7LF9oneWTvGRIA5NG6zsv+CCADh9xU9fPMf3HPunp6Lwy
         U1u+TnPb4YUtMttIev1qgpQcV6BA8Ub3A49EyXIQwQK9gr+vOpr/EaEFoTpXyixvA4F2
         JVbhRvvaodS+QrGABf6ClE87rsgQ4xifRt9WrLRPL2M92zKBQhKHzyz8TUMhwnXwKV9B
         N6mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744629333; x=1745234133;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RQlcYD4asnsxpVdwQG6h+GjZzibJklswImMXTXM/EgE=;
        b=JjSCsrWRe5jaYoHUVxi/IlLHh5OEVQS0S42eE1UQkUQ63WRpBcAO4s/dpYUGW+Dg7A
         YzwnkIb+AHMZiPePCZOHL12HEIVHoFmNIiwS+8kGVqtGn0DxjX+kBrvOvroMHV6GKBzJ
         R17hZkFXWCUK7Oi284QcraclGmmhWhnuSvlxHnpyUqcMxNnKbUUWOuNIE7/WVLJKOnnk
         U3lROrV58bZvK6UQxobrWDDznxsNJxQmYK0Keg3PYAn3jBVe1JnBK/Dzjmh4dA1UYOHI
         lZyi29axi2buw+AOY/JidzEIDwSVKa2iU163WyS1mmmlM2AiKylg1sk/GUcDtCnN+zJB
         qb2Q==
X-Forwarded-Encrypted: i=1; AJvYcCX/kBXvf7xoG0flK04+d6HVNkVANs+Eqs6Y6dWCOxPot6u5o8YiZconB2MNWC5lDwl2PCnO1chhJBE6BGBGIA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzOg9CozLXxzCkineuvDwVjZFdvdceQguyHtPWTRbVdvept1lo9
	++mBL5+Fq6wZhzrKWVJIhcutDcJCZCO+UwKRXG/C9kpWpBuq6duHoWUhbe9dqA==
X-Gm-Gg: ASbGncviSi8sFNN6PPebG6c67voKTdo1V031yZCW2/9JnI/8K5UJxXo+Dh/IPCh1Zvh
	BA7OzjzE/d1A2h4+9oF65tra4IKI7ZWokm/MdQt2ew8zmOOFQaCIXwqw+zeA7QZKm1ppOGbC+4I
	I0F8Y9SkUcYosTy5OO4w0X1Sw+0ZbtBxls8gnJ4h8U7LEf/kNnyMarKTaE/9RwGEMEswELTLkWT
	OLRbAZrIVkWVdB6ukKJidhFfkd+Vex8Dzz8M130LTD+gij8ezMooAm/jQEZwTSYxBHq5pi3igDx
	hMmFjus8OtDu6Ug4WyrcLMLLb+TlA9gmXWdEXwKRxULBvvGWx+pA
X-Google-Smtp-Source: AGHT+IHLmEWm+AyUgC3aZXfK/APx9iAwvnZ4/R7W9g5gd6twWGbVcm4JwjPl38NL98UBnVMWqLwbnQ==
X-Received: by 2002:a05:6a20:43ab:b0:1f5:874c:c987 with SMTP id adf61e73a8af0-201797a43dbmr16442336637.15.1744629333130;
        Mon, 14 Apr 2025 04:15:33 -0700 (PDT)
Received: from thinkpad ([120.56.202.123])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b02a0817f4fsm9032010a12.13.2025.04.14.04.15.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Apr 2025 04:15:32 -0700 (PDT)
Date: Mon, 14 Apr 2025 16:45:27 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] PCI: dw-rockchip: Remove PCIE_L0S_ENTRY check from
 rockchip_pcie_link_up()
Message-ID: <zansaj7wgeydqo6qqvczlkkoll2tcpay4acvjd3idjemrbrbw6@2hqfmkfsug5o>
References: <1744180833-68472-1-git-send-email-shawn.lin@rock-chips.com>
 <Z_YwNt6WUuijKTjt@ryzen>
 <38e69551-cc40-11a9-191f-de9a193c5e51@rock-chips.com>
 <Z_Y7h1vzVCCEiXK6@ryzen>
 <gogw24yg4lfq77ime7qyurvkef5yvmkkwjxo6xch52fbszibax@diaxredvtcrh>
 <Z_zeERoDtZ52kW0T@ryzen>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Z_zeERoDtZ52kW0T@ryzen>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_041534_229770_584A6CF8 
X-CRM114-Status: GOOD (  20.76  )
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

T24gTW9uLCBBcHIgMTQsIDIwMjUgYXQgMTI6MDY6MDlQTSArMDIwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBIZWxsbyBNYW5pLAo+IAo+IE9uIFN1biwgQXByIDEzLCAyMDI1IGF0IDA3OjU0OjI4
UE0gKzA1MzAsIE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3cm90ZToKPiA+IE9uIFdlZCwgQXByIDA5
LCAyMDI1IGF0IDExOjE5OjAzQU0gKzAyMDAsIE5pa2xhcyBDYXNzZWwgd3JvdGU6Cj4gPiA+IAo+
ID4gPiBJdCBzZWVtcyBsaWtlIHdlIHNob3VsZCByZWFsbHkgYWRkIGEgd2FybmluZyBhbmQgYSBj
b21tZW50IGluCj4gPiA+IGR3X3BjaWVfbGlua191cCgpLCBzbyB0aGF0IG90aGVycyBkb24ndCBn
ZXQgaGl0IGJ5IHRoaXMgaGFyZCB0byBkZWJ1ZyBpc3N1ZSEKPiA+ID4gCj4gPiAKPiA+IFJpZ2h0
LiBCdXQgSSdtIGFsc28gd29uZGVyaW5nIGlmIHdlIHNob3VsZCB1c2UgdGhlICdEYXRhIExpbmsg
TGF5ZXIgTGluayBBY3RpdmUnCj4gPiBiaXQgaW4gUENJIEV4cHJlc3MgQ2FwYWJpbGl0eSBmb3Ig
Y2hlY2tpbmcgbGluayB1cC4gUWNvbSBkcml2ZXIgaGFzIGJlZW4gdXNpbmcKPiA+IGl0IGZyb20g
dGhlIHN0YXJ0IGFuZCB0aGVyZSBhcmUgbm8gcmVwb3J0ZWQgaXNzdWVzLiBXZSBjb3VsZCBhZGQg
dGhpcyBhcyB0aGUKPiA+IGZpcnN0IGZhbGxiYWNrIGlmIHRoZSBsaW5rX3VwIGNhbGxiYWNrIGlz
IG5vdCBwcm92aWRlZC4KPiAKPiBTb3VuZHMgbGlrZSBhIGdvb2QgaWRlYSwgYnV0IGZyb20gbG9v
a2luZyBhdDoKPiA3LjUuMy42IExpbmsgQ2FwYWJpbGl0aWVzIFJlZ2lzdGVyIChPZmZzZXQgMENo
KQo+IAo+ICIKPiBEYXRhIExpbmsgTGF5ZXIgTGluayBBY3RpdmUgUmVwb3J0aW5nIENhcGFibGUg
LSBGb3IgYSBEb3duc3RyZWFtIFBvcnQsCj4gdGhpcyBiaXQgbXVzdCBiZSBoYXJkd2lyZWQgdG8g
MWIgaWYgdGhlIGNvbXBvbmVudCBzdXBwb3J0cyB0aGUgb3B0aW9uYWwKPiBjYXBhYmlsaXR5IG9m
IHJlcG9ydGluZyB0aGUgRExfQWN0aXZlIHN0YXRlIG9mIHRoZSBEYXRhIExpbmsgQ29udHJvbCBh
bmQKPiBNYW5hZ2VtZW50IFN0YXRlIE1hY2hpbmUuIEZvciBhIGhvdC1wbHVnIGNhcGFibGUgRG93
bnN0cmVhbSBQb3J0IChhcwo+IGluZGljYXRlZCBieSB0aGUgSG90LVBsdWcgQ2FwYWJsZSBiaXQg
b2YgdGhlIFNsb3QgQ2FwYWJpbGl0aWVzIFJlZ2lzdGVyKQo+IG9yIGEgRG93bnN0cmVhbSBQb3J0
IHRoYXQgc3VwcG9ydHMgTGluayBzcGVlZHMgZ3JlYXRlciB0aGFuIDUuMCBHVC9zLAo+IHRoaXMg
Yml0IG11c3QgYmUgaGFyZHdpcmVkIHRvIDFiLgo+IAo+IEZvciBVcHN0cmVhbSBQb3J0cyBhbmQg
Y29tcG9uZW50cyB0aGF0IGRvIG5vdCBzdXBwb3J0IHRoaXMgb3B0aW9uYWwKPiBjYXBhYmlsaXR5
LCB0aGlzIGJpdCBtdXN0IGJlIGhhcmR3aXJlZCB0byAwYi4KPiAiCj4gCj4gSXQgc291bmRzIGxp
a2UgdGhlIHRoZSAnRGF0YSBMaW5rIExheWVyIExpbmsgQWN0aXZlJyBiaXQgaXMgb3B0aW9uYWws
Cj4gb3IgYXQgbGVhc3Qgb3B0aW9uYWwgZm9yIEdlbjEgYW5kIEdlbjIuCgpZZWFoLCB3ZSBzaG91
bGQgYXZvaWQgcmVseWluZyBvbiBpdC4gVGhhbmtzIGZvciBkaWdnaW5nIHRocm91Z2ggdGhlIHNw
ZWMgOikKUmVhbGx5IGFwcHJlY2lhdGVkIQoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N
4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
