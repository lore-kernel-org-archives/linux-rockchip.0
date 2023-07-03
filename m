Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F4DDEB64DC
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Jul 2023 13:00:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OwYu+VYI2NykyVfrW3WZnq+ApMsO5WrF+gdFsrNiS6Y=; b=VdWbp2lCRVETck
	4kTIKYps7pj3kBj6av3Icn4qLXMlXE8vGEuQl87Dgncpi2uRaEq3YJLymQYbzjZFjVpcEtj5YGuv/
	2bgbUTY85QBVlnEPpCBits3mocFulF43Fjebd5tb16aCfK3q4XtaCRuIkAkRo6135ZNdG6Rquvq52
	FTcWpMmDPROgcnQwP+dUeF8hoUNNbWW7FxAGkMRsPZHkQpttK8yRJzvXi/pl8b0W3pqV2CFSqp9dx
	aSdjs8UQL8zxt731WKm7BlAJ9U58daeqtAikm7gsOEaXKoGIGkYRQ0RllhW15V2ryn2j5oC83RAh0
	sIHw3UHf9xxN8Bm8FDpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGJAE-00AZN3-0C;
	Mon, 03 Jul 2023 13:00:22 +0000
Received: from mail-yb1-xb29.google.com ([2607:f8b0:4864:20::b29])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGJAB-00AZM7-1x;
	Mon, 03 Jul 2023 13:00:20 +0000
Received: by mail-yb1-xb29.google.com with SMTP id 3f1490d57ef6-bfe6ea01ff5so4916682276.3;
        Mon, 03 Jul 2023 06:00:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688389216; x=1690981216;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DWZCk4tqQMrEU/bNO08A1lLrQO0SfKho5kRVavBCHFQ=;
        b=IIq10T5h1i9DEIb/p3dlx4mW3Ye/hUp7D6R8pnmuFFPxStHsKRoaOtmZ+7t35ofv6P
         qcckLdUz1UIfcFl+DE0kmW8eE/2wbylV39IRZz+lfwkAZmdJ6GokZFXHPb/F3yu7wCZ+
         dUUQsVoIcKir3f1moSULoo176olkcVNam5vLlH7WVrLHTBULp8NY4g9DxIETK3w07l7A
         HSyvCRIa1SK/urPI+j1jPLdZjo6Kac6CFsObMuMICgzTYafylsEGndpgNQlRULozW/ow
         YIGW+15gxh6vi5yLnBRY2XK2VkLIwUX4WhbyU6esqRa5/xHYbjpfs6EXuzYnOqnFsf57
         qpEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688389216; x=1690981216;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DWZCk4tqQMrEU/bNO08A1lLrQO0SfKho5kRVavBCHFQ=;
        b=h+HTiZe/SM6biQkIhufo5hhBqUzpdl58tXHfvTrnk0L7qyZEK2pOmo0JrWJe8xq4SG
         /TGZpeUkEEOaJjVjb38rK49GDTIIwWT777EZjq69JQrCxRwQwosNHryCF2M+/+xyPU9S
         keae9HIVm2LPCNRLJow6OL8WUjrjiu3/V+Qy0T+rgM/diB9l7s1wBgz7nxwP9Jk7STm5
         P8xiK//FbnwD8C1ZTA0vJJo6/0rDOolE53zz0uD+ckjBmx3+gtki1yOjSi/6OXZyArbF
         Rwcp6gxAflPBUn1JHt2+9pW0zyVshyHyFk8l+sxuXuVCviiJojdDx8AXyOSqFEnjpGug
         v51w==
X-Gm-Message-State: ABy/qLYfjiSTrHJ3uznjSWyRDo3+FDpuUWHCpGUigmpkyxRSKnEEZqJn
	2pSlCMA7t4PcKQeLW5IbmalEekCXq5qbip0uunk=
X-Google-Smtp-Source: APBJJlEyUalFHbDy8iouZMbeTnSd6Nn5AoQV7EsG7RnFxiFHLGqQKAcbMK0SmOmujRKno9FLDdvZscQ3t0gkTZzj6xk=
X-Received: by 2002:a25:d888:0:b0:bc4:f495:699f with SMTP id
 p130-20020a25d888000000b00bc4f495699fmr10304687ybg.8.1688389215880; Mon, 03
 Jul 2023 06:00:15 -0700 (PDT)
MIME-Version: 1.0
References: <20230703085845.2052008-1-rick.wertenbroek@gmail.com>
 <997819c6-0798-e2f9-b94b-fedfbab7fdd8@arm.com> <20230703120825.GA2375438@rocinante>
In-Reply-To: <20230703120825.GA2375438@rocinante>
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Date: Mon, 3 Jul 2023 14:59:39 +0200
Message-ID: <CAAEEuhpP+9ofqDqxL7NEfw5C5KTn-z=kQktgo_3d_w=w1pc+Eg@mail.gmail.com>
Subject: Re: [PATCH v2] PCI: rockchip: Use 64-bit mask on MSI 64-bit PCI address
To: =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>
Cc: Robin Murphy <robin.murphy@arm.com>, alberto.dassatti@heig-vd.ch, dlemoal@kernel.org, 
	Dan Carpenter <dan.carpenter@linaro.org>, stable@vger.kernel.org, 
	Shawn Lin <shawn.lin@rock-chips.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
	linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230703_060019_668285_C7610C4A 
X-CRM114-Status: GOOD (  14.31  )
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

T24gTW9uLCBKdWwgMywgMjAyMyBhdCAyOjA44oCvUE0gS3J6eXN6dG9mIFdpbGN6ecWEc2tpIDxr
d0BsaW51eC5jb20+IHdyb3RlOgo+Cj4gSGVsbG8sCj4KPiA+ID4gQSAzMi1iaXQgbWFzayB3YXMg
dXNlZCBvbiB0aGUgNjQtYml0IFBDSSBhZGRyZXNzIHVzZWQgZm9yIG1hcHBpbmcgTVNJcy4KPiA+
ID4gVGhpcyB3b3VsZCByZXN1bHQgaW4gdGhlIHVwcGVyIDMyIGJpdHMgYmVpbmcgdW5pbnRlbnRp
b25hbGx5IHplcm9lZCBhbmQKPiA+ID4gTVNJcyBnZXR0aW5nIG1hcHBlZCB0byBpbmNvcnJlY3Qg
UENJIGFkZHJlc3NlcyBpZiB0aGUgYWRkcmVzcyBoYWQgYW55Cj4gPiA+IG9mIHRoZSB1cHBlciBi
aXRzIHNldC4KPiA+ID4KPiA+ID4gUmVwbGFjZSAzMi1iaXQgbWFzayBieSBhcHByb3ByaWF0ZSA2
NC1iaXQgbWFzay4KPgo+IFsuLi5dCj4gPiA+ICsjZGVmaW5lIFBDSUVfQUREUl9NQVNLICAgICAg
ICAgICAgICAgICAgICAgR0VOTUFTSyg2MywgTUlOX0FYSV9BRERSX0JJVFNfUEFTU0VEKQo+ID4K
PiA+IE5pdDogdGhpcyBwcm9iYWJseSB3YW50cyB0byBiZSBHRU5NQVNLX1VMTCgpLCBvdGhlcndp
c2UgaXQgbWlnaHQgdGhyb3cgYQo+ID4gd2FybmluZyBpZiBjb21waWxlLXRlc3RlZCBmb3IgMzIt
Yml0Lgo+Cj4gSSBjYW4gY2hhbmdlIHRoaXMgdG8gR0VOTUFTS19VTEwoKSB3aGVuIEkgYXBwbHkg
dGhlIHBhdGNoLiAgVW5sZXNzIFJpY2sKPiB3YW50cyB0byBzZW5kIHYzIC0gZWl0aGVyIHdheSB3
b3VsZCBiZSBmaW5lLiA6KQo+Cj4gICAgICAgICBLcnp5c3p0b2YKClRoYW5rIHlvdSwgSSdkIGFw
cHJlY2lhdGUgdGhhdCByYXRoZXIgdGhhbiBzZW5kaW5nIGEgdjMuCgpSZWdhcmRzLApSaWNrCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
