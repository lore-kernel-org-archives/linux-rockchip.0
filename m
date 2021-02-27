Return-Path: <SRS0=ZnUK=H5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23F97C433E0
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Feb 2021 11:59:08 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 525A864ED5
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Feb 2021 11:59:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 525A864ED5
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=huawei.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+giReRXJRld1EbAqSAK847N4hIVpelDWfcNWGa0Tz2Q=; b=H8ebNxF1lLVJuI45xV2b33mpJd
	BmaAG+S6CA4DYPEnx/LJOGzF+HIInJjjgv3jp3ra4+5xxbOhifk4Y+WBOmUHc7iSfpkNLwIgcvNaZ
	2wHbuPMs7zpoUecU11CTC6zKnO/Cpm8eYg9QCH53ynjC/oVX6fSZ6gtx6fyG7ap1yabxWNcXfnLAe
	wDxz+Gy81/6vjGH4naBUaiA+5CRm4kyfCOoz0pzPlUOF9UlPqZ1ZUTPUCkKIK3b9pw3wYgT71FXao
	FbQEtJ0xPY44HcvNXmQ/ObHoTG7eXVLsMqNm4/l9T0qokyWui+RVQsFXO3qh3749JS/Wb6+vyEJFU
	0au4YH5Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lFyFM-00013B-L9; Sat, 27 Feb 2021 11:58:56 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lFyFH-00011l-Vp; Sat, 27 Feb 2021 11:58:53 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.60])
 by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4DnlP65k9bzjSTy;
 Sat, 27 Feb 2021 19:56:42 +0800 (CST)
Received: from mdc.huawei.com (10.175.112.208) by
 DGGEMS403-HUB.china.huawei.com (10.3.19.203) with Microsoft SMTP Server id
 14.3.498.0; Sat, 27 Feb 2021 19:58:09 +0800
From: Chen Jun <chenjun102@huawei.com>
To: <linux-kernel@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
 <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH] rockchip: Make cdn_dp_resume depend on CONFIG_PM_SLEEP
Date: Sat, 27 Feb 2021 11:56:28 +0000
Message-ID: <20210227115628.104177-1-chenjun102@huawei.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-Originating-IP: [10.175.112.208]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210227_065852_326273_C5066891 
X-CRM114-Status: UNSURE (   9.40  )
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
Cc: heiko@sntech.de, airlied@linux.ie, hjc@rock-chips.com,
 dri-devel@lists.freedesktop.org, rui.xiang@huawei.com, daniel@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SWYgYnVpbGQgSW1hZ2Ugd2l0aG91dCBDT05GSUdfUE1fU0xFRVAsIHRoZXJlIHdvdWxkIGJlIGEg
Y29tcGlsZSB3YXJuaW5nOgp3YXJuaW5nOiDigJhjZG5fZHBfcmVzdW1l4oCZIGRlZmluZWQgYnV0
IG5vdCB1c2VkIFstV3VudXNlZC1mdW5jdGlvbl0KCkJlY2F1c2UgU0VUX1NZU1RFTV9TTEVFUF9Q
TV9PUFMgd2lsbCBkbyBub3RoaW5nIHdpdGhvdXQgQ09ORklHX1BNX1NMRUVQLgoKTWFrZSBjZG5f
ZHBfcmVzdW1lIGRlcGVuZCBvbiBDT05GSUdfUE1fU0xFRVAKClNpZ25lZC1vZmYtYnk6IENoZW4g
SnVuIDxjaGVuanVuMTAyQGh1YXdlaS5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlw
L2Nkbi1kcC1jb3JlLmMgfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2Nkbi1kcC1jb3JlLmMgYi9kcml2
ZXJzL2dwdS9kcm0vcm9ja2NoaXAvY2RuLWRwLWNvcmUuYwppbmRleCBhNGE0NWRhZjkzZjIuLjA2
M2E2MGQyMTNiYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2Nkbi1kcC1j
b3JlLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2Nkbi1kcC1jb3JlLmMKQEAgLTEx
MjEsNiArMTEyMSw3IEBAIHN0YXRpYyBpbnQgY2RuX2RwX3N1c3BlbmQoc3RydWN0IGRldmljZSAq
ZGV2KQogCXJldHVybiByZXQ7CiB9CiAKKyNpZmRlZiBDT05GSUdfUE1fU0xFRVAKIHN0YXRpYyBp
bnQgY2RuX2RwX3Jlc3VtZShzdHJ1Y3QgZGV2aWNlICpkZXYpCiB7CiAJc3RydWN0IGNkbl9kcF9k
ZXZpY2UgKmRwID0gZGV2X2dldF9kcnZkYXRhKGRldik7CkBAIC0xMTMzLDYgKzExMzQsNyBAQCBz
dGF0aWMgaW50IGNkbl9kcF9yZXN1bWUoc3RydWN0IGRldmljZSAqZGV2KQogCiAJcmV0dXJuIDA7
CiB9CisjZW5kaWYKIAogc3RhdGljIGludCBjZG5fZHBfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rl
dmljZSAqcGRldikKIHsKLS0gCjIuMjUuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
