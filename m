Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC884C7115B
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Jun 2025 17:07:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q8JrwX0EVLz0qBlW1BPQ/+ojVig/G7luNb2uzk1ZGEw=; b=wxUpOPtzX+nnCD
	Q3hZG2IIe4vs3aC4cjJAxI1lPlDRL1Wlb+CJlIApcyNjoSPeVGJd7lZDLSxJR3IBtA8scFUlv4QcY
	/PXUTKGeQCokUyKl3QUZTa014uAt0s2WnPpsj3S8oQ1mvvioJGBC9IDfgwhYvo/mUv6zC5cq1wBC2
	MW6fw+xHOvgVF8lcbmFAi6EUoRQfOPfhc93ILYNxklN/n6zmKwpRGUFihwnVN9j+5SJkvWL0SZeM5
	vdu/W/NEiLP+8QbDboSopyMjJKgcXA4nT6GGqSRyEkMAnY5K2HSCX/tHeoZFI+PJrGIVDvqZSMxLd
	g7LikVCwXDc8ZqLjGIPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSfDJ-0000000GCRQ-2PIO;
	Fri, 20 Jun 2025 17:07:41 +0000
Received: from mail-qt1-x82a.google.com ([2607:f8b0:4864:20::82a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSehs-0000000G96s-3mCH
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Jun 2025 16:35:14 +0000
Received: by mail-qt1-x82a.google.com with SMTP id d75a77b69052e-4a6f0bcdf45so23837461cf.0
        for <linux-rockchip@lists.infradead.org>; Fri, 20 Jun 2025 09:35:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1750437311; x=1751042111; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hFurqnYI+L7RUrkwAcAgkoscsXJUHEF+OS7OBiZvdjs=;
        b=IRnTr6oVb/I8aj8jQUfaqanV37N/aQwOHD2BOyJ3TBywmR/C/BrsrJCY7jiynTJW/F
         g1AM8bPHLrtmgF3UqRydfF+/As2C7uTLUEu5wzQ3M2G+GQHO9ORvvzw/4DoxLlj4X0Kp
         yQf5xIWfPbTJc/dBcCwUThD4JQDDgWHc6WuuT7bLo0DmwSUaoc1atDIcoX6TMlowHxDU
         +XJ5K745d9eGx+JgfWTmcUweCbHCCCzsWkZtpIXaV+kzANe4+1xImcJCSpMMyCSJPcir
         Yp2mWvvZNeRygGvtD5YAX5exaqZteUYF05AiI/9y3mvnNrYigYcqZiHzjBtnClysqw2T
         ORPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750437311; x=1751042111;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hFurqnYI+L7RUrkwAcAgkoscsXJUHEF+OS7OBiZvdjs=;
        b=nNzPtE8gib90C1NXRKUyVlsPI++OtnvTnncsdyzXiNsPyKQPI7DvFXKhdbtAH9ZO1r
         IDduMkodhyX/Rzlx2MUxuPtVXEmWDsEYGlVwo4YAEQgDJPwpXG83WDjAfVT1BZojclNh
         Xkt616c9oLG1UrCX3lrtNexD/EnmJGkTewr/i3pHXpQdFUBY4ZbWRlczQV44F57OTyV/
         Lr0C+Ceag+hE+vHTHD5PxXGZ+bvGHPrPDqvWIXFT08PG1CASf40VUOidmTuV66x1hIWX
         qzS1Oh3nY4SeP9ffEmNw40zaOAAj77WX7CWC6SlbAMjUF4zQOnC4JdnzYC8kM21LtpX2
         5/kQ==
X-Forwarded-Encrypted: i=1; AJvYcCVxdKSkByjH+ly76sAnQUGCiiKnB4PrPsinY7dYJqTprhQRCxh1L1yuDmkASwIx2bSCMp4LqEYJbuwzpzzzHg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwChw1vTTSciRrGOy780zWWJVJsp+R1Uw0y1NF9ysR6CwTBdTGA
	qJART156aG5ZhRzbof61Wzjy5pWzJVULIvFD6Hff6OspV4jhlYneLHDF/uIs2v7feoc=
X-Gm-Gg: ASbGncupgx9rMxiHZ4lFCDmxFowvmRUAu9CJwsJPwsWpxdXiNTxcoA894xun9C4X+A7
	crIBHNKKSuMyu64X/NcoQHOi5Js2N8M/o4eiIPUumSdOdbVO7Ij5UNhLoSdwIDF/jT4b2UmIChY
	Uj6UpuK/MYmocagZpFcxSWfY4W2ItY3cg9OA1n3IdHNzV/WO3sArebiLgYryfLEafBL93xW5cVj
	bDDHQeIpEJ4FFH+vie1agDjtBiNWj7lIYyzpDn4uXb81rFx2u71oyeINnWfV5NADofeWE4dOsnC
	8xKZb5JBwhSkCshZXH+RZ31i//nhbWqTfi0G8jDjzXLe9AXVhA5PNfhxkBRoB9dpQTW2wytnJxE
	p/NkuapaXDAQVnaYHkeHhW4DD+tng9o/euA/F5g==
X-Google-Smtp-Source: AGHT+IFA6k631lKxrYTYm+6L/JASXk2MoP+urHg89b8SmimDGgONLFl8B84S2EQnZ661ul3HBMs1NQ==
X-Received: by 2002:a05:622a:1307:b0:4a7:2357:dc81 with SMTP id d75a77b69052e-4a77a23abbfmr54566761cf.3.1750437311156;
        Fri, 20 Jun 2025 09:35:11 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-167-56-70.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.167.56.70])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4a779d9dbfesm10698501cf.36.2025.06.20.09.35.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Jun 2025 09:35:10 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1uSehp-00000000Es0-48hW;
	Fri, 20 Jun 2025 13:35:09 -0300
Date: Fri, 20 Jun 2025 13:35:09 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: joro@8bytes.org, will@kernel.org, robin.murphy@arm.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
	nicolas.dufresne@collabora.com, iommu@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v3 3/5] iommu: Add verisilicon IOMMU driver
Message-ID: <20250620163509.GB39770@ziepe.ca>
References: <20250619131232.69208-1-benjamin.gaignard@collabora.com>
 <20250619131232.69208-4-benjamin.gaignard@collabora.com>
 <20250619134752.GB1643390@ziepe.ca>
 <073ffe14-d631-4a4f-8668-ddeb7d611448@collabora.com>
 <20250619165928.GA10257@ziepe.ca>
 <e034a111-93eb-42e8-a533-46553b4f5588@collabora.com>
 <20250620120509.GA39770@ziepe.ca>
 <d9a1b9ab-b6ab-4364-a1b7-df4debc21bc1@collabora.com>
 <3337df6c-f800-4610-8689-fbd4b4a5d07a@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3337df6c-f800-4610-8689-fbd4b4a5d07a@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_093513_086114_07A72B32 
X-CRM114-Status: GOOD (  24.67  )
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

T24gRnJpLCBKdW4gMjAsIDIwMjUgYXQgMDQ6NDI6MDJQTSArMDIwMCwgQmVuamFtaW4gR2FpZ25h
cmQgd3JvdGU6Cj4gCj4gTGUgMjAvMDYvMjAyNSDDoCAxNTo1MiwgQmVuamFtaW4gR2FpZ25hcmQg
YSDDqWNyaXTCoDoKPiA+IAo+ID4gTGUgMjAvMDYvMjAyNSDDoCAxNDowNSwgSmFzb24gR3VudGhv
cnBlIGEgw6ljcml0wqA6Cj4gPiA+IE9uIEZyaSwgSnVuIDIwLCAyMDI1IGF0IDEwOjU3OjQ5QU0g
KzAyMDAsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+ID4gPiA+IExlIDE5LzA2LzIwMjUgw6Ag
MTg6NTksIEphc29uIEd1bnRob3JwZSBhIMOpY3JpdMKgOgo+ID4gPiA+ID4gT24gVGh1LCBKdW4g
MTksIDIwMjUgYXQgMDY6Mjc6NTJQTSArMDIwMCwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4g
PiA+ID4gPiA+IExlIDE5LzA2LzIwMjUgw6AgMTU6NDcsIEphc29uIEd1bnRob3JwZSBhIMOpY3Jp
dMKgOgo+ID4gPiA+ID4gPiA+IFVnaC4gVGhpcyBpZ25vcmVzIHRoZSBnZnAgZmxhZ3MgdGhhdCBh
cmUgcGFzc2VkIGludG8gbWFwIGJlY2F1c2UgeW91Cj4gPiA+ID4gPiA+ID4gaGF2ZSB0byBmb3Jj
ZSBhdG9taWMgZHVlIHRvIHRoZSBzcGlubG9jayB0aGF0IHNob3VsZG4ndCBiZSB0aGVyZSA6KAo+
ID4gPiA+ID4gPiA+IFRoaXMgbWVhbnMgaXQgZG9lcyBub3Qgc2V0IEdGUF9LRVJORUxfQUNDT1VO
VCB3aGVuCj4gPiA+ID4gPiA+ID4gcmVxdWlyZWQuIEl0IHdvdWxkCj4gPiA+ID4gPiA+ID4gYmUg
YmV0dGVyIHRvIGNvbnRpbnVlIHRvIHVzZSB0aGUgcGFzc2VkIGluIEdGUCBmbGFncwo+ID4gPiA+
ID4gPiA+IGJ1dCBvdmVycmlkZSB0aGVtCj4gPiA+ID4gPiA+ID4gdG8gYXRvbWljIG1vZGUuCj4g
PiA+ID4gPiA+IEkgd2lsbCBhZGQgYSBnZnBfdCBwYXJhbWV0ZXIgYW5kIHVzZSBpdCBsaWtlIHRo
YXQ6Cj4gPiA+ID4gPiA+IHBhZ2VfdGFibGUgPSBpb21tdV9hbGxvY19wYWdlc19zeihnZnAgfCBH
RlBfQVRPTUlDIHwKPiA+ID4gPiA+ID4gR0ZQX0RNQTMyLCBTUEFHRV9TSVpFKTsKPiA+ID4gPiA+
IFRoaXMgd2lsbCBvciB0b2dldGhlciBHRlBfQVRPTUlDIGFuZCBHRlBfS0VSTkVMLCBJIGRvbid0
IHRoaW5rIHRoYXQKPiA+ID4gPiA+IHdvcmtzLi4KPiA+ID4gPiBJIGhhdmUgdGVzdCBpdCwgSSBk
b24ndCBzZWUgY29uZmxpY3RzIG9yIGVycm9ycy4gV2hhdCB3b3JyaWVzIHlvdSA/Cj4gPiA+IEp1
c3QgbG9va2luZyBhdCB0aGUgYml0bWFwcyBJJ20gbm90IHN1cmU/IERpZCB5b3UgcnVuIHdpdGgg
bG9ja2RlcD8KPiA+IAo+ID4gWWVzIGFuZCBpdCBjb21wbGFpbnMgYWJvdXQgdGhhdC4KPiA+IEkg
c2VlIHRoYXQgc3VuNTBpIGRyaXZlciBoYXZlIG1vcmUgbGVzcyB0aGUgc2FtZSBzdHJ1Y3QgdGhh
biBteSBkcml2ZXIKPiA+IGJ1dCBkb2Vzbid0IHVzZSBsb2NrLiBJIHdpbGwgdHJ5IHNlZSBpZiBJ
IGNhbiByZW1vdmUgdGhlIGxvY2suCj4gCj4gSSBoYXZlIHJlcGxhY2UgdGhlIHR3byBzcGlubG9j
ayBieSBhIG11dGV4IGluIHZzaV9pb21tdSBzdHJ1Y3R1cmUuCj4gSXQgc2VlbXMgaXQgd29ya3Mg
d2VsbCBhbmQgbG9ja2RlcCBkb2Vzbid0IGNvbXBsYWluIGFueW1vcmUuCgpZb3UgY2Fubm90IHVz
ZSBhIHNsZWVwaW5nIGxvY2sgd2l0aGluIHRoZSBtYXAvdW5tYXAKZnVuY3Rpb25zLiBSZW1vdmlu
ZyB0aGUgbG9jayBpcyBoYXJkIGZvciB5b3VyIGNhc2UgYmVjYXVzZSB5b3UgaGF2ZQp0aGUgY2Fj
aGUgZmx1c2hpbmcgcHJvYmxlbS4KCk1heWJlIG1hc2sgR0ZQX0tFUk5FTCBvZmYgYW5kIHRoZW4g
b3IgYmFjayBpbiBHRlBfQVRPTUlDLgoKSmFzb24KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
