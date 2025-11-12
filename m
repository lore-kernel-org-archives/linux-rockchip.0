Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D518CCFA1A
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Nov 2025 08:03:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zRWp865bXB3JaGZd9yps9S7zOo/K7zRdUj5FkXswhW0=; b=nqp2770QBkb1AC
	CMOjoSmwhVWs5+eWk+xJcZoeSRMrK3RsV/ib1oq+N1EZ5BIOmrig0Bpkbv8rYHbQ+hZ4ZJ0UdFXqN
	vMiKPF39AeHdoRDDpA1JOb1ADB/AItMYFJgcibk7IY4aITvGAW02jZKUIwdS2NYyyLWBhoHGrP+vZ
	Z/p112cSGkC3Y3oCNMjsfwIhCPWKHyp/DeWoVE+NuPJyA94/tf8sGBIxdkXwUsDm/ZFEFkdCL9OX2
	NSwtSJxT9s+rmvH/5PT/QArmXavKlq0OvHaHvM82M4UAdJYdHTdM7JMxbu7LWXv3bwIn+a+vFGCmp
	m+5DBwZ+HJLwoKuU0nvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJ5pH-00000008J2u-0p87;
	Wed, 12 Nov 2025 08:03:35 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJ5pF-00000008J2C-2IIh
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Nov 2025 08:03:34 +0000
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-298250d7769so3359925ad.0
        for <linux-rockchip@lists.infradead.org>; Wed, 12 Nov 2025 00:03:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762934612; x=1763539412; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IOQ8gbWYR/8pIKJHHt25CkEHl+HOhDt/PI+YYG3jAcU=;
        b=Xm4uSmPIy67p50Q2BwF/nusZz5S3fT67DxnAq9AxUVQ2c+6aqrqHEBumLMk8miYCVa
         iPoaO3IYPRdvawxDC1rs9HY4W6oDdErfQld8pWsmb9uvFbIHlc9pP/Nu0ph8bV+r4rFr
         NL3QLXlsgAtcITCtm/Mh/EZ23GJrccuRLjbYThR2vExY9brX4ay4KgbWzjaNMXcv87Wo
         pJqCjd8PfMj+Em3oPTXQyfTiD68CxabPeSd6KN5fArsaYe55nD7tBe7a47cSgvkLFtZt
         CnmBhA8GmJhVIH/y7jmTkYJT1GIm8ozgDNG5UKUFXg5qkS+qRa6izxrC/uhKVHOAhe/E
         Nj/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762934612; x=1763539412;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IOQ8gbWYR/8pIKJHHt25CkEHl+HOhDt/PI+YYG3jAcU=;
        b=WFehkEVwYe7QIrdu0kRp8kgN3u5rl/4wBx+hJL6z0Cxk9Ahr33dmy1cAQUe+3w7dSC
         TvmcwDjJMWR85m52RyehNTvdqwAoywduAYi/a4Su7cOHTbOiHsnWzasl1dYUXm1gmMBW
         SMpcOh6Nw/V+DXYVzkj61j+oIr/pfiHM3+AQPp7+HZT7JYOd6qW0O6PMNNypARl1J0Oq
         4BrE8LS6riKvCu6qsIXf7uI2irM7xrxPxy5LHkfCktS2k3MzrDp+2FwUokutav/4WYa7
         Kfll6XOvWXAKOgdSlLDnyA0IqTSqnIh/WcoNYOEBzIDQnTcM3nmIN440K/2WxWhvlDOc
         /Wng==
X-Forwarded-Encrypted: i=1; AJvYcCWPMDvesBaKpRfKyX/5DCoALm+Pm+XHa5ckN9BMKXl/kWQxR8In1RjWL2veB2iURYjZo5nFaeX4YiKd46R9yA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxIypIZe+heVNdTlUIHmtF9I93T4W/jta45kzUP2TDJX8Bl2QHZ
	YpsKUskyZnnfarxxssuEtLKag4uAFRBcVXdg2H3cH09kcMs1G34syPW9
X-Gm-Gg: ASbGncuvStMgwtNJwBmw8p14TQtgq+NmJwnGDLfC0j2wZ6iu2jlQYBfXpwhTHhU3wf5
	oh6gG3MaG7t1Iibn6p1slpoOFtaNSK7lPXgwQ4laK4X9fWD1DBl7iRHA3RE9gLlzQzENgGyL+4h
	AtybCpCC8XL89OkS52RpoihIwj+2pUyOGMUuwF+WZAKTYjUwPgMnqdnrORn9neDGr9ArP5rHHbs
	T2uR06QfCT3wb9GPo1cUghaRJtGXN7ZbK0FYgBFShoqvLHkFgXEwC06MsqSb9znw05+jNWD8IT4
	YOuaIPh8q/GAcT7SKGdmXM3dJvCf3s2mHgVScRhJsdTbtlu/pD7tLA5j9VJfwEI+D7OvaBIqClt
	1t47n4Tgq+HFf1I1dPv6iibEKMSCNxaffkaGzLdpA58xPNREoo6mcICzfiHEPZAcpqe8U8C50Pg
	==
X-Google-Smtp-Source: AGHT+IH+DPJMbQNSOGKgtCR72ZONR0AxugfjM0MLXwjdzOTvsq+YFq9t1EqGEJ/mZYCDIKH8bOXU0g==
X-Received: by 2002:a17:902:e78b:b0:269:8d1b:40c3 with SMTP id d9443c01a7336-2984ed2b619mr28705965ad.12.1762934611984;
        Wed, 12 Nov 2025 00:03:31 -0800 (PST)
Received: from geday ([2804:7f2:800b:7c80::dead:c001])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2984dbdac10sm21286815ad.22.2025.11.12.00.03.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 00:03:31 -0800 (PST)
Date: Wed, 12 Nov 2025 05:03:19 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: =?utf-8?B?5byg54Oo?= <ye.zhang@rock-chips.com>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pci <linux-pci@vger.kernel.org>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	linux-kernel <linux-kernel@vger.kernel.org>,
	devicetree <devicetree@vger.kernel.org>,
	krzk+dt <krzk+dt@kernel.org>, conor+dt <conor+dt@kernel.org>,
	Johan Jonker <jbx6244@gmail.com>,
	linux-rockchip <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH] arm64: dts: rockchip: align bindings to PCIe spec
Message-ID: <aRQ_R90S8T82th45@geday>
References: <4b5ffcccfef2a61838aa563521672a171acb27b2.1762321976.git.geraldogabriel@gmail.com>
 <ba120577-42da-424d-8102-9d085c1494c8@rock-chips.com>
 <aQsIXcQzeYop6a0B@geday>
 <67b605b0-7046-448a-bc9b-d3ac56333809@rock-chips.com>
 <aQ1c7ZDycxiOIy8Y@geday>
 <d9e257bd-806c-48b4-bb22-f1342e9fc15a@rock-chips.com>
 <aRLEbfsmXnGwyigS@geday>
 <AGsAmwCFJj0ZQ4vKzrqC84rs.3.1762847224180.Hmail.ye.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AGsAmwCFJj0ZQ4vKzrqC84rs.3.1762847224180.Hmail.ye.zhang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251112_000333_592516_4E6E6880 
X-CRM114-Status: GOOD (  16.34  )
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

T24gVHVlLCBOb3YgMTEsIDIwMjUgYXQgMDM6NDc6MDRQTSArMDgwMCwg5byg54OoIHdyb3RlOgo+
IEhpIEdlcmFsZG8sCj4gCj4gSW4gc3RhbmRhcmQgR1BJTyBvcGVyYXRpb25zLCB0aGUgdHlwaWNh
bCBwcmFjdGljZSBpcyB0byBzZXQgdGhlIG91dHB1dCBsZXZlbCBmaXJzdCBiZWZvcmUgY29uZmln
dXJpbmcgdGhlIGRpcmVjdGlvbiBhcyBvdXRwdXQuIFRoaXMgYXBwcm9hY2ggaGVscHMgYXZvaWQg
b3V0cHV0dGluZyBhbiB1bmNlcnRhaW4gdm9sdGFnZSBsZXZlbCBhdCB0aGUgaW5zdGFudCB3aGVu
IHRoZSBkaXJlY3Rpb24gc3dpdGNoZXMgZnJvbSBpbnB1dCB0byBvdXRwdXQuCgpUaGFua3MgZm9y
IHRoZSBleHBsYW5hdGlvbiBZZSBaaGFuZywgaXQgbWFrZXMgc2Vuc2UgdG8gbWUuIEl0IGF2b2lk
cyB0aGUKcGluIHRvIG5vdCBiZSBmbG9hdGluZyBzbyB0byBzcGVhay4gSSBrZXB0IGhhbW1lcmlu
ZyBhdCB0aGlzIHByb2JsZW0sIGJ5CnRoZSB3YXkgaXMgUENJZSBQRVJTVCMgc2lkZS1iYW5kIHNp
Z25hbCByZWZ1c2luZyB0byBjby1vcGVyYXRlIGFuZApmYWlsaW5nIFBDSWUgaW5pdGlhbCBsaW5r
LXRyYWluaW5nLgoKWW91J3JlIG5vdCBnb2luZyB0byBsaWtlIHRoaXM6CgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncGlvL2dwaW8tcm9ja2NoaXAuYyBiL2RyaXZlcnMvZ3Bpby9ncGlvLXJvY2tjaGlw
LmMKaW5kZXggNDcxNzRlYjNiYTc2Li5mZWEyYzU1OTkyZTggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3Bpby9ncGlvLXJvY2tjaGlwLmMKKysrIGIvZHJpdmVycy9ncGlvL2dwaW8tcm9ja2NoaXAuYwpA
QCAtMTgzLDExICsxODMsMTMgQEAgc3RhdGljIGludCByb2NrY2hpcF9ncGlvX3NldChzdHJ1Y3Qg
Z3Bpb19jaGlwICpnYywgdW5zaWduZWQgaW50IG9mZnNldCwKIAlzdHJ1Y3Qgcm9ja2NoaXBfcGlu
X2JhbmsgKmJhbmsgPSBncGlvY2hpcF9nZXRfZGF0YShnYyk7CiAJdW5zaWduZWQgbG9uZyBmbGFn
czsKIAorCXJvY2tjaGlwX2dwaW9fc2V0X2RpcmVjdGlvbihnYywgb2Zmc2V0LCB0cnVlKTsKKwog
CXJhd19zcGluX2xvY2tfaXJxc2F2ZSgmYmFuay0+c2xvY2ssIGZsYWdzKTsKIAlyb2NrY2hpcF9n
cGlvX3dyaXRlbF9iaXQoYmFuaywgb2Zmc2V0LCB2YWx1ZSwgYmFuay0+Z3Bpb19yZWdzLT5wb3J0
X2RyKTsKIAlyYXdfc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmYmFuay0+c2xvY2ssIGZsYWdzKTsK
IAotCXJldHVybiAwOworCXJldHVybiByb2NrY2hpcF9ncGlvX3NldF9kaXJlY3Rpb24oZ2MsIG9m
ZnNldCwgZmFsc2UpOwogfQogCiBzdGF0aWMgaW50IHJvY2tjaGlwX2dwaW9fZ2V0KHN0cnVjdCBn
cGlvX2NoaXAgKmdjLCB1bnNpZ25lZCBpbnQgb2Zmc2V0KQoKQnkgc2V0dGluZyBkaXJlY3Rpb24g
SU5QVVQsIHRoZW4gd3JpdGluZyBvdXQsIHRoZW4gc2V0dGluZyBPVVRQVVQgYWdhaW4KbWlyYWN1
bG91c2x5IGl0IGRvZXNuJ3QgZmFpbCBpbml0aWFsIGxpbmsgdHJhaW5pbmcsIHdpdGggbm8gb3Ro
ZXIKY2hhbmdlcyB0aGF0IGFscmVhZHkgaGF2ZSBiZWVuIHJlamVjdGVkIGJ5IFBDSSBmb2xrcyBh
bmQgU2hhd24gTGluLgoKRXZlcnl0aGluZyB3b3JrcyBhcyBleHBlY3RlZC4gSXMgdGhpcyBhbiBl
eHBsYWluYWJsZSBiZWhhdmlvdXIgYnkKUm9ja2NoaXAgR1BJTyBjb3JlPwoKVGhlIHByb2JsZW0g
SSBhbSBvYnNlcnZpbmcgaXMgdGhhdCBvbmNlIEkgc2V0IFBFUlNUIyBpdCBiZWNvbWVzCnVuc2V0
dGFibGUgYWdhaW4uIFNvIHRoYXQncyB3aHkgdGhvc2Ugb3Blbi1kcmFpbi9vcGVuLXNvdXJjZSBo
YWNrcwp3b3JrZWQgKGdwaW9saWIgd2lsbCBoYWNrIHRoZSBwdWxsIHBvbGFyaXR5IHRvIElOUFVU
KS4KClRoYW5rcywKR2VyYWxkbyBOYXNjaW1lbnRvCgo+IAo+IEFkZGl0aW9uYWxseSwgZm9yIFJv
Y2tjaGlwJ3MgR1BJTyBjb250cm9sbGVyIHNwZWNpZmljYWxseSwgc2V0dGluZyB0aGUgbGV2ZWwg
dmFsdWUgc2hvdWxkIG5vdCBiZSBhZmZlY3RlZCBieSB0aGUgZGlyZWN0aW9uIHNldHRpbmcgLSB0
aGUgZGF0YSByZWdpc3RlciB3cml0ZSBzaG91bGQgYmUgZWZmZWN0aXZlIHJlZ2FyZGxlc3Mgb2Yg
d2hldGhlciB0aGUgcGluIGlzIGNvbmZpZ3VyZWQgYXMgaW5wdXQgb3Igb3V0cHV0LgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
