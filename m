Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2937FC433FE
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Nov 2022 17:55:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l0VVwOCnvxjajFpn0GlyypOTGXyvyjeTZnoOAe8D/R4=; b=pSsKSQmIPOJPd5
	Ui1hRKW1B7L2o3nrvfRHdtSeAMpCFCO5SkH9Tgjrtan5kKJZTStDwF2zmxy2oo+8CjYQ7jjKtuCss
	9rXxN8vSYSnTnnDvm9Vg3o9v9d3cOEwsGIapcYMzrFkNcsdVJWhIhLlHRNogz1x4ubIYJ6o7hJ+rD
	n6gS+PS1GNHTlw8LCOpBOumLEvna57S3zYuip03qifbsYeXUSGApg1vs2YUsIgf/I9ORLjFK1MKuj
	e8GAn6A+Yh/Hy+vwJhIIVAo0iinMx442TJ40Rgj6lNaJic+ydmNEyB0K1vshq6/Svg1p7MBOzIuMw
	JPwW958IG9F/PoCe116w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os6Kt-00Gx0o-52; Mon, 07 Nov 2022 17:55:03 +0000
Received: from aposti.net ([89.234.176.197])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os6JB-00Gvvv-E9; Mon, 07 Nov 2022 17:53:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1667843592; h=from:from:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=H8pAyOlP7Xx5OwjiRIaFlkfD4bNit3L8bl0IUhfSO6I=;
	b=qsyxCgN0sN+ARh1+P1h+1FIkwlPwMd4Ug9gjGO+OK/xM3oPoWKF4SwUC9zdgEu0+UZk+7a
	HcyfcQ0Rkg6+Nb8IU7mPqnwdzz40vRFn1HYCsiYVDidekFLfuRB3IyRWFoWpIB+TXFlz9G
	/BuGBtZVO03djzY3tdYyK7MoVCOTFtU=
From: Paul Cercueil <paul@crapouillou.net>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	Paul Cercueil <paul@crapouillou.net>,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 18/26] drm: rockchip: Remove #ifdef guards for PM related functions
Date: Mon,  7 Nov 2022 17:52:48 +0000
Message-Id: <20221107175256.360839-8-paul@crapouillou.net>
In-Reply-To: <20221107175256.360839-1-paul@crapouillou.net>
References: <20221107175106.360578-1-paul@crapouillou.net>
 <20221107175256.360839-1-paul@crapouillou.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_095317_697507_5C079221 
X-CRM114-Status: GOOD (  13.58  )
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

VXNlIHRoZSBwbV9zbGVlcF9wdHIoKSBtYWNyb3MgdG8gaGFuZGxlIHRoZSAuc3VzcGVuZF9sYXRl
IC8KLnJlc3VtZV9lYXJseSBjYWxsYmFja3MuCgpUaGlzIG1hY3JvIGFsbG93cyB0aGUgc3VzcGVu
ZCBhbmQgcmVzdW1lIGZ1bmN0aW9ucyB0byBiZSBhdXRvbWF0aWNhbGx5CmRyb3BwZWQgYnkgdGhl
IGNvbXBpbGVyIHdoZW4gQ09ORklHX1NVU1BFTkQgaXMgZGlzYWJsZWQsIHdpdGhvdXQgaGF2aW5n
CnRvIHVzZSAjaWZkZWYgZ3VhcmRzLgoKVGhpcyBoYXMgdGhlIGFkdmFudGFnZSBvZiBhbHdheXMg
Y29tcGlsaW5nIHRoZXNlIGZ1bmN0aW9ucyBpbiwKaW5kZXBlbmRlbnRseSBvZiBhbnkgS2NvbmZp
ZyBvcHRpb24uIFRoYW5rcyB0byB0aGF0LCBidWdzIGFuZCBvdGhlcgpyZWdyZXNzaW9ucyBhcmUg
c3Vic2VxdWVudGx5IGVhc2llciB0byBjYXRjaC4KClNpZ25lZC1vZmYtYnk6IFBhdWwgQ2VyY3Vl
aWwgPHBhdWxAY3JhcG91aWxsb3UubmV0PgotLS0KQ2M6IFNhbmR5IEh1YW5nIDxoamNAcm9jay1j
aGlwcy5jb20+CkNjOiAiSGVpa28gU3TDvGJuZXIiIDxoZWlrb0BzbnRlY2guZGU+CkNjOiBsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKQ2M6IGxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKLS0tCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvYW5hbG9naXhfZHAt
cm9ja2NoaXAuYyB8IDYgKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDUg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2FuYWxv
Z2l4X2RwLXJvY2tjaGlwLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvYW5hbG9naXhfZHAt
cm9ja2NoaXAuYwppbmRleCBhZDJkM2FlN2U2MjEuLjBkZjBmYTU0MGQ3ZSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2FuYWxvZ2l4X2RwLXJvY2tjaGlwLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL3JvY2tjaGlwL2FuYWxvZ2l4X2RwLXJvY2tjaGlwLmMKQEAgLTQyOSw3ICs0
MjksNiBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX2RwX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2
aWNlICpwZGV2KQogCXJldHVybiAwOwogfQogCi0jaWZkZWYgQ09ORklHX1BNX1NMRUVQCiBzdGF0
aWMgaW50IHJvY2tjaGlwX2RwX3N1c3BlbmQoc3RydWN0IGRldmljZSAqZGV2KQogewogCXN0cnVj
dCByb2NrY2hpcF9kcF9kZXZpY2UgKmRwID0gZGV2X2dldF9kcnZkYXRhKGRldik7CkBAIC00NDks
MTMgKzQ0OCwxMCBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX2RwX3Jlc3VtZShzdHJ1Y3QgZGV2aWNl
ICpkZXYpCiAKIAlyZXR1cm4gYW5hbG9naXhfZHBfcmVzdW1lKGRwLT5hZHApOwogfQotI2VuZGlm
CiAKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZGV2X3BtX29wcyByb2NrY2hpcF9kcF9wbV9vcHMgPSB7
Ci0jaWZkZWYgQ09ORklHX1BNX1NMRUVQCiAJLnN1c3BlbmRfbGF0ZSA9IHJvY2tjaGlwX2RwX3N1
c3BlbmQsCiAJLnJlc3VtZV9lYXJseSA9IHJvY2tjaGlwX2RwX3Jlc3VtZSwKLSNlbmRpZgogfTsK
IAogc3RhdGljIGNvbnN0IHN0cnVjdCByb2NrY2hpcF9kcF9jaGlwX2RhdGEgcmszMzk5X2VkcCA9
IHsKQEAgLTQ4NCw3ICs0ODAsNyBAQCBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIHJvY2tjaGlwX2Rw
X2RyaXZlciA9IHsKIAkucmVtb3ZlID0gcm9ja2NoaXBfZHBfcmVtb3ZlLAogCS5kcml2ZXIgPSB7
CiAJCSAgIC5uYW1lID0gInJvY2tjaGlwLWRwIiwKLQkJICAgLnBtID0gJnJvY2tjaGlwX2RwX3Bt
X29wcywKKwkJICAgLnBtID0gcG1fc2xlZXBfcHRyKCZyb2NrY2hpcF9kcF9wbV9vcHMpLAogCQkg
ICAub2ZfbWF0Y2hfdGFibGUgPSByb2NrY2hpcF9kcF9kdF9pZHMsCiAJfSwKIH07Ci0tIAoyLjM1
LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
