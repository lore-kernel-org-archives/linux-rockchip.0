Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66D9B105A58D
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Mar 2026 11:40:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xHxoQ5H/ppkN2mCI2peaJDNnLodWsl32ud2e68t9m7c=; b=QuR18RQ+a1GNlR
	0lFG9mjnezOGyc7LKWXSe+yfefBdYDKBKUVNsHiWfPE8YQBASgDRWWICE5O4Dzy1xILL4cXWOZYPY
	RW4Osi/MOekH4vxrDfaxY53gpfa9wi//qRaF9VRqfcqX3h0ofXGGskGpdEomln0OpFjCdSfpWPXHy
	UbpKTs9AugQe/tjxBmV7bPu+sKH2NHntKnPt5/Z1au4koMo8jji+RBr11s1DGUhiqO+yik2mdzmgU
	hI2BDARphtZRWHQyRuYy2MgsQKGphb5aLQSLfSS7qtAvkiC+MkvFbFlLNPR8Rw2rjXzfYGSvhqDVa
	4bCzSdvLu2oWoOV6g1Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0eOx-0000000DyTd-26lc;
	Thu, 12 Mar 2026 11:40:27 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0eOv-0000000DySy-0scN
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Mar 2026 11:40:26 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-b943a880577so117883866b.3
        for <linux-rockchip@lists.infradead.org>; Thu, 12 Mar 2026 04:40:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773315623; cv=none;
        d=google.com; s=arc-20240605;
        b=Juk47jQRwi+mSotdyfjtq5KS4a1trVJjdfrzrwrDLEHtA/ZSuzZzD1Fvyc0lumcftu
         hI6DcfnLeA/R0cmQI3T83YUTWn0pnJ01rwd2Nrt/duxX1mTW8NFiKusejjOOmi2GP8u3
         UEwUBfzab0HQtsWHtil2wiBWkXENrTdB6EGRzEnJT+MsfYAEqikBl+zGGs05lTmFzXQh
         hg7nYjd7K7O8Dvtq0IwB5d5vbMZvivflDal8NFT3Ss0zWSOPqe1BuqOek8MbctUxBain
         COTSAup80XEqFhSX5/ZFeiA5uAWBVhCk/MQoUJGkatuQmdVk4iTBOGpAxRcw30ta8uV0
         kFBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=k9kla8PpBQz/94UsEvpzoG2D163jkyCAkG5Jr+I8Q48=;
        fh=EwnC3Q3F8hOfk+fSMr1lWj480gYaSWSC6PHhQakKv8g=;
        b=RtzoZ1sWHefykWC3cbAEDVllJEQ4rrNAN1LQD9w1kEe2yzOYJIoeu1b0FV9qlnoxLo
         P8HvIDxRymmDHe2+LpBYoNG4/LF1RE1Nsj1YraUO1VnwTJTLgWNVSj4i1Gu5LwrNp/cZ
         YL570OPRmb25088NOB79etzI5LbsVccCkj4sN+WmbaVBHIOdexUI2orydSRHeN0fFY0M
         Q/jEWMZzaWwY9JkrKRSSLqoIFRyPwe95qPqosUmEbE4H6pb7tAoAV/AeyjJUL1oWcI3j
         j+ErNf9hUgtDEuustoIqTMVP/cObjP3b2kNAC8mwKdICR3/EebwC5fDIZMwne6HIW10S
         EslA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773315623; x=1773920423; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k9kla8PpBQz/94UsEvpzoG2D163jkyCAkG5Jr+I8Q48=;
        b=al/MiSsEc+GF9xnfh0bRst9Qka23liZ/G//RFWRgODplJQgenSJSRwWdxpWd5lNlcY
         z/+EHBC3Se4nwzNew7ZLhT10fAYDz/GtR6D6pGOTNp58qvUt0PlnxDJlEX/cZlBMnqdX
         YEzQLAcHfdSWR7avrH2jh/qPOBkGehA/Gt1vVmRQulZYUZam/G/0PN1On/JFg0tWQvwr
         jxnRTlh4mvYALlS2vqi9taxnrDS3COewXDhFvXwLNjwDCiA6BnFT/00JCtSBnNxyqL6F
         sYGEH4NLfnIFESQN8SD1G6rO0NWf2bdb/i/FSjRwCjHJO6uB30X/ckWrTX8bs2JDEP/4
         Xyrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773315623; x=1773920423;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=k9kla8PpBQz/94UsEvpzoG2D163jkyCAkG5Jr+I8Q48=;
        b=mjSbMTpPxnF5ucMTZiA9UtkHLYPOFmVcjCKYNbSzp7LdGD+vo2NNuEG64h9YZqn/qd
         QROm+lHj7sfYhd2TCV8Um9fcPRq+fxw/gR5tpm6hJBl5Y4+GIoz/O1FdI8HDIRxwSii/
         AJL965KqJCsWf8KqvgscNCT+HHYA7NM3w+gjFN8zV8jRNG2VoAAXOMxfF5AdEEK2sOsa
         E34vuUOKpCSGJbajNOMO261ZYqkvVKSTpx4hbm4Klal2G+0Yp1AF+VnA44+16OO7oKRo
         +tMf6NbL8ERk7RTLn6NIAeHA+WZLbway/rfDqDIcoQbpoGL63VYD0+xJ2Z7os1WtimDy
         FjtA==
X-Forwarded-Encrypted: i=1; AJvYcCX2ue7uoLh+UT7/QVmgBLyf9A9OeD9PoLaHZ0Nb5lmphScJNbEd4S+2gz7FqSnRRNR8ciIGMhjjX1PGDJvONw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzGlOOxTWzZewydB0Tg/39WZPrj++eEUQGwJvIbE2G8/CiJ+8ZI
	G1YPfspHVfo4H1hSMA+cgVnqrLTfKR/UJaDzqpzCR3ZiY16Ynphwt5kcaa/rfes7/i0dt8zq7V3
	jA2edFxYF+P2WdGlwW4Ny7DdxzRpMkb0=
X-Gm-Gg: ATEYQzzgZbuJwAbEDwF/L5Mkr8ONbmYXvprRBVgEtQ1hpjkzGAroF9HLyAMeQo7nSVJ
	zNizPpTQLx/VBH/tFLDVWVRbPeKPy62fTsyDReafGBJTvGypMVK9vRDjG6ub25fQmfANRsseLyM
	O4oWyhqp5Djr+8CKaQB3ZeDpBCvBbdrJX9HFT/QyWYe51fgjTIMII8FL9mV9YHDMZxi3M1lFz5V
	4gbIOq04aY1luDGog5PCBpDFcTzquofkoE6mnZ2OiB1ZuIi/zNa+rOjG04G9ixwQtPuBex0FUd3
	lTBdeQ==
X-Received: by 2002:a17:906:f58d:b0:b8f:f070:8c30 with SMTP id
 a640c23a62f3a-b972e52a19dmr383837666b.49.1773315622489; Thu, 12 Mar 2026
 04:40:22 -0700 (PDT)
MIME-Version: 1.0
References: <20260226101032.1042-1-linux.amoon@gmail.com> <177260693908.10259.13055467642416391434.b4-ty@kernel.org>
 <87bc37ee-234c-4568-b72e-955c130a6838@arm.com> <f7tfshf7riljjibuqge4ubfjmludubpyh3ppdf6lasurzdzbtj@sw4xxagfhnn3>
 <5d88fb5b-e771-4ea6-8d2c-c5cfd21e5860@arm.com> <qwanhqrpztzkudik5fmberhabnzaly7v53677dohqzj5nq4wi2@6ndpiubyxcbi>
 <DGZXF3LPSRK6.2QYN63QTKUQAX@kernel.org> <cp5uktfqdf6zs53qsye57ior2ikmssgevxxdtevkzpisaif22h@7mrxspkuibow>
 <DH09EDBW3X6T.2996UB1CFCAW2@kernel.org> <7b5592e7-8a9d-2cf0-bb3e-e306a6337165@rock-chips.com>
In-Reply-To: <7b5592e7-8a9d-2cf0-bb3e-e306a6337165@rock-chips.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Thu, 12 Mar 2026 17:10:06 +0530
X-Gm-Features: AaiRm52HfWRYYsTJWgJqZ1mPKHzxh5bRhcDvLmP4oDUAAo6L9RCY3sGu0RZ9H3g
Message-ID: <CANAwSgTaZqsHYXD_ACkJGGLgk4knc7N72f4qrJaaenE-cXM8BA@mail.gmail.com>
Subject: Re: [PATCH v3] PCI: dw-rockchip: Enable async probe by default
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Danilo Krummrich <dakr@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
	Niklas Cassel <cassel@kernel.org>, Hans Zhang <18255117159@163.com>, 
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
	Wilfred Mallawa <wilfred.mallawa@wdc.com>, linux-pci@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Grimmauld <grimmauld@grimmauld.de>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	driver-core@lists.linux.dev, Lukas Wunner <lukas@wunner.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_044025_291190_7F157D28 
X-CRM114-Status: GOOD (  45.85  )
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

SGkgU2hhd24sIE1hbmksIE5pa2xhcywgUm9iaW4sLAoKT24gVGh1LCAxMiBNYXIgMjAyNiBhdCAw
NzowMywgU2hhd24gTGluIDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+IHdyb3RlOgo+Cj4gSGkg
TWFuaSBhbmQgRGFuaWxvLAo+Cj4g5ZyoIDIwMjYvMDMvMTIg5pif5pyf5ZubIDU6MDksIERhbmls
byBLcnVtbXJpY2gg5YaZ6YGTOgo+ID4gT24gV2VkIE1hciAxMSwgMjAyNiBhdCAxOjI4IFBNIENF
VCwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtIHdyb3RlOgo+ID4+IE9uIFdlZCwgTWFyIDExLCAyMDI2
IGF0IDEyOjQ2OjAzUE0gKzAxMDAsIERhbmlsbyBLcnVtbXJpY2ggd3JvdGU6Cj4gPj4+IE9uIFdl
ZCBNYXIgMTEsIDIwMjYgYXQgNjoyNCBBTSBDRVQsIE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3cm90
ZToKPiA+Pj4+IEkgaGF2ZSBhIGNvbnRyYXJ5IHZpZXcgaGVyZS4gSWYganVzdCBhIHNpbmdsZSBk
cml2ZXIgb3IgbGliIGRvZXNuJ3QgaGFuZGxlIGFzeW5jCj4gPj4+PiBwcm9iZSwgaXQgY2Fubm90
IGp1c3QgZm9yY2Ugb3RoZXIgZHJpdmVycyB0byBub3QgdGFrZSB0aGUgYWR2YW50YWdlIG9mIGFz
eW5jCj4gPj4+PiBwcm9iZS4gQXMgSSBzYWlkIGFib3ZlLCBlbmFibGluZyBhc3luYyBwcm9iZSBl
YXNpbHkgc2F2ZXMgYSBmZXcgaHVuZGVyZCBtcyBvcgo+ID4+Pj4gZXZlbiBtb3JlIGlmIHRoZXJl
IGFyZSBtb3JlIHRoYW4gb25lIFJvb3QgUG9ydCBvciBSb290IENvbXBsZXggaW4gYW4gU29DLgo+
ID4+Pgo+ID4+PiBUaGVuIHRoZSBkcml2ZXIgb3IgbGliIGhhcyB0byBiZSBmaXhlZCAvIGltcHJv
dmVkIGZpcnN0IG9yIHRoZSBkcml2ZXIgY29yZSBoYXMKPiA+Pj4gdG8gYmUgZW5hYmxlZCB0byBk
ZWFsIHdpdGggYSBjYXNlIHdoZXJlIFBST0JFX0ZPUkNFX1NZTkNIUk9OT1VTIGlzIHJlcXVlc3Rl
ZAo+ID4+PiBmcm9tIGFuIGFzeW5jIHBhdGgsIGV0Yy4KPiA+Pj4KPiA+Pj4gSW4gYW55IGNhc2Us
IGFwcGx5aW5nIHRoZSBwYXRjaCBhbmQgYnJlYWtpbmcgdGhpbmdzIChrbm93aW5nbHk/KSBkb2Vz
bid0IHNlZW0KPiA+Pj4gbGlrZSB0aGUgY29ycmVjdCBhcHByb2FjaC4KPiA+Pj4KPiA+Pj4+IEkg
c3Ryb25nbHkgYWdyZWUgd2l0aCB5b3UgaGVyZSB0aGF0IHRoZSB1bmRlcmx5aW5nIGlzc3VlIHNo
b3VsZCBiZSBmaXhlZC4gQnV0Cj4gPj4+PiB0aGUgcmVhbCBpbXBhY3QgdG8gZW5kIHVzZXJzIGlz
IG5vdCB0aGlzIHNwbGF0LCBidXQgbm90IGhhdmluZyB0aGUgYm9vdCB0aW1lCj4gPj4+PiBvcHRp
bWl6YXRpb24gdGhhdCB0aGlzIHBhdGNoIGJyaW5ncyBpbi4gQXMgYW4gZW5kIHVzZXIsIG9uZSB3
b3VsZCB3YW50IHRoZWlyCj4gPj4+PiBzeXN0ZW1zIHRvIGJvb3QgcXVpY2tseSBhbmQgdGhleSB3
b3VsZG4ndCBib3RoZXIgbXVjaCBhYm91dCBhIGhhcm1sZXNzIHdhcm5pbmcKPiA+Pj4+IHNwbGF0
IGFwcGVhcmluZyBpbiB0aGUgZG1lc2cgbG9nLgo+ID4+Pgo+ID4+PiBZb3UgbWVhbiBxdWlja2x5
IGJvb3RpbmcgaW50byBhICJoYXJtbGVzcyIgcG90ZW50aWFsIGRlYWRsb2NrIGNvbmRpdGlvbiB0
aGUKPiA+Pj4gd2FybmluZyBzcGxhdCB0cmllcyB0byBtYWtlIHBlb3BsZSBhd2FyZSBvZj8gOikK
PiA+Pj4KPiA+Pgo+ID4+IEhtbSwgSSBvdmVybG9va2VkIHRoZSBidWlsdC1hcy1tb2R1bGUgcGFy
dCB3aGVyZSB0aGUgZGVhZGxvY2sgY291bGQgYmUgcG9zc2libGUKPiA+PiBhcyBpbmRpY2F0ZWQg
YnkgdGhlIGNvbW1lbnQgYWJvdXQgdGhlIFdBUk5fT05fT05DRSgpLgo+ID4+Cj4gPj4gQnV0IHdo
YXQgaXMgdGhlIHBhdGggZm9yd2FyZCBoZXJlPyBEbyB5b3Ugd2FudCB0aGUgcGh5bGliIHRvIGZp
eCB0aGUKPiA+PiByZXF1ZXN0X21vZHVsZSgpIGNhbGwgb3IgZml4IHRoZSBkcml2ZXIgY29yZSBp
bnN0ZWFkPwo+ID4KPiA+IEhlcmUgYXJlIGEgZmV3IHRob3VnaHRzLgo+ID4KPiA+IEluIGdlbmVy
YWwsIEkgdGhpbmsgdGhlIGJlc3Qgd291bGQgYmUgdG8gZ2V0IHJpZCBvZiB0aGUgKGFmZmVjdGVk
KQo+ID4gUFJPQkVfRk9SQ0VfU1lOQ0hST05PVVMgY2FzZXMuCj4gPgo+ID4gTm93LCBJIGd1ZXNz
IHRoaXMgY2FuIGJlIHByZXR0eSBoYXJkIGZvciBhIFBDSSBjb250cm9sbGVyIGRyaXZlciwgYXMg
eW91IGNhbid0Cj4gPiByZWFsbHkgcHJlZGljdCB3aGF0IGVuZHMgdXAgYmVpbmcgcHJvYmVkIGZy
b20geW91IGFzeW5jIGNvbnRleHQsIGkuZS4gaXQgY291bGQKPiA+IGV2ZW4gYmUgc29tZSBvdGhl
ciBidXMgY29udHJvbGxlciBhbmQgdGhpbmdzIGNvdWxkIGV2ZW4gcHJvcGFnYXRlIGZ1cnRoZXIu
Cj4gPgo+ID4gTm90IHN1cmUgaG93IGJpZyBvZiBhIGRlYWwgaXQgaXMgaW4gcHJhY3RpY2UgdGhv
dWdoLCB0aGVyZSBhcmUgbm90IGEgbG90IG9mCj4gPiBQUk9CRV9GT1JDRV9TWU5DSFJPTk9VUyBk
cml2ZXJzIChsZWZ0KSwgYnV0IG5vdGUgdGhhdCBzcGVjaWZ5aW5nIG5laXRoZXIKPiA+IFBST0JF
X0ZPUkNFX1NZTkNIUk9OT1VTIG5vciBQUk9CRV9QUkVGRVJfQVNZTkNIUk9OT1VTIGN1cnJlbnRs
eSByZXN1bHRzIGluCj4gPiBzeW5jaHJvbm91cyBieSBkZWZhdWx0Lgo+ID4KPiA+IChBbHNvLCBx
dWl0ZSBzb21lIG90aGVyIFBDSSBjb250cm9sbGVyIGRyaXZlcnMgZG8gc2V0IFBST0JFX1BSRUZF
Ul9BU1lOQ0hST05PVVMKPiA+IGFuZCBhcHBhcmVudGx5IGdvdCBsdWNreSB3aXRoIGl0LikKPiA+
Cj4gPj5Gcm9tIGEgZHJpdmVyLWNvcmUgcGVyc3BlY3RpdmUgSSB0aGluayB3ZSdyZSByYXRoZXIg
bGltaXRlZCBvbiB3aGF0IHdlIGNhbiBkbzsKPiA+IHdlIGFyZSBhbHJlYWR5IGluIGFzeW5jIGNv
bnRleHQgYXQgdGhpcyBwb2ludCBhbmQgY2FuJ3QgbWFnaWNhbGx5IGdvIGJhY2sgdG8KPiA+IGlu
aXRjYWxsIGNvbnRleHQuCj4gPgo+ID4gU28sIHRoZSBvbmx5IHRoaW5nIEkgY2FuIHRoaW5rIG9m
IGlzIHRvIGtpY2sgb2ZmIHdvcmsgb24gYSB3b3JrcXVldWUsIHdoaWNoIGluCj4gPiB0aGUgZW5k
IHdvdWxkIGJlIHRoZSBzYW1lIGFzIHRoZSBkZWZlcnJlZCBwcm9iZSBoYW5kbGluZy4KPiA+Cj4g
PiBBbm90aGVyIGFsdGVybmF0aXZlIHdvdWxkIGJlIHRvIGxldCB0aGUgc3Vic3lzdGVtIGhhbmRs
ZSBzdWNoIGNhc2VzLCB3aGljaCBpbgo+ID4gdGhpcyBjYXNlIHdvdWxkIHByb2JhYmx5IG1lYW4g
dG8gaGFuZGxlIHRoZSBjdXJyZW50X2lzX2FzeW5jKCkgY2FzZSBpbgo+ID4gcGNpX2hvc3RfcHJv
YmUoKSBvciBwY2lfYnVzX2FkZF9kZXZpY2VzKCkuCj4gPgo+ID4gT24gdGhlIG90aGVyIGhhbmQs
IHRoaXMgd291bGQgcHJvYmFibHkgZW5kIHVwIHRvIGJlIGEgc3Vic3lzdGVtIHNwZWNpZmljCj4g
PiBpbXBsZW1lbnRhdGlvbiBvZiAia2ljayBvZiB3b3JrIG9uIGEgd29ya3F1ZXVlIi4KPgo+IEFj
dHVhbGx5LCB0aGlzIGlzIGV4YWN0bHkgd2hhdCB3ZSd2ZSBiZWVuIGRvaW5nIGluIG91ciBkb3du
c3RyZWFtCj4gY29kZVsxXSBmb3IgcXVpdGUgYSBsb25nIHRpbWUuIFdlJ3ZlIGV2ZW4gcHVzaGVk
IHRoaXMgb3B0aW1pemF0aW9uIGRvd24KPiB0byB0aGUgaW5kaXZpZHVhbCBkcml2ZXIgbGV2ZWwu
Cj4KPiBUbyBiZSBob25lc3QsIEknbSBub3QgcGFydGljdWxhcmx5IGZvbmQgb2YgdGhpcyBhcHBy
b2FjaCBlaXRoZXIuCj4gSG93ZXZlciwgb24gb3VyIHBsYXRmb3JtLCB3ZSBoYXZlIG1vcmUgdGhh
biA1IFJvb3QgUG9ydCBpbnN0YW5jZXMgdGhhdAo+IG5lZWQgdG8gYmUgaW5pdGlhbGl6ZWQgZHVy
aW5nIGJvb3QuIFdoZW4gYWxsIG9mIHRoZW0gcHJvYmUKPiBzeW5jaHJvbm91c2x5LCBpdCBzaWdu
aWZpY2FudGx5IGRlbGF5cyB0aGUgZXhlY3V0aW9uIG9mIG1hbnkgb3RoZXIKPiBjcml0aWNhbCBk
cml2ZXJzLiBPdXIgY3VzdG9tZXJzIGhhdmUgYmVlbiBjb21wbGFpbmluZyBhYm91dCB0aGUgYm9v
dAo+IHRpbWUsIGFuZCBvdXIgZG93bnN0cmVhbSB0ZWFtIGhhZCBubyByZWFsIGNob2ljZSBidXQg
dG8ga2ljayBvZmYgYQo+IGt0aHJlYWQgc2ltaWxhciB0byB5b3VyIHN1Z2dlc3Rpb24uCj4KPiBU
aGUgY29kZSBpcyB2ZXJ5IHVnbHkgYW5kIGV4cG9zZSBhIGxvdCBvZiBjb3JuZXIgY2FzZXMgcHJv
YmxlbSB3aGljaAo+IHdhc3RlZCBxdWl0ZSBsb3Qgb2YgdGltZSB0byBmaXguIFRoYXQncyB3aHkg
SSB3YXMgaGVzaXRhbnQgdG8gYnJpbmcKPiB1cCB0aGUgdGhpcyBhcHByb2FjaCB1cHN0cmVhbSBp
bml0aWFsbHkuIEJ1dCBzaW5jZSB5b3UgbWVudGlvbmVkIGl0LCBJCj4gdGhpbmsgaXQncyB3b3J0
aCBldmFsdWF0aW5nIHdoZXRoZXIgd2UgY2FuIGltcGxlbWVudCB0aGlzIGF0IHRoZQo+IHN1YnN5
c3RlbSBsZXZlbCBpbnN0ZWFkIG9mIGZvcmNpbmcgZWFjaCBkcml2ZXIgdG8gaGFuZGxlIGl0Cj4g
aW5kaXZpZHVhbGx5LiBUaGlzIHdheSwgdGhlIGNvbXBsZXhpdHkgd291bGQgYmUgY2VudHJhbGl6
ZWQsIGFuZCBkcml2ZXJzCj4gdGhhdCBiZW5lZml0IGZyb20gYXN5bmMgcHJvYmUgKGxpa2UgbXVs
dGktUm9vdC1Qb3J0IFNvQ3MpIGNvdWxkIG9wdC1pbgo+IHdpdGhvdXQgd29ycnlpbmcgYWJvdXQg
dGhlIHJlcXVlc3RfbW9kdWxlKCkgZGVhZGxvY2sgc2NlbmFyaW8uCj4KPiBXaGF0IGRvIHlvdSB0
aGluaz8KPgo+Cj4gWzFdCj4gaHR0cHM6Ly9naXRodWIuY29tL3JvY2tjaGlwLWxpbnV4L2tlcm5l
bC9ibG9iL2RldmVsb3AtNi42L2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9j
a2NoaXAuYyNMMTc2NAo+Cj4gPgo+ID4+IEkgY2FuIGRyb3AgdGhpcyBwYXRjaCBpbiB0aGUgbWVh
bnRpbWUuIEJ1dCBob2xkaW5nIHRoaXMgcHJvbG9uZyB3b3VsZG4ndCBoZWxwLgo+ID4KSSd2ZSBy
ZXByb2R1Y2VkIHRoZSBpc3N1ZSBvbiBteSBlbmQuIEZvbGxvd2luZyBEYW5pbG8ncyBzdWdnZXN0
aW9uLApJIHVzZWQgUFJPQkVfRk9SQ0VfU1lOQ0hST05PVVMgdG8gcmVzb2x2ZSB0aGUgd2Fybmlu
Zy4KSWYgeW91IGFncmVlIHRoaXMgaXMgdGhlIGNvcnJlY3QgZml4LCBJ4oCZbGwgcmVzdWJtaXQg
dGhlIHBhdGNoLgoKIGdpdCBkaWZmIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHct
cm9ja2NoaXAuYwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1k
dy1yb2NrY2hpcC5jCmIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hp
cC5jCmluZGV4IDViMTdkYTYzMTUxZC4uZWNhZjFiNDQ2MDA4IDEwMDY0NAotLS0gYS9kcml2ZXJz
L3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMKKysrIGIvZHJpdmVycy9wY2kv
Y29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jCkBAIC03NDYsNiArNzQ2LDcgQEAgc3Rh
dGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgcm9ja2NoaXBfcGNpZV9kcml2ZXIgPSB7CiAgICAg
ICAgICAgICAgICAubmFtZSAgID0gInJvY2tjaGlwLWR3LXBjaWUiLAogICAgICAgICAgICAgICAg
Lm9mX21hdGNoX3RhYmxlID0gcm9ja2NoaXBfcGNpZV9vZl9tYXRjaCwKICAgICAgICAgICAgICAg
IC5zdXBwcmVzc19iaW5kX2F0dHJzID0gdHJ1ZSwKKyAgICAgICAgICAgICAgIC5wcm9iZV90eXBl
ID0gUFJPQkVfRk9SQ0VfU1lOQ0hST05PVVMsCiAgICAgICAgfSwKICAgICAgICAucHJvYmUgPSBy
b2NrY2hpcF9wY2llX3Byb2JlLAogfTsKClRoYW5rcwotQW5hbmQKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
