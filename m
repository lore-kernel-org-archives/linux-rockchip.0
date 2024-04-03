Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2944FCD1294
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Apr 2024 09:21:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2dWBmYaIxr2d8qHZuEGky87qYrXoqAN12mFFUa38veE=; b=GupSvJm6DsqNau
	vDUTdczHyB2A2n/HbeGHDTWX62FmVneItp//I57++CitSDzwo/BJTjCRXAQxF2JVBXGpxlYADPw7t
	R95cwAhwuIhW62cuVgjADDAcgHE1u2TxC6XogMLxDmXOSSDLnURSLjUtFx6zeDVxujuX8+wsL0acy
	L7xhQ64vdmRWtKRirBzkrQrdBhUj9XpQxHI5Ljr5wHe5bnmYANKFXB09KZWNNwl9f29uizX7/ES9Q
	X+DA3vDRErraUUPWOcwQZL+fq0ZeY3hfxvQSXsBSO2m+tH5OjHg1qODtG1G7s8cGec2NA88/RH3qS
	LuvzKN1hXTv+h8TKyTxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrwoC-0000000FBMQ-0C33;
	Wed, 03 Apr 2024 09:21:28 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrwo9-0000000FBLP-3941
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Apr 2024 09:21:27 +0000
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-6ea838bf357so4953713b3a.0
        for <linux-rockchip@lists.infradead.org>; Wed, 03 Apr 2024 02:21:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712136082; x=1712740882; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vtLqEmydzrCNnRTSENhA+AKBW/+wQJ0+bubWJxgXh7o=;
        b=VWZhstA+hVADjE24BznwNLc7yCqptvjjXDU0pg+OhUlvqxR93cJfRNp5MFWBE/E3Vh
         SlvG0/nGx9e6+MAAExjy2I7d/GWd1zLzTM7R7JcXeEFIthvxMpAocPgEhg+9UOE4++YE
         GQeRthJ9YaLLGmUIshA6fvWeVBy7OWFdvzmXrZFty3CF6+Dou5xBO6Mi45RkwDZ16nm3
         ZTDkr6LvCZm/d4+HzIsOzGpABA3nz2d9pv/6PLy/QbkwJgLLzro3IN+G5IoAW6FzpN5m
         IwLLXFe7oUo3c76G2Y5WwK0G2DL4uaPOMdRt8wGocE+A5mhWYy8S1mhRCIzTsjySjvVs
         I4Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712136082; x=1712740882;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vtLqEmydzrCNnRTSENhA+AKBW/+wQJ0+bubWJxgXh7o=;
        b=cR2PYNvElOVh5qL7SQmb+tP68psSFG8sZE1539EaRQeaQH4z4IiAyfulRwpFcWQq05
         p3zIUIOUY73eR6hYap9PH7P9UEsU7JABhalAsUhBJnF/twLQxbSxYu+lmUyGApEVnWzR
         qcJ61O43F83CkNjpuDv8/OktoCIFoLA4riYpd/5Vm9zVHlTTuyf2U2C4wdpD5nWkbmZJ
         XG3Nq8aPvbFPLjM6rLRQ3KAOCk9k8gLawhICpQcmg5EU4vdORKuE1I9Ybqx2DZUimcKM
         p6Iuhx0PJ6Zaa9SlxZwBINBpJNcEkyxXcYtgPP0YXv1TqItvX3tlXbsl0niHNyM6NC5C
         irkg==
X-Forwarded-Encrypted: i=1; AJvYcCW/PWRc9RjXUqiUN3FupJ41kcW3EkRQLIqaiAm/PJ5d7f2+GMr3tSZSWQtI8F1dQoirOsp+zVm1ua4qO/cou266ggzcGuPplBRTUn1ys5lyLkJH
X-Gm-Message-State: AOJu0YxzysKX3ExrrVqFoVKNI5PYg+E2x+W+XZjZ572GPVDiOTOgIARQ
	laA7YAjaRWaZnHdcPJEG6uygdiZ6RSntrWuJQPelN/PcP1R62oG1UXX0mBlmVQ==
X-Google-Smtp-Source: AGHT+IHI/Dy9/VZiFVNF4MsqF+YXBPtwtdyt2Oqfn6ZAyRQOCFBvez6QTVmfCs6rxrt5RobVKu/RUw==
X-Received: by 2002:a05:6a00:391b:b0:6ea:b690:f146 with SMTP id fh27-20020a056a00391b00b006eab690f146mr16024936pfb.15.1712136081817;
        Wed, 03 Apr 2024 02:21:21 -0700 (PDT)
Received: from thinkpad ([103.28.246.48])
        by smtp.gmail.com with ESMTPSA id d12-20020a056a00244c00b006ecd9cb9035sm216831pfj.177.2024.04.03.02.21.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 02:21:21 -0700 (PDT)
Date: Wed, 3 Apr 2024 14:51:14 +0530
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
	linux-arm-kernel@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH v2 02/18] PCI: endpoint: Introduce pci_epc_map_align()
Message-ID: <20240403092114.GG25309@thinkpad>
References: <20240330041928.1555578-1-dlemoal@kernel.org>
 <20240330041928.1555578-3-dlemoal@kernel.org>
 <20240403074520.GC25309@thinkpad>
 <eb580d64-1110-479a-9a0b-c2f1eacd23e7@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <eb580d64-1110-479a-9a0b-c2f1eacd23e7@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_022125_831276_5E5EE3A7 
X-CRM114-Status: GOOD (  39.16  )
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

T24gV2VkLCBBcHIgMDMsIDIwMjQgYXQgMDQ6NTQ6MzJQTSArMDkwMCwgRGFtaWVuIExlIE1vYWwg
d3JvdGU6Cj4gT24gNC8zLzI0IDE2OjQ1LCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4g
PiBPbiBTYXQsIE1hciAzMCwgMjAyNCBhdCAwMToxOToxMlBNICswOTAwLCBEYW1pZW4gTGUgTW9h
bCB3cm90ZToKPiA+PiBTb21lIGVuZHBvaW50IGNvbnRyb2xsZXJzIGhhdmUgcmVxdWlyZW1lbnRz
IG9uIHRoZSBhbGlnbm1lbnQgb2YgdGhlCj4gPj4gY29udHJvbGxlciBwaHlzaWNhbCBtZW1vcnkg
YWRkcmVzcyB0aGF0IG11c3QgYmUgdXNlZCB0byBtYXAgYSBSQyBQQ0kKPiA+PiBhZGRyZXNzIHJl
Z2lvbi4gRm9yIGluc3RhbmNlLCB0aGUgcm9ja2NoaXAgZW5kcG9pbnQgY29udHJvbGxlciB1c2Vz
Cj4gPj4gYXQgbW9zdCB0aGUgbG93ZXIgMjAgYml0cyBvZiBhIHBoeXNpY2FsIG1lbW9yeSBhZGRy
ZXNzIHJlZ2lvbiBhcyB0aGUKPiA+PiBsb3dlciBiaXRzIG9mIGFuIFJDIFBDSSBhZGRyZXNzLiBG
b3IgbWFwcGluZyBhIFBDSSBhZGRyZXNzIHJlZ2lvbiBvZgo+ID4+IHNpemUgYnl0ZXMgc3RhcnRp
bmcgZnJvbSBwY2lfYWRkciwgdGhlIGV4YWN0IG51bWJlciBvZiBhZGRyZXNzIGJpdHMKPiA+PiB1
c2VkIGlzIHRoZSBudW1iZXIgb2YgYWRkcmVzcyBiaXRzIGNoYW5naW5nIGluIHRoZSBhZGRyZXNz
IHJhbmdlCj4gPj4gW3BjaV9hZGRyLi5wY2lfYWRkciArIHNpemUgLSAxXS4KPiA+Pgo+ID4+IEZv
ciB0aGlzIGV4YW1wbGUsIHRoaXMgY3JlYXRlcyB0aGUgZm9sbG93aW5nIGNvbnN0cmFpbnRzOgo+
ID4+IDEpIFRoZSBvZmZzZXQgaW50byB0aGUgY29udHJvbGxlciBwaHlzaWNhbCBtZW1vcnkgYWxs
b2NhdGVkIGZvciBhCj4gPj4gICAgbWFwcGluZyBkZXBlbmRzIG9uIHRoZSBtYXBwaW5nIHNpemUg
KmFuZCogdGhlIHN0YXJ0aW5nIFBDSSBhZGRyZXNzCj4gPj4gICAgZm9yIHRoZSBtYXBwaW5nLgo+
ID4+IDIpIEEgbWFwcGluZyBzaXplIGNhbm5vdCBleGNlZWQgdGhlIGNvbnRyb2xsZXIgd2luZG93
cyBzaXplICgxTUIpIG1pbnVzCj4gPj4gICAgdGhlIG9mZnNldCBuZWVkZWQgaW50byB0aGUgYWxs
b2NhdGVkIHBoeXNpY2FsIG1lbW9yeSwgd2hpY2ggY2FuIGVuZAo+ID4+ICAgIHVwIGJlaW5nIGEg
c21hbGxlciBzaXplIHRoYW4gdGhlIGRlc2lyZWQgbWFwcGluZyBzaXplLgo+ID4+Cj4gPj4gSGFu
ZGxpbmcgdGhlc2UgY29uc3RyYWludHMgaW5kZXBlbmRlbnRseSBvZiB0aGUgY29udHJvbGxlciBi
ZWluZyB1c2VkIGluCj4gPj4gYSBQQ0kgRVAgZnVuY3Rpb24gZHJpdmVyIGlzIG5vdCBwb3NzaWJs
ZSB3aXRoIHRoZSBjdXJyZW50IEVQQyBBUEkgYXMKPiA+PiBpdCBvbmx5IHByb3ZpZGVzIHRoZSAt
PmFsaWduIGZpZWxkIGluIHN0cnVjdCBwY2lfZXBjX2ZlYXR1cmVzLgo+ID4+IEZ1cnRoZXJtb3Jl
LCB0aGlzIGFsaWdubWVudCBpcyBzdGF0aWMgYW5kIGRvZXMgbm90IGRlcGVuZCBvbiBhIG1hcHBp
bmcKPiA+PiBwY2kgYWRkcmVzcyBhbmQgc2l6ZS4KPiA+Pgo+ID4+IFNvbHZlIHRoaXMgYnkgaW50
cm9kdWNpbmcgdGhlIGZ1bmN0aW9uIHBjaV9lcGNfbWFwX2FsaWduKCkgYW5kIHRoZQo+ID4+IGVu
ZHBvaW50IGNvbnRyb2xsZXIgb3BlcmF0aW9uIC0+bWFwX2FsaWduIHRvIGFsbG93IGVuZHBvaW50
IGZ1bmN0aW9uCj4gPj4gZHJpdmVycyB0byBvYnRhaW4gdGhlIHNpemUgYW5kIHRoZSBvZmZzZXQg
aW50byBhIGNvbnRyb2xsZXIgYWRkcmVzcwo+ID4+IHJlZ2lvbiB0aGF0IG11c3QgYmUgdXNlZCB0
byBtYXAgYW4gUkMgUENJIGFkZHJlc3MgcmVnaW9uLiBUaGUgc2l6ZQo+ID4+IG9mIHRoZSBwaHlz
aWNhbCBhZGRyZXNzIHJlZ2lvbiBwcm92aWRlZCBieSBwY2lfZXBjX21hcF9hbGlnbigpIGNhbiB0
aGVuCj4gPj4gYmUgdXNlZCBhcyB0aGUgc2l6ZSBhcmd1bWVudCBmb3IgdGhlIGZ1bmN0aW9uIHBj
aV9lcGNfbWVtX2FsbG9jX2FkZHIoKS4KPiA+PiBUaGUgb2Zmc2V0IGludG8gdGhlIGFsbG9jYXRl
ZCBjb250cm9sbGVyIG1lbW9yeSBjYW4gYmUgdXNlZCB0bwo+ID4+IGNvcnJlY3RseSBoYW5kbGUg
ZGF0YSB0cmFuc2ZlcnMuIE9mIG5vdGUgaXMgdGhhdCBwY2lfZXBjX21hcF9hbGlnbigpIG1heQo+
ID4+IGluZGljYXRlIHVwb24gcmV0dXJuIGEgbWFwcGluZyBzaXplIHRoYXQgaXMgc21hbGxlciAo
YnV0IG5vdCAwKSB0aGFuIHRoZQo+ID4+IHJlcXVlc3RlZCBQQ0kgYWRkcmVzcyByZWdpb24gc2l6
ZS4gRm9yIHN1Y2ggY2FzZSwgYW4gZW5kcG9pbnQgZnVuY3Rpb24KPiA+PiBkcml2ZXIgbXVzdCBo
YW5kbGUgZGF0YSB0cmFuc2ZlcnMgaW4gZnJhZ21lbnRzLgo+ID4+Cj4gPiAKPiA+IElzIHRoZXJl
IGFueSBpbmNlbnRpdmUgaW4gZXhwb3NpbmcgcGNpX2VwY19tYXBfYWxpZ24oKT8gSSBtZWFuLCB3
aHkgY2FuJ3QgaXQgYmUKPiA+IGhpZGRlbiBpbnNpZGUgdGhlIG5ldyBhbGxvYygpIEFQSSBpdHNl
bGY/Cj4gCj4gSSBjb3VsZCBkcm9wIHBjaV9lcGNfbWFwX2FsaWduKCksIGJ1dCB0aGUgaWRlYSBo
ZXJlIHdhcyB0byBoYXZlIGFuIEFQSSB0aGF0IGlzCj4gbm90IHJlc3RyaWN0aXZlLiBFLmcuLCBh
IGZ1bmN0aW9uIGRyaXZlciBjb3VsZCBhbGxvY2F0ZSBtZW1vcnksIGtlZXAgaXQgYW5kCj4gcmVw
ZXRlZGx5IHVzZSBtYXBfYWxpZ24gYW5kIG1hcCgpIGZ1bmN0aW9uIHRvIHJlbWFwIGl0IHRvIGRp
ZmZlcmVudCBQQ0kKPiBhZGRyZXNzZXMuIFdpdGggeW91ciBzdWdnZXN0aW9uLCB0aGF0IHdvdWxk
IG5vdCBiZSBwb3NzaWJsZS4KPiAKCklzIHRoZXJlIGFueSByZXF1aXJlbWVudCBjdXJyZW50bHk/
IElmIG5vdCwgbGV0J3MgdHJ5IHRvIGludHJvZHVjZSBpdCB3aGVuIHRoZQphY3R1YWwgcmVxdWly
ZW1lbnQgY29tZXMuCgo+ID4gCj4gPiBGdXJ0aGVybW9yZSwgaXMgaXQgcG9zc2libGUgdG8gYXZv
aWQgdGhlIG1hcF9hbGlnbigpIGNhbGxiYWNrIGFuZCBoYW5kbGUgdGhlCj4gPiBhbGlnbm1lbnQg
d2l0aGluIHRoZSBFUEMgZHJpdmVyPwo+IAo+IEkgYW0gbm90IHNvIHN1cmUgdGhhdCB0aGlzIGlz
IHBvc3NpYmxlIGJlY2F1c2UgaGFuZGxpbmcgdGhlIGFsaWdubWVudCBjYW4KPiBwb3RlbnRpYWxs
eSByZXN1bHQgaW4gY2hhbmdpbmcgdGhlIGFtb3VudCBvZiBtZW1vcnkgdG8gYWxsb2NhdGUsIGJh
c2VkIG9uIHRoZQo+IFBDSSBhZGRyZXNzIGFsc28uIFNvIHRoZSBhbGxvY2F0aW9uIEFQSSB3b3Vs
ZCBuZWVkIHRvIGNoYW5nZSwgYSBsb3QuCj4gCgpIbW0sIGxvb2tpbmcgYXQgcGF0Y2ggMTEvMTgs
IEkgdGhpbmsgaXQgbWlnaHQgYmVjb21lIGNvbXBsaWNhdGVkLgoKLSBNYW5pCgo+ID4+ICsJLyoK
PiA+PiArCSAqIEFzc3VtZSBhIGZpeGVkIGFsaWdubWVudCBjb25zdHJhaW50IGFzIHNwZWNpZmll
ZCBieSB0aGUgY29udHJvbGxlcgo+ID4+ICsJICogZmVhdHVyZXMuCj4gPj4gKwkgKi8KPiA+PiAr
CWZlYXR1cmVzID0gcGNpX2VwY19nZXRfZmVhdHVyZXMoZXBjLCBmdW5jX25vLCB2ZnVuY19ubyk7
Cj4gPj4gKwlpZiAoIWZlYXR1cmVzIHx8ICFmZWF0dXJlcy0+YWxpZ24pIHsKPiA+PiArCQltYXAt
Pm1hcF9wY2lfYWRkciA9IHBjaV9hZGRyOwo+ID4+ICsJCW1hcC0+bWFwX3NpemUgPSBzaXplOwo+
ID4+ICsJCW1hcC0+bWFwX29mc3QgPSAwOwo+ID4gCj4gPiBUaGVzZSB2YWx1ZXMgYXJlIG92ZXJ3
cml0dGVuIGFueXdheSBiZWxvdy4KPiAKPiBMb29rcyBsaWtlICJyZXR1cm4iIGdvdCBkcm9wcGVk
LiBCdWcuIFdpbGwgcmUtYWRkIGl0Lgo+IAo+IAo+IC0tIAo+IERhbWllbiBMZSBNb2FsCj4gV2Vz
dGVybiBEaWdpdGFsIFJlc2VhcmNoCj4gCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+N
IOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
