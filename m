Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13021C44507
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jul 2026 06:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MCNOGQ7vkD1XaaK/PyV7FzTb5n+eJ4MccfSqThPl31E=; b=QbzSFnirlXG1wU
	gxJcOLpHrkvYxDfi36SAyIsvskV8BDUNgigiAZZ5jy0RAmUTl9SoQ/TjxLlcJF3D36Dq+ev4oxmbh
	zhNzlYfkwvcwRfh7VRalaev/lg9sYIizlLMfV8366SvWHmqq6dsoqxqtVqex23W9T7YxwAGF8Kite
	Okmv2MoaBtBWBAL9Iv0nRr3gzswleqlGSNrvz6M4SDXrVXNLdqubyxyJFl71mD3nMcemDKHIRd4w3
	CaxjyESLxGrkFLAtD92sHJbfNf6mdBQYt4bB4EI5BDzoO5GS+nUdRzmo46Q8oYoVB+mL/XgKh+Kpe
	djXma8QijxVIwvVW6ySg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkc42-00000001Gvv-2EHD;
	Fri, 17 Jul 2026 06:28:50 +0000
Received: from mail-ej2-x03.google.com ([2a00:1450:4864:34::3])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkc3z-00000001Gux-2ta6
	for linux-rockchip@lists.infradead.org;
	Fri, 17 Jul 2026 06:28:49 +0000
Received: by mail-ej2-x03.google.com with SMTP id a640c23a62f3a-c16060ba9ecso75713066b.0
        for <linux-rockchip@lists.infradead.org>; Thu, 16 Jul 2026 23:28:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784269725; cv=none;
        d=google.com; s=arc-20260327;
        b=heP5WX6U7wfVwGZ+Oy1W/5OyevA1LB/76ejwIvUol10i4fT0ySKbD9HD8wZ/dLPPdH
         GGCjf4grDneNzjIjkAOCGBT+s1O7+Veaks3f57+MhpmbCjTsleDdhPILSas5P/BCir4T
         fygO9sn/iu8GBo/EIsaq+iaULRZJuva7E7VCcYRFtWCHT/qBqC+PD8tEjfy3AYSKVM6x
         Urk8v7a+44wYkOnqaZM0cg2K3xcDWrzkU9eNO1y+kcfPmELqiOPtxKEWxteJ0SFUynhu
         dpw1iClAf2u1ViMj/ByaCVHIQe8rep0/GtxCdpoknLL6K38v2bzAr3hIhPUVNQ0Ax9zv
         IfoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=YHiP6evwjPbQqK8L1EQutQLTUMUz7gccfKbMReIBbck=;
        fh=UzsFAHlkxl9i9PHFGRqECDdo3hIUWoRVg8xDVbtL6FU=;
        b=jfMOu+srtOFzAISVjh+36dvnihPNXHC8qpQO5BGF0QgdIq7jwqk4JJ6MwM/dyxv76t
         QVEm9H+jyRZN+S8W+0X2c/J1B7UxP6yJnB3qh6CTaRuvp933yFHgPm1pHhHADWDqrrsZ
         c5mZMVOt1ardL189CfSUJZqTFWyEKwzdGH6HyOv0ovSD6zcQMHFM6asZ3sYDs/WXwxGG
         telkioCRXmhXCOeBzX0G4vUaeeuYUrcW5iirgXcDRTvTbHT2/SQxeR1My2xKg3NvLNEN
         t8QhoX5VrzMV0Ykqrp9q1d7Ct4nZAKhKUspp5IAJEaIJDy9j+fU8geddCZLTpUjVoqzM
         I1CQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784269725; x=1784874525; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=YHiP6evwjPbQqK8L1EQutQLTUMUz7gccfKbMReIBbck=;
        b=HoC/QJU73DCk8cRwYLBPqp8UpawDnB7IRU93/9my55DUgoxAKjI8eTlPyJnyYpnao4
         xuoyKDrGXClxXiLYPgcPQK8oamU4xy1pSrSVzxzrydtBADQT16gVmYdy+jaUfLP6B1xs
         WPKUG+uL7RKvDRoqGm25JLXzYPas3D1lD4Te/7dxsEUrpdGkaz2qNFrO2RGjdZPWG1LG
         9/PSHoIiduFxToc/wLptH5o61FLwSHx12FphLoVVo7ZgNke7w5b594wwjZrrRUSnnP3i
         bPpxVDpjlkdO7A85v2S8eUJdepLNhpXg1uOCsW5VYdVssoIbQV+4s5S1ehk4/BjS+UfM
         izwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784269725; x=1784874525;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=YHiP6evwjPbQqK8L1EQutQLTUMUz7gccfKbMReIBbck=;
        b=Cde6CTgGXLm0FknRkCv8YrFyr2RGno2/5ptexu9kmuZ82mj8dVgTCyQ0ZeQJNGjAAw
         +kqMtoe5tp4BxYOX45t65kg4udIMeqjuIv7nnVggERmzbs24ZfbDXZDZb690WD1oY1YN
         /TUcjVVmw0ZGdZ9e2K9yA287xNG+8tP1qd1ggs7t52BD6DuIY22dK2VsXcgT/9uwnhSH
         7+jBxi7/g/dAE/jPOsRK9BZu34t7bwKiLpTVcymi7x194sDhBqFZ50CA3sOPekaIyXOc
         24zhr/GHA1F4+hQjxn/KjT+4UVCq8ysZNI80bMKvb/+i0IS8akBXUkpJIDDkK/0wI2/d
         LXcg==
X-Forwarded-Encrypted: i=1; AHgh+RrVnMmx+eV/vwUOdDtpLdqTeHa/pWzxgiUKPCfFbruT0236BleL8VNofqSDTmBerHmqFRBzlyl0eHkOCW8eAw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzysprev4dfzOs8rct0lxNOVEjvxNZYPnUt1IFrYa8WsDtmUjPM
	LSQI0JQdGhgAHBxr8SXddS7ftl/Mo0621M7NZ6yUJnrn61jCeVXR0nlR29tCqXEJTQF43hgf4Z7
	c5fnmHX+TYGtV+H+nWFbP3gwYcSDiaUw=
X-Gm-Gg: AfdE7cnlNk9I1u5lPBnnB1kZ/MjNkiaoz4KmIrHRWW9mVUPtco92uPlZrU4wgADgmkl
	yj6VXen+3kTfvI6kbFJWz2K0SeQP0xN5xXlEVJOqYL46F0C+6k9B8llG9C+ZyE4uOfvB5gFHYtb
	+p5IVxPc6ZJ0WazM83LbZx0KYX8my8/bboGpFLPwad2q2dnltQr3lMGBgme/9DlEzhuRXOqDBll
	Ntp74/8B0JS55YrvN9Rh4+Txj+nn7WiPApiW9RCs/udxdeszdFxlJVXyJvhgizd
X-Received: by 2002:a17:907:c248:b0:c0d:7c31:26a9 with SMTP id
 a640c23a62f3a-c16b4002edbmr59028266b.2.1784269724589; Thu, 16 Jul 2026
 23:28:44 -0700 (PDT)
MIME-Version: 1.0
References: <20260714191341.690906-1-coiaprant@gmail.com> <20260714191341.690906-7-coiaprant@gmail.com>
 <464cbdf3-2e9e-43ea-b30a-75b3d1b8a188@lunn.ch> <CALj3r0jdkDEjpO+7NOTGs+wgukKvD=fzFn4ewpurxxPswCE5GA@mail.gmail.com>
 <000c01dd1593$2ac0b0f0$804212d0$@trustnetic.com>
In-Reply-To: <000c01dd1593$2ac0b0f0$804212d0$@trustnetic.com>
From: Coia Prant <coiaprant@gmail.com>
Date: Fri, 17 Jul 2026 14:28:33 +0800
X-Gm-Features: AUfX_myHBcwddy6Oo5pOOK0tb7eS6ZkIgRUXXggid3ZrYcHNKgmGXLOcuUDQTlg
Message-ID: <CALj3r0hH=mF+8oVbisoECYo6HRuSdfSt_nuhFunHowyPsw2srQ@mail.gmail.com>
Subject: Re: [RFC PATCH 06/10] net: pcs: xpcs: improve SGMII AN state handling
 for Rockchip RK3568
To: Jiawen Wu <jiawenwu@trustnetic.com>
Cc: Andrew Lunn <andrew@lunn.ch>, kuba@kernel.org, davem@davemloft.net, 
	edumazet@google.com, pabeni@redhat.com, andrew+netdev@lunn.ch, 
	robh@kernel.org, krzk+dt@kernel.org, heiko@sntech.de, netdev@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, 
	Mengyuan Lou <mengyuanlou@net-swift.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260716_232847_767677_8A50F1B2 
X-CRM114-Status: GOOD (  46.74  )
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

Smlhd2VuIFd1IDxqaWF3ZW53dUB0cnVzdG5ldGljLmNvbT4g5LqOMjAyNuW5tDfmnIgxN+aXpeWR
qOS6lCAxMDoyM+WGmemBk++8mgo+Cj4gT24gV2VkLCBKdWwgMTUsIDIwMjYgNzowNSBBTSwgQ29p
YSBQcmFudCB3cm90ZToKPiA+IEFuZHJldyBMdW5uIDxhbmRyZXdAbHVubi5jaD4g5LqOMjAyNuW5
tDfmnIgxNeaXpeWRqOS4iSAwNjo0NOWGmemBk++8mgo+ID4gPgo+ID4gPiBPbiBXZWQsIEp1bCAx
NSwgMjAyNiBhdCAwMzowODozNEFNICswODAwLCBDb2lhIFByYW50IHdyb3RlOgo+ID4gPiA+IENv
bW1pdCAyYTIyYjdhZTJmYTMgKCJuZXQ6IHBjczogeHBjczogYWRhcHQgV2FuZ3h1biBOSUNzIGZv
ciBTR01JSSBtb2RlIikKPiA+ID4KPiA+ID4gWW91IGRvIG5vdCBhcHBlYXIgdG8gQ2M6IHRoZSBX
YW5neHVuIE5JQyBwZW9wbGUuIEl0IHdvdWxkIGJlIGdvb2QgdG8KPiA+ID4gaGF2ZSB0aGVyZSBj
b21tZW50cyBvbiB0aGlzIGNoYW5nZS4KPiA+Cj4gPiBJIGFwb2xvZ2l6ZTsgdGhlIG91dHB1dCBm
cm9tIGdldF9tYWludGFpbmVyLnBsIGlzIHZlcnkgbG9uZy4gSeKAmXZlCj4gPiBoZWFyZCB0aGF0
IGhhdmluZyB0b28gbWFueSByZWNpcGllbnRzIGNhbiBjYXVzZSB0aGUgUEFUQ0ggdG8gYmUKPiA+
IHJlamVjdGVkIGJ5IHRoZSBMS01MIG1haWwgc2VydmVyLgo+ID4KPiA+IEkgaGF2ZSBhZGRlZCBX
YW5neHVuIG1haW50YWluZXIgKEppYXdlbiBXdSA8amlhd2Vud3VAdHJ1c3RuZXRpYy5jb20+Cj4g
PiBhbmQgTWVuZ3l1YW4gTG91IDxtZW5neXVhbmxvdUBuZXQtc3dpZnQuY29tPikgdG8gdGhlIEND
IGxpc3QuCj4gPgo+ID4gPiA+IEZpeGVzOiAyYTIyYjdhZTJmYTMgKCJuZXQ6IHBjczogeHBjczog
YWRhcHQgV2FuZ3h1biBOSUNzIGZvciBTR01JSSBtb2RlIikKPiA+ID4gPiBTaWduZWQtb2ZmLWJ5
OiBDb2lhIFByYW50IDxjb2lhcHJhbnRAZ21haWwuY29tPgo+ID4gPgo+ID4gPiBQbGVhc2UgZG9u
J3QgbWl4IGZpeGVkIGFuZCBuZXcgY29kZS4gSXMgdGhpcyBhIHJlYWwgZml4PyBTaG91bGQgaXQg
YmUKPiA+ID4gYmFjayBwb3J0ZWQgdG8gc3RhYmxlPwo+ID4KPiA+IEkgYW0gbm90IHN1cmUgaWYg
dGhpcyBpcyBhIHNwZWNpZmljIGNoYXJhY3RlcmlzdGljIG9mIFdhbmd4dW4gTklDcywgYXMKPiA+
IEkgZG8gbm90IGhhdmUgYW55IGF2YWlsYWJsZSBmb3IgdGVzdGluZy4KPiA+Cj4gPiBUaGUgYmVo
YXZpb3Igb2YgdGhlIFJvY2tjaGlwIERXIFhQQ1MgSVAgY29yZSBtYXRjaGVzIHdoYXQgaXMgZGVz
Y3JpYmVkCj4gPiBpbiB0aGUgY29tbWl0IG1lc3NhZ2UgKGV2ZW4gdGhvdWdoIHBoeWxpbmsgYnJp
bmdzIHRoZSBsaW5rIHRvIGRvd24KPiA+IGJhc2VkIG9uIHRoZSBwaHlkZXYgbGluayBzdGF0dXMp
Lgo+ID4KPiA+IFRoaXMgYXBwZWFycyB0byBiZSBhIGJ1ZyAoYXQgbGVhc3Qgb24gUm9ja2NoaXAg
cGxhdGZvcm1zKSBvciBXYW5neHVuCj4gPiBOSUNzIGZlYXR1cmVzLgo+ID4KPiA+IEhvd2V2ZXIs
IEkgY2Fubm90IGNvbmZpcm0gd2hldGhlciBXYW5neHVuIE5JQ3MgYmVoYXZlIHRoZSBzYW1lIHdh
eS4KPiA+IFRoZXJlZm9yZSwgSSBoYXZlIGtlcHQgdGhlaXIgY29kZSBhcyBpcyBmb3Igbm93Lgo+
ID4KPiA+IENvdWxkIGEgV2FuZ3h1biBOSUNzIG1haW50YWluZXIgcHJvdmlkZSBzb21lIGZlZWRi
YWNrIGJhc2VkIG9uIHRlc3Rpbmc/Cj4gPgo+ID4gSWYgd2UgY2FuIGNvbmZpcm0gdGhhdCB0aGlz
IGlzIGluZGVlZCBhIGJ1ZywgSSBjYW4gc3VibWl0IGEgc2VwYXJhdGUgZml4Lgo+ID4KPiA+IEkg
d291bGQgZ3JlYXRseSBhcHByZWNpYXRlIGl0Lgo+ID4KPiA+IFRoYW5rcy4KPgo+IEhpIENvaWEs
Cj4KPiBJIGhhdmUgdGVzdGVkIHRoaXMgcGF0Y2ggYW5kIGl0IHdvcmtzIG9uIFdhbmd4dW4gTklD
cywgdGhhbmtzLgo+Cj4gVGhlIGNvbW1pdCAyYTIyYjdhZTJmYTMgKCJuZXQ6IHBjczogeHBjczog
YWRhcHQgV2FuZ3h1biBOSUNzIGZvciBTR01JSSBtb2RlIikKPiBpcyB0b28gbG9uZyBhZ28gZm9y
IG1lIHRvIHJlY2FsbCBleGFjdGx5IHdoYXQgdGhhdCB0aG91Z2h0IHdhcy4KPgo+IFRoZSBsb2cg
c2hvd3M6Cj4KPiAiT24gdGhpcyBkZXZpY2UsIENMMzdfQU5TR01fU1RTIChiaXRbNDoxXSBvZiBW
Ul9NSUlfQU5fSU5UUl9TVFMpIGluZGljYXRlcwo+IHRoZSBzdGF0dXMgcmVjZWl2ZWQgZnJvbSBy
ZW1vdGUgbGluayBkdXJpbmcgdGhlIGF1dG8tbmVnb3RpYXRpb24sIGFuZAo+IHNlbGYtY2xlYXIg
YWZ0ZXIgdGhlIGF1dG8tbmVnb3RpYXRpb24gaXMgY29tcGxldGUuCj4gTWVhbndoaWxlLCBDTDM3
X0FOQ01QTFRfSU5UUiB3aWxsIGJlIHNldCB0byAxLCB0byBpbmRpY2F0ZSBDTDM3IEFOIGlzCj4g
Y29tcGxldGUuIFNvIGFkZCBhbm90aGVyIHdheSB0byBnZXQgdGhlIHN0YXRlIGZvciBDTDM3IFNH
TUlJLiIKPgo+IEkgdHJpZWQgdG8gcmVwcm9kdWNlIHRoaXMgaXNzdWUsIGJ1dCBpdCBkaWRuJ3Qg
c2VlbSB0byBleGlzdC4KPiBJbiB0aGUgY3VycmVudCBsb2dpYzoKPgo+IGxpbmsgdXAgLT4gcmVh
ZCBzdGF0dXMgZnJvbSBDTDM3X0FOU0dNX1NUUyAtPiBDTDM3X0FOQ01QTFRfSU5UUiBub3QgY2xl
YXIKPiBsaW5rIGRvd24gLT4gcmVhZCBzdGF0dXMgZnJvbSBCTUNSIC0+IENMMzdfQU5DTVBMVF9J
TlRSIGNsZWFyCj4KPiBJdCBhbHNvIHdvcmtzLCBhbHRob3VnaCBDTDM3X0FOQ01QTFRfSU5UUiBp
cyBub3QgY2xlYXJlZCBldmVyeSB0aW1lLCBhbmQgQU4KPiByZXN0YXJ0IGlzIGFic2VudC4gQnV0
IEJNQ1IgbG9va3MgbGlrZSBpdCBvbmx5IHdhbnRzIHRvIGJlIHJldHVybiBhcyAwLCBpdCBpcwo+
IHdlaXJkLgo+Cj4gU28gSSB0aGluayBXYW5neHVuIE5JQ3MgYWxzbyBjYW4gYmUgYXBwbGllZCB0
byBnZW5lcmFsIGNvZGUgYXMgd2VsbCwgZm9yCj4gZ2V0dGluZyBzdGF0ZSBpbiBDMzcgU0dNSUkg
bW9kZS4KCkhpIEppYXdlbiwKClRoYW5rcyBzbyBtdWNoIGZvciB0ZXN0aW5nIGFuZCBjb25maXJt
aW5nIHRoYXQgdGhlIHBhdGNoIHdvcmtzIG9uIFdhbmd4dW4KTklDcy4gVGhhdCdzIGEgaHVnZSBy
ZWxpZWYuCgpZb3UncmUgcmlnaHQgdG8gYXNrIGFib3V0IHRoZSBDTDM3X0FOQ01QTFRfSU5UUiBj
bGVhciBhbmQgQU5SRVNUQVJULiBMZXQKbWUgZXhwbGFpbiB3aGF0IEkgb2JzZXJ2ZWQgb24gUksz
NTY4LgoKVGhlIGtleSBkaWZmZXJlbmNlIGlzIHRoYXQgb24gUkszNTY4J3MgWFBDUywgd2UncmUg
d29ya2luZyBpbiB0aGUgTUFDCnNpZGUgKFRYX0NPTkZJRyA9IDApLCB3aGVyZWFzIG9uIFdhbmd4
dW4gaXQgc2VlbXMgeW91J3JlIGluIHRoZSBQSFkgc2lkZQooVFhfQ09ORklHID0gMSkuIFRoaXMg
aXMgYmFzZWQgb24gdGhlIGNvbW1pdCAyYTIyYjdhZTJmYTMgd2hlcmUgeW91IHNldApUWF9DT05G
SUcgPSAxLgoKPiBIb3dldmVyLCBJIGFtIHdvbmRlcmluZyB3aGV0aGVyIENMMzdfQU5DTVBMVF9J
TlRSIGNsZWFyIGFuZCBBTlJFU1RBUlQgYXJlCj4gbmVjZXNzYXJ5LgoKT24gdGhlIFJLMzU2OCAo
TUFDIHNpZGUpLCBhY2NvcmRpbmcgdG8gdGhlIERlc2lnbldhcmUgWFBDUyBUUk0sIHRoZQpoYXJk
d2FyZSBiZWhhdmlvciBpcyBhcyBmb2xsb3dzOgoKLSBBZnRlciBhIHNvZnR3YXJlIHJlc2V0IChC
TUNSX1JFU0VUKSwgQU5FTkFCTEUgaXMgYXV0b21hdGljYWxseSBzZXQgdG8gMQogICh0aGUgaGFy
ZHdhcmUgcmVzZXQgdmFsdWUpLiBTbyBhdXRvLW5lZ290aWF0aW9uIHN0YXJ0cyBhdXRvbWF0aWNh
bGx5LgoKLSBXaGVuIHRoZSBsaW5rIGlzIHVwLCBDTDM3X0FOU0dNX1NUUyBjb250YWlucyB0aGUg
bmVnb3RpYXRlZCBzcGVlZC9kdXBsZXgKICBhbmQgdGhlIGxpbmsgc3RhdHVzLgoKLSBXaGVuIHRo
ZSBsaW5rIGdvZXMgZG93biwgQ0wzN19BTlNHTV9TVFMgYmVjb21lcyBhbGwgemVybywgYnV0CiAg
Q0wzN19BTkNNUExUX0lOVFIgcmVtYWlucyBzZXQgdG8gMS4KCi0gQ3J1Y2lhbGx5LCB0aGUgUENT
IGRvZXMgKipub3QqKiBhdXRvbWF0aWNhbGx5IHJlc3RhcnQgQU4gd2hlbiB0aGUgbGluawogIGNv
bWVzIGJhY2sgdXAuIFdpdGhvdXQgYW4gZXhwbGljaXQgQU5SRVNUQVJULCB0aGUgbGluayBzdGF5
cyBkb3duCiAgZm9yZXZlci4KClNvIG9uIFJLMzU2OCwgdGhlIEFOUkVTVEFSVCBpcyBtYW5kYXRv
cnkgdG8gcmVjb3ZlciBmcm9tIGEgbGluay1kb3duCmV2ZW50LiBXaXRob3V0IGl0LCB0aGUgbGlu
ayBuZXZlciBjb21lcyBiYWNrIHVwIGFmdGVyIGEgY2FibGUgZGlzY29ubmVjdC4KCkluIG15IGN1
cnJlbnQgbG9naWM6CgoxLiBJZiBDTDM3X0FOU0dNX1NUUyBoYXMgdmFsaWQgc3BlZWQvZHVwbGV4
IGJpdHMsIHJlcG9ydCB0aGUgbGluayBhcyB1cAogICBhbmQgcmV0dXJuLgoKMi4gSWYgQ0wzN19B
TlNHTV9TVFMgaXMgemVybyBidXQgQ0wzN19BTkNNUExUX0lOVFIgaXMgc2V0LCB0aGUgbGluayBp
cwogICBkb3duLiBXZSBjbGVhciB0aGUgaW50ZXJydXB0IGFuZCBpc3N1ZSBhbiBBTlJFU1RBUlQg
dG8gc3RhcnQgYSBuZXcKICAgbmVnb3RpYXRpb24uCgpUaGlzIHdvcmtzIHJlbGlhYmx5IG9uIFJL
MzU2OCBpbiBTR01JSSBNQUMgc2lkZSBtb2RlLgoKU2luY2UgeW91IGNvbmZpcm1lZCB0aGF0IHRo
ZSBnZW5lcmFsIGNvZGUgcGF0aCBhbHNvIHdvcmtzIG9uIFdhbmd4dW4sIEkKd29uZGVyOiBkb2Vz
IHRoZSBBTlJFU1RBUlQgYWxzbyB3b3JrIG9uIHlvdXIgc2lkZT8gSWYgeWVzLCBwZXJoYXBzIHdl
IGNhbgptYWtlIHRoaXMgdGhlIGNvbW1vbiBwYXRoIGZvciBhbGwgaGFyZHdhcmUsIG5vdCBqdXN0
IFJLMzU2OC4KCklmIHlvdSBjYW4gdGVzdCB0aGUgQU5SRVNUQVJUIGxvZ2ljIG9uIFdhbmd4dW4g
YW5kIGl0IHdvcmtzLCBJJ2QgYmUgaGFwcHkKdG8gc3VibWl0IGEgc3RhbmRhbG9uZSBmaXggdGhh
dCBtYWtlcyB0aGlzIHRoZSBjb21tb24gY29kZSBwYXRoLgoKT3RoZXJ3aXNlLCB0aGUgY3VycmVu
dCBhcHByb2FjaCAoc2tpcHBpbmcgdGhlIEFOUkVTVEFSVCB0cmlnZ2VyIG9uCldhbmd4dW4gTklD
cyBpbiBjMzdfc2dtaWlfZ2V0X3N0YXRlKSByZW1haW5zIHNhZmUuCgpJZiB5b3UncmUgY29tZm9y
dGFibGUgd2l0aCB0aGUgY2hhbmdlLCBJJ2QgYXBwcmVjaWF0ZSBpdCBpZiB5b3UgY291bGQgYWRk
CnlvdXIgVGVzdGVkLWJ5IHRhZyB0byB0aGUgY29tbWl0LiBJJ2xsIGFsc28gbWFrZSBzdXJlIHRv
IGluY2x1ZGUgeW91IG9uCnRoZSBDQyBsaXN0IGZvciBhbnkgZnV0dXJlIHJldmlzaW9ucyBvciBy
ZWxhdGVkIGZpeGVzLgoKVGhhbmtzIGFnYWluIGZvciB0ZXN0aW5nIQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
