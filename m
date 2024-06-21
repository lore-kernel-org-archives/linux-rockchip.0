Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA564C2BBCA
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jun 2024 12:44:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UCiHc5OLWhQ4PJjadJV8uBNh2ECWNn5XmNPnZIYJhmQ=; b=tm/UVioruDiCwA
	ebCUVOGMlxFzPUw6tpPG/42UPKOHvVP7ebpljhwGG6Mm5hEjL+tJHSMe2Xst21UfjIu9RV5BT8B0I
	zYpKZbz1mPZWscaqTzIEXmbBuK1JboIGYwjGHSqHxHlnzg0ppG6GezSLc5LMqJ+crSOcF01hWrxDF
	j9rxFWH3Y+dIVeJo2SrevGsNRmHNyZYrzh5TNIOJ7JHU3QnyDblplAAbuN/AG5YRAXa4kfzRUJknQ
	2+d09uXr/soEYiEIEzOzCDRFljrnYogSb1gc3pJdCvrnvsX34xgQLbgg4/68sUaNF3Uq1BLxyYsGb
	/OXyd82n7nPVUUCdPLJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKdd6-00000009CXY-1oLd;
	Fri, 21 Jun 2024 12:44:36 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKdd1-00000009CTY-1pA8
	for linux-rockchip@lists.infradead.org;
	Fri, 21 Jun 2024 12:44:33 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 45LCiNRo043480;
	Fri, 21 Jun 2024 07:44:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1718973863;
	bh=Jh2gGIgiK54xCiQ7E9NcsKRUuNvsvP4Zw6O2vyFH2Ls=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=Depd7IvbhLujjaPt7z6/ykXyHnmllcrTP7ato+QP+pKE07qqUjA9nsGr2BA8R5JRV
	 9XH5WENweoDT4ePMVXss0olFLGmya0SUNvgBMi8mf+pL10oE1PJrqCuvvLrIKELHe2
	 iX21K4xnlVHQf0m/KQ8zPLyfulqi0r082Xcj03hg=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 45LCiNoG008737
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 21 Jun 2024 07:44:23 -0500
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 21
 Jun 2024 07:44:23 -0500
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 21 Jun 2024 07:44:23 -0500
Received: from [172.24.227.193] (devarsht.dhcp.ti.com [172.24.227.193] (may be forged))
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 45LCiGwf097047;
	Fri, 21 Jun 2024 07:44:17 -0500
Message-ID: <8dda9d0c-3154-a7fd-1233-ca5be59639de@ti.com>
Date: Fri, 21 Jun 2024 18:14:16 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v14 2/6] media: imagination: Add E5010 JPEG Encoder driver
Content-Language: en-US
To: Sebastian Fricke <sebastian.fricke@collabora.com>
CC: <mchehab@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
        <conor+dt@kernel.org>, <hverkuil-cisco@xs4all.nl>,
        <linux-media@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
        <benjamin.gaignard@collabora.com>, <laurent.pinchart@ideasonboard.com>,
        <praneeth@ti.com>, <nm@ti.com>, <vigneshr@ti.com>, <a-bhatia1@ti.com>,
        <j-luthra@ti.com>, <b-brnich@ti.com>, <detheridge@ti.com>,
        <p-mantena@ti.com>, <vijayp@ti.com>, <andrzej.p@collabora.com>,
        <nicolas@ndufresne.ca>, <afd@ti.com>
References: <20240618193651.2771478-1-devarsht@ti.com>
 <20240618193651.2771478-3-devarsht@ti.com>
 <20240621123715.enqtdqxskdkod5ze@basti-XPS-13-9310>
From: Devarsh Thakkar <devarsht@ti.com>
In-Reply-To: <20240621123715.enqtdqxskdkod5ze@basti-XPS-13-9310>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240621_054431_585445_1B3417A9 
X-CRM114-Status: GOOD (  11.03  )
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

SGkgU2ViYXN0aWFuCgpPbiAyMS8wNi8yNCAxODowNywgU2ViYXN0aWFuIEZyaWNrZSB3cm90ZToK
PiBIZXkgRGV2YXJzaCwKPiAKPiBUaGlzIGRvZXNuJ3QgY29tcGlsZSB3aXRob3V0IGVycm9ycyBm
b3IgbWUsIGN1cmlvdXMsIGl0IHByb2JhYmx5IGRpZAo+IGNvbXBpbGUgd2l0aG91dCBwcm9ibGVt
cyBmb3IgeW91IHJpZ2h0Pwo+IAo+IGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vaW1hZ2luYXRpb24v
ZTUwMTAtanBlZy1lbmMuYzoxNjIyOjE5OiBlcnJvcjoKPiBpbml0aWFsaXphdGlvbiBvZiDigJhp
bnQgKCopKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKinigJkgZnJvbSBpbmNvbXBhdGlibGUKPiBw
b2ludGVyIHR5cGUg4oCYdm9pZCAoKikoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqKeKAmQo+IFst
V2Vycm9yPWluY29tcGF0aWJsZS1wb2ludGVyLXR5cGVzXQo+IMKgMTYyMiB8wqDCoMKgwqDCoMKg
wqDCoCAucmVtb3ZlID0gZTUwMTBfcmVtb3ZlLAo+IMKgwqDCoMKgwqAgfMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBefn5+fn5+fn5+fn4KPiBkcml2ZXJzL21lZGlhL3BsYXRm
b3JtL2ltYWdpbmF0aW9uL2U1MDEwLWpwZWctZW5jLmM6MTYyMjoxOTogbm90ZTogKG5lYXIKPiBp
bml0aWFsaXphdGlvbiBmb3Ig4oCYZTUwMTBfZHJpdmVyLnJlbW92ZeKAmSkKPiBjYzE6IHNvbWUg
d2FybmluZ3MgYmVpbmcgdHJlYXRlZCBhcyBlcnJvcnMKPiAKClllcyBJIHRoaW5rIGl0IGRpZCBj
b21waWxlIGZpbmUgZm9yIG1lLgpEaWQgeW91IHRyeSB0aGlzIG9uIHRpcCBvZiBsaW51eC1uZXh0
ID8KCkFzIG1lbnRpb25lZCBpbiBjaGFuZ2Vsb2csIHRoZXJlIHdhcyB1cGRhdGUgaW4gcGxhdGZv
cm0gZHJpdmVyIGZvciByZXR1cm4gdHlwZQpvZiByZW1vdmUgZnVuY3Rpb24gd2hpY2ggZ290IGNo
YW5nZWQgdG8gdm9pZCByZXR1cm4gdHlwZS4gUGxlYXNlIGNoZWNrIGlmIHlvdQpoYXZlIHRoaXMg
cGF0Y2ggWzFdIGluIHlvdXIgdHJlZSB3aGljaCBnb3QgcmVjZW50bHkgbWVyZ2VkLgoKS2luZGx5
IGxldCBtZSBrbm93IGlmIHlvdSBzdGlsbCBmYWNlIGFueSBpc3N1ZXMuCgpbMV06Cmh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL2FsbC8yMDI0MDUyNzA4MzQxNi4xMTc3MTA2LTItdS5rbGVpbmUta29l
bmlnQHBlbmd1dHJvbml4LmRlLwoKUmVnYXJkcwpEZXZhcnNoCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
