Return-Path: <SRS0=lrNZ=GD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EF42C433E0
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Dec 2020 12:56:49 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 54DE2223E0
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Dec 2020 12:56:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 54DE2223E0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KZp7sfEJpsadlvUosPAPWT4x5yPMqHuVY6raJIK3LWk=; b=NGntszRzkerNvs4riKnLnFQtt9
	csYqIeq/OTbm0ltATZOwR807UJdt1ri9XYOX9bvoWsSFJV4D/jFEG6m6RoWtmJJEnYfAJ/oKhCzvO
	Z8o1gxHdcvSqjsUnDT+U1MjiSmWd6kPQ1yH8/mZeLYLcY/EH22KmbdjX3xj2OIi3PLTCSrv+1RRZb
	alQhlv+jKIRle6AqUuNBfoHD/xvA9ZTc7c/z9C2+7RsRtu9T+ZbVqw3Ev7jzbiURNiofuUxLrj7CX
	0+g/8pHwtw0YYAayL+LNUSlI+vPybyUy3WbRzFJebi2AQT24XjuHuHhNXLvFN/WMsPu2hoObYGZ4r
	bv836+8A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kuxVV-0005kQ-SQ; Thu, 31 Dec 2020 12:56:45 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kuxVT-0005j5-V0
 for linux-rockchip@lists.infradead.org; Thu, 31 Dec 2020 12:56:44 +0000
Received: by mail-lf1-x130.google.com with SMTP id h22so43969684lfu.2
 for <linux-rockchip@lists.infradead.org>; Thu, 31 Dec 2020 04:56:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4vZjoGWZedYLbvhemgBlBVpOyf8AcC6M80ix2EkJy5k=;
 b=mvJtCqEHARbrds8vfmwVE8IV0FDzVFVjDsJ+Ly+kOJpx013Bd5Ept7/RxTUd5PmPZv
 ff3FMwlzYQ/x574k7mtyMw0lk0VrQ6oYrdIplqE+NKRjxRIWQ6ut2G4ZI5ZEgwMzrFFW
 GsUn5mjCy/72bJIfWOSzJvZRLc3XyS9T/PeJrMz5POhExysHrq8AJ42ENWxl+W3ReP9T
 FaIRVF/sFqOPzPLubvRh7fA3ii1hDTiXHqpDfpLQxYgZf1NtXpRHGQIoB68vAOEOzTnA
 UNsSwvul8lT1GjgKdKGCLM0Yg+9kg1u80qT4TWVW0uNTMlZXLz1AyJTBsQhMeW0L8y1B
 SKJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4vZjoGWZedYLbvhemgBlBVpOyf8AcC6M80ix2EkJy5k=;
 b=E5yc8/tQWTPhhSxdp5Bn+Qfw8NQSD54donBkSISzLR2r4Pzbezh/fLyud/8AXUGBls
 TJvinhfM0D6AlDtx03AP5AjYQ0HHteNR5pCcBL8atNDYBgvUsTY3hv5vekLwlSjnEBRE
 TMLUbSsCBQRPFNxb0n3tXLBFH6uVB5YTUTPiwo6jNfR7DtwysXOo2lUHgUE8DbYmTH7E
 w1MzzBRIJIhe1805iu++LVw/p38UoKccy/fGG3luwgTRZAnDadAvZKAc7IpewkXutny3
 9PJ6oZawfat/0Yl21hdFKcbRg3yW82WcC3aNw0UFzb+6hiKOYmz0/D9BcKKlRuiC11nI
 y6rw==
X-Gm-Message-State: AOAM531YXnitXkJs+Z/mx3Pt0mq5UgLgrMoB3Nn/2HG2A9wEgt+fdOQG
 SFdDBuRCAkjNGDmIdPvgnV8=
X-Google-Smtp-Source: ABdhPJzxjGQ5hs2wOpjZ5zeSZkxEF4aK/S7JHO+0Ik9A9Vcne4fX8OAy1TRuY4k78iiNOoOQ6ZJOXA==
X-Received: by 2002:a2e:b88e:: with SMTP id r14mr27252228ljp.254.1609419400987; 
 Thu, 31 Dec 2020 04:56:40 -0800 (PST)
Received: from localhost.localdomain (85-76-98-107-nat.elisa-mobile.fi.
 [85.76.98.107])
 by smtp.gmail.com with ESMTPSA id r201sm6230659lff.268.2020.12.31.04.56.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Dec 2020 04:56:40 -0800 (PST)
From: =?UTF-8?q?Jari=20H=C3=A4m=C3=A4l=C3=A4inen?= <nuumiofi@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [RFC PATCH 0/3] provide workaround for Rockchip PCIe bus scan crash
 with optional delay
Date: Thu, 31 Dec 2020 14:52:11 +0200
Message-Id: <20201231125214.25733-1-nuumiofi@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201231_075644_018749_750FB5C2 
X-CRM114-Status: GOOD (  16.14  )
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
 =?UTF-8?q?Jari=20H=C3=A4m=C3=A4l=C3=A4inen?= <nuumiofi@gmail.com>,
 linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGVsbG8gYWxsLAoKVGhpcyBSRkMgcGF0Y2ggcHJvdmlkZXMgYSB3b3JrYXJvdW5kIGZvciBSb2Nr
Y2hpcCBQQ0llIGNvbnRyb2xsZXIgY3Jhc2hlcwp3aXRoIHNvbWUgZGV2aWNlcyB3aGVuIFBDSWUg
YnVzIGlzIHNjYW5uZWQuIEJvdGggY29tbWFuZCBsaW5lIHBhcmFtZXRlciBhbmQKZGV2aWNlIHRy
ZWUgcHJvcGVydHkgYXJlIGluY2x1ZGVkIGFzIHdheXMgdG8gc2V0IHRoZSBkZWxheS4gSSdtIHNl
bmRpbmcKdGhpcyBhcyBSRkMgYmVjYXVzZSBJIGRvbid0IGtub3cgd2hpY2ggYXBwcm9hY2gsIGNv
bW1hbmQgbGluZSBhbmQvb3IgZGV2aWNlCnRyZWUsIHdvdWxkIGJlIHRoZSBiZXN0IGNvbnNpZGVy
aW5nIHRoaXMgaXMgYSB3b3JrYXJvdW5kLCBub3QgYSBwcm9wZXIgZml4LgoKSSBmZWVsIHRoYXQg
YXQgbGVhc3QgY29tbWFuZCBsaW5lIHBhcmFtZXRlciBzaG91bGQgYmUgcHJvdmlkZWQgYXMgaXQn
cyBlYXN5CnRvIGVkaXQgYnkgZW5kIHVzZXIuIERldmljZSB0cmVlIHByb3BlcnR5IGNvdWxkIGJl
IHNlZW4gYXMgYSB3YXkgZm9yIGRpc3RvCm1haW50YWluZXIgdG8gcHJvdmlkZSBzYW5lIG9yIHNh
ZmUgZGVmYXVsdCB3aXRoIGtlcm5lbCBidXQgaXQgYWxzbyBleHRlbmRzCnRoZSBjaGFuZ2UgdG8g
dG91Y2ggbW9yZSBmaWxlcyB3aGljaCBtYWtlcyBpdCBoYXJkZXIgdG8gY2xlYW4gdXAgaWYgYQpw
cm9wZXIgZml4IHRvIHRoaXMgaXMgZm91bmQuCgpBbHNvLCBJJ3ZlIHNldCBkZWxheSB0byAxMTAw
IG1zIGZvciBSb2NrUHJvNjQgaW4gcGF0Y2ggMyBhcyBhbiBleGFtcGxlIG9mCnNhZmUgZGVmYXVs
dC4gSWYgbmV3IGRldmljZSB0cmVlIHByb3BlcnR5IHN1cHBvcnQgaXMgYWNjZXB0ZWQgbWF5YmUg
dGhlCmFjdHVhbCBkZXZpY2UgdHJlZSBzaG91bGQgYmUgbGVmdCB1bm1vZGlmaWVkIG9yIGRlbGF5
IHNldCB0byAwIG1zIHNvIHRoYXQKdXNlcnMgbm90IG5lZWRpbmcgdGhlIGRlbGF5IGFyZSBub3Qg
YWZmZWN0ZWQgaW4gYW55IHdheS4KClBhdGNoIDEgYWRkcyB0aGUgd29ya2Fyb3VuZCBjb2RlLiBL
ZXJuZWwgcGFyYW1ldGVyIGRvY3VtZW50YXRpb24gaXMgYWxzbwppbmNsdWRlZC4gRGV2aWNlcyB1
c2VkIGluIHRlc3RpbmcgYW5kIGEgbG9nIGV4Y2VycHQgYXJlIGluY2x1ZGVkIGluCmNoYW5nZWxv
Zy4KCkluIGFkZGl0aW9uIHRvIGRldmljZXMgbmVlZGluZyB0aGUgZGVsYXksIHRlc3RlZCBhbmQg
bGlzdGVkIGluIHBhdGNoIDEKZm9sbG93aW5nIGRldmljZXMgdGhhdCBkbyBub3QgbmVlZCB0aGUg
ZGVsYXkgd2VyZSB0ZXN0ZWQgd2l0aCBubyBkZWxheSBhbmQKMTAwMCBtcyBkZWxheSBhbmQgbm8g
cmVncmVzc2lvbiB3YXMgb2JzZXJ2ZWQ6Ci0gTWFydmVsbCA4OFNFOTIxNSBhbmQgODhTRTkyMzAg
YmFzZWQgU0FUQSBjb250cm9sbGVycwotIFNhbXN1bmcgOTcwIEVWTyBQbHVzIE5WTWUgZHJpdmUK
ClBhdGNoZXMgMiBhbmQgMyBhZGQgZHQtYmluZGluZ3MgYW5kIHRoZSBuZXcgcHJvcGVydHkgdG8g
Um9ja1BybzY0IGRldmljZSBhcwphbiBleGFtcGxlLgoKQWxsIGNvbW1lbnRzIGFib3V0IHRoZSB3
b3JrYXJvdW5kIGl0c2VsZiBpZiBpdCdzIGFwcGxpY2FibGUgYW5kIGFib3V0IGJvdGgKY29tbWFu
ZCBsaW5lICsgZGV2aWNlIHRyZWUgb3Igb25seSBjb21tYW5kIGxpbmUgYXBwcm9hY2hlcyBhcmUg
d2VsY29tZS4KCkJlc3QgcmVnYXJkcywKSmFyaSBIw6Rtw6Rsw6RpbmVuCgpKYXJpIEjDpG3DpGzD
pGluZW4gKDMpOgogIFBDSTogcm9ja2NoaXA6IHByb3ZpZGUgd29ya2Fyb3VuZCBmb3IgYnVzIHNj
YW4gY3Jhc2ggd2l0aCBvcHRpb25hbAogICAgZGVsYXkKICBkdC1iaW5kaW5nczogUENJOiByb2Nr
Y2hpcDogZG9jdW1lbnQgYnVzLXNjYW4tZGVsYXktbXMgd29ya2Fyb3VuZAogICAgcHJvcGVydHkK
ICBhcm02NDogZHRzOiByb2NrY2hpcDogdXNlIGJ1cy1zY2FuLWRlbGF5LW1zIHdvcmthcm91bmQg
d2l0aCBSb2NrUHJvNjQKICAgIFBDSWUKCiAuLi4vYWRtaW4tZ3VpZGUva2VybmVsLXBhcmFtZXRl
cnMudHh0ICAgICAgICAgIHwgIDggKysrKysrKysKIC4uLi9iaW5kaW5ncy9wY2kvcm9ja2NoaXAt
cGNpZS1ob3N0LnR4dCAgICAgICAgfCAgMyArKysKIC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazMz
OTktcm9ja3BybzY0LmR0c2kgICAgfCAgMSArCiBkcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUt
cm9ja2NoaXAtaG9zdC5jICAgIHwgMTggKysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL3BjaS9j
b250cm9sbGVyL3BjaWUtcm9ja2NoaXAuYyAgICAgICAgIHwgIDUgKysrKysKIGRyaXZlcnMvcGNp
L2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5oICAgICAgICAgfCAgMiArKwogNiBmaWxlcyBjaGFu
Z2VkLCAzNyBpbnNlcnRpb25zKCspCgoKYmFzZS1jb21taXQ6IDVjOGZlNTgzY2NlNTQyYWEwYjg0
YWRjOTM5Y2U4NTI5M2RlMzZlNWUKLS0gCjIuMjkuMgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
