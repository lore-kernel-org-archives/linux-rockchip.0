Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E11CECCD184
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Oct 2025 07:31:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+ORi1V1BRbuWotPwDpnXmEXM1zbSCuK3BWybt+DWud4=; b=zmDRFyOws+CU4b
	m/YCaGOWKKvXyYrHbyNjKTUD9c3fKJQ9R4ayX1P7U3MAAHyLz5qt3ZlmlePddRUqmn7dtkb2W57ac
	n3ictJh8vg06HRpBa7K0b1uUsrnbWF0Rd5z4niiO04wajwQED4quhf4tmLwkxU5l51Mt6/TlZHcI7
	r7YWXbRTp44peeWXz4+ckKSTzNGuRmUyE9zwEkNjhO7JujozHuqCKhu/uCuBN1xW595G/QoS8sVXu
	IN/Zs4lYejlkU95EQTGNs4s9VAiJ/dW8FlM8aiXt/Q2/va5fyS/4JlDCuKUcYig8gPngdWguwvr3a
	8wZPXA1AOHA8g+ZbViLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9ew7-00000006y1z-0NQo;
	Fri, 17 Oct 2025 07:31:39 +0000
Received: from mail.ventrixor.pl ([91.134.88.136])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9ew4-00000006y1f-491f
	for linux-rockchip@lists.infradead.org;
	Fri, 17 Oct 2025 07:31:38 +0000
Received: by mail.ventrixor.pl (Postfix, from userid 1002)
	id 3F9B125955; Fri, 17 Oct 2025 07:31:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ventrixor.pl; s=mail;
	t=1760686285; bh=Pi9+p40l7//vLKO8DuYTv+ORJz3B9aWETGdVOxLyydc=;
	h=Date:From:To:Subject:From;
	b=beW8W3z/HwliR6x6uhXcuZg6bOw/uOSre1lBQky0MHduxiczabXwTt3QQFpTDacsl
	 WeCVzTiks+5Opay1L5gdhbsJMvUCYnHsklSXZuEXX8kyqgoY03YOegVX06ps2imz50
	 CP6pcljnR8Lic2mpI/ImtnXvZef4aw/MOiUjQelXf1GTmrCY7IqCewYRELyDkA3cmV
	 nUFlw4pCR208uKnir+mmkts7tJQiHl2idnFv+u4iFmG5q7V+gJyyU5LG3zZqb7TNOL
	 u5GDfCa7WSHwrrdlad0APL83NoCiPay/hzZS9kqGGhc+T4nkfmzjDSMqrxPH/DU1DA
	 WDwZmYSN3TRCw==
Received: by mail.ventrixor.pl for <linux-rockchip@lists.infradead.org>; Fri, 17 Oct 2025 07:31:09 GMT
Message-ID: <20251017064500-0.1.a2.290u6.0.nljdfjp4l1@ventrixor.pl>
Date: Fri, 17 Oct 2025 07:31:09 GMT
From: "Jan Adamczyk" <jan.adamczyk@ventrixor.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: Rekrutacja handlowca 
X-Mailer: mail.ventrixor.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251017_003137_289479_A184F214 
X-CRM114-Status: UNSURE (   0.98  )
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
