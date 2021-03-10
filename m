Return-Path: <SRS0=2K8y=II=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4C9A7C433DB
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Mar 2021 12:29:19 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EF57A60249
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Mar 2021 12:29:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EF57A60249
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chaotikum.eu
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=0I9oJrhefrb22cOe3Ft/SbOm7KVQe5t8N3giZd/oLvg=; b=Iur635gKcR7gMQdvGEQZ3s7P26
	cN1tdQO3gxF0uwj1qMB96z7ocp2C6ZlsUkJs+/jjuJoSlsOFgLTESjP2vuPftDRd6GjtioKBwt/YK
	jSdUZE6GCxK8jR7y+m2dWjRRnRjeM/tJ2HWNkkzvsltKAHmX5yTiZwZfDL7EHjYSjxV/O/iCsjqbx
	fWKhL4HP3cBpdvVGfOgEO9Iye1kynde4dyo4yCnosfdaby9mMCzM89AbtAAuwfjCvXZN4a6475lby
	vr68aMnGBLZ0cpgw00PlDaVbX5hZ5vReAcsUmoAfYicYXBJZPnHIcHIO/i0au5s4/QhMjBe+RjNg0
	MY+G4l9g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJxxf-006oWU-W4; Wed, 10 Mar 2021 12:29:12 +0000
Received: from mx0.chaotikum.eu ([2a01:4f8:c2c:ce71::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJxxb-006oVv-Gg; Wed, 10 Mar 2021 12:29:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=chaotikum.eu; s=20200128.mx0; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=e+FszExSm2+EMZkgFJP/qRDz5nqeWE3dpwvkv4Wthek=; b=A1cNwIUZ8DRlzFSjthkkM7Ehei
 yymARAEb8neNldWvZ2UaKfMoH5jj84yWw6Q7Al366sSQ/fVtoHB0HpD37ndpNQ97c6s34Qu+gOmth
 feBb6xPb2w7jgjzn6USQ+DnQ7eQsxINL06CxkXQgXCSjzm+Gkf7kyePBlpEUdzWUwLEtte5wZuZky
 0o2qZg5KmgI+xNOJhrH20cbw/gMsDtdkdcYhBzSBK8FrZeqagAfo0n3lw0QiZTAUiGtPUgsZMXsqU
 tMpu2goRZOlRBlw1kJoWFEycZgJeFEj87mFfq16PSWU94buhvX9e9p9QsGZAEgm2/Momvya01Ziy/
 pestF14YFrmLNKgn3WghMKA8Ln+9WoG9mCVuYfeyPPW5Iv+uPQXK6igc+0G78cMP9UAcskvruuYdP
 0RLwz7x8pVtMR9dMK1o9OxnKKjSUFtCegRWS6IqKhBg0kRBsbCZfcnsHoCgTyb0HY1gVhEakcFcqm
 VAIr198V8AgwQp2U6VeMPmxcnKObH1Y9lWvjZK+0pMS/KvJ7y19d0olAI5DdKaMYZ1cQjBFvhSD1U
 EI6hB5siSah85v3Tc6gVi8UbOBf7s5YLj5EG/uu2naIWbqE2jj4xPueDNcwflvNAeXB5yaVBc/Xy9
 mcx3Gqu3OWSk6MEaiOMgnNv0xcEBKfOwVBzlpGcMY=;
Received: from [2001:4dd0:4f8e:0:801a:7487:7f8e:9f57] (port=45816
 helo=neptun.chaotikum.eu)
 by mx0.chaotikum.eu with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <qsx@chaotikum.eu>)
 id 1lJxxV-0002RO-Nf; Wed, 10 Mar 2021 13:29:02 +0100
From: Thomas Schneider <qsx@chaotikum.eu>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: Thomas Schneider <qsx@chaotikum.eu>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: add infrared receiver node to rockpro64
Date: Wed, 10 Mar 2021 13:28:21 +0100
Message-Id: <20210310122821.126408-1-qsx@chaotikum.eu>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_122907_922981_301A48F7 
X-CRM114-Status: GOOD (  10.15  )
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

VGhpcyBhZGRzIHRoZSBSb2NrUHJvNjTigJlzIGluZnJhcmVkIHJlY2VpdmVyIHRvIGl0cyBkdHNp
LiAgVGhlIGNvbmZpZ3VyYXRpb24gaXMKYWxtb3N0IHRoZSBzYW1lIGFzIG9uIHJrMzMyOC1yb2Nr
NjQsIGV4Y2VwdCBmb3IgdGhlIEdQSU8gcGlucywgYW5kIHRodXMgYWRhcHRlZApmcm9tIHRoZXJl
LgoKU2lnbmVkLW9mZi1ieTogVGhvbWFzIFNjaG5laWRlciA8cXN4QGNoYW90aWt1bS5ldT4KLS0t
CiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQuZHRzaSB8IDEz
ICsrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspCgpkaWZmIC0t
Z2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0c2kg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQuZHRzaQppbmRl
eCA1YWIwYjllZGZjODguLmQ0MmM3NWM2ZGNiZCAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0c2kKKysrIGIvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0c2kKQEAgLTM2LDYgKzM2LDEzIEBAIHBv
d2VyIHsKIAkJfTsKIAl9OwogCisJaXItcmVjZWl2ZXIgeworCQljb21wYXRpYmxlID0gImdwaW8t
aXItcmVjZWl2ZXIiOworCQlncGlvcyA9IDwmZ3BpbzAgUktfUEE2IEdQSU9fQUNUSVZFX0xPVz47
CisJCXBpbmN0cmwtMCA9IDwmaXJfaW50PjsKKwkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsK
Kwl9OworCiAJbGVkcyB7CiAJCWNvbXBhdGlibGUgPSAiZ3Bpby1sZWRzIjsKIAkJcGluY3RybC1u
YW1lcyA9ICJkZWZhdWx0IjsKQEAgLTYwNCw2ICs2MTEsMTIgQEAgZnVzYjBfaW50OiBmdXNiMC1p
bnQgewogCQl9OwogCX07CiAKKwlpciB7CisJCWlyX2ludDogaXItaW50IHsKKwkJCXJvY2tjaGlw
LHBpbnMgPSA8MCBSS19QQTYgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfbm9uZT47CisJCX07CisJ
fTsKKwogCWxlZHMgewogCQl3b3JrX2xlZF9waW46IHdvcmstbGVkLXBpbiB7CiAJCQlyb2NrY2hp
cCxwaW5zID0gPDAgUktfUEIzIFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX25vbmU+OwotLSAKMi4z
MC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
