Return-Path: <SRS0=NTKj=DH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFE3CC4727E
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2020 17:23:35 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 32419206F4
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2020 17:23:34 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="bpgaDoxl";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="byIxjrxA"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 32419206F4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wGRrV8eOFteK56jafnQbppoAkkKf5Ycj3IeUJ+NJ5zQ=; b=bpgaDoxluNGNfMke+QazyMJJN
	cSAeRgXa7E3q/iMoZVnlkcon40gJqXwHWmORrQ/PtE5YC0bPo6VzbsRqnEf1gGqAr7SztgnKVu31C
	OzoRCBx1WGUUEl8hYwug062EWYpnDbgxJMhisZLtxuzDFBwe/2NoXnrqPh83epNN0R33Msq4PaQYT
	R7KikC9Lb6nXLuksbq/tt9vzKfqjeNR4g5tcaav1EdDWFTJsVis95BOTeCweJlRZZOnQSO5Ox9Hlz
	rDMGGz17ONQntK8YhPM54lTz2Bw1G0hGPfLwIYmnnQhqY3RQWWkMWQ86UKsohFQMQeOPLOB7Q9Tsp
	PA4Yoewmw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kNfpA-0005d9-Mm; Wed, 30 Sep 2020 17:23:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNfp6-0005bs-Ti; Wed, 30 Sep 2020 17:23:25 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 63992207C3;
 Wed, 30 Sep 2020 17:23:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1601486603;
 bh=8a6SbQSDDDVVdYYlKR/FBtkSry+2l0Ey8N1zPkLZdNQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=byIxjrxAeXmtNUM1CoZLHrJAJ74QDa2UJwYIaMDuDomv00UUHVD07EDgjbyRMesQi
 DPDuiOxS9U62ca8hKdQUBTsrwy+CDoXCvw4YdU3DS/Up/mv2ADjxgbl9ZMw5QvByXQ
 hf+4CJVZHSrCVt7QtAEcPZxT+KYzatZisScwrfqo=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1kNfp3-00GDws-J7; Wed, 30 Sep 2020 18:23:21 +0100
MIME-Version: 1.0
Date: Wed, 30 Sep 2020 18:23:21 +0100
From: Marc Zyngier <maz@kernel.org>
To: =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>
Subject: Re: [PATCH v2] of: address: Work around missing device_type property
 in pcie nodes
In-Reply-To: <20200930162722.GF1516931@oden.dyn.berto.se>
References: <20200819094255.474565-1-maz@kernel.org>
 <20200930162722.GF1516931@oden.dyn.berto.se>
User-Agent: Roundcube Webmail/1.4.8
Message-ID: <977f60f07a4cb5c59f0e5f8a9dfb3993@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: niklas.soderlund@ragnatech.se, devicetree@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 robh@kernel.org, lorenzo.pieralisi@arm.com, heiko@sntech.de,
 frowand.list@gmail.com, shawn.lin@rock-chips.com, jiaxun.yang@flygoat.com,
 robh+dt@kernel.org, bhelgaas@google.com, kernel-team@android.com,
 samuel@dionne-riel.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200930_132325_033088_18FA7CAA 
X-CRM114-Status: GOOD (  23.01  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 samuel@dionne-riel.com, linux-pci@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>, linux-kernel@vger.kernel.org,
 Jiaxun Yang <jiaxun.yang@flygoat.com>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 kernel-team@android.com, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgTmlrbGFzLAoKWysgU2FtdWVsXQoKT24gMjAyMC0wOS0zMCAxNzoyNywgTmlrbGFzIFPDtmRl
cmx1bmQgd3JvdGU6Cj4gSGkgTWFyYywKPiAKPiBJJ20gYWZyYWlkIHRoaXMgY29tbWl0IGJyZWFr
cyBib290aW5nIG15IHJrMzM5OSBkZXZpY2UuCj4gCj4gSSBiaXNlY3RlZCB0aGUgcHJvYmxlbSB0
byB0aGlzIHBhdGNoIG1lcmdlZCBhcyBbMV0uIEknbSB0ZXN0aW5nIG9uIGEKPiBTY2FybGV0IGRl
dmljZSBhbmQgSSdtIHVzaW5nIHRoZSB1bm1vZGlmaWVkIHVwc3RyZWFtCj4gcmszMzk5LWdydS1z
Y2FybGV0LWlueC5kdGIgZm9yIG15IHRlc3RzLgo+IAo+IFRoZSBwcm9ibGVtIEknbSBleHBlcmll
bmNlIGlzIGEgYmxhY2sgc2NyZWVuIGFmdGVyIHRoZSBib290bG9hZGVyIGFuZAo+IHRoZSBkZXZp
Y2UgaXMgbm9uZSByZXNwb25zaXZlIG92ZXIgdGhlIG5ldHdvcmsuIEkgaGF2ZSBubyBzZXJpYWwg
Cj4gY29uc29sZQo+IHRvIHRoaXMgZGV2aWNlIHNvIEknbSBhZnJhaWQgSSBjYW4ndCB0ZWxsIHlv
dSBpZiB0aGVyZSBpcyBhbnl0aGluZwo+IHVzZWZ1bCBvbiB0byBhaWQgZGVidWdnaW5nIHRoZXJl
Lgo+IAo+IElmIEkgdHJ5IHRvIHRlc3Qgb25lIGNvbW1pdCBlYXJsaWVyIFsyXSB0aGUgc3lzdGVt
IGJvb3RzIGFzIGV4cGVjdGVkIAo+IGFuZAo+IGV2ZXJ5dGhpbmcgd29ya3MgYXMgaXQgZGlkIGZv
ciBtZSBpbiB2NS44IGFuZCBlYXJsaWVyLiBJIGhhdmUgd29ya2VkCj4gbGl0dGxlIHdpdGggdGhp
cyBkZXZpY2UgYW5kIGhhdmUgbm8gY2x1ZSBhYm91dCB3aGF0IGlzIHJlYWxseSBvbiB0aGUgCj4g
UENJCj4gYnVzcy4gQnV0IHJ1bm5pbmcgZnJvbSBbMl0gSSBoYXZlIHRoaXMgaW5mbyBhYm91dCBQ
Q0kgaWYgaXQncyBoZWxwZnVsLAo+IHBsZWFzZSBhc2sgaWYgc29tZXRoaW5ncyBtaXNzaW5nLgoK
UGxlYXNlIHNlZSB0aGUgdGhyZWFkIGF0IFsxXS4gVGhlIHByb2JsZW0gd2FzIHJlcG9ydGVkIGEg
ZmV3IHdlZWtzIGJhY2sKYnkgU2FtdWVsLCBhbmQgSSB3YXMgZXhwZWN0aW5nIFJvYiBhbmQgTG9y
ZW56byB0byBwdXNoIGEgZml4IGZvciB0aGlzLgoKUm9iLCBMb3JlbnpvLCBhbnkgdXBkYXRlIG9u
IHRoaXM/CgogICAgICAgICBNLgoKWzFdIApodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1k
ZXZpY2V0cmVlLzIwMjAwODI5MTY0OTIwLjdkMjhlMDFhQERVRkZNQU4vCi0tIApKYXp6IGlzIG5v
dCBkZWFkLiBJdCBqdXN0IHNtZWxscyBmdW5ueS4uLgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
