Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FB54C71157
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Jun 2025 15:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b+TdM7Oc7xv98NcBmlp8+l7lwfMzP3ZctiCTNFB+ax0=; b=p2iBvAwbPB0ZRm
	i7Go7iQt9VFf80UWqkB+VCHwT9hgg3RKoZD663L3VDHsUtyCDNHZ8AVWSxyXwLXfVc0LApcxKARyE
	sm46jNpLB62mLI4+EidMUNS700++TTAqfNy3zKWOrq/XkNfpVQ5qmAFQZxRhUwZggUBcsVp8JRp0c
	WUIXws/JFTpqypl8nV714vcF0zn0Le/S2SubdKMPkrxlgMur8cc1RhrHM04pfcy9E0If3ndAWu8nM
	5t341iritD1rn7BEk41NNavtkOj3maoZPOPRbin7kn46qbpQZmlZj+PsSp2jOSJVqbBO5PflY3IJN
	P/bNcfKxrmmYhf6NMBzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRuW0-0000000AYw6-15tF;
	Wed, 18 Jun 2025 15:15:52 +0000
Received: from mail-qt1-x832.google.com ([2607:f8b0:4864:20::832])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRspd-0000000AIMZ-1gxl
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Jun 2025 13:28:02 +0000
Received: by mail-qt1-x832.google.com with SMTP id d75a77b69052e-4a58ebece05so70917501cf.1
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Jun 2025 06:28:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1750253280; x=1750858080; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dAOqSpqCOL5vjgDSfWa7ZrwFL1vtEzIytDfSsqz8LEg=;
        b=h0sChdWAoU8nNoY4zuuJ3wpOU5IjTRt5P6a7bcUOSZUiPVsHLobfszIZFzkNUC+1nZ
         FimEzw5517kCMu9Ugyprln4qesNPm1qmP/SVNcQZOJ+A0H1pFes8lpZdSaa1fzWuerRk
         ZiJ3jF2gcaNX+GjhODI5K6dzidPtgdtqDDAzDurgXiVG0B6ZNIXodg+Hx6y/gTB8nK8N
         /jPURdEyEzN+27uP7qhl1oUcZo+n3onzQkvfTb7hkawyd3xSu5P6zdFaJNCPYgiLHqS0
         Cpx3evtygLr73lfFJGcmT53sovCHZ+Ub7ZGkOMj+grdaUch8bzrMAqvaNjPt+6O/vkhw
         7NzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750253280; x=1750858080;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dAOqSpqCOL5vjgDSfWa7ZrwFL1vtEzIytDfSsqz8LEg=;
        b=TMpl7Mf1B7zvDfsIe6USrAPxeUfuVo97gWu/lkMItLVOoR+ciA/jyJw8GumFYkUPlf
         BvEm+PNamwh+xHW98njwo0ejpxr3h01+uBCfdTCjXsT1V+U6CnkH2aL9/ngBlVcnYOK4
         vc1+Hx4AmiRF8jlwdJXS/KMTG0cTq6lRXmvHSMZrgAJ4/OqDAQcOHO12FnM2RzsrKqzg
         CubS1l+fKLueKQBUTw2exHLHIptnKmMOH09Zw2c/IZX45PlROrFRcbPbPyBAhTnoH6yw
         HrKKDKdPDCNTTgkB+DuaO0FcFB8M7IRxi1LN2jlezEETkYuRix7Nx8lYKGzFM4hGfrLW
         L4hw==
X-Forwarded-Encrypted: i=1; AJvYcCUTLmLXQL+gvLy2Da/Yt/KMjeNK9fVRjcrwKUQOl2KMBj23IxzOV80MxfwgVS2WDbz48+kHggCTCEvX378ocw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyqllAVSOZOIJjMDAknAoU1QcG6us3YZj3vYTHNj52RglQD6Y1i
	b+wEY8a2vj3FJy6khea/bPt4qrIasGMOSaHQgCEAdUvlXc/iqA9aDrCKIBVuyQZ9hfc=
X-Gm-Gg: ASbGncuss8Lg9mad9gzpHba5R/1LKYR6CBCmXtqiz/11QZ9QUeffrl89SEsq/Sy3jGn
	yQRCDIC6RY1NftSgAAPoIxK438reTLx9dzCkq+pOa+QjiLQr2nJiX/ANoWeu/8PwFfipbckak6V
	DOKZfQOCei5hAoJDNcbuAt2vBPt+cC3MVPRm1f/NjTW9BzrnAUUdbDCbI5cjclFpikknzp57G/l
	yx3me1TFXXpAUAlLIjYVXVwRnjFRplzjLsSoeGuVYiZAqdxrAfLx1dD8d/xG+2MAfM0RWQBjI0e
	GrvnaCMsC/Lr3jSQmjQFuveMr1zpVhUSR9rVSQfAX4xOdfflftKG385/rSzB8cGTfD+W1Ed00IL
	J2YtTz/foZqrbgsHOYFU4UxRCf1Ud14q1Ms/1Ew==
X-Google-Smtp-Source: AGHT+IG2fHMkumSLh5a7kRlQvfCzWqyNaNQCt2F7JGbyl37Cd1Kzlhrtl/JlBPjRFd8BrqzAM7ABWw==
X-Received: by 2002:a05:622a:1886:b0:4a7:2328:27dc with SMTP id d75a77b69052e-4a73c4fd24emr201270391cf.9.1750253280248;
        Wed, 18 Jun 2025 06:28:00 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-167-56-70.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.167.56.70])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4a72a50f29dsm71636961cf.75.2025.06.18.06.27.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jun 2025 06:27:59 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1uRspb-00000006mz5-0lhB;
	Wed, 18 Jun 2025 10:27:59 -0300
Date: Wed, 18 Jun 2025 10:27:59 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: joro@8bytes.org, will@kernel.org, robin.murphy@arm.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
	nicolas.dufresne@collabora.com, p.zabel@pengutronix.de,
	mchehab@kernel.org, iommu@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH 3/5] iommu: Add verisilicon IOMMU driver
Message-ID: <20250618132759.GO1376515@ziepe.ca>
References: <20250616145607.116639-1-benjamin.gaignard@collabora.com>
 <20250616145607.116639-4-benjamin.gaignard@collabora.com>
 <20250617163219.GF1376515@ziepe.ca>
 <ff32d7c1-d811-46b8-8d3d-458dfebd14f8@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ff32d7c1-d811-46b8-8d3d-458dfebd14f8@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250618_062801_450002_73D316FE 
X-CRM114-Status: GOOD (  21.48  )
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

T24gV2VkLCBKdW4gMTgsIDIwMjUgYXQgMDI6MDQ6MTlQTSArMDIwMCwgQmVuamFtaW4gR2FpZ25h
cmQgd3JvdGU6Cj4gCj4gTGUgMTcvMDYvMjAyNSDDoCAxODozMiwgSmFzb24gR3VudGhvcnBlIGEg
w6ljcml0wqA6Cj4gPiA+ICsJdnNpX2RvbWFpbi0+ZHRfZG1hID0gZG1hX21hcF9zaW5nbGUoZG1h
X2RldiwgdnNpX2RvbWFpbi0+ZHQsCj4gPiA+ICsJCQkJCSAgICBTUEFHRV9TSVpFLCBETUFfVE9f
REVWSUNFKTsKPiA+ID4gKwlpZiAoZG1hX21hcHBpbmdfZXJyb3IoZG1hX2RldiwgdnNpX2RvbWFp
bi0+ZHRfZG1hKSkgewo+ID4gPiArCQlkZXZfZXJyKGRtYV9kZXYsICJETUEgbWFwIGVycm9yIGZv
ciBEVFxuIik7Cj4gPiA+ICsJCWdvdG8gZXJyX2ZyZWVfZHQ7Cj4gPiA+ICsJfQo+ID4gPiArCj4g
PiA+ICsJdnNpX2RvbWFpbi0+cHRhID0gaW9tbXVfYWxsb2NfcGFnZXNfc3ooR0ZQX0tFUk5FTCB8
IEdGUF9ETUEzMiwKPiA+ID4gKwkJCQkJICAgICAgIFNQQUdFX1NJWkUpOwo+ID4gPiArCWlmICgh
dnNpX2RvbWFpbi0+cHRhKQo+ID4gPiArCQlnb3RvIGVycl91bm1hcF9kdDsKPiA+ID4gKwo+ID4g
PiArCXZzaV9kb21haW4tPnB0YV9kbWEgPSBkbWFfbWFwX3NpbmdsZShkbWFfZGV2LCB2c2lfZG9t
YWluLT5wdGEsCj4gPiA+ICsJCQkJCSAgICAgU1BBR0VfU0laRSwgRE1BX1RPX0RFVklDRSk7Cj4g
PiA+ICsJaWYgKGRtYV9tYXBwaW5nX2Vycm9yKGRtYV9kZXYsIHZzaV9kb21haW4tPnB0YV9kbWEp
KSB7Cj4gPiA+ICsJCWRldl9lcnIoZG1hX2RldiwgIkRNQSBtYXAgZXJyb3IgZm9yIFBUQVxuIik7
Cj4gPiA+ICsJCWdvdG8gZXJyX2ZyZWVfcHRhOwo+ID4gPiArCX0KPiA+ID4gKwl2c2lfZG9tYWlu
LT5wdGFbMF0gPSB2c2lfbWtfcHRhKHZzaV9kb21haW4tPmR0X2RtYSk7Cj4gPiA+ICsKPiA+ID4g
Kwl2c2lfdGFibGVfZmx1c2godnNpX2RvbWFpbiwgdnNpX2RvbWFpbi0+cHRhX2RtYSwgMTAyNCk7
Cj4gPiA+ICsJdnNpX3RhYmxlX2ZsdXNoKHZzaV9kb21haW4sIHZzaV9kb21haW4tPmR0X2RtYSwg
TlVNX0RUX0VOVFJJRVMpOwo+ID4gZG1hX21hcF9zaW5nbGUgYWxyZWFkeSBmbHVzaGVzLCBwdXQg
dGhpbmdzIGluIHRoZSB3cml0ZSBvcmRlciBhbmQgbm8KPiA+IG5lZWQgdG8gZG91YmxlIGZsdXNo
Lgo+IAo+IEkgZG9uJ3QgZ2V0IHlvdXIgcG9pbnQgaGVyZSwgZm9yIG1lIGl0IGZsdXNoIHR3byBk
aWZmZXJlbnQgcGllY2VzIG9mIG1lbW9yeS4KCmRtYV9tYXBfc2luZ2xlKCkgYWxyZWFkeSBmbHVz
aGVzIHRoZSBjYWNoZSwgeW91IGRvbid0IG5lZWQgdG8gZG8gaXQKYWdhaW4uCgpEbyB5b3VyIG1l
bW9yeSB3cml0ZXMgdGhlbiBjYWxsIGRtYV9tYXBfc2lnbmxlKCkuCgo+ID4gPiArCWR0ZV9pbmRl
eCA9IHZzaV9pb3ZhX2R0ZV9pbmRleChpb3ZhKTsKPiA+ID4gKwlkdGVfYWRkciA9ICZ2c2lfZG9t
YWluLT5kdFtkdGVfaW5kZXhdOwo+ID4gPiArCWR0ZSA9ICpkdGVfYWRkcjsKPiA+ID4gKwlpZiAo
dnNpX2R0ZV9pc19wdF92YWxpZChkdGUpKQo+ID4gPiArCQlnb3RvIGRvbmU7Cj4gPiA+ICsKPiA+
ID4gKwlwYWdlX3RhYmxlID0gKHUzMiAqKWdldF96ZXJvZWRfcGFnZShHRlBfQVRPTUlDIHwgR0ZQ
X0RNQTMyKTsKPiA+ID4gKwlpZiAoIXBhZ2VfdGFibGUpCj4gPiA+ICsJCXJldHVybiBFUlJfUFRS
KC1FTk9NRU0pOwo+ID4gRG9uJ3QgdXNlIGdldF96ZXJvZWRfcGFnZSBmb3IgcGFnZSB0YWJsZSBt
ZW1vcnkuCj4gCj4gSSB3aWxsIHVzZSBrbWVtX2NhY2hlIGluIHYyCgpJIG1lYW4geW91IGFyZSBz
dXBwb3NlZCB0byBpb21tdS1wYWdlcy5oIGZvciBwYWdlIHRhYmxlIG1lbW9yeS4KCj4gPiA+ICsJ
cHRfZG1hID0gZG1hX21hcF9zaW5nbGUoZG1hX2RldiwgcGFnZV90YWJsZSwgU1BBR0VfU0laRSwg
RE1BX1RPX0RFVklDRSk7Cj4gPiA+ICsJaWYgKGRtYV9tYXBwaW5nX2Vycm9yKGRtYV9kZXYsIHB0
X2RtYSkpIHsKPiA+ID4gKwkJZGV2X2VycihkbWFfZGV2LCAiRE1BIG1hcHBpbmcgZXJyb3Igd2hp
bGUgYWxsb2NhdGluZyBwYWdlIHRhYmxlXG4iKTsKPiA+ID4gKwkJZnJlZV9wYWdlKCh1bnNpZ25l
ZCBsb25nKXBhZ2VfdGFibGUpOwo+ID4gPiArCQlyZXR1cm4gRVJSX1BUUigtRU5PTUVNKTsKPiA+
ID4gKwl9Cj4gPiA+ICsKPiA+ID4gKwlkdGUgPSB2c2lfbWtfZHRlKHB0X2RtYSk7Cj4gPiA+ICsJ
KmR0ZV9hZGRyID0gZHRlOwo+ID4gPiArCj4gPiA+ICsJdnNpX3RhYmxlX2ZsdXNoKHZzaV9kb21h
aW4sIHB0X2RtYSwgTlVNX1BUX0VOVFJJRVMpOwo+ID4gPiArCXZzaV90YWJsZV9mbHVzaCh2c2lf
ZG9tYWluLAo+ID4gPiArCQkJdnNpX2RvbWFpbi0+ZHRfZG1hICsgZHRlX2luZGV4ICogc2l6ZW9m
KHUzMiksIDEpOwo+ID4gRG91YmxlIGZsdXNoaW5nIGFnYWluLgo+Cj4gU2FtZSBoZXJlLCBmb3Ig
bWUgSSBmbHVzaGluZyB0d28gZGlmZmVyZW50IG1lbW9yeSBhcmVhLgoKd3JpdGUgdG8gdGhlIHBh
Z2UtdGFibGUsIHRoZW4gY2FsbCBkbWFfbWFwX3NpbmdsZSgpLCBkb24ndCBmbHVzaCBpdCBhZ2Fp
bi4KCj4gPiA+ICtzdGF0aWMgaW50IHZzaV9pb21tdV9tYXBfaW92YShzdHJ1Y3QgdnNpX2lvbW11
X2RvbWFpbiAqdnNpX2RvbWFpbiwgdTMyICpwdGVfYWRkciwKPiA+ID4gKwkJCSAgICAgIGRtYV9h
ZGRyX3QgcHRlX2RtYSwgZG1hX2FkZHJfdCBpb3ZhLAo+ID4gPiArCQkJICAgICAgcGh5c19hZGRy
X3QgcGFkZHIsIHNpemVfdCBzaXplLCBpbnQgcHJvdCkKPiA+ID4gK3sKPiA+ID4gKwl1bnNpZ25l
ZCBpbnQgcHRlX2NvdW50Owo+ID4gPiArCXVuc2lnbmVkIGludCBwdGVfdG90YWwgPSBzaXplIC8g
U1BBR0VfU0laRTsKPiA+ID4gKwlwaHlzX2FkZHJfdCBwYWdlX3BoeXM7Cj4gPiA+ICsKPiA+ID4g
Kwlhc3NlcnRfc3Bpbl9sb2NrZWQoJnZzaV9kb21haW4tPmR0X2xvY2spOwo+ID4gPiArCj4gPiA+
ICsJZm9yIChwdGVfY291bnQgPSAwOyBwdGVfY291bnQgPCBwdGVfdG90YWw7IHB0ZV9jb3VudCsr
KSB7Cj4gPiA+ICsJCXUzMiBwdGUgPSBwdGVfYWRkcltwdGVfY291bnRdOwo+ID4gPiArCj4gPiA+
ICsJCWlmICh2c2lfcHRlX2lzX3BhZ2VfdmFsaWQocHRlKSkKPiA+ID4gKwkJCWdvdG8gdW53aW5k
Owo+ID4gPiArCj4gPiA+ICsJCXB0ZV9hZGRyW3B0ZV9jb3VudF0gPSB2c2lfbWtfcHRlKHBhZGRy
LCBwcm90KTsKPiA+IFNvIHdoeSBpcyB0aGlzOgo+ID4gCj4gPiAjZGVmaW5lIFZTSV9JT01NVV9Q
R1NJWkVfQklUTUFQIDB4MDA3ZmYwMDAKPiA+IAo+ID4gSWYgdGhlIHNpemVzIGRvbid0IGJlY29t
ZSBlbmNvZGVkIGluIHRoZSBQVEU/IFRoZSBiaXRzIGJleW9uZCA0awo+ID4gc2hvdWxkIHJlZmxl
Y3QgYWN0dWFsIGFiaWxpdHkgdG8gc3RvcmUgdGhvc2Ugc2l6ZXMgaW4gUFRFcywgZWcgdXNpbmcK
PiA+IGNvbnRpZ3VvdXMgYml0cyBvciBzb21ldGhpbmcuCj4gCj4gVGhlIGlvbW11IHVzZSBhcnJh
eXMgdG8gc3RvcmUgdXAgdG8gMTAyNCA0ayBwYWdlcyBpbmRleGVzIHNvIHRoZSBzaXplCj4gaXNu
J3QgY29kZWQgaW4gdGhlIFBURSBiaXRzIGJ1dCB0aGUgbnVtYmVycyBvZiB1c2VkIGluZGV4ZXMg
Zm9yIGVhY2ggYXJyYXlzLgoKVGhhdCBpc24ndCBob3cgaXQgd29ya3MsIGlmIHRoZSBQVEUgYml0
cyBkb24ndCBjb2RlIHRoZSBzaXplIHRoZW4geW91CmRvbid0IHNldCB0aGUgVlNJX0lPTU1VX1BH
U0laRV9CSVRNQVAuIFlvdSBqdXN0IHdhbnQgU1pfNEsgZm9yIHRoZSB3YXkKdGhpcyBkcml2ZXIg
aXMgd3JpdHRlbi4KCkphc29uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
