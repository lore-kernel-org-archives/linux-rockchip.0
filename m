Return-Path: <SRS0=wwH4=JM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B374C433B4
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Apr 2021 08:11:37 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D065461103
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Apr 2021 08:11:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D065461103
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Subject:Cc:To:
	From:Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QLYMAlwDJ7XYusC2xcA2FEpSq6tWIy3T+1z/BOVRXrI=; b=cCPoeCqr+q5c9CxFAoQLeu2H4
	TCbrsV7sYVPnKOJwTJI7FPWwjED6C4e4GQkeKi/MuGYje8n5D4VXqkcRsOAXrFnrANlcKG2rMekUc
	kISttw1Jjc9dxHppmb5/K4I8D2aUgJLOqqmY3U+5FgYqfDQAYW1vVJNcE2gkOSRsy72aLwpe1F5zb
	ojGEIU3Dmr375uYcE0jX93WWpMM+59AOiwALzAA79RRIreBEaiwyXfs2ThPu5x6YzqA3OA1eqv/ZV
	zjt3+qAMyyBFWwzLGommdURkJQrZm7EsT4Npani3V0cpFuHNUQg8Tv1DwZ4sSa6hPZFvIzljDgnUd
	0dj1L/QoQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWx62-00FJiu-UN; Thu, 15 Apr 2021 08:11:31 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWx60-00FJiS-8u
 for linux-rockchip@desiato.infradead.org; Thu, 15 Apr 2021 08:11:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Subject:Cc:To:From:
 Message-ID:Date:Sender:Reply-To:Content-ID:Content-Description;
 bh=HneHjtov3gKUz/vUk60aemDZVwoLzbBvVFpbSHUseS4=; b=FUMDrooKlwgNR3C77Co4aWYElO
 fzJephnoXvz5Ui70jtNPKmuP07AXySfjNrBBtBgyZ4M7iorXxB6kXTxT8zLWKpGRyOIuJQIPY+6ps
 3J+u8aSfI7qW9fqyQNB+WL8jK5HQ4QXM6d/jW5YzEM3qRQjBtwYJzzXl0NVZGkzmjJovx23QK3DGu
 RXb0B1Ay5C9iihqi1z6bEgLg8pHwZGSV8tXctUAwsJZq4Bpy3kDX0qCxdyIsEgDkpT/Nacax8tBmG
 6RU4Vi2kPzsQLGCcyBVFjUxG4WoQ1ZxNbBfrOirXv+Lu5NZhLX6PiYClaKrrd3q8PXsxX7uhJ/4AX
 h5FklJjQ==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWx5x-008MRz-NT
 for linux-rockchip@lists.infradead.org; Thu, 15 Apr 2021 08:11:26 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F3B6960FEA;
 Thu, 15 Apr 2021 08:11:24 +0000 (UTC)
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.misterjones.org)
 by disco-boy.misterjones.org with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94)
 (envelope-from <maz@kernel.org>)
 id 1lWx5t-007agq-Ny; Thu, 15 Apr 2021 09:11:21 +0100
Date: Thu, 15 Apr 2021 09:11:21 +0100
Message-ID: <87k0p4m0gm.wl-maz@kernel.org>
From: Marc Zyngier <maz@kernel.org>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: Peter Geis <pgwipeout@gmail.com>,	Thomas Gleixner <tglx@linutronix.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,	Linux
 Kernel Mailing List <linux-kernel@vger.kernel.org>,	Heiko =?UTF-8?B?U3Q=?=
 =?UTF-8?B?w7xibmVy?= <heiko@sntech.de>
Subject: Re: [RFC] ITS fails to allocate on rk3568/rk3566
In-Reply-To: <678e9950-dd85-abb2-a104-07a4db1fad49@rock-chips.com>
References: <CAMdYzYrQ5f-mv_VmTq_CRf9tR=j3mwRpKHNLmPFgCF9whsGFRw@mail.gmail.com>
 <871rbeo7wf.wl-maz@kernel.org>
 <CAMdYzYruPyiT89FrbJhuV=c36PyRwZ7sT45abnv8rTv85AKRow@mail.gmail.com>
 <87y2dmmggt.wl-maz@kernel.org>
 <CAMdYzYrNa_wJa9mvBkhDrvdNaDugR9Y=LEnbcVHxjxJS0UFcMg@mail.gmail.com>
 <87tuoambdb.wl-maz@kernel.org>
 <CAMdYzYo2+h+=39cw1t=11HUih-O+NUs4hhNaPbrU6si-AbqNiA@mail.gmail.com>
 <871rbdt4tu.wl-maz@kernel.org>
 <678e9950-dd85-abb2-a104-07a4db1fad49@rock-chips.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?UTF-8?B?R29qxY0=?=) APEL-LB/10.8 EasyPG/1.0.0 Emacs/27.1
 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: kever.yang@rock-chips.com, pgwipeout@gmail.com,
 tglx@linutronix.de, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, heiko@sntech.de
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210415_011125_820052_FA30494F 
X-CRM114-Status: GOOD (  18.39  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgS2V2ZXIsCgpPbiBUaHUsIDE1IEFwciAyMDIxIDA4OjI0OjMzICswMTAwLApLZXZlciBZYW5n
IDxrZXZlci55YW5nQHJvY2stY2hpcHMuY29tPiB3cm90ZToKPiAKPiBIaSBNYXJjLCBQZXRlciwK
PiAKPiDCoMKgwqAgUkszNTZ4IEdJQyBoYXMgdHdvIGlzc3VlczoKPiAKPiAxLiBHSUMgb25seSBz
dXBwb3J0IDMyYml0IGFkZHJlc3Mgd2hpbGUgcmszNTZ4IHN1cHBvcnRzIDhHQiBERFIgU0RSQU0s
Cj4gc28gd2UgdXNlIFpPTkVfRE1BMzIgdG8gZml4IHRoaXMgaXNzdWU7CgpXaGF0IHRyYW5zYWN0
aW9ucyBkb2VzIHRoaXMgYWZmZWN0IGV4YWN0bHk/IE9ubHkgc29tZSBJVFMgdGFibGVzPyBPcgph
bGwgb2YgdGhlbSwgaW5jbHVkaW5nIHRoZSBjb21tYW5kIHF1ZXVlPyBXaGF0IGFib3V0IHRoZSBj
b25maWd1cmF0aW9uCmFuZCBwZW5kaW5nIHRhYmxlcyBhc3NvY2lhdGVkIHdpdGggdGhlIHJlZGlz
dHJpYnV0b3JzPwoKPiAyLiBHSUMgdmVyc2lvbiBpcyByMXA2LTAwcmVsMCwgUkszNTZ4IGludGVy
Y29ubmVjdCBkb2VzIG5vdCBzdXBwb3J0Cj4gR0lDIGFuZCBDUFUgc25vb3AgdG8gZWFjaCBvdGhl
ciwgaGVuY2UgdGhlIEdJQyBkb2VzIG5vdCBzdXBwb3J0IHRoZQo+IHNoYXJlYWJpbGl0eSBmZWF0
dXJlLsKgIFRoZSByZWFkIG9mIHJlZ2lzdGVyIHZhbHVlIGZvciBzaGFyZWFiaWxpdHnCoAo+IGZl
YXR1cmUgZG9lcyBub3QgcmV0dXJuIGFzIGV4cGVjdCBpbiBHSUNSIGFuZCBHSVRTLCBzbyB3ZSBo
YXZlIHRvCj4gd29ya2Fyb3VuZCBmb3IgaXQuCgpIb3cgYWJvdXQgdGhlIGNhY2hlYWJpbGl0eSBh
dHRyaWJ1dGU/IENhbiB5b3UgcGxlYXNlIHByb3ZpZGUgdGhlIGV4YWN0CnNldCBvZiBhdHRyaWJ1
dGVzIHRoYXQgdGhpcyBzeXN0ZW0gYWN0dWFsbHkgc3VwcG9ydHMgZm9yIGVhY2ggb2YgdGhlCklU
UyBhbmQgcmVkaXN0cmlidXRvciBiYXNlIHJlZ2lzdGVycz8KCkFsc28sIHBsZWFzZSBwcm92aWRl
IGVycmF0YSBudW1iZXJzIGZvciB0aGVzZSB0d28gaXNzdWVzIHNvIHRoYXQgd2UKY2FuIHByb3Bl
cmx5IGRvY3VtZW50IHRoZW0gYW5kIHRyYWNrIHRoZSB3b3JrYXJvdW5kcy4KClRoYW5rcywKCglN
LgoKLS0gCldpdGhvdXQgZGV2aWF0aW9uIGZyb20gdGhlIG5vcm0sIHByb2dyZXNzIGlzIG5vdCBw
b3NzaWJsZS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
