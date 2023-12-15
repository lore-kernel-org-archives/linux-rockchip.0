Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A4D5C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Dec 2023 06:58:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tk2TnVeDHv3GfKBeTUyIFprkpIWMNbiSGVwl44EziLQ=; b=A58MW8GeJ8VGVb
	Kb6NEMOJrQ+lOqEUgEHjCnbW6GYcaD9BUpP3VYWgGSl4r/LwHShWkuOR8OOLIb/9vzvLU40rREa+Z
	rJRzbOxwD4DvhxsClg2n6h3KDOYH9iiN0sxNgHhAeJIdtPWBnDq2+SL7R4lhY5sQadv+j+Aa5+2aB
	TORXru+CZX7yYA8C2MQ6xIs7zXneQt6CUTstpWR67PdPRcWr17xDWyldAvIu1lQ1pN4fccgPBAGjg
	DSGJCFvsU5n9xXGzRx1JMSScC6MfJ5sI7QJ42SbCVMdvAhFlngAq1RwuZrUtp4VtdjAF2PuyVQ18e
	kIw/kg2xJI60/Wn0WFfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rE290-002F3R-0V;
	Fri, 15 Dec 2023 06:57:58 +0000
Received: from out30-124.freemail.mail.aliyun.com ([115.124.30.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rE28w-002F2c-2S;
	Fri, 15 Dec 2023 06:57:56 +0000
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R551e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=ay29a033018046049;MF=jiapeng.chong@linux.alibaba.com;NM=1;PH=DS;RN=14;SR=0;TI=SMTPD_---0VyWoQ7T_1702623454;
Received: from localhost(mailfrom:jiapeng.chong@linux.alibaba.com fp:SMTPD_---0VyWoQ7T_1702623454)
          by smtp.aliyun-inc.com;
          Fri, 15 Dec 2023 14:57:45 +0800
From: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
To: hjc@rock-chips.com
Cc: heiko@sntech.de,
	andy.yan@rock-chips.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jiapeng Chong <jiapeng.chong@linux.alibaba.com>,
	Abaci Robot <abaci@linux.alibaba.com>
Subject: [PATCH] drm/rockchip: vop2: Remove the unused variable if_dclk_rate
Date: Fri, 15 Dec 2023 14:57:33 +0800
Message-Id: <20231215065733.48895-1-jiapeng.chong@linux.alibaba.com>
X-Mailer: git-send-email 2.20.1.7.g153144c
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_225754_966472_0F36A7E1 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
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

VmFyaWFibGUgaWZfZGNsa19yYXRlIGlzIG5vdCBlZmZlY3RpdmVseSB1c2VkLCBzbyBkZWxldGUg
aXQuCgpkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYzoxNjg4OjE2
OiB3YXJuaW5nOiB2YXJpYWJsZSDigJhpZl9kY2xrX3JhdGXigJkgc2V0IGJ1dCBub3QgdXNlZC4K
ClJlcG9ydGVkLWJ5OiBBYmFjaSBSb2JvdCA8YWJhY2lAbGludXguYWxpYmFiYS5jb20+CkNsb3Nl
czogaHR0cHM6Ly9idWd6aWxsYS5vcGVuYW5vbGlzLmNuL3Nob3dfYnVnLmNnaT9pZD03NzUwClNp
Z25lZC1vZmYtYnk6IEppYXBlbmcgQ2hvbmcgPGppYXBlbmcuY2hvbmdAbGludXguYWxpYmFiYS5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmMgfCA0
IC0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jIGIvZHJpdmVycy9ncHUvZHJt
L3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmMKaW5kZXggNDQ1MDhjMmRkNjE0Li5iNGU3Y2Rk
YWYyNWEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1f
dm9wMi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5j
CkBAIC0xNjg1LDEzICsxNjg1LDExIEBAIHN0YXRpYyB1bnNpZ25lZCBsb25nIHJrMzU4OF9jYWxj
X2NydV9jZmcoc3RydWN0IHZvcDJfdmlkZW9fcG9ydCAqdnAsIGludCBpZCwKIAl1bnNpZ25lZCBs
b25nIGRjbGtfY29yZV9yYXRlID0gdl9waXhjbGsgPj4gMjsKIAl1bnNpZ25lZCBsb25nIGRjbGtf
cmF0ZSA9IHZfcGl4Y2xrOwogCXVuc2lnbmVkIGxvbmcgZGNsa19vdXRfcmF0ZTsKLQl1bnNpZ25l
ZCBsb25nIGlmX2RjbGtfcmF0ZTsKIAl1bnNpZ25lZCBsb25nIGlmX3BpeGNsa19yYXRlOwogCWlu
dCBLID0gMTsKIAogCWlmICh2b3AyX291dHB1dF9pZl9pc19oZG1pKGlkKSkgewogCQkvKgotCQkg
KiBLID0gMjogZGNsa19jb3JlID0gaWZfcGl4Y2xrX3JhdGUgPiBpZl9kY2xrX3JhdGUKIAkJICog
SyA9IDE6IGRjbGtfY29yZSA9IGhkbWllX2VkcF9kY2xrID4gaWZfcGl4Y2xrX3JhdGUKIAkJICov
CiAJCWlmIChvdXRwdXRfbW9kZSA9PSBST0NLQ0hJUF9PVVRfTU9ERV9ZVVY0MjApIHsKQEAgLTE3
MDAsMTAgKzE2OTgsOCBAQCBzdGF0aWMgdW5zaWduZWQgbG9uZyByazM1ODhfY2FsY19jcnVfY2Zn
KHN0cnVjdCB2b3AyX3ZpZGVvX3BvcnQgKnZwLCBpbnQgaWQsCiAJCX0KIAogCQlpZl9waXhjbGtf
cmF0ZSA9IChkY2xrX2NvcmVfcmF0ZSA8PCAxKSAvIEs7Ci0JCWlmX2RjbGtfcmF0ZSA9IGRjbGtf
Y29yZV9yYXRlIC8gSzsKIAkJLyoKIAkJICogKmlmX3BpeGNsa19kaXYgPSBkY2xrX3JhdGUgLyBp
Zl9waXhjbGtfcmF0ZTsKLQkJICogKmlmX2RjbGtfZGl2ID0gZGNsa19yYXRlIC8gaWZfZGNsa19y
YXRlOwogCQkgKi8KIAkJICppZl9waXhjbGtfZGl2ID0gMjsKIAkJICppZl9kY2xrX2RpdiA9IDQ7
Ci0tIAoyLjIwLjEuNy5nMTUzMTQ0YwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
