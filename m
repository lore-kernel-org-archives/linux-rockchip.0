Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4ED2ECA0EFA
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Aug 2025 12:42:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6jxmEfga1biaj7tcmFPrMn9+wqAuTBAw/xMCgfZPtO0=; b=dTJLaKrgpkvBi6
	ShzIrIgtaVeSJXVFcDdtjFVcA1rn8U9L8ivhKZ3txHAdvvP3TNuekjbV50lGAUJl3yt1y2L/EnUP1
	AWeXFL0nWNCnBf20+8psz2JdykMv5mpKSuYwWAU+Z4S+Wjmalk7qYTLrjBVTkVUZoCaLMKZEDpvBa
	VMoEHJVFUnRlo0Q9HRH6knH61kM2kVwtUgJA5hr6DgBYsXcFS1Tzn5YsyUTaXMIhYsEBOXUdae6Fn
	53qcW1vUJXb46tlFU9YTjZA3uozxQk3kSqAQ182XwvtwONQmv2yXwXI48Rhcx3xwNNGuRq5MIrtWn
	tHIha1t26hIWkNwxTDNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqt0G-0000000ByZ1-27Rz;
	Tue, 26 Aug 2025 12:42:20 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqszt-0000000ByTi-34dc
	for linux-rockchip@lists.infradead.org;
	Tue, 26 Aug 2025 12:41:59 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-2465cb0e81bso23761595ad.1
        for <linux-rockchip@lists.infradead.org>; Tue, 26 Aug 2025 05:41:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1756212117; x=1756816917; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=T84fHSOjtH7H+COR+2RAmmEuuAs5zWdfFcbzGcITMW0=;
        b=eMm9XPTfPH4Q687ncXBlzvAm4eRVL9gh2vaOvIgz6i1vDdeg5g28gzA5DjlmJ4Eibf
         3YQwCXooMISDh9d7gJOOz/pLARVWBb/9Y0MQigVPMEdLy2tKOUThb/d5gO86yMRmsxUU
         kqTb6vbmpHzoSPxzMrAcllpkI5ane+4nNggVQ/nu3DC7MdjJvBauwq97hYNOff+L0lLm
         g/Ex6elv9LKaloYuGO1COEvmTkrypHEUnFlWrxDIMyMwPOGLBNpdDagSICp0xoGTYp6d
         YccFSdkbge4+EKdyRkYWXBZqKgq4+WG1pAz40/BjqT+7HVvDQ3ljnD+iU81Llgnkg0Ty
         gT4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756212117; x=1756816917;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=T84fHSOjtH7H+COR+2RAmmEuuAs5zWdfFcbzGcITMW0=;
        b=n23l4VXMZNBXAbBJfih3Iwk7bfxMDhj5D009AfSMNa1Mu7fK68H8bzT9pE09yMHpHM
         X1nTC9FVkXiGk7PXh8LGASzh6Ldwd8+M9wkOGk0H8kGq5C4H1cnMJ8QJIBvZhqZk0S2X
         9kGMrO1GLjOmewxocIN3A7QAMHhCi20+xjBdY+LvYvrUJkIVueNz0DVjIF2fYRBT7QaF
         HXflqWkc34lKfZWcpK5JO3qoGwBxNVfa2bcJqzx97t/jwcoXRPFUMazlE5RlGGRK6K/H
         QeRkDU0fPHemygwbxhlUnLdSPunpIIZlNdWZL+4CzOWbPsG9qJfW7O71UX2ufRnDU2EM
         qXxw==
X-Forwarded-Encrypted: i=1; AJvYcCXjR8os4jQ6UxP/eZmkp8lVt6Y4Lu0jmws+fH/dWFBRNGHFVfajm2RlCrTdOh0+QNFE7O+h66lfJi3SyNTzTg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzR3R57ZD2f62c5WXV0z4g/Y5ksintadUuDM26syEQ3nafRo1od
	d5xQnEdqhiRzUuWjyT1WccUjncKNo9zQ2pQLpmvURKGOnCW7Ti+uIFmZ+c/t3sQdiR0=
X-Gm-Gg: ASbGncvPD3t1CtrfdEqaxOnA6BK2WQlIrM8HPg2ooYaz7C43W//80YESH4zwWIQnngI
	9kxJ9JDLberSoJ0q1XQJ1YXGmwLHjJbBd1RzEYxpAQB/oZQmpEblYb8txUqOdaXLDojH2qMJikR
	x9o1O84qPOb9f95OlRH09wbMp4xcLoxmavN0dwqo4RHdYjL1++9JAL0yBNykH/WaEGz68xcVyYO
	C6cnArCSE0tqmIv5hA0WbJ9ojvHKicgGP5Krz5NVQUwRcs1jxCNgek2lNkXJm65Evhp1JNB1m17
	bOCZLMnSTUxuw1FOCBEMAA8wIBseHGz2or5Xf2CtfC0CWJRmFkzeYFXLB/V5YtOHp+jQCTpo
X-Google-Smtp-Source: AGHT+IEf2ObCWqklpLUBYBGCp1bYhdjq0lZf9FXkeM3wbZQ3D6NSnsFJXJkCjceBlS7IcS93bfZjTg==
X-Received: by 2002:a17:902:d54e:b0:246:a8d7:5bc1 with SMTP id d9443c01a7336-246a8d75c90mr130116235ad.39.1756212116823;
        Tue, 26 Aug 2025 05:41:56 -0700 (PDT)
Received: from ziepe.ca ([130.41.10.202])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-246687b4577sm95940715ad.61.2025.08.26.05.41.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Aug 2025 05:41:56 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1uqszr-00000008tSp-1M5u;
	Tue, 26 Aug 2025 09:41:55 -0300
Date: Tue, 26 Aug 2025 09:41:55 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: Nicolas Dufresne <nicolas.dufresne@collabora.com>, joro@8bytes.org,
	will@kernel.org, robin.murphy@arm.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
	p.zabel@pengutronix.de, mchehab@kernel.org, iommu@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com,
	linux-media@vger.kernel.org
Subject: Re: [PATCH v7 4/6] media: verisilicon: AV1: Restore IOMMU context
 before decoding a frame
Message-ID: <20250826124155.GD1899851@ziepe.ca>
References: <20250825153450.150071-1-benjamin.gaignard@collabora.com>
 <20250825153450.150071-5-benjamin.gaignard@collabora.com>
 <20250825170531.GA1899851@ziepe.ca>
 <01c327e8353bb5b986ef6fb1e7311437659aea4a.camel@collabora.com>
 <20250825183122.GB1899851@ziepe.ca>
 <441df5ff-8ed4-45ed-8a52-b542c6e7d38c@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <441df5ff-8ed4-45ed-8a52-b542c6e7d38c@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250826_054157_772852_A18C7B60 
X-CRM114-Status: GOOD (  24.04  )
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

T24gVHVlLCBBdWcgMjYsIDIwMjUgYXQgMTE6NTI6MzdBTSArMDIwMCwgQmVuamFtaW4gR2FpZ25h
cmQgd3JvdGU6Cj4gCj4gTGUgMjUvMDgvMjAyNSDDoCAyMDozMSwgSmFzb24gR3VudGhvcnBlIGEg
w6ljcml0wqA6Cj4gPiBPbiBNb24sIEF1ZyAyNSwgMjAyNSBhdCAwMTo1MDoxNlBNIC0wNDAwLCBO
aWNvbGFzIER1ZnJlc25lIHdyb3RlOgo+ID4gCj4gPiA+IEphc29uLCB0aGUgcG9pbnQgaXMgdGhh
dCB0aGUgaW9tbXUgYW5kIHRoZSBWUFUgYXJlIG5vdCBzZXBhcmF0ZSBkZXZpY2VzLCB3aGljaAo+
ID4gPiBjb21lcyB3aXRoIHNpZGUgZWZmZWN0cy4gT24gUktWRGVjIHNpZGUsIHRoZSBpb21tdSBj
b25maWd1cmF0aW9uIGdldCByZXNldHMKPiA+ID4gd2hlbmV2ZXIgYSBkZWNvZGluZyBlcnJvciBs
ZWFkcyB0byBhIFZQVSAic2VsZiByZXNldCIuIEkgY2FuJ3QgcmVtZW1iZXIgd2hvIGZyb20KPiA+
ID4gdGhlIGlvbW11IHN1YnN5c3RlbSBzdWdnZXN0ZWQgdGhhdCwgYnV0IHRoZSBlbXB0eSBkb21h
aW4gbWV0aG9kIHdhcyBhZ3JlZWQgdG8gYmUKPiA+IElESywgdGhhdCBzZWVtcyByZWFsbHkgZ29v
ZnkgdG9vIG1lIGFuIGRlZmlhbnRseSBuZWVkcyB0byBiZQo+ID4gZXh0ZW5zaXZlbHkgZG9jdW1l
bnRlZCB0aGlzIGlzIHJlc3RvcmluZyB0aGUgZGVmYXVsdCB3aXRoIHNvbWUgbG9yZQo+ID4gbGlu
ayBvZiB0aGUgb3JpZ2luYWwgc3VnZ2VzdGlvbi4KPiA+IAo+ID4gPiB0aGUgbGVhc3QgaW52YXNp
dmUgd2F5IHRvIHdvcmthcm91bmQgdGhhdCBpc3N1ZS4gSSBiZWxpZXZlIERldGxldiB0cmllZCBt
dWx0aXBsZQo+ID4gPiB0aW1lIHRvIGFkZCBBUElzIGZvciB0aGF0IGJlZm9yZSB0aGUgZGlzY3Vz
c2lvbiBsZWFkIHRvIHRoaXMgcGF0aC4KPiA+IFlvdSBtZWFuIHRoaXM6Cj4gPiAKPiA+IGh0dHBz
Oi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWlvbW11LzIwMjUwMzE4MTUyMDQ5LjE0NzgxLTEtZGV0
bGV2LmNhc2Fub3ZhQGNvbGxhYm9yYS5jb20vCj4gPiAKPiA+IFdoaWNoIGNhbWUgYmFjayB3aXRo
IHRoZSBzYW1lIHJlbWFyayBJIHdvdWxkIGdpdmU6Cj4gPiAKPiA+ICAgUGxlYXNlIGhhdmUgc29t
ZSBraW5kIG9mIHByb3BlciByZXNldCBub3RpZmllciBtZWNoYW5pc20gLSBpbiBmYWN0Cj4gPiAg
IHdpdGggcnVudGltZSBQTSBjb3VsZCB5b3Ugbm90IGFscmVhZHkgaW52b2tlIGEgc3VzcGVuZC9y
ZXN1bWUgY3ljbGUKPiA+ICAgdmlhIHRoZSBkZXZpY2UgbGlua3M/Cj4gCj4gd2hlbiBkb2luZyBw
YXJhbGxlbCBkZWNvZGUgc3VzcGVuZC9yZXN1bWUgYXJlIG5vdCBpbnZva2VkLgoKSXQgd2FzIGEg
cHJvcG9zYWwgZm9yIGFuIGVycm9yIHJlY292ZXJ5IHBhdGguCgo+ID4gT3IgYW5vdGhlciByZWFz
b25hYmxlIG9wdGlvbjoKPiA+IAo+ID4gICAgT3IgYXQgd29yc3QganVzdCBleHBvcnQgYSBwdWJs
aWMgaW50ZXJmYWNlIGZvciB0aGUgb3RoZXIgZHJpdmVyIHRvCj4gPiAgICBpbnZva2UgcmtfaW9t
bXVfcmVzdW1lKCkgZGlyZWN0bHkuCj4gPiAKPiA+IFNpZ2guCj4gCj4gQW4gb3RoZXIgc29sdXRp
b24gd2hpY2ggaXMgd29ya2luZyBpcyB0byBjYWxsIGlvbW11X2ZsdXNoX2lvdGxiX2FsbCgpCj4g
YmVmb3JlIGRlY29kaW5nIGVhY2ggZnJhbWUuCgpUaGF0IHdhcyBhbHJlYWR5IHByb3Bvc2VkIGFu
ZCBzaG90IGRvd24sIGl0IG1ha2VzIG5vIHNlbnNlIGF0IGFsbCB1c2UKdG8gdXNlIGZsdXNoaW5n
IHRvIHJlc2V0IHRoZSByZWdpc3RlcnMgYmVjYXVzZSB0aGUgSFcgd2VpcmRseSBsb3N0CnRoZW0s
IGFuZCBmbHVzaGluZyBzaG91bGQgbmV2ZXIgaGFwcGVuIG91dHNpZGUgbWFwcGluZyBjb250ZXh0
cy4KCklmIHRoZSBIVyBpcyByZWFsbHkgcmVzZXR0aW5nIHRoZSBpb21tdSByZWdpc3RlcnMgYWZ0
ZXIgZXZlcnkgZnJhbWUKdGhhdCBpcyByZWFsbHkganVzdCBwYWluZnVsbHkgYnJva2VuLCBhbmQg
bWFrZXMgbWUgd29uZGVyIGlmIGl0IHJlYWxseQpzaG91bGQgYmUgYW4gaW9tbXUgc3Vic3lzdGVt
IGRyaXZlciBhdCBhbGwgaWYgaXQgaXMgc28gdGlnaHRseSBjb3VwbGVkCnRvIHRoZSBjb21wdXRp
bmcgSFcuIDpcCgpMaWtlIHdlIHdvdWxkbid0IHRyeSB0byBwdXQgYSBHUFUgTU1VIGludG8gdGhl
IGlvbW11IHN1YnN5c3RlbSB0aG91Z2gKdGhleSBkbyBmYWlybHkgc2ltaWxhciB0aGluZ3MuCgpK
YXNvbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
