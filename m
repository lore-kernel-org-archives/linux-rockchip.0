Return-Path: <SRS0=XvIT=DV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D568BC433E7
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2020 20:01:37 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2A633206DC
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2020 20:01:37 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="lDhCJ7qp"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2A633206DC
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=kleine-koenig.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=HtoV11JMqOcmyfidF6kLlavwhiVevmf4xDhm9njsrFw=; b=lDhCJ7qp1R/dzcNdo1yZOR8sy3
	Fwk9BOz4NWqht47a6tMgkQniOgi63/nYNyzJvDZsOMG+wkKMxKSH92z7bQCdrj4wi9EfJB6uaJJcO
	PW+3UDFg2YvvG2jxSdS78nP4lm9rYBEZEt6MeFBNo9/49LT2ZG1R0Pf0ezQLFAq+j9WkQhGHV+XnU
	Pae/iNKMJbBIj/4l7uWFAcxoYIIH9Pc7WHtEVcq6JZWpFNB+c3E/Haru/GRnCJ4kElkZbs32M8X9Z
	xhmD3001VWUeExKI7hos5GYsY/4ZuE1mhvaC7acUi369ECgwcyHxgzH4XWepVLUIXFk43RwTbxsvA
	aQf9fgQg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kSmxj-0006Bx-RR; Wed, 14 Oct 2020 20:01:28 +0000
Received: from antares.kleine-koenig.org ([94.130.110.236])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kSmxZ-00068O-Hb; Wed, 14 Oct 2020 20:01:19 +0000
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
 id 7B79CA54A3E; Wed, 14 Oct 2020 22:00:43 +0200 (CEST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Heiko Stuebner <heiko@sntech.de>,
	Aditya Prayoga <aditya@kobol.io>
Subject: [PATCH v4 0/2] arm64: Add basic support for Kobol's Helios64
Date: Wed, 14 Oct 2020 22:00:28 +0200
Message-Id: <20201014200030.845759-1-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201014_160117_689690_A013EA97 
X-CRM114-Status: GOOD (  14.79  )
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
Cc: devicetree@vger.kernel.org, Johan Jonker <jbx6244@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGVsbG8sCgppbiB2MyBKb2hhbiBzdGlsbCBmb3VuZCBzb21lIGluY29uc2lzdGVuY2llcyBpbiBo
b3cgSSBzb3J0ZWQgKG9yIGRpZG4ndApzb3J0KSB0aGUgZGV2aWNlIHRyZWUgcHJvcGVydGllcy4g
VGhlIHJ1bGVzIEkgYXBwbGllZCBub3cgYXJlOgoKCWF0IHRoZSBiZWdpbm5pbmcgb2YgYSBub2Rl
OiBjb21wYXRpYmxlLCByZWcgYW5kIGludGVycnVwdCBzdHVmZgoJc3RhdHVzIGFuZCAjKiBhdCB0
aGUgZW5kCglpMmMtc2NsLXJpc2luZy10aW1lLW5zIGJlZm9yZSBpMmMtc2NsLWZhbGxpbmctdGlt
ZS1ucwoJcmVndWxhdG9yLW5hbWUgZmlyc3QgYW1vbmcgcmVndWxhdG9yLSoKCXJlZ3VsYXRvci1t
aW4tbWljcm92b2x0IGJlZm9yZSByZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdAoJcGluY3RybC1uYW1l
cyBiZWZvcmUgcGluY3RybC0wCgl0eF9kZWxheSBncm91cGVkIHdpdGggKGFuZCBhZnRlcikgcnhf
ZGVsYXkKCXZjYzEyKiBhZnRlciB2Y2M1KgoJb3RoZXJ3aXNlIGFscGhhYmV0aWNhbGx5CgpvdGhl
ciB0aGluZ3MgY2hhbmdlZCBhcmU6CgoJLSBkcm9wIGRpc2FibGUtd3AgYW5kIHN1cHBvcnRzLWVt
bWMgZm9yIGVtbWMKCS0gdXNlIGxlZC0wIGFuZCBsZWQtMSBhcyBub2RlIG5hbWVzIGZvciB0aGUg
bGVkcwoJLSByZW5hbWUgcGluY3RybCBmb3IgdGhlIGxlZHMgYWNjb3JkaW5nIHRvIHRoZSBsaW5l
IG5hbWUgaW4gdGhlIHNjaGVtYXRpYwoJLSBkcm9wIGxpbnV4LGRlZmF1bHQtdHJpZ2dlciA9ICJu
b25lIjsKCS0gYWRkIGFuIGVuYWJsZSBncGlvIGZvciB0aGUgc2QgcmVndWxhdG9yCgktIHNvbWUg
d2hpdGVzcGFjZSBuaXRzCgpXaGlsZSB0ZXN0aW5nIEkgcmViYXNlZCB0byA1LjkgYW5kIGZvciBh
biB1bmtub3duIHJlYXNvbiB0aGlzIGtlcm5lbApmYWlscyB0byBib290IChqdXN0IG5vIG91dHB1
dCksIGJ1dCB0aGUgcmVzdWx0aW5nIGR0YiB3b3JrcyBqdXN0IGZpbmUKd2l0aCBhIERlYmlhbiA1
Ljgga2VybmVsLgoKVXdlIEtsZWluZS1Lw7ZuaWcgKDIpOgogIGR0LWJpbmRpbmdzOiB2ZW5kb3It
cHJlZml4ZXM6IEFkZCBrb2JvbCBwcmVmaXgKICBhcm02NDogZHRzOiByb2NrY2hpcDogQWRkIGJh
c2ljIHN1cHBvcnQgZm9yIEtvYm9sJ3MgSGVsaW9zNjQKCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5n
cy92ZW5kb3ItcHJlZml4ZXMueWFtbCAgfCAgIDIgKwogYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9NYWtlZmlsZSAgICAgICAgIHwgICAxICsKIC4uLi9kdHMvcm9ja2NoaXAvcmszMzk5LWtv
Ym9sLWhlbGlvczY0LmR0cyAgICB8IDM3MSArKysrKysrKysrKysrKysrKysKIDMgZmlsZXMgY2hh
bmdlZCwgMzc0IGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1rb2JvbC1oZWxpb3M2NC5kdHMKCi0tIAoyLjI4LjAKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
