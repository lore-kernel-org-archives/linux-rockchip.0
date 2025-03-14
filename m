Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C4ECC35FF1
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Mar 2025 11:54:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RAA9tbqrBxrWMdsA1KrEJHyTzVCPTUk2/ApUEhVCEzI=; b=zG0qK9uRyp1y9W
	ohaVgJo2otdFXs3R9yQeuUQC9GR6mzxeeOVWdQbpakKvb2ONyQGnttIk5ySEsfBWEkx9HDgJALb25
	425QFTY7GGlrXwv/a64VXZxI6nB+wwQGdQFB7JJuKf5DdG9/0pxmC8hSCJfr/CpnqmP3XAFtxdM5G
	VwhItSxSKN/570YTO0KwE43W7JudcoywxJu88K1BY4Oomb2UBg2IysmV9h2AGO0qTd+4Wdggw1XNE
	pYRVTokv9dlwFlzUY12LP198pNPEit/0df3VH22B7iQCw31XMgEkgf9EFf2hnspuGMHwyZb+ft8SM
	JXqalVMaERoTaBK8F/Kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tt3cm-0000000E4aA-1FKG;
	Fri, 14 Mar 2025 11:54:48 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tt3aN-0000000E4NV-0K3G
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Mar 2025 11:52:20 +0000
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-224019ad9edso51429705ad.1
        for <linux-rockchip@lists.infradead.org>; Fri, 14 Mar 2025 04:52:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741953138; x=1742557938; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=q3k7fvz1tmhIjGgQ1ycjom2LPIMfNTsp0uqFM8k2kiw=;
        b=lFDSqmWu70mhAR+As5jwMxny1FtxIjX2N7ADc3LCjFY237crcqaJ9ag6QBnIUEqlfj
         B7ixSYSDI42u3N4XlsIiV8NfnMlzveOrCIbuBl32aehwkKeSha7pg6x7dTga6Q/d82f9
         iJSSQReK/mIdGV0PHNeWEdq73hZVTi/ZIIxLIogct+zuuyCQ4nL2Id73GqgQTdzP9Wfo
         YV8ZLUZKepkpAcO6tBdy6Xo+DlH0Rv7m7fme8w6yMCEK5Ecfw5mC53uOWRoY95Srvg+q
         jskgnk5Da43Y5PN+/Z+pjbMVPbMU/e6EozA6Fmkg4Mqtpsz2aAeBm1bFJ19RzAjRXVoa
         KekA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741953138; x=1742557938;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=q3k7fvz1tmhIjGgQ1ycjom2LPIMfNTsp0uqFM8k2kiw=;
        b=DlMRkumpXSdmNL8w9xOdhFOqnb5pORMyc4oWUdtL5PY367NhUs8coV9+O/Sv6o+LRp
         m+pLzHgLT0u9u7UqQsJfJE1sxdEguokFgsgzj0LPa2ER/X0d8pbkxKpC8Q35gaK8J5BQ
         JzR+Vhz0CwynWFN5YLqYMWtt2HFaPgcELY7CZIz5U8Et+gTIPHkjKuJmel+LlmxgaVVK
         pRthz37rb9bYDOOKOFlBnQIO8OjvCymUleZyzqgt2RYbKlbijL07iSBukOkyNxD48RAk
         oMxgnkIcGgBVpSQ7joKEcWi9499Chfetcdr4+sPVXsr6afS2nSnxhLRVqkMH0SZhRrNO
         Enzg==
X-Forwarded-Encrypted: i=1; AJvYcCU4Z1j+nCjN7a9FfhGkF7K2Bw6gIp8zgqysphFK0oVqsb0+ujrWyvarMGCD1Z+dfgWG/2hAGszcC7XuUyq3VQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxQ+MbRwJKccGoOmgesw5+BPbZJDwEhTy3bsrRK2aAb11utLsrn
	44TskxNrLRNaA5GjXVtnZ7SVahErDTl4GuUeS2YEAXhT6gASYpbDa7XgQFmnUQ==
X-Gm-Gg: ASbGncuDvs/eUA8bsNsfEi2wpyvu9BYqkhPmf1dya31TWlwIOWY+4nVLchR+dvSNvmH
	zszHD18DKoTFwVSc1cWvTFAKVdEnXzp9+O9C/9GYFisX6UD7jtpiVReSiCc+M3bjWMqkl+pQs3r
	YZCRSf1xxRTQZlISDzQkVKpNNzpFvoK3iF9hN7OIu6PdxpMNeE6GVq8SpBcaPnqnzreRfxtQ/U7
	p/QpDbtXT4AcNPcPMNTUjpL2lzC79RSp8RYEGw1v+NgFKo5rEXd4RNGaxI/QTU4ltHhxlh+PAIT
	AcUIQfgluPlhwbvZaf44xlo/Zyow74nKR47gUkRlBVjH69iuxnPZmy6q
X-Google-Smtp-Source: AGHT+IG5j5a+pzEwcsJNmm0hEeTrp2CuiBSxB3Ea66ul7lGwBGWPT/QsbfK1PDyEJKG9pn3UaFiZdQ==
X-Received: by 2002:a05:6a20:7f8d:b0:1f5:80a3:b008 with SMTP id adf61e73a8af0-1f5c13165c8mr3802766637.32.1741953137749;
        Fri, 14 Mar 2025 04:52:17 -0700 (PDT)
Received: from thinkpad ([120.56.195.144])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-737115295e5sm2751523b3a.23.2025.03.14.04.52.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Mar 2025 04:52:17 -0700 (PDT)
Date: Fri, 14 Mar 2025 17:22:12 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Jingoo Han <jingoohan1@gmail.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Damien Le Moal <dlemoal@kernel.org>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 0/2] PCI: dw-rockchip: hide broken ATS cap in EP-mode
Message-ID: <20250314115212.ywlee4vyuxyq4x6s@thinkpad>
References: <20250310094826.842681-4-cassel@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250310094826.842681-4-cassel@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_045219_124557_4FD8B0A2 
X-CRM114-Status: GOOD (  13.04  )
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

T24gTW9uLCBNYXIgMTAsIDIwMjUgYXQgMTA6NDg6MjZBTSArMDEwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBIZWxsbyB0aGVyZSwKPiAKPiBBZGRyZXNzIFRyYW5zbGF0aW9uIFNlcnZpY2VzIChB
VFMpIGlzIGJyb2tlbiBvbiByazM1ODggd2hlbiBydW5uaW5nIHRoZQo+IFBDSWUgY29udHJvbGxl
ciBpbiBFbmRwb2ludCBNb2RlLgo+IAo+IFRoaXMgY2F1c2VzIElPVExCIGludmFsaWRhdGlvbiB0
aW1lb3V0IGVycm9ycyBvbiB0aGUgaG9zdCBzaWRlIHdoZW4gdXNpbmcKPiBhbmQgcmszNTg4IGlu
IEVuZHBvaW50IE1vZGUsIGFuZCB5b3UgYXJlIHVuYWJsZSB0byBydW4gcGNpX2VuZHBvaW50X3Rl
c3QuCj4gCj4gU29sdmUgdGhpcyBieSBoaWRpbmcgdGhlIEFUUyBjYXBhYmlsaXR5Lgo+IFdpdGgg
dGhpcywgd2UgZG8gbm90IGdldCBhbnkgSU9UTEIgaW52YWxpZGF0aW9uIHRpbWVvdXRzLCBhbmQg
d2UgY2FuIHJ1bgo+IHBjaV9lbmRwb2ludF90ZXN0IHN1Y2Nlc3NmdWxseS4KPiAKClJldmlld2Vk
LWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBsaW5hcm8u
b3JnPgoKLSBNYW5pCgo+IAo+IENoYW5nZXMgc2luY2UgdjI6Cj4gLUFkZGVkIG1pc3NpbmcgRVhQ
T1JUX1NZTUJPTF9HUEwoKS4KPiAKPiAKPiBOaWtsYXMgQ2Fzc2VsICgyKToKPiAgIFBDSTogZHdj
OiBlcDogQWRkIGR3X3BjaWVfZXBfaGlkZV9leHRfY2FwYWJpbGl0eSgpCj4gICBQQ0k6IGR3LXJv
Y2tjaGlwOiBIaWRlIGJyb2tlbiBBVFMgY2FwYWJpbGl0eQo+IAo+ICAuLi4vcGNpL2NvbnRyb2xs
ZXIvZHdjL3BjaWUtZGVzaWdud2FyZS1lcC5jICAgfCAzOSArKysrKysrKysrKysrKysrKysrCj4g
IGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZGVzaWdud2FyZS5oICB8ICA3ICsrKysK
PiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jIHwgMjcgKysr
KysrKysrKysrKwo+ICAzIGZpbGVzIGNoYW5nZWQsIDczIGluc2VydGlvbnMoKykKPiAKPiAtLSAK
PiAyLjQ4LjEKPiAKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a
4K6/4K614K6u4K+NCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
