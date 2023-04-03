Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 974F4C76196
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Apr 2023 15:40:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lz2NyFGVFU+EgPaKjLu7pLwvQrsgdP8qpSrzONjqVTQ=; b=WWrYbg7P4UihK0
	WoBqhpXzpBnHfQATZOJw3uNqVQ6iAs7AWf8o0EMdD9GwxWX52Rq05QTd92WZ8guifEjwLdOaweZKp
	NzvbnBUc8Q9GjGSDNh7mhHZTLtewSfiYb/jj29iEFgLPie8gaZBSJilPc5eQxxGgZN8BNVVOFS1YV
	U0Z+2hw/Pn5aeYvfLJtT8wtCxspraBlGQoI6SuGW0VPA8vPsadUiINLDpISNJTi6+KV0LNFBmjpMe
	1LDf9rnnpzmStKq560LbwyyWLWwpu/NBoKMaQ6Lt5KyJ3Lmy1k0Ql2DOrlQNb7dCoU9HI6Q5uFLMW
	KjVgp4JscxKmWFlt80TA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjMIM-00FnuW-0I;
	Mon, 03 Apr 2023 15:40:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjMII-00Fnp0-2I
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Apr 2023 15:40:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pjMIB-0004fG-6D; Mon, 03 Apr 2023 17:40:23 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pjMI8-008ibL-GH; Mon, 03 Apr 2023 17:40:20 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pjMI7-00AHxK-HR; Mon, 03 Apr 2023 17:40:19 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	kernel@pengutronix.de
Subject: [PATCH 14/24] staging: media: rkvdec: Convert to platform remove callback returning void
Date: Mon,  3 Apr 2023 17:40:04 +0200
Message-Id: <20230403154014.2564054-15-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230403154014.2564054-1-u.kleine-koenig@pengutronix.de>
References: <20230403154014.2564054-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1703; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=aYW8yQnBrMkMM77Xam+1yHywljoTQ6r3WzFLmSM8zHo=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBkKvNFHj+rVqhEcmHGr+5GVmb/w2GoHnRBwVd0l EQflEQSGxqJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZCrzRQAKCRCPgPtYfRL+ Tor+B/9aiLVMyDmNRvI39fdjAvqB99aUsPoL2ns6k0IdyGNhJZsa/VB/3bcOZJIKLG+q7KTZA3Y VOhuzpRAzuLGUDcSz8VKLO9wr17bwM7rGjOA4jHFwgDUf0FCdf629s5l+GinjNKEJwoirx8fXOY Ca8ETjl3uI7nNA36R2Tb67iSyU5GWXm3DblCSQJbT7Q3VkBk5qHPQreaCgd+FMceqqS3Y4yuY1R uni9mOF1vu1RdzRe65jqwpRFPQflADqX61/KWpbBM+AjDrawAFLEek0NgwPB0LdQUEf/MMILvrD l2w3j6sJO82LkdtdsEjBMViNFWATJFAZvNw7yXwPnxiaWW7D
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_084030_781826_ED979683 
X-CRM114-Status: GOOD (  16.45  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

VGhlIC5yZW1vdmUoKSBjYWxsYmFjayBmb3IgYSBwbGF0Zm9ybSBkcml2ZXIgcmV0dXJucyBhbiBp
bnQgd2hpY2ggbWFrZXMKbWFueSBkcml2ZXIgYXV0aG9ycyB3cm9uZ2x5IGFzc3VtZSBpdCdzIHBv
c3NpYmxlIHRvIGRvIGVycm9yIGhhbmRsaW5nIGJ5CnJldHVybmluZyBhbiBlcnJvciBjb2RlLiBI
b3dldmVyIHRoZSB2YWx1ZSByZXR1cm5lZCBpcyAobW9zdGx5KSBpZ25vcmVkCmFuZCB0aGlzIHR5
cGljYWxseSByZXN1bHRzIGluIHJlc291cmNlIGxlYWtzLiBUbyBpbXByb3ZlIGhlcmUgdGhlcmUg
aXMgYQpxdWVzdCB0byBtYWtlIHRoZSByZW1vdmUgY2FsbGJhY2sgcmV0dXJuIHZvaWQuIEluIHRo
ZSBmaXJzdCBzdGVwIG9mIHRoaXMKcXVlc3QgYWxsIGRyaXZlcnMgYXJlIGNvbnZlcnRlZCB0byAu
cmVtb3ZlX25ldygpIHdoaWNoIGFscmVhZHkgcmV0dXJucwp2b2lkLgoKVHJpdmlhbGx5IGNvbnZl
cnQgdGhpcyBkcml2ZXIgZnJvbSBhbHdheXMgcmV0dXJuaW5nIHplcm8gaW4gdGhlIHJlbW92ZQpj
YWxsYmFjayB0byB0aGUgdm9pZCByZXR1cm5pbmcgdmFyaWFudC4KClNpZ25lZC1vZmYtYnk6IFV3
ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQogZHJp
dmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMuYyB8IDUgKystLS0KIDEgZmlsZSBjaGFu
Z2VkLCAyIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMuYyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9y
a3ZkZWMvcmt2ZGVjLmMKaW5kZXggN2JhYjc1ODY5MThjLi4zZGY5Nzc2NTNiYTUgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLmMKKysrIGIvZHJpdmVycy9z
dGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMuYwpAQCAtMTA2MiwxNCArMTA2MiwxMyBAQCBzdGF0
aWMgaW50IHJrdmRlY19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCXJldHVy
biByZXQ7CiB9CiAKLXN0YXRpYyBpbnQgcmt2ZGVjX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2
aWNlICpwZGV2KQorc3RhdGljIHZvaWQgcmt2ZGVjX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2
aWNlICpwZGV2KQogewogCXN0cnVjdCBya3ZkZWNfZGV2ICpya3ZkZWMgPSBwbGF0Zm9ybV9nZXRf
ZHJ2ZGF0YShwZGV2KTsKIAogCXJrdmRlY192NGwyX2NsZWFudXAocmt2ZGVjKTsKIAlwbV9ydW50
aW1lX2Rpc2FibGUoJnBkZXYtPmRldik7CiAJcG1fcnVudGltZV9kb250X3VzZV9hdXRvc3VzcGVu
ZCgmcGRldi0+ZGV2KTsKLQlyZXR1cm4gMDsKIH0KIAogI2lmZGVmIENPTkZJR19QTQpAQCAtMTA5
OSw3ICsxMDk4LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkZXZfcG1fb3BzIHJrdmRlY19wbV9v
cHMgPSB7CiAKIHN0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIHJrdmRlY19kcml2ZXIgPSB7
CiAJLnByb2JlID0gcmt2ZGVjX3Byb2JlLAotCS5yZW1vdmUgPSBya3ZkZWNfcmVtb3ZlLAorCS5y
ZW1vdmVfbmV3ID0gcmt2ZGVjX3JlbW92ZSwKIAkuZHJpdmVyID0gewogCQkgICAubmFtZSA9ICJy
a3ZkZWMiLAogCQkgICAub2ZfbWF0Y2hfdGFibGUgPSBvZl9ya3ZkZWNfbWF0Y2gsCi0tIAoyLjM5
LjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
