Return-Path: <SRS0=XvIT=DV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 47036C433DF
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2020 20:01:38 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 80D7021D7F
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2020 20:01:37 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="2PlXRS3i"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 80D7021D7F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=kleine-koenig.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=M8hln7/YevfMQD1Te/xFdTQxuQau7vtW/HUSwmGfAFA=; b=2PlXRS3iI/NxJf5U+JQfSo6rD
	I1HMTbBobnlQET7wQRlKT5+y4CLTrXoAPmrqDFFMrFGR9s4i6LHPXktrdhZKsEg3TXYbsOcrBefH3
	o1A0BslakIjbYTwbEb9rBikN1xnXhqy8X+U5mE/MEKpxJFWNol97ty1W22HuDVCfhn2DJ7inyDelL
	fWP5euYAiPNPWXFzd9l5nVRT3RzwFvBIah0T/IGE30WI/TDqw60GL7xhZ8+4dNhkB7p4JPWj17j4A
	Jaxn4dTeePvfXBx9D4+zxoMLODpQKReRneMM12w6XUos1A9Um6c0Dn35gjGpvLKhH2F4z7tJRACjn
	Y7tG6Yasg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kSmxj-0006Bq-0S; Wed, 14 Oct 2020 20:01:27 +0000
Received: from antares.kleine-koenig.org ([2a01:4f8:c0c:3a97::2])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kSmxZ-00068I-Eu; Wed, 14 Oct 2020 20:01:19 +0000
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
 id B077DA54A40; Wed, 14 Oct 2020 22:00:43 +0200 (CEST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Heiko Stuebner <heiko@sntech.de>,
	Aditya Prayoga <aditya@kobol.io>
Subject: [PATCH v4 1/2] dt-bindings: vendor-prefixes: Add kobol prefix
Date: Wed, 14 Oct 2020 22:00:29 +0200
Message-Id: <20201014200030.845759-2-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201014200030.845759-1-uwe@kleine-koenig.org>
References: <20201014200030.845759-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201014_160117_603951_7C779374 
X-CRM114-Status: UNSURE (   9.69  )
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
Cc: devicetree@vger.kernel.org, Johan Jonker <jbx6244@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

VGhlIHByZWZpeCBpcyBhbHJlYWR5IHVzZWQgaW4gYXJtL2FybWFkYS0zODgtaGVsaW9zNC5kdHMu
CgpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dXdlQGtsZWluZS1rb2VuaWcub3Jn
PgotLS0KIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy92ZW5kb3ItcHJlZml4ZXMu
eWFtbCB8IDIgKysKIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQg
YS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9yLXByZWZpeGVzLnlhbWwg
Yi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9yLXByZWZpeGVzLnlhbWwK
aW5kZXggNjM5OTZhYjAzNTIxLi5iMmNiZGFkNDU4NDYgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy92ZW5kb3ItcHJlZml4ZXMueWFtbAorKysgYi9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9yLXByZWZpeGVzLnlhbWwKQEAgLTU0NSw2
ICs1NDUsOCBAQCBwYXR0ZXJuUHJvcGVydGllczoKICAgICBkZXNjcmlwdGlvbjogS2lvbml4LCBJ
bmMuCiAgICJea29ibywuKiI6CiAgICAgZGVzY3JpcHRpb246IFJha3V0ZW4gS29ibyBJbmMuCisg
ICJea29ib2wsLioiOgorICAgIGRlc2NyaXB0aW9uOiBLb2JvbCBJbm5vdmF0aW9ucyBQdGUuIEx0
ZC4KICAgIl5rb2UsLioiOgogICAgIGRlc2NyaXB0aW9uOiBLYW9oc2l1bmcgT3B0by1FbGVjdHJv
bmljcyBJbmMuCiAgICJea29udHJvbiwuKiI6Ci0tIAoyLjI4LjAKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
