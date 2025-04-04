Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68396C36010
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Apr 2025 08:26:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+ORi1V1BRbuWotPwDpnXmEXM1zbSCuK3BWybt+DWud4=; b=4epsfD+4IFQJQw
	r9nmCP4lKbdTf9+9lnXy55UYe/zP3vFZc3cwJg7Tnz/Fmv+EpaTbkjoOlsX/6miLOx/NMNOvwdije
	EArSnh1ua2DXOHQccIokx2lqwUOqzP7TvcXIDCtWt/CI4uWQHwkG19VAZjHAnXA+X6G+waUkMuWkj
	8bwsDdXAJzwnGyCVWb3p4dg5ezQ/X1199YSq1a8W8jz797Ng/cWxqfllLlBT8BPChMYWhbYydg1QK
	/OtHIxQjLElsdNX1etygMQmLh85+821h09gsJ17hc/ZfrQzwSGoeXN9r9eBDWwZKhTAEXWEavJEB0
	sqF9uxG2j6mpx/nHvmuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0cNM-0000000B8Gh-2WQ3;
	Fri, 04 Apr 2025 08:26:08 +0000
Received: from mail.ventrixor.pl ([91.134.88.136])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0cNK-0000000B8G6-22Ia
	for linux-rockchip@lists.infradead.org;
	Fri, 04 Apr 2025 08:26:07 +0000
Received: by mail.ventrixor.pl (Postfix, from userid 1002)
	id DCA90263AB; Fri,  4 Apr 2025 08:23:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ventrixor.pl; s=mail;
	t=1743755044; bh=Pi9+p40l7//vLKO8DuYTv+ORJz3B9aWETGdVOxLyydc=;
	h=Date:From:To:Subject:From;
	b=Bzx7jqDRXTrbui1Wp12tm92v15u1gFCdobL9/NwGBU/9SVMRIYdlZFXIgMc87QcjX
	 yvDkejMZrV7Vg6pWagOXC9tGKarxKfSRIqm2/x5bqcL4j0U2PLKFBQ438gnXsoxQxe
	 0cvKfsLbtlAgzef+l2TiItrlmCMi2qe9VGdzEdKk3Q1N65tS6+ght8X9uPclQKuDHk
	 WmOkCZ9FkLmxRUy/gZHY3gX7Je+KXryO3cfE0t83qwc2gvDbXgdYSWMjj4wuZ9sG19
	 JfDVzt8IQ2HOUhAgwUYHCbgdXHXq1wcmiiPh+tjZp87NBHBVe+Rt60kWxTh6UFv0y8
	 FgflUyliiB0Bw==
Received: by mail.ventrixor.pl for <linux-rockchip@lists.infradead.org>; Fri,  4 Apr 2025 08:23:13 GMT
Message-ID: <20250404074859-0.1.6c.1c8he.0.un3o0aceln@ventrixor.pl>
Date: Fri,  4 Apr 2025 08:23:13 GMT
From: "Jan Adamczyk" <jan.adamczyk@ventrixor.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: Rekrutacja handlowca 
X-Mailer: mail.ventrixor.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250404_012606_660299_8F4147B4 
X-CRM114-Status: UNSURE (   1.50  )
X-CRM114-Notice: Please train this message.
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

V2l0YW0sCgpDenkgbWFqxIUgUGHFhHN0d2EgYWt0dWFsbmllIHBvdHJ6ZWJ5IHogemFrcmVzdSBy
ZWtydXRhY2ppIG9zw7NiIGRvIGR6aWHFgnUgaGFuZGxvd2Vnbz8gCgpQb21hZ2FteSBza3V0ZWN6
bmllIHJla3J1dG93YcSHIG9zb2J5IG5hIHN0YW5vd2lza2EgUHJ6ZWRzdGF3aWNpZWxhIEhhbmRs
b3dlZ28sIFNhbGVzIE1hbmFnZXJhLCBhIHRha8W8ZSBLYWRyeSBNYW5hZ2Vyc2tpZWogdyBvYnN6
YXJ6ZSBzcHJ6ZWRhxbx5LgoKQ3p5IG1vxbxlbXkgcG9yb3ptYXdpYcSHPyAKCgpQb3pkcmF3aWFt
CkphbiBBZGFtY3p5awoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
