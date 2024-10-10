Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34D26CF11D5
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Oct 2024 12:01:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KHiVJDScFTAzv0XSE6xjZ7pc9IhXcUe6U0mRbLL2T1o=; b=R4DYGPWJOWOK1Q
	xmMHgIcBuKttN8lVLvRjC2FPHe9EtX+9daTROvy+3JobAOgqUT65FNfTWl7KuNXAlQsBfyXcLEL9z
	UaJJSpNWKJ0nXbOqUsLpg5BMLvUw3jmIa6NKlNKFYt7yZKUbtn2EFC4iSHqfmqWyZs1oROqYWspex
	82bxakow/gFB0S+f8ZOI9Lc7RiPaETHdGg4FuUjvVUKRkYPJXEfPvKGPwkBQU6XBET6TggZ2P9vqS
	A/+ngPH1TVhdJTAIL50iW1LifFOW0+9wk0j+nRtWscfW7UKwFCLsFU0OPNPc7KH0KDWdbS0NBwoFA
	eF1ibyEsnYG+tNLvRV5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syrr3-0000000CdJc-1Zmx;
	Thu, 10 Oct 2024 12:01:17 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syqXW-0000000CPOu-2ZI8
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Oct 2024 10:37:09 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-20b7259be6fso8076865ad.0
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Oct 2024 03:37:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728556621; x=1729161421; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qCYAf6ESDJaF8h/E6C6LcLUhPQEg3bLqnr89jUbXqs4=;
        b=z1dknwzeXzAiKs/MI/fKe40nmBfFTV/kIHgwhi/mwOruix8L3zN+iiv1KYWhL4cACe
         lyUZqVCJIoFrlFbzUP3duNf7CgKjo3utax581jDqw5yizKxFQp5hWa2Cy5mwxtM+NHnk
         qs9C9AZeLAt3Bv2rukPTKUTBciSe/I8HaSj/pUUryMuu0XEA6rCQ3MMVAWdHd3xSj+fQ
         qNY5ITbRBHDMnX9ZlKJfEeELnhxnnxdFeLMOIGxilYPA3m/AwyxAFWtxPsQrKLoS6Kac
         lQaF3vVYafH6j/0mTqUupJ82XjjepCSWf7enPYjoSgmwqWpCC00C48RD9l+Sz/wQb7ZV
         zDvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728556621; x=1729161421;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qCYAf6ESDJaF8h/E6C6LcLUhPQEg3bLqnr89jUbXqs4=;
        b=LIs3+WuZx+AVCfJuwGZLSrAioytknFc5y+EWnryR0CVAijUyCFzyFSlonRBLm5k19E
         a90PfG/7Y1G8FbjG+uNVdyRP94is17YnE8Hf8chB2MveIo8YJRioW5uSfZqsPtsVQGmC
         pCLO7ITD2k1jODWCxrZ3aaAvG7qw3B3+NLHjUxpb9kMhqbGGUcXQ+GEKjdKppvLISXSa
         jYDgjTc7ihinV/BYcTzBmfNaxUkTRKsJnS9RQKUF9FeQsMXAbaEJKH1iBLbzzr+eO7PI
         lE6sueGljCew5/ZPFtsmwV/uUCA9PV+7coANtxs6D2Iy/P8V0CgdO2Al5hafSfKHsEcf
         +gag==
X-Forwarded-Encrypted: i=1; AJvYcCVhhT5uqU3aWV760zSeOSW6qoIixMoCQ0JYxh80g4P7yknNJo4Qd93xd8tJ0pXNg57L9saPhl4ujj0QueBriQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx4FGgLddC2ZxWtgHiMyHiaxSHW6lk68haMnZB/9rtCD2w3k0or
	XTA0cMuFta8AB4q0Z45tjkkOx8iFJ+exUQmMb0XKN4kL/wREO/JRZ0sYjaqWxg==
X-Google-Smtp-Source: AGHT+IEwmkW/UOhppKl/eNVEZv+OwfFQ3W7u6qUF28b6WfCwiMcxAelS1R2T42W7e+n6yhRW56O8LA==
X-Received: by 2002:a17:902:d2d1:b0:20c:5698:75bc with SMTP id d9443c01a7336-20c637992bdmr64864145ad.60.1728556621085;
        Thu, 10 Oct 2024 03:37:01 -0700 (PDT)
Received: from thinkpad ([220.158.156.184])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20c8bc1c39fsm7234845ad.92.2024.10.10.03.36.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 03:37:00 -0700 (PDT)
Date: Thu, 10 Oct 2024 16:06:54 +0530
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
Subject: Re: [PATCH v3 01/12] PCI: rockchip-ep: Fix address translation unit
 programming
Message-ID: <20241010103654.3qmsdtymto55nfl4@thinkpad>
References: <20241007041218.157516-1-dlemoal@kernel.org>
 <20241007041218.157516-2-dlemoal@kernel.org>
 <20241010070242.3i2f53kpdpr4fgl6@thinkpad>
 <016bb5a6-5f05-404c-acaf-e0a3ed6fcede@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <016bb5a6-5f05-404c-acaf-e0a3ed6fcede@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241010_033703_014883_17B80507 
X-CRM114-Status: GOOD (  23.44  )
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

T24gVGh1LCBPY3QgMTAsIDIwMjQgYXQgMDU6NDE6NTZQTSArMDkwMCwgRGFtaWVuIExlIE1vYWwg
d3JvdGU6Cj4gT24gMjAyNC8xMC8xMCAxNjowMiwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtIHdyb3Rl
Ogo+ID4gT24gTW9uLCBPY3QgMDcsIDIwMjQgYXQgMDE6MTI6MDdQTSArMDkwMCwgRGFtaWVuIExl
IE1vYWwgd3JvdGU6Cj4gPj4gVGhlIHJvY2tjaGlwIFBDSWUgZW5kcG9pbnQgY29udHJvbGxlciBo
YW5kbGVzIFBDSWUgdHJhbnNmZXJzIGFkZHJlc3Nlcwo+ID4+IGJ5IG1hc2tpbmcgdGhlIGxvd2Vy
IGJpdHMgb2YgdGhlIHByb2dyYW1tZWQgUENJIGFkZHJlc3MgYW5kIHVzaW5nIHRoZQo+ID4+IHNh
bWUgbnVtYmVyIG9mIGxvd2VyIGJpdHMgbWFza2VkIGZyb20gdGhlIENQVSBhZGRyZXNzIHNwYWNl
IHVzZWQgZm9yIHRoZQo+ID4+IG1hcHBpbmcuIEZvciBhIFBDSSBtYXBwaW5nIG9mIDxzaXplPiBi
eXRlcyBzdGFydGluZyBmcm9tIDxwY2lfYWRkcj4sCj4gPj4gdGhlIG51bWJlciBvZiBiaXRzIG1h
c2tlZCBpcyB0aGUgbnVtYmVyIG9mIGFkZHJlc3MgYml0cyBjaGFuZ2luZyBpbiB0aGUKPiA+PiBh
ZGRyZXNzIHJhbmdlIFtwY2lfYWRkci4ucGNpX2FkZHIgKyBzaXplIC0gMV0uCj4gPj4KPiA+PiBI
b3dldmVyLCByb2NrY2hpcF9wY2llX3Byb2dfZXBfb2JfYXR1KCkgY2FsY3VsYXRlcyBudW1fcGFz
c19iaXRzIG9ubHkKPiA+PiB1c2luZyB0aGUgc2l6ZSBvZiB0aGUgbWFwcGluZywgcmVzdWx0aW5n
IGluIGFuIGluY29ycmVjdCBudW1iZXIgb2YgbWFzawo+ID4+IGJpdHMgZGVwZW5kaW5nIG9uIHRo
ZSB2YWx1ZSBvZiB0aGUgUENJIGFkZHJlc3MgdG8gbWFwLgo+ID4+Cj4gPj4gRml4IHRoaXMgYnkg
aW50cm9kdWNpbmcgdGhlIGhlbHBlciBmdW5jdGlvbgo+ID4+IHJvY2tjaGlwX3BjaWVfZXBfb2Jf
YXR1X251bV9iaXRzKCkgdG8gY29ycmVjdGx5IGNhbGN1bGF0ZSB0aGUgbnVtYmVyIG9mCj4gPj4g
bWFzayBiaXRzIHRvIHVzZSB0byBwcm9ncmFtIHRoZSBhZGRyZXNzIHRyYW5zbGF0aW9uIHVuaXQu
IFRoZSBudW1iZXIgb2YKPiA+PiBtYXNrIGJpdHMgaXNjYWxjdWxhdGVkIGRlcGVuZGluZyBvbiBi
b3RoIHRoZSBQQ0kgYWRkcmVzcyBhbmQgc2l6ZSBvZiB0aGUKPiA+PiBtYXBwaW5nLCBhbmQgY2xh
bXBlZCBiZXR3ZWVuIDggYW5kIDIwIHVzaW5nIHRoZSBtYWNyb3MKPiA+PiBST0NLQ0hJUF9QQ0lF
X0FUX01JTl9OVU1fQklUUyBhbmQgUk9DS0NISVBfUENJRV9BVF9NQVhfTlVNX0JJVFMuCj4gPj4K
PiA+IAo+ID4gSG93IGRpZCB5b3UgZW5kIHVwIHdpdGggdGhlc2UgY2xhbXBpbmcgdmFsdWVzPyBB
cmUgdGhlIHZhbHVlcyAoYXQgbGVhc3QgTUFYCj4gPiBhcHBsaWNhYmxlIHRvIGFsbCBTb0NzKT8K
PiA+IAo+ID4gQnR3LCBpdCB3b3VsZCBiZSBoZWxwZnVsIGlmIHlvdSByZWZlcmVuY2VkIHRoZSBU
Uk0gYW5kIHRoZSBzZWN0aW9uIHRoYXQKPiA+IGRlc2NyaWJlcyB0aGUgb3V0Ym91bmQgbWFwcGlu
Zy4gSSdtIGFibGUgdG8gZmluZCB0aGUgcmVmZXJlbmNlOgo+ID4gCj4gPiBSb2NrY2hpcCBSSzMz
OTkgVFJNIFYxLjMgUGFydDIsIFNlY3Rpb24gMTcuNS41LjEuMQo+IAo+IE9LLiBXaWxsIGFkZCB0
aGF0Lgo+IAo+IEkgcmVhbGx5IGFwcHJlY2lhdGUgdmVyeSBtdWNoIGFsbCB0aGUgcmV2aWV3cyB5
b3UgYXJlIHNlbmRpbmcsIGJ1dCBnaXZlbiB0aGF0Cj4gdGhpcyBwYXRjaCBzZXJpZXMgZGVwZW5k
cyBvbiB0aGUgc2VyaWVzICJbUEFUQ0ggdjQgMC83XSBJbXByb3ZlIFBDSSBtZW1vcnkKPiBtYXBw
aW5nIEFQSSIsIGNvdWxkIHdlIHN0YXJ0IHdpdGggdGhhdCBvbmUgYW5kIGdldCBpdCBxdWV1ZWQg
QVNBUCA/Cj4gCgpTdXJlLiBTb3JyeSBmb3IgYmVpbmcgbGF0ZSBidHcuIFBlcnNvbmFsIGVycmFu
ZHMgYXJlIGVhdGluZyB1cCB0aGUgcmV2aWV3IHRpbWUuCgotIE1hbmkKCi0tIArgrq7grqPgrr/g
rrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
