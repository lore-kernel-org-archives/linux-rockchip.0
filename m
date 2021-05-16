Return-Path: <SRS0=WkAD=KL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5EB4C433B4
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 May 2021 23:07:50 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3D60B61073
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 May 2021 23:07:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3D60B61073
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=suse.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2xa3BVAbA4NqC4XP9rp5Sm36u0dky+J2ce/gZ+1+EI0=; b=XcQvY1gXnfGWBnMB85mF0zixF
	6q9yxtEjJljoxFDjGhpYRccnKTOUR0wOujlVY35Uz/q3pcEnKjpKvl37nkG7l+yOu4Y6BLxeR7yqM
	9qnrfpMzSbXERjFL73TNhVL23WdW86ooutmRE8AAnQPRfCTGvHuRJ5GD80tQQjHhTBS6OaQlsbD/x
	F3TZgIk3jG6rGuSiEDPX0kfStMwJWL8xjIOUfaQbrBHIicKZmmJRsCABUOJ9hc67Api59ausLsk1u
	WNzIkFi112Po1vnGgzCUsFllgRp+sPLdU8N/PkhfJsAHyL+TQW3m2maCHbTcjXANNsf665QvJFKBA
	6LDGstLuA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liPrM-00D89c-Ri; Sun, 16 May 2021 23:07:45 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liPq6-00D7oB-M9; Sun, 16 May 2021 23:06:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=RdHT7KuHEx7yHRxCMbfc6rVbd1/ffAhJZYkSaJvpE28=; b=dZsHyjm3/IO6y6xio804ZscU7t
 JaUjlFrlZcXoyQ3/jUn2Gj6h2yA35+O+P3jOuOoMXblJ321ZW0+ti+DXo4Dc53Y8cM5AdOXCN1Hkd
 /O5oVy/CmG49bIytg3ARUxXM2282lpi05AVXNimLnYo73lmu3qHBT/VS7r8xvSqnPiQ77ZjgUt551
 B23psAkCZmh48xSzuZWe1dqzUOoqbDY6kiaR3ms2lDIfJOQ3n9Tli5Xyw8RBvct6WhcJ26FYMsORT
 4/sG5NlJJC3evKP7ph5VtcnBd8nl4oT808AWoniC4FdynWCdZdteQLuKwOVhMB4a9VfDwWkSz/IpS
 2f4TW7OA==;
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liPq3-00DKck-Bu; Sun, 16 May 2021 23:06:25 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 853EDB1DA;
 Sun, 16 May 2021 23:06:20 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org
Subject: [PATCH 4/9] arm64: dts: rockchip: Add Rockchip TB-RK1808M0
Date: Mon, 17 May 2021 01:05:46 +0200
Message-Id: <20210516230551.12469-5-afaerber@suse.de>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210516230551.12469-1-afaerber@suse.de>
References: <20210516230551.12469-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210516_160623_570920_0B41B2D0 
X-CRM114-Status: GOOD (  12.77  )
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

QWRkIGFuIGluaXRpYWwgRGV2aWNlIFRyZWUgZm9yIFJvY2tjaGlwIFRveWJyaWNrIFRCLVJLMTgw
OE0wIG1QQ0llIGNhcmQuCkJhc2VkIG9uIHNoaXBwaW5nIFRCLVJLMTgwOE0wIERUQi4KClNpZ25l
ZC1vZmYtYnk6IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4KLS0tCiBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlICAgICAgICAgfCAgMSArCiAuLi4vYm9vdC9k
dHMvcm9ja2NoaXAvcmsxODA4ay10b3licmljay1tMC5kdHMgfCA1NSArKysrKysrKysrKysrKysr
KysrCiAyIGZpbGVzIGNoYW5nZWQsIDU2IGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0
NCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMTgwOGstdG95YnJpY2stbTAuZHRzCgpk
aWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZSBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUKaW5kZXggYzNlMDBjMGUyZGI3Li5kNWEz
ODM3Y2NiN2MgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZp
bGUKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZQpAQCAtMyw2ICsz
LDcgQEAgZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHB4MzAtZXZiLmR0YgogZHRiLSQo
Q09ORklHX0FSQ0hfUk9DS0NISVApICs9IHB4MzAtZW5naWNhbS1weDMwLWNvcmUtY3RvdWNoMi5k
dGIKIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSBweDMwLWVuZ2ljYW0tcHgzMC1jb3Jl
LWN0b3VjaDItb2YxMC5kdGIKIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSBweDMwLWVu
Z2ljYW0tcHgzMC1jb3JlLWVkaW1tMi4yLmR0YgorZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVAp
ICs9IHJrMTgwOGstdG95YnJpY2stbTAuZHRiCiBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkg
Kz0gcmszMzA4LWV2Yi5kdGIKIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSByazMzMDgt
cm9jLWNjLmR0YgogZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzMxOC1hOTV4LXoy
LmR0YgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazE4MDhrLXRv
eWJyaWNrLW0wLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsxODA4ay10b3li
cmljay1tMC5kdHMKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi4yZjgw
NzVkMjM5MWMKLS0tIC9kZXYvbnVsbAorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMTgwOGstdG95YnJpY2stbTAuZHRzCkBAIC0wLDAgKzEsNTUgQEAKKy8vIFNQRFgtTGljZW5z
ZS1JZGVudGlmaWVyOiAoR1BMLTIuMC1vci1sYXRlciBPUiBNSVQpCisvKgorICogQ29weXJpZ2h0
IChjKSAyMDIxIEFuZHJlYXMgRsOkcmJlcgorICovCisKKy9kdHMtdjEvOworCisjaW5jbHVkZSAi
cmsxODA4LmR0c2kiCisKKy8geworCWNvbXBhdGlibGUgPSAicm9ja2NoaXAsdGItcmsxODA4bTAi
LCAicm9ja2NoaXAscmsxODA4IjsKKwltb2RlbCA9ICJSb2NrY2hpcCBUb3licmljayBUQi1SSzE4
MDhNMCI7CisKKwljaG9zZW4geworCQlzdGRvdXQtcGF0aCA9ICJzZXJpYWwyOjE1MDAwMDBuOCI7
CisJfTsKKworCW1lbW9yeUAwIHsKKwkJZGV2aWNlX3R5cGUgPSAibWVtb3J5IjsKKwkJcmVnID0g
PDB4MCAweDQwMDAwMDAwPjsKKwl9OworCisJdmNjM3YzX3BjaWU6IHZjYzN2My1wY2llIHsKKwkJ
Y29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOworCQlyZWd1bGF0b3ItbmFtZSA9ICJ2Y2Mz
djNfcGNpZSI7CisJCXJlZ3VsYXRvci1hbHdheXMtb247CisJCXJlZ3VsYXRvci1ib290LW9uOwor
CQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwzMzAwMDAwPjsKKwkJcmVndWxhdG9yLW1heC1t
aWNyb3ZvbHQgPSA8MzMwMDAwMD47CisJfTsKKworCXZkZF9jcHU6IHZkZC1jcHUgeworCQljb21w
YXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7CisJCXJlZ3VsYXRvci1uYW1lID0gInZkZF9jcHUi
OworCQlyZWd1bGF0b3ItYWx3YXlzLW9uOworCQlyZWd1bGF0b3ItYm9vdC1vbjsKKwkJcmVndWxh
dG9yLW1pbi1taWNyb3ZvbHQgPSA8ODUwMDAwPjsKKwkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQg
PSA8ODUwMDAwPjsKKwkJdmluLXN1cHBseSA9IDwmdmNjM3YzX3BjaWU+OworCX07Cit9OworCism
Y3B1MCB7CisJY3B1LXN1cHBseSA9IDwmdmRkX2NwdT47Cit9OworCismY3B1MSB7CisJY3B1LXN1
cHBseSA9IDwmdmRkX2NwdT47Cit9OworCismdWFydDIgeworCXN0YXR1cyA9ICJva2F5IjsKKwlj
bG9ja3MgPSA8JnhpbjI0bT47CisJY2xvY2stbmFtZXMgPSAiYmF1ZGNsayI7Cit9OwotLSAKMi4z
MS4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
