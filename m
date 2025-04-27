Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81A8BC369D1
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Apr 2025 11:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u4Wz4QpTlIQBiF9iWpE4nx0ll/ymlcIXQ64BK4Hjap8=; b=NczRs9sPpLRiC0
	sjMJ1JElm2cxNnTpJMz18YrKMJQpnHsWfQ1vtX+vxbggV70aaXbjKrGZvJBpEIFQmYJx7Xstk1j/o
	3Sv2+PKAmbbyFbdqqOuNcII124EPjpieMKGSFsm3KBgjcW8msBVUIAYnkJ66/agTfnQz0StXoTqNV
	IylYTeINEN7150KZtDi05S62Ubuwaa7gg7uPd3J5F6WDlr6jfAAOgapXH9sLLl+Ud8we13cZJz1va
	BKY9wI+aeM87BGIT7mxEVmYROrYtg7TFn+HKChaTl4zgJ/xVvtZeXdJOkDOeYxEwr7VOUD4dvkO5H
	VIMRTl0eiLzPmikDN/+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8zuL-00000003O93-2Rya;
	Sun, 27 Apr 2025 11:10:49 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8zuI-00000003O89-4BUu
	for linux-rockchip@lists.infradead.org;
	Sun, 27 Apr 2025 11:10:48 +0000
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-2254e0b4b79so58086645ad.2
        for <linux-rockchip@lists.infradead.org>; Sun, 27 Apr 2025 04:10:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745752246; x=1746357046; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BCW3fClu8hd3i15UY5+BkYv0EoS+YjFdR94yHfWo7NI=;
        b=qQoahPUfOI+obwG2uvY3pUId3JIVVZC1gqA2rdFOAxEyClJxhLCiC48Y6e8zky/xF5
         m2Mf2aV9E0qORIvvvIzfhANFVGB0zjqfgwWPWxJb6S7q84ks9j2tq7VNFl02hTqIbDvw
         Dtvya9yfnt7mCZiT0KapH3VU7px0/Yb/WWHxMnnjo/Fuhyd07EnMch1e8oLGkG4WMtKH
         agRbh+xieg2YhgfDCBFIlkFgOGSoKgruAN8uYfRdsynOyZGF0ifvdBIycXfr7RFQnH2T
         xVFwhu+kj/rMa2t0NVLcNUGzFzZDn0gkTkOqos5fXFolKhofP+k4xEdaMtUhSJqrSuYi
         fxgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745752246; x=1746357046;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BCW3fClu8hd3i15UY5+BkYv0EoS+YjFdR94yHfWo7NI=;
        b=H85qwL3NJOuCC91m/IMOnJayXrU8TrRkAey7KSyBCrWB5ICGB+2iU6UgTWa7V92+w9
         kom+08PPIx0Uw+GJk2MgmJvvQLpGQ8kp4kHc/Wy3+nEvRG3al5EFEulUVnHhouzCM2xe
         1x5N66QbajPp0MfG7+x9qAezfd3/yRfSpNM57rM+EzUmAmdY7Gu3F70rhPC4yjgq7PC/
         m9mqBRm9903pXgB2jn9NUU2Htdf8Ua4gJfCgI7ZAOhI32m3FLPfi6Fz2OZTC0l9+Axg8
         zPxS6WMuFNzuH6CAGzwFPlWmFZUW2NLrT4qvowFkdVrppYbEd7ShmFKrLqBXTU2gLiP7
         g6jg==
X-Forwarded-Encrypted: i=1; AJvYcCVPBz8sPsnrPMwEyHzinPVjw/UIo8fDXqUftPy8P/rkIe9Wxsld0p3SVZX0wpNExrtJLyfCI1UmlpinF0TUMg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyBvhoYK9jnX1BlNc1AmXJGbQjDOgSmHWrqu4k097AwkI+dd6O/
	1LaAPLVUNaDQ0M/6DwODipWEOEseA8j4yJ0pEKJk1zj7xITNq/acKvNmLr6fYg==
X-Gm-Gg: ASbGncvwJwKeF8/D2BROlhXXInbqRB4BXLN4yRSOzYCsn/YSzVbcn9N7OYQRWK+qH/J
	Nsm5cnASlizSUaxbQSZyClSqu5Gtr9AqHQVewLwDyBAy2uzON7GQV4Bo2XdHecOM+4zszXOMqH8
	rhQH+qvNGAjHP35NQZwuyHeuDkzpZB73cBJ43liMNfcssVVr4EPTjaDKXkYporRjFsaynL7bvNP
	9cQ4U3Y29es4qY8m4/l/suswD8XYMrei5QB2WMVtOZXjLqTUrNupJOb/4J7gdQ7T3yQvsGgTUfL
	UHaFBb+Ihq/9e9EatJo/n1Skea5Onbw4t1gGBJCSKBok0LhNqD5D
X-Google-Smtp-Source: AGHT+IESxIRh9ywcqSB83gIp43lT9P2vpMm3xBJxMCs41iZKziBWs0161UNH7ZZMchhUoZ94nY/2tw==
X-Received: by 2002:a17:903:1b23:b0:220:e5be:29c7 with SMTP id d9443c01a7336-22dbf63a2c2mr132522725ad.39.1745752245995;
        Sun, 27 Apr 2025 04:10:45 -0700 (PDT)
Received: from thinkpad ([120.60.143.241])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22db4d74c93sm62360595ad.11.2025.04.27.04.10.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Apr 2025 04:10:45 -0700 (PDT)
Date: Sun, 27 Apr 2025 16:40:36 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Hans Zhang <18255117159@163.com>
Cc: lpieralisi@kernel.org, kw@linux.com, bhelgaas@google.com, 
	heiko@sntech.de, robh@kernel.org, jingoohan1@gmail.com, shawn.lin@rock-chips.com, 
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 0/3] PCI: dw-rockchip: Reorganize register and
 bitfield definitions
Message-ID: <yhcnrmmmphqz2egrws5sxobysf6ntnd7xxl5vuzo34y5aunbj5@pe7i352kgdm7>
References: <20250423153214.16405-1-18255117159@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250423153214.16405-1-18255117159@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250427_041047_048954_3ED91BE6 
X-CRM114-Status: GOOD (  15.92  )
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

T24gV2VkLCBBcHIgMjMsIDIwMjUgYXQgMTE6MzI6MTFQTSArMDgwMCwgSGFucyBaaGFuZyB3cm90
ZToKPiAxLiBQQ0k6IGR3LXJvY2tjaGlwOiBSZW1vdmUgdW51c2VkIFBDSUVfQ0xJRU5UX0dFTkVS
QUxfREVCVUcKPiAyLiBQQ0k6IGR3LXJvY2tjaGlwOiBSZW9yZ2FuaXplIHJlZ2lzdGVyIGFuZCBi
aXRmaWVsZCBkZWZpbml0aW9ucwo+IDMuIFBDSTogZHctcm9ja2NoaXA6IFVuaWZ5IGxpbmsgc3Rh
dHVzIGNoZWNrcyB3aXRoIEZJRUxEX0dFVAo+IAo+IC0tLQo+IENoYW5nZXMgZm9yIHYzOgo+IC0g
RGVsZXRlIHRoZSByZWR1bmRhbnQgU3BhY2VzIGluIHRoZSBjb21tZW50cyBvZiBwYXRjaCAyLzMu
Cj4gCj4gQ2hhbmdlcyBmb3IgdjI6Cj4gLSBBZGQgcmVnaXN0ZXIgYW5ub3RhdGlvbnMgdG8gZW5o
YW5jZSByZWFkYWJpbGl0eS4KPiAtIFVzZSBtYWNybyBkZWZpbml0aW9ucyBpbnN0ZWFkIG9mIG1h
Z2ljIG51bWJlcnMuCj4gCj4gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L2xp
bnV4LXBjaS9wYXRjaC8yMDI1MDQxNjE1MTkyNi4xNDAyMDItMS0xODI1NTExNzE1OUAxNjMuY29t
Lwo+IAo+IEJqb3JuIEhlbGdhYXM6Cj4gVGhlc2Ugd291bGQgYmUgbWF0ZXJpYWwgZm9yIGEgc2Vw
YXJhdGUgcGF0Y2g6Cj4gCj4gLSBUaGUgI2RlZmluZXMgZm9yIHJlZ2lzdGVyIG9mZnNldHMgYW5k
IGJpdHMgYXJlIGtpbmQgb2YgYSBtZXNzLAo+ICAgZS5nLiwgUENJRV9TTUxIX0xJTktVUCwgUENJ
RV9SRExIX0xJTktVUCwgUENJRV9MSU5LVVAsCj4gICBQQ0lFX0wwU19FTlRSWSwgYW5kIFBDSUVf
TFRTU01fU1RBVFVTX01BU0sgYXJlIGluCj4gICBQQ0lFX0NMSUVOVF9MVFNTTV9TVEFUVVMsIGJ1
dCB5b3UgY291bGRuJ3QgdGVsbCB0aGF0IGZyb20gdGhlCj4gICBuYW1lcywgYW5kIHRoZXkncmUg
bm90IGV2ZW4gZGVmaW5lZCB0b2dldGhlci4KPiAKPiAtIFNhbWUgZm9yIFBDSUVfUkRMSF9MSU5L
X1VQX0NIR0VELCBQQ0lFX0xJTktfUkVRX1JTVF9OT1RfSU5ULAo+ICAgUENJRV9SRExIX0xJTktf
VVBfQ0hHRUQsIHdoaWNoIGFyZSBpbiBQQ0lFX0NMSUVOVF9JTlRSX1NUQVRVU19NSVNDLgo+IAo+
IC0gUENJRV9MVFNTTV9FTkFCTEVfRU5IQU5DRSBpcyBhcHBhcmVudGx5IGluIFBDSUVfQ0xJRU5U
X0hPVF9SRVNFVF9DVFJMPwo+ICAgU3VyZSB3b3VsZG4ndCBndWVzcyB0aGF0IGZyb20gdGhlIG5h
bWVzIG9yIHRoZSBvcmRlciBvZiAjZGVmaW5lcy4KPiAKPiAtIFBDSUVfQ0xJRU5UX0dFTkVSQUxf
REVCVUcgaXNuJ3QgdXNlZCBhdCBhbGwuCj4gCj4gLSBTdWJtaXNzaW9ucyBiYXNlZCBvbiB0aGUg
Zm9sbG93aW5nIHY1IHBhdGNoZXM6Cj4gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9q
ZWN0L2xpbnV4LXBjaS9wYXRjaC8xNzQ0ODUwMTExLTIzNjI2OS0xLWdpdC1zZW5kLWVtYWlsLXNo
YXduLmxpbkByb2NrLWNoaXBzLmNvbS8KPiBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3By
b2plY3QvbGludXgtcGNpL3BhdGNoLzE3NDQ4NTAxMTEtMjM2MjY5LTItZ2l0LXNlbmQtZW1haWwt
c2hhd24ubGluQHJvY2stY2hpcHMuY29tLwo+IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcv
cHJvamVjdC9saW51eC1wY2kvcGF0Y2gvMTc0NDg1MDExMS0yMzYyNjktMy1naXQtc2VuZC1lbWFp
bC1zaGF3bi5saW5Acm9jay1jaGlwcy5jb20vCgo+IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5v
cmcvcHJvamVjdC9saW51eC1wY2kvcGF0Y2gvMTc0NDk0MDc1OS0yMzgyMy0xLWdpdC1zZW5kLWVt
YWlsLXNoYXduLmxpbkByb2NrLWNoaXBzLmNvbS8KCkJlY2F1c2Ugb2YgKnRoaXMqIGRlcGVuZGVu
Y3ksIEkgY291bGRuJ3QgYXBwbHkgdGhpcyBzZXJpZXMuIEknZCBzdWdnZXN0IHRvCnJlc3BpbiB0
aGlzIHNlcmllcyBhdm9pZGluZyB0aGUgYWJvdmUgbWVudGlvbmVkIHBhdGNoIGFuZCBqdXN0IHJl
YmFzZSBvbiB0b3Agb2YKY29udHJvbGxlci9kdy1yb2NrY2hpcCBicmFuY2g6Cmh0dHBzOi8vZ2l0
Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3BjaS9wY2kuZ2l0L2xvZy8/aD1j
b250cm9sbGVyL2R3LXJvY2tjaGlwCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPg
rqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
