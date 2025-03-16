Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 172C1C28B30
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Mar 2025 05:06:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wpSivPcRXMvdEfSRTRbnr/mrxv7Qix4D+blWlmVfiOQ=; b=lZLxEH+kr6SoWt
	qBgsqAAtctw5ezS1eqHV1HhBo6J1c/Io29LKr++jFypaUgDCgCEMLGhIMOlnuVIUA+ZMX2PCpxs4/
	Elb2GkAlGiFEQ9GXG9W4sGQ9Fh+eZmuPmhK02+J3mLtzszqwobsTirI229HuCWyqCD3hSOnwWXqfI
	IpW5XfbEafuf15gY5T1TpD8fgBTNhAAtSi7nIrWh9gQdqfRTbLEMjZ4UyAOwlrnZGzPkIEKhWqme3
	l0KZwxRTuDWVFsNoxR9WSK3kWzlNlVXQ5SiG6O14XgfsHqY12kZsN2p/KPMeRO5PRQen/iNSzJFeH
	sMCieGxV6vnSuTEKk6AA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ttgCD-0000000HI1o-2EJN;
	Sun, 16 Mar 2025 05:05:57 +0000
Received: from mx1.riseup.net ([198.252.153.129])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ttgAW-0000000HHye-1iRd;
	Sun, 16 Mar 2025 05:04:13 +0000
Received: from fews01-sea.riseup.net (fews01-sea-pn.riseup.net [10.0.1.109])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx1.riseup.net (Postfix) with ESMTPS id 4ZFmGr5jwHzDqLs;
	Sun, 16 Mar 2025 05:04:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
	t=1742101445; bh=lLozEeBLlgV86HlgPg18pz4OFD1viZMm++QDeHafczU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=rATON2WrIr3NZdUK1s84wWU0dJErmcUiGbauVGOR+SWUamvwpPyoiiVIONPhngaPD
	 n+EVodYWlUjQ9MWoWA8XFnOXVsaoUxtsN/u1MT0q5Qd19agTgA+DJyuM8IKe4O5vtx
	 6gpI5T5RY6b02kDYStgsoiXbhAq8kCflfp8PYBVw=
X-Riseup-User-ID: FA07B3CEF15B9BF855EB57A064CA13396EA4C9B9044372EE883EE87E4D753941
Received: from [127.0.0.1] (localhost [127.0.0.1])
	 by fews01-sea.riseup.net (Postfix) with ESMTPSA id 4ZFmGb3mRlzJqbv;
	Sun, 16 Mar 2025 05:03:51 +0000 (UTC)
From: Dang Huynh <danct12@riseup.net>
To: joro@8bytes.org, will@kernel.org, Robin Murphy <robin.murphy@arm.com>
Cc: iommu@lists.linux.dev, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, heiko@sntech.de
Subject: Re: [PATCH 0/3] Rockchip IOMMU fixes
Date: Sun, 16 Mar 2025 05:03:43 +0000
Message-ID: <7951915.lOV4Wx5bFT@melttower>
In-Reply-To: <cover.1741886382.git.robin.murphy@arm.com>
References: <cover.1741886382.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250315_220412_545958_3E171009 
X-CRM114-Status: GOOD (  12.91  )
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

T24gVGh1cnNkYXksIE1hcmNoIDEzLCAyMDI1IDU6MzE6MDPigK9QTSBVVEMgUm9iaW4gTXVycGh5
IHdyb3RlOgo+IEhpIGFsbCwKPiAKPiBJIHdhcyBleHBlY3RpbmcgbXkgRFQgcHJvYmluZyBjaGFu
Z2UgdG8gZmx1c2ggb3V0IGlzc3VlcywgYW5kIGl0IHNlZW1zCj4gc29tZSB3ZWFrbmVzc2VzIGlu
IHJvY2tjaGlwLWlvbW11IHdlcmUgdGhlIGZpcnN0IHRvIHNob3cuIFRoZSBmaXJzdCB0d28KPiBw
YXRjaGVzIGhlcmUgZ2V0IHRoaW5ncyB3b3JraW5nIGFnYWluIGZvciBtZSBvbiBteSBSSzMzOTkg
TmFub1BDLVQ0Cj4gKHdpdGggYSBjb25zb2xlIG9uIEhETUkgZXhlcmNpc2luZyB0aGUgVk9QIE1N
VSksIHRoZSAzcmQgcGF0Y2gganVzdAo+IGZpbmlzaGVzIHRoZSBjbGVhbnVwIHNpbmNlIEkgd2Fz
IHRoZXJlIGFuZCBjb3VsZCB0ZXN0IGl0Lgo+IAo+IFRoYW5rcywKPiBSb2Jpbi4KPiAKPiBSb2Jp
biBNdXJwaHkgKDMpOgo+ICAgaW9tbXUvcm9ja2NoaXA6IEFsbG9jYXRlIHBlci1kZXZpY2UgZGF0
YSBzZW5zaWJseQo+ICAgaW9tbXUvcm9ja2NoaXA6IFJlZ2lzdGVyIGluIGEgc2Vuc2libGUgb3Jk
ZXIKPiAgIGlvbW11L3JvY2tjaGlwOiBSZXRpcmUgZ2xvYmFsIGRtYV9kZXYgd29ya2Fyb3VuZAo+
IAo+ICBkcml2ZXJzL2lvbW11L3JvY2tjaGlwLWlvbW11LmMgfCA2MSArKysrKysrKysrKysrKyst
LS0tLS0tLS0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyNiBpbnNlcnRpb25zKCspLCAz
NSBkZWxldGlvbnMoLSkKClRlc3RlZCB0aGlzIHNlcmllcyBvbiBhIFJLMzU2NiBkZXZpY2UgYW5k
IHRoaXMgZml4ZWQga2VybmVsIHBhbmljL29vcHMgb24gYm9vdCAKc2luY2UgbmV4dC0yMDI1MDMx
NC4KCkZvciB0aGUgd2hvbGUgc2VyaWVzOgoKVGVzdGVkLWJ5OiBEYW5nIEh1eW5oIDxkYW5jdDEy
QHJpc2V1cC5uZXQ+CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
