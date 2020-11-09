Return-Path: <SRS0=v4M2=EP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 765AAC2D0A3
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2020 17:23:44 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 83EA720789
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2020 17:23:39 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="WWacMtaV"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 83EA720789
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linkmauve.fr
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=09gLgqsKCGRtpi+UqKOpQ6R1N39lNemD82SXGTDB/FE=; b=WWacMtaVX6snoPQIOqXMZ2m7bp
	R47HT7Y91OdM+YwJPhKyYbKDwWNf8y0y6KliYRUylUKbeBPyW8O6Ap13QADD5lqNF1MBiCmj/rN45
	wiQJMzmZyl/0yrGW0LA1+43cLHHlOZmOwFZQSiiHtl+3WnLMS0Y5lfSDrK944vuT3wTkJe9Hqlw+S
	XNkej2+QpGrOGg+7yRmYY9Pt4gPC63es0mbn3onopuFhDAga/2L17RRnQcbWI2yfybjUL2lBjPKWD
	ZueCnp7O3waCaFoQsEhNHluvmnv5VuQvYQWYMqX6ytuakx63u1AOd/mPWT50Yk/lQB/JXb/n+xaYr
	Ml5X76Ag==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kcAtC-0002yJ-MF; Mon, 09 Nov 2020 17:23:34 +0000
Received: from [2a01:e0a:828:c7c0:49:5ff:fe41:d261] (helo=luna.linkmauve.fr)
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kcAtA-0002xQ-0B
 for linux-rockchip@lists.infradead.org; Mon, 09 Nov 2020 17:23:33 +0000
Received: by luna.linkmauve.fr (Postfix, from userid 1000)
 id E06F2F4158B; Mon,  9 Nov 2020 17:23:06 +0100 (CET)
From: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [RESEND PATCH 0/2] media: uapi: Expose VP8 probability lengths as
 defines
Date: Mon,  9 Nov 2020 17:22:42 +0100
Message-Id: <20201109162244.16531-1-linkmauve@linkmauve.fr>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201109_122332_187259_460A1B6A 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
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
Cc: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

VGhlc2UgdmFsdWVzIHdpbGwgYmUgdXNlZCBieSB2YXJpb3VzIGRyaXZlcnMgaW1wbGVtZW50aW5n
IHRoZSBWUDgKc3RhdGVsZXNzIEFQSS4KClRoaXMgaGFkIGJlZW4gc3VnZ2VzdGVkIGJ5IEV6ZXF1
aWVsIEdhcmNpYSBmb3IgdGhlIENlZHJ1cyBWUDggZHJpdmVyLgoKVGhlIG9ubHkgZHJpdmVyIHVz
aW5nIHRoaXMgQVBJICh1bnRpbCBub3cpIGhhcyBhbHNvIGJlZW4gdXBkYXRlZCB0byB1c2UKdGhl
c2UgbmV3IGRlZmluZXMuCgpUaGlzIGlzIGEgcmVzZW5kIGJlY2F1c2UgSSBmb3Jnb3QgdG8gaW5j
bHVkZSBtb3N0IG1haW50YWluZXJzLCBzb3JyeSBmb3IKdGhhdC4gIEl04oCZcyBteSB2ZXJ5IGZp
cnN0IHBhdGNoIHRvIHRoZSBrZXJuZWwsIEkgZGlkbuKAmXQga25vdyBhYm91dApzY3JpcHRzL2dl
dF9tYWludGFpbmVycy5wbAoKRW1tYW51ZWwgR2lsIFBleXJvdCAoMik6CiAgbWVkaWE6IHVhcGk6
IEV4cG9zZSBwcm9iYWJpbGl0eSBsZW5ndGhzIGFzIGRlZmluZXMKICBtZWRpYTogaGFudHJvOiBV
c2UgVlA4IGxlbmd0aHMgZGVmaW5lZCBpbiB1YXBpCgogZHJpdmVycy9zdGFnaW5nL21lZGlhL2hh
bnRyby9oYW50cm9fdnA4LmMgfCA0ICsrLS0KIGluY2x1ZGUvbWVkaWEvdnA4LWN0cmxzLmggICAg
ICAgICAgICAgICAgIHwgNiArKysrLS0KIDIgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCsp
LCA0IGRlbGV0aW9ucygtKQoKLS0gCjIuMjkuMgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
