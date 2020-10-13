Return-Path: <SRS0=Ew1P=DU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 09E40C433E7
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Oct 2020 16:14:20 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AD06F25249
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Oct 2020 16:14:19 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="IUXnw2C5"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AD06F25249
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=kleine-koenig.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KMINBJlnEIBYgxe7iQEQmkSfcsPTfh88aSIzwEauWkU=; b=IUXnw2C5qQ+cvDjF5W+xy95gVy
	Zfff6Fwhz8Lhe/op6C+k8DfzXPNEpSWMmhB/QrSQYo0fiZJ7jekTv89AWBNGrlRrsgZ2Bw1/3b8H4
	gM6TDj0L8BiWv9ZstTsve3Avr2fzFkRJO+BvCcoZKlWy3+UtNoHpRchEtbjTyXltQynp11+KC+cfP
	UJclqNp2kEm6lomaO6F8gW0mK/CCBPi0+shPAtwxY3JVtbEOxV/ykZwLErGjd3/R2wo2NRaC9LibT
	xXCKbRyUNYepvZ2gMs1t8x/cVWXrKiPkvHKj9827EXLXj36E5drLop6SoA98scgtHwOL1/0jDrSxj
	OUGtM0mw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kSMwJ-0000xf-H4; Tue, 13 Oct 2020 16:14:15 +0000
Received: from antares.kleine-koenig.org ([2a01:4f8:c0c:3a97::2])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kSMvx-0000ks-R5; Tue, 13 Oct 2020 16:13:56 +0000
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
 id 710F1A53273; Tue, 13 Oct 2020 18:13:42 +0200 (CEST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Heiko Stuebner <heiko@sntech.de>,
	Aditya Prayoga <aditya@kobol.io>
Subject: [PATCH v3 0/2] arm64: Add basic support for Kobol's Helios64
Date: Tue, 13 Oct 2020 18:13:38 +0200
Message-Id: <20201013161340.720403-1-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201013_121354_164005_8F3A864B 
X-CRM114-Status: GOOD (  11.20  )
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

SGVsbG8sCgpjb21wYXJlZCB0byB2MiBvZiB0aGlzIHNlcmllcyAoc3RhcnRpbmcgd2l0aCBNZXNz
YWdlLUlkOgoyMDIwMTAxMjIwNDMxNy4xNTgxNzUyLTEtdXdlQGtsZWluZS1rb2VuaWcub3JnKSBJ
IHNvcnRlZCB2YXJpb3VzIHRoaW5ncwphcyBwb2ludGVkIG91dCBieSBKb2hhbiBKb25rZXIsIGRy
b3BwZWQgYW5kIGltcHJvdmVkIGEgZmV3IHRoaW5ncy4gSQpob3BlIEkgZ290IHRoZSBzb3J0aW5n
IHJpZ2h0IG5vdy4KClRoaXMgdGltZSBJIGFsc28gQ2M6ZCBsa21sIChldmVuIHRob3VnaCBJIGRv
bid0IHRoaW5rIHRvIGF0dHJhY3Qgc29tZW9uZQppbnRlcmVzdGVkIGluIHRoaXMgcGF0Y2ggc2Vy
aWVzIHRoZXJlKS4KClV3ZSBLbGVpbmUtS8O2bmlnICgyKToKICBkdC1iaW5kaW5nczogdmVuZG9y
LXByZWZpeGVzOiBBZGQga29ib2wgcHJlZml4CiAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IEFkZCBi
YXNpYyBzdXBwb3J0IGZvciBLb2JvbCdzIEhlbGlvczY0CgogLi4uL2RldmljZXRyZWUvYmluZGlu
Z3MvdmVuZG9yLXByZWZpeGVzLnlhbWwgIHwgICAyICsKIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvTWFrZWZpbGUgICAgICAgICB8ICAgMSArCiAuLi4vZHRzL3JvY2tjaGlwL3JrMzM5OS1r
b2JvbC1oZWxpb3M2NC5kdHMgICAgfCAzNzggKysrKysrKysrKysrKysrKysrCiAzIGZpbGVzIGNo
YW5nZWQsIDM4MSBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazMzOTkta29ib2wtaGVsaW9zNjQuZHRzCgotLSAKMi4yOC4wCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
