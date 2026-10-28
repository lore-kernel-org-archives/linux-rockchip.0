Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD4DF606A31E
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Oct 2026 05:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Jae9aRt0;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=iav.lv header.i=@iav.lv header.a=rsa-sha256 header.s=zoho header.b=DNFiuBby
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=qVPMlD9dlnS3KiaKtvZQQhBHePKCQSIqlnEuKSBGo5g=; b=Jae9aRt0qimt2+9INZlW1UdzeQ
	Gw3AdoMDVzfMl6dj/6Q5bR1EqtFooKYfMZ8htPfwzuEcLfMB9TbRPgRz4svlOY/PSdIqJtykEdePu
	+tHlgbrMH+2vIXQejG3YO66/0O2gX1acZ4oWCLbGpVQ8F0LkPkL2Zt6MVojvelyI7BZZJMhcyYJke
	u3yC10GWVxSbWq+OMUxNiXQVxYd+f/u9xaskKV3UYPRA3yzYBwHDW8aMJH7tVLmQKN7H8lBKXn4e/
	KsOQJ+Xl5Q9NyfhtIaOBOzgg78/BRipVlF/cII0qjcV/vI4RFm+FDv0ijHI2AzL0j9iqULUVFLYxz
	aKwhlUIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLvtV-00000006LYu-2GMv;
	Wed, 28 Oct 2026 05:08:13 +0000
Received: from sender-op-o15.zoho.eu ([136.143.169.15])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLvtT-00000006LWD-1ij2;
	Wed, 28 Oct 2026 05:08:13 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1793164081; cv=none; 
	d=zohomail.eu; s=zohoarc; 
	b=YxtRGSao/0ViiHH7k1+F6DOeV5dS4qbM78G3BRBGRbpY2aNDK+8x1iBguAIrgdmMFm8DvdVkOcu5tIf5bXYvxuuQZ6f0q5zqc+yc4Bwh7hmNgjzFl0NVIVVGvKyY+pPlTsXMsmzVEBfuHvyOxciFTq3Kp5XcgzZWTQjI/w/jJ6U=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.eu; s=zohoarc; 
	t=1793164081; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=pU1kLn/e7S5gHH4LSe4wUg2uRsyVInrWCYyeusC2FTU=; 
	b=bq7gza7UWXBfvlXnk7Zq1SIGhbbphHJrUCOV99cSnVozr5gmbhNi83812xQI9nEjaWz+ayVCbjZE8wvbWTJXogcZtCbJDmGuZs+jvHE8Jea3dvUtdReiU41BQWxN0DgNlGBRYdVjIc/60CBNqgWzK+hyib44wwZWtEu6CLvA9wM=
ARC-Authentication-Results: i=1; mx.zohomail.eu;
	dkim=pass  header.i=iav.lv;
	spf=pass  smtp.mailfrom=iav@iav.lv;
	dmarc=pass header.from=<iav@iav.lv>
DKIM-Signature: a=rsa-sha256; b=DNFiuBbyry0dtEQCG82ninBQPHF20PnwvMwpfxS4EBju8nxnKxWPUVb3+QeqB7fEFtxwBoXVGL/Q5pimjSFB9T8EMdzxXa8Se4NR78rGHnq7LXEyIySrTXW9oG30AIDxE3Buw0BtGstcxBfBHy5AjL8Oyz04Pn/KEda3X55mhx4=; c=relaxed/relaxed; s=zoho; d=iav.lv; v=1; bh=pU1kLn/e7S5gHH4LSe4wUg2uRsyVInrWCYyeusC2FTU=; h=Content-Description:Content-ID:Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:List-Subscribe:List-Post:List-Owner:List-Id:List-Archive:List-Help:List-Unsubscribe:MIME-Version:Message-ID:Resent-Sender:Resent-Cc:Resent-Date:Resent-To:Reply-To:Resent-Message-ID:Resent-From:Sender:Subject:To:Date:From:Message-Id:Reply-To:Subject:To:Cc;
Received: by smtp.zoho.eu with SMTPS id 1793164080508149.31550770494346;
	Wed, 28 Oct 2026 06:08:00 +0100 (CET)
From: Igor Velkov <iav@iav.lv>
To: Enrique Hernández Bello <ehbello@gmail.com>
Cc: shawn.lin@rock-chips.com, lpieralisi@kernel.org, kwilczynski@kernel.org, mani@kernel.org, bhelgaas@google.com, robh@kernel.org, heiko@sntech.de, dlemoal@kernel.org, linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, manivannan.sadhasivam@oss.qualcomm.com, iav@iav.lv
Subject: Re: [PATCH v2] PCI: rockchip: Skip the Tpvperl wait when power is already valid
Date: Wed, 28 Oct 2026 07:10:00 +0200
Message-ID: <20261028-h64-tpvperl-ab-skip@iav.lv>
In-Reply-To: <20261028005548.2399155-1-ehbello@gmail.com>
References: <20260911211559.207990-1-ehbello@gmail.com> <179196286749.38040.5597453767131590054.b4-reply@b4> <20261016-h64-pcie-resume-tpvperl@iav.lv> <20261028005548.2399155-1-ehbello@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_220811_726058_7CA1F06E 
X-CRM114-Status: UNSURE (   6.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gV2VkLCAyOCBPY3QgMjAyNiAwMDo1NTo0OCArMDAwMCwgRW5yaXF1ZSBIZXJuw6FuZGV6IEJl
bGxvIHdyb3RlOgo+IElmIHlvdXIgZmlyc3QgcmVzdW1lIHRoZW4gc3Vydml2ZXMsIHRoZSByZXN1
bWUgaHVuayBpcyB0aGUgcHJvYmxlbQo+IGFuZCBJIHdpbGwgZHJvcCBpdAoKU2luY2UgdGhlIG5l
eHQgdmVyc2lvbiBrZWVwcyB0aGUgZnVsbCB3YWl0IG9uIHJlc3VtZSwgaXQgbm8gbG9uZ2VyCmNo
YW5nZXMgdGhlIHJlc3VtZSBwYXRoLCBzbyBJJ2xsIHNraXAgdGhlIEEvQiBhbmQgdGVzdCB0aGF0
IHZlcnNpb24Kb24gSGVsaW9zNjQgaW5zdGVhZDogYm9vdHMgcGx1cyBzMmlkbGUgY3ljbGVzLCBy
ZXN1bHRzIGluIHJlcGx5IHRvIGl0LgoKVGhlIHByb2JlIFNFcnJvciBpcyBpbiB0aGUgY292ZXIg
bGV0dGVyIG9mIG15IHJvY2tjaGlwLWhvc3QgUkZDOgpodHRwczovL2xvcmUua2VybmVsLm9yZy9y
LzIwMjYxMDI0LXJvY2tjaGlwLXBjaWUtcmVzdW1lLXYxLTAtNThlNTRhNWNmNWYxQGlhdi5sdgoK
SWdvcgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
