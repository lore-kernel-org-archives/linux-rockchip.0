Return-Path: <SRS0=fTsq=G3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3853EC433DB
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Jan 2021 21:03:46 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2E44F22CA2
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Jan 2021 21:03:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2E44F22CA2
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=kleine-koenig.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9U1sgaRH93TESIG64p3KZi9D8UwnHZIURWvf/mVNDO4=; b=w16wDCv/eGNCVvs/9T3EAShP6
	tscyDpffodU27iKZR6rWGy8UfGssqk8kxgv3JmUf47t05BmCj1hwdafYY0TerO3B66HjEz7/aJVtG
	iUvkMHl4mKH2Uf+mJA5xLBniRaRUY4y8v/Wzk1EWNKx0K186EbfXHRL9B73oS8rvtmD8trFgeyNxb
	DH1SwQ+gjAXw4DCdTuR903hJ0zIpXVD67o+RrDK6OtG+wCeUanXZ5JdQIPmMhoFOmoqFBp/1prpTt
	pZwRd4LMp3RYPStSC/eGsh1OIb5MFDLnjE6vUZqh7V2VAEfNSNqOvv27Qy6/WrsYPrwb1vix6V9i9
	gV+014tsg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l3mXr-00078G-0q; Sun, 24 Jan 2021 21:03:39 +0000
Received: from antares.kleine-koenig.org ([2a01:4f8:c0c:3a97::2])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l3mXn-00077X-G0
 for linux-rockchip@lists.infradead.org; Sun, 24 Jan 2021 21:03:36 +0000
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
 id CDBA7ADC8EE; Sun, 24 Jan 2021 22:03:30 +0100 (CET)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 2/2] arm64: dts: rockchip: Rely on SoC external pull up on
 pmic-int-l
Date: Sun, 24 Jan 2021 22:03:28 +0100
Message-Id: <20210124210328.611707-2-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210124210328.611707-1-uwe@kleine-koenig.org>
References: <20210124210328.611707-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210124_160335_651825_A613B6A9 
X-CRM114-Status: GOOD (  11.93  )
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
Cc: devicetree@vger.kernel.org, Aditya Prayoga <aditya@kobol.io>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QWNjb3JkaW5nIHRvIHRoZSBzY2hlbWF0aWMgdGhlcmUgaXMgYW4gZXh0ZXJuYWwgcHVsbCB1cCwg
c28gdGhlcmUgaXMgbm8KbmVlZCB0byBlbmFibGUgdGhlIGludGVybmFsIG9uZSBhZGRpdGlvbmFs
bHkuIFVzaW5nIG5vIHB1bGwgdXAgbWF0Y2hlcwp0aGUgdmVuZG9yIGRldmljZSB0cmVlLgoKU2ln
bmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHV3ZUBrbGVpbmUta29lbmlnLm9yZz4KLS0t
CiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1rb2JvbC1oZWxpb3M2NC5kdHMg
fCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRp
ZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1rb2JvbC1oZWxp
b3M2NC5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1rb2JvbC1oZWxp
b3M2NC5kdHMKaW5kZXggZDY0NDZjMzJiOTFlLi4xZTg4MGEwYTNmNjkgMTAwNjQ0Ci0tLSBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LWtvYm9sLWhlbGlvczY0LmR0cworKysg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1rb2JvbC1oZWxpb3M2NC5kdHMK
QEAgLTMzMSw3ICszMzEsNyBAQCBzeXNfcmVkX2xlZF9vbjogc3lzLXJlZC1sZWQtb24gewogCiAJ
cG1pYyB7CiAJCXBtaWNfaW50X2w6IHBtaWMtaW50LWwgewotCQkJcm9ja2NoaXAscGlucyA9IDww
IFJLX1BCMiBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF91cD47CisJCQlyb2NrY2hpcCxwaW5zID0g
PDAgUktfUEIyIFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX25vbmU+OwogCQl9OwogCX07CiAKLS0g
CjIuMjkuMgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
