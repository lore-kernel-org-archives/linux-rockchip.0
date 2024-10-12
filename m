Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F4C7CF2566
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Oct 2024 12:12:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6/hbfDR91GYatrLufg+5o2JNIzNizZsmUrKezMmfzoA=; b=2cpLCzCm0rM/Y5
	VOoB5T0CrmCgn9n20gnu+zbAQhLLqj6OVQfPj7u3pk1IasSJhLJb1j2a8eIWD8WeLyVDd8k0mRKnE
	evdAPVJ2u9NKUAMzchvRXUwrL9qALn1m3XNUE+xnHVtqQN6ne2+iIMCZGs6LbUceqbZTFqeD9gJVf
	oV8IoDW7dbVLnR8EXnshogJBPkouxvnMW5f1esejV72xF2jrLE9nSmLoc6efzo1oIEvxXvUEfEDEg
	L/VzMN8ii7yVKKqq4RQxIemXxCEZOm5QHLUWszbk4kRXjxxx5B9OTxVfjWBe/Z1d5nqy5i/5YPvsY
	DctUz84L+aBtLYddS2Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szazC-00000001Aw0-0ZVP;
	Sat, 12 Oct 2024 12:12:42 +0000
Received: from mail-pg1-x536.google.com ([2607:f8b0:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szaz9-00000001AvN-33p1
	for linux-rockchip@lists.infradead.org;
	Sat, 12 Oct 2024 12:12:41 +0000
Received: by mail-pg1-x536.google.com with SMTP id 41be03b00d2f7-6bce380eb96so1601275a12.0
        for <linux-rockchip@lists.infradead.org>; Sat, 12 Oct 2024 05:12:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728735159; x=1729339959; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=21O66+SU3YfelK3nlXJ5Y2o3jZna0jsz3r+miBWwveA=;
        b=fAPWnGBX/y3lkouD5lG2idH1bzho0brGuh8khF7jEvkBpAmpK0G+VEWjmPVIeVONbH
         gR9hoEKqJSyKpC32asjFr9qx5r9q5m/7wtWMlQrkSJclshTXNWj9mB2YEEB7zG/nRGVN
         FVtWlWrRzswHOw1NFuguMng4nIWG+Ah40fhqDMzyIwbXawHODo3R+VZCE55dX+IZH+6X
         92vykMD0i3o6eCZk0qdgXH8PepSlqN99jx5TvetqRuxM+Bs9meUpCutIIUB6tqIcEcVc
         dvAZT5tp93ia63yQhAfAyiIpEXu85XIXOp4sqQtD8z0DRi0bBPhZIaDZeVLJ65YWJ1SL
         OBfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728735159; x=1729339959;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=21O66+SU3YfelK3nlXJ5Y2o3jZna0jsz3r+miBWwveA=;
        b=qAX+WIfzIGkvowiDSvCGjxOWLgFdIGKe06Px6MwkrvDabchskQsDGpSNB1lOoIg3Yl
         lcw9/CHakFOqukNq/qcbZL+LDD3dbFQPm68dxY0pNrF8XjfbDvmIJRFMYp088ff7zEhR
         D8bNmno1WN3co2MT1MHO6RXZD7n75koolxyBOO2AwCZU0sXlqgV/zy2kUw6gJV5MhJiS
         NetggIcuVTI83+DGo47NS6LtMjCZNqmodjhvPy9iaOhc7yphm3FicyhfiJEhUPs6t7Ri
         YRUPbtFXTY4XeFN9PFnC+O3uwYkqbGMZcICYQnKfNDNkAtJArYShI6knHOeUPfnTaNaM
         Lb/w==
X-Forwarded-Encrypted: i=1; AJvYcCWo2HdWzwsn4zT39voeic5sJYeq3qKhrRfhjjORh9JpwWRIy2eEXYi0AGflYf5OEp7XILY7H5UCSsU5gJvV1A==@lists.infradead.org
X-Gm-Message-State: AOJu0YynqCoGGKv0d/FOOBNNKEY+5R/Xiq3V8vIo8nYD1Defgsf8Md5T
	JaDrpXrsQZunp45n51GvOeFX1xlv4+n2RHwVZp4R/3nrNaRFigZPhWYdG8pDqA==
X-Google-Smtp-Source: AGHT+IG9vPOVD8vUEqJwuKkm3f16T3uzMK7nqJJkJNeda4s7TAV4woX7mMgayOACf8Ywhe0NJfW+nw==
X-Received: by 2002:a17:90a:e00e:b0:2e2:ede0:91c with SMTP id 98e67ed59e1d1-2e2f0dc2e8cmr7840262a91.36.1728735158763;
        Sat, 12 Oct 2024 05:12:38 -0700 (PDT)
Received: from thinkpad ([220.158.156.122])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e2d5eeb093sm4919451a91.23.2024.10.12.05.12.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Oct 2024 05:12:38 -0700 (PDT)
Date: Sat, 12 Oct 2024 17:42:31 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH v3 07/12] PCI: rockchip-ep: Refactor
 rockchip_pcie_ep_probe() MSI-X hiding
Message-ID: <20241012121231.glddtpfjmsu6wiwz@thinkpad>
References: <20241007041218.157516-1-dlemoal@kernel.org>
 <20241007041218.157516-8-dlemoal@kernel.org>
 <20241010072512.f7e4kdqcfe5okcvg@thinkpad>
 <11cf07c7-08d6-425d-9590-1afab6d052d2@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <11cf07c7-08d6-425d-9590-1afab6d052d2@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241012_051239_794404_9945AC7D 
X-CRM114-Status: GOOD (  14.49  )
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

T24gRnJpLCBPY3QgMTEsIDIwMjQgYXQgMDU6MjU6NTZQTSArMDkwMCwgRGFtaWVuIExlIE1vYWwg
d3JvdGU6Cj4gT24gMTAvMTAvMjQgMTY6MjUsIE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3cm90ZToK
PiA+IE9uIE1vbiwgT2N0IDA3LCAyMDI0IGF0IDAxOjEyOjEzUE0gKzA5MDAsIERhbWllbiBMZSBN
b2FsIHdyb3RlOgo+ID4+IE1vdmUgdGhlIGNvZGUgaW4gcm9ja2NoaXBfcGNpZV9lcF9wcm9iZSgp
IHRvIGhpZGUgdGhlIE1TSS1YIGNhcGFiaWxpdHkKPiA+PiB0byBpdHMgb3duIGZ1bmN0aW9uLCBy
b2NrY2hpcF9wY2llX2VwX2hpZGVfbXNpeF9jYXAoKS4gTm8gZnVuY3Rpb25hbAo+ID4+IGNoYW5n
ZXMuCj4gPj4KPiA+PiBTaWduZWQtb2ZmLWJ5OiBEYW1pZW4gTGUgTW9hbCA8ZGxlbW9hbEBrZXJu
ZWwub3JnPgo+ID4gCj4gPiBSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5p
dmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9yZz4KPiA+IAo+ID4gQnR3LCBjYW4gc29tZW9uZSBm
cm9tIFJvY2tjaGlwIGNvbmZpcm0gaWYgdGhpcyBoaWRpbmcgaXMgbmVjZXNzYXJ5IGZvciBhbGwg
dGhlCj4gPiBTb0NzPyBJdCBsb29rcyB0byBtZSBsaWtlIGFuIFNvQyBxdWlyay4KPiAKPiBBbGwg
U29DcyA/IEFyZSB0aGVyZSBzZXZlcmFsIHZlcnNpb25zIG9mIHRoZSBSSzMzOTkgPwoKVGhlcmUg
c2VlbXMgdG8gYmUgc29tZToKaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tl
cm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L2NvbW1pdC8/aWQ9Mjk2NjAyYjhlNWY3Cgo+IEFz
IGZhciBhcyBJIGtub3csIHRoZXJlIGlzIG9ubHkgb25lLiBUaGlzIGlzIHVubGlrZSB0aGUgZGVz
aWdud2FyZSBJUCBibG9jayB1c2VkCj4gaW4gdGhlIFJLMzU4OCB3aGljaCBjYW4gYWxzbyBiZSBm
b3VuZCBpbiBvdGhlciBTb0MgYW5kIG1heSBoYXZlIHNvbWUgdmFyaWF0aW9ucwo+IGR1ZSB0byBk
aWZmZXJlbnQgc3ludGhlc2lzIHBhcmFtZXRlcnMuCj4gCgpCdXQgYW55d2F5LCBsZXQncyBrZWVw
IHRoZSBxdWlyayB1bnRpbCB3ZSBoZWFyIG90aGVyd2lzZS4KCi0gTWFuaQoKPiAtLSAKPiBEYW1p
ZW4gTGUgTW9hbAo+IFdlc3Rlcm4gRGlnaXRhbCBSZXNlYXJjaAoKLS0gCuCuruCuo+Cuv+CuteCu
o+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
