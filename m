Return-Path: <SRS0=r61b=BZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 44BDFC433E1
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Aug 2020 19:49:09 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 81A8C23C83
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Aug 2020 19:49:08 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="fGkXjLn0";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=tutanota.com header.i=@tutanota.com header.b="FIc6LEmh"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 81A8C23C83
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=tutanota.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Subject:Message-ID:To:From:Date:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ae1waQOdBP/3E6lLcwCkMbMfT1KWGrOrxVtE8uqJVfk=; b=fGkXjLn09ZesdFZLcBnEmG4XT6
	Lb9OMGc0KbJWGDducMmx1BtMqWIJ5zvhSxNtfq8AiHu6oEQvtu+7hVpO0Qt0tTIcTuRdq4UYfpGy2
	u6/yMq1NGW+Fem9plEjQ0y/HfqYCEC9AugYcvNFkQyNOpP46ySn7J+P+Vr5TmSt3mQPQpSH5G38oE
	T2/WGW8Mp5qzYml/kI8XBKRx38Jdxgps2EGk3FGhs+AswMvwYJ3zHbqqkmhwsrELCchoikOaV9d1T
	mazKAF5eWLQVJam+K8L06e3TWLtPxWLnSajvGCA7Ph/wjL3xKHjsP9ZtCagE70z16bcANFda6+LlO
	ymvD0lWw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k72Ao-0003PC-FR; Sat, 15 Aug 2020 19:49:02 +0000
Received: from w1.tutanota.de ([81.3.6.162])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k72Ak-0003Nh-GF; Sat, 15 Aug 2020 19:48:59 +0000
Received: from w3.tutanota.de (unknown [192.168.1.164])
 by w1.tutanota.de (Postfix) with ESMTP id 13A6FFA03FC;
 Sat, 15 Aug 2020 19:48:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1597520931; 
 s=s1; d=tutanota.com;
 h=From:From:To:To:Subject:Subject:Content-Description:Content-ID:Content-Type:Content-Type:Content-Transfer-Encoding:Content-Transfer-Encoding:Cc:Cc:Date:Date:In-Reply-To:MIME-Version:MIME-Version:Message-ID:Message-ID:Reply-To:References:Sender;
 bh=5/hsorsNQe7GwsC7JZ97YJLPeDH8TGRoXjFhfANsUiQ=;
 b=FIc6LEmhmDSnoV7RD+bvdFA44r2TVva/6n/zTOLeZsGpaQrvmEvt+p1KiO1MtHLi
 JwSQ/sr9wnL64VeHr4vyR3lNceEm6fKg3uPd1I6vZbmhgXq2dHudnKqbN/aAEXcfwUQ
 ATKQO6WODyDHmlsDpsDGTSpwRBL/qN6eC5hlatyWAGd4eFU6jvq59DqKRR04pcG7mzB
 VnajA1rkpZzuxTEfuRiQt4ZmI9frzViV+9wym7aeKxe74zh84FFOQVnWrjChQwcoqMC
 zPX28mdfG190YNKRzXJ/+NbyH/CLyoQUfVh71+8wjNtRuQyrGs9t/Tjm5LAxLaP1daY
 LbT121UCfA==
Date: Sat, 15 Aug 2020 21:48:51 +0200 (CEST)
From: Cameron Nemo <cnemo@tutanota.com>
To: linux-rockchip@lists.infradead.org
Message-ID: <MEnei4S--3-2@tutanota.com>
Subject: rk3328 USB3 support
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200815_154858_937640_A8334D5E 
X-CRM114-Status: GOOD (  10.23  )
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGVsbG8gYWxsLAoKSSB3YXMgcmVhZGluZyBhIHBhc3QgZGlzY3Vzc2lvbiBhYm91dCBlbmFibGlu
ZyBVU0IzIHN1cHBvcnQgZm9yIHRoZSByazMzMjggYm9hcmRzOgoKaHR0cHM6Ly9wYXRjaHdvcmsu
a2VybmVsLm9yZy9wYXRjaC8xMDg1MzM3OS8KCkluIHRoZSBkaXNjdXNzaW9ucyBIZWlrbyBTdHVl
Ym5lciBvdXRsaW5lZCBhIHBvc3NpYmxlIHBhdGggZm9yd2FyZCB0byBlbmFibGluZyBVU0IzCmZv
ciB0aGVzZSBkZXZpY2VzIHdpdGhvdXQgIGRpc3J1cHRpbmcgcmszMzk5IGRldmljZXMgaW4gdGhl
IGZ1dHVyZToKCj4gQSBwb3NzaWJsZSB3YXkgZm9yd2FyZCB3b3VsZCBiZSB0byBpbnRyb2R1Y2Ug
YSBzZXBhcmF0ZSBjb21wYXRpYmxlIGZvcgo+IHJrMzMyOCAoYm90aCBpbiB0aGUgYmluZGluZyBk
b2MgYW5kIHRoZSBnZW5lcmljIGR3YzMgZHJpdmVyKSwgc28gdGhhdAo+IHdlIGdldCBvbmx5IGEK
Pgo+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb21wYXRpYmxlID0gInJvY2tjaGlwLHJr
MzMyOC1kd2MzIjsKPgo+IFdoaWNoIHRoZW4gZXZlbiBjYW4gbW92ZSBlYXNpbHkgaW50byBhIG5l
dyBkcml2ZXIgaWYgbmVjZXNzYXJ5IHdpdGhvdXQKPiBjYXVzaW5nIGlzc3VlcyBmb3IgZXhpc3Rp
bmcgZGV2aWNldHJlZXMuCgpJIGFtIG5ldyB0byBrZXJuZWwgZGV2ZWxvcG1lbnQsIGJ1dCBpdCBz
ZWVtcyBsaWtlIHRoaXMgaXMganVzdCBtb3Zpbmcgc29tZSBwaWVjZXMgYXJvdW5kLgpTcGVjaWZp
Y2FsbHkgSSBiZWxpZXZlIEkgbmVlZCB0bzoKCi0gZWRpdCBkcml2ZXJzL3VzYi9kd2MzL2R3YzMt
b2Ytc2ltcGxlLmMgdG8gYWRkICJyb2NrY2hpcCxyazMzMjgtZHdjMyIgaW4gdGhlIHR3byBsb2Nh
dGlvbnMKwqAgdGhhdCByZWZlcmVuY2UgcmszMzk5Ci0gYWRqdXN0IHRoZSBkdHNpIGluIHRoZSBw
YXRjaCBsaW5rZWQgYWJvdmUgdG8gY29udGFpbiB0aGUgc2luZ2xlIGNvbXBhdGlibGUgbGluZSBm
b3IgcmszMzI4CgpXb3VsZCB0aGF0IGJlIGNvcnJlY3Q/CgpUaGFua3MsCi0tCkNhbWVyb24gTmVt
bwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
