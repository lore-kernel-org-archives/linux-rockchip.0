Return-Path: <SRS0=P1+Z=B2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82F8FC433DF
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Aug 2020 17:17:11 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 09A8420658
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Aug 2020 17:17:10 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="dL5YQ3he";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=tutanota.com header.i=@tutanota.com header.b="dJK0hecX"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 09A8420658
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=tutanota.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Subject:Message-ID:To:From:Date:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9h8waobf+yPzIRj0rkNHd9RClhkjxOfyisV0eXD2vUs=; b=dL5YQ3heCDJu3im0v1pHv6kqTg
	3DCqul13YUQ3Zs3N7Njhxx/asMNasXhqXGiUKY5nvuAUJwORVfWWlxtoasJE0TYExVkN4cFOLJBjz
	BlVj/52Tsvh8/Xb6uB16SWSonpqQ9zArIt34dEkEnTbg+x9I9evRJhiM+cj4MVw58Kgdub0CZKqrb
	QBGCCc/vkI0ml7eCU2p1sHr6ZgoiwYKHisLXhaMdXjHjksGDtCoPYwMrNjGlFsMQRMFBK37QJD7rN
	8vrrwWuKZqmX6qSTO/G9dfw/I1QoEZ5xFsA46sMijainFt+CPk1Hia7McR7NpzCb1Mc/3SmmRMxDz
	7fRBKmcQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k7MHF-00014Z-PE; Sun, 16 Aug 2020 17:17:01 +0000
Received: from w1.tutanota.de ([81.3.6.162])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7MHA-00013U-0i; Sun, 16 Aug 2020 17:16:57 +0000
Received: from w3.tutanota.de (unknown [192.168.1.164])
 by w1.tutanota.de (Postfix) with ESMTP id ADF43FA03C7;
 Sun, 16 Aug 2020 17:16:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1597598210; 
 s=s1; d=tutanota.com;
 h=From:From:To:To:Subject:Subject:Content-Description:Content-ID:Content-Type:Content-Type:Content-Transfer-Encoding:Content-Transfer-Encoding:Cc:Cc:Date:Date:In-Reply-To:MIME-Version:MIME-Version:Message-ID:Message-ID:Reply-To:References:Sender;
 bh=fFg+yOI86gXXhmSNLal3y6xWuCA7tvRJk3uvQWOzwvc=;
 b=dJK0hecXw7dRZq4TTfMeFTX4bwq7NRvLeLxmF7gwf09Aj/u1cRxnh72rJMt+M3Gj
 mgFaBZvdiYDhkUUnwovAWRupa1TqReN/9n1kXekRiYaTxtM8IAqED7btDhq9jdpZRu9
 6mImnu0Oo1+8AXu1e0ciKCNwRm7VoOtyxBbtnDjnR0rA1MCysXSlch8jUKocap4Qk+U
 y5fcwU0Z2wKBXmGt8BIZzTtZEON+t2BYkrjy/wdJZMoGOtzVS3wPDjkicDG5xgBofDh
 vYgKopqg5gOBK+c7RjgFXLWxZUnpxhyiFdAxaHyaNJJ0Mm1+aCZtLaZEbPgZrt9i312
 g6wYPDrVeA==
Date: Sun, 16 Aug 2020 19:16:50 +0200 (CEST)
From: Cameron Nemo <cnemo@tutanota.com>
To: Devicetree <devicetree@vger.kernel.org>,
 Linux Arm Kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Rockchip <linux-rockchip@lists.infradead.org>,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
Message-ID: <MEsGWB_--3-2@tutanota.com>
Subject: [PATCH 1/3] usb: dwc3: of-simple: Add compatible for rk3328
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200816_131656_363854_5CEF596A 
X-CRM114-Status: GOOD (  11.70  )
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
Cc: balbi@kernel.org, robh+dt@kernel.org, Heiko <heiko@sntech.de>,
 gregkh@linuxfoundation.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QWRkIGEgY29tcGF0aWJsZSB0byBiZSBob29rZWQgaW50byBieSB0aGUgUm9ja2NoaXAgcmszMzI4
IGRldmljZSB0cmVlLgoKVGhlIHJrMzM5OSBjb21wYXRpYmxlIGNhbm5vdCBiZSByZXVzZWQgYmVj
YXVzZSB0aGUgcmszMzI4IFNvQ3MgbWF5CnJlcXVpcmUgYSBzcGVjaWFsaXplZCBkcml2ZXIgaW4g
dGhlIGZ1dHVyZSwgYW5kIG9sZCBkZXZpY2UgdHJlZXMgbXVzdApyZW1haW4gY29tbXBhdGlibGUg
d2l0aCBuZXdlciBrZXJuZWxzLgoKU2lnbmVkLW9mZi1ieTogQ2FtZXJvbiBOZW1vIDxjbmVtb0B0
dXRhbm90YS5jb20+Ci0tLQpkcml2ZXJzL3VzYi9kd2MzL2R3YzMtb2Ytc2ltcGxlLmMgfCA0ICsr
Ky0KMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvdXNiL2R3YzMvZHdjMy1vZi1zaW1wbGUuYyBiL2RyaXZlcnMvdXNiL2R3
YzMvZHdjMy1vZi1zaW1wbGUuYwppbmRleCA3ZGYxMTUwMTI5MzUuLjU0ZjM4ZTQzNDAyOCAxMDA2
NDQKLS0tIGEvZHJpdmVycy91c2IvZHdjMy9kd2MzLW9mLXNpbXBsZS5jCisrKyBiL2RyaXZlcnMv
dXNiL2R3YzMvZHdjMy1vZi1zaW1wbGUuYwpAQCAtNDksNyArNDksOCBAQCBzdGF0aWMgaW50IGR3
YzNfb2Zfc2ltcGxlX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiogU29tZSBj
b250cm9sbGVycyBuZWVkIHRvIHRvZ2dsZSB0aGUgdXNiMy1vdGcgcmVzZXQgYmVmb3JlIHRyeWlu
ZyB0bwoqIGluaXRpYWxpemUgdGhlIFBIWSwgb3RoZXJ3aXNlIHRoZSBQSFkgdGltZXMgb3V0Lgoq
LwotCWlmIChvZl9kZXZpY2VfaXNfY29tcGF0aWJsZShucCwgInJvY2tjaGlwLHJrMzM5OS1kd2Mz
IikpCisJaWYgKG9mX2RldmljZV9pc19jb21wYXRpYmxlKG5wLCAicm9ja2NoaXAscmszMzk5LWR3
YzMiKSB8fAorCcKgwqDCoCBvZl9kZXZpY2VfaXNfY29tcGF0aWJsZShucCwgInJvY2tjaGlwLHJr
MzMyOC1kd2MzIikpCnNpbXBsZS0+bmVlZF9yZXNldCA9IHRydWU7CgpzaW1wbGUtPnJlc2V0cyA9
IG9mX3Jlc2V0X2NvbnRyb2xfYXJyYXlfZ2V0KG5wLCBmYWxzZSwgdHJ1ZSwKQEAgLTE3MSw2ICsx
NzIsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRldl9wbV9vcHMgZHdjM19vZl9zaW1wbGVfZGV2
X3BtX29wcyA9IHsKfTsKCnN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIG9mX2R3YzNf
c2ltcGxlX21hdGNoW10gPSB7CisJeyAuY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMzMjgtZHdj
MyIgfSwKeyAuY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMzOTktZHdjMyIgfSwKeyAuY29tcGF0
aWJsZSA9ICJ4bG54LHp5bnFtcC1kd2MzIiB9LAp7IC5jb21wYXRpYmxlID0gImNhdml1bSxvY3Rl
b24tNzEzMC11c2ItdWN0bCIgfSwKLS0KMi4yOC4wCgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
