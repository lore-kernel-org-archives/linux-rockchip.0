Return-Path: <SRS0=N4HT=OH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2E3BDC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Sep 2021 02:36:35 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 03108606A5
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Sep 2021 02:36:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 03108606A5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zk6A/C/x9T/AK8rSU2E8+LpJgLwqm258qwUTwS7i+rk=; b=ih3UlS1/PqkpJc
	vzNsoEcqVCcdMkDiqZj/SxMVSQflW8UPH6azkLJkHIACxxkljANxugAGpbrHySIU8NAkIUm8wu3k+
	/kC32SMTxopejDfYxRtAQ3YrmTCgnMIYZtPjoObXL5LUsP05dwYoe4jy6bYKg6G1QO8BoeWlCUWDS
	Xd4mHkmmLnLkUJDmiEi+NQQU/CWEi4xFaFSoTY4k/1VSUuCmy7YO/Vjxh5j9fJVeJO7fsmT1cMHHp
	CAcyeniSSlO0uQZTIVolOOMTwjyXoOOk0KLDPDkoxHa6WtfZv+HtS3yV3h6nGp6qazR6HrjOR0a8s
	mvDyJ2MKA9KG+IM/0B5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mR3jq-00CyTl-T7; Fri, 17 Sep 2021 02:36:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mR3iO-00CxY1-W1; Fri, 17 Sep 2021 02:35:02 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id B3E5761152;
 Fri, 17 Sep 2021 02:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1631846100;
 bh=vZCh2ARLYcUt3OW6Md53MKI/zGAahzNzswRDFu8Ueb0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ZXkMuEf4vxRtb/YIBFQp+/FS21WYnlz6StBg5582gkp7Hgx8RnH4w1T+dlatsmKiN
 lba1+O8pwp8UNnqGYmzMuTwiioQkUwCIZikljx1v1Hhqk63bmrAGxKgu+EwguUICs3
 NRoh6wcEodqmX9AsP09nM61WiaZF4CpK+mQxiKLW3+qrVfn9Kz5PaVK1KsDGnVmsY5
 Fp7vHskSIlvp8QNHMyrYktzkO4gLrTQ7E8Rh22oJ4y1Ap7G7ZdYXuuKvx3ykM/EM4t
 jPypxluywhbBTl/r9sDnEIqubryC1Vpm7Hl73FYlprgVjYsegrLUEqMtAnpv7MySQz
 NEg3xhkEDIZUg==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Thierry Reding <thierry.reding@gmail.com>, Sasha Levin <sashal@kernel.org>,
 lee.jones@linaro.org, heiko@sntech.de, linux-pwm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 4.19 2/4] pwm: rockchip: Don't modify HW state in
 .remove() callback
Date: Thu, 16 Sep 2021 22:34:55 -0400
Message-Id: <20210917023457.816816-2-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210917023457.816816-1-sashal@kernel.org>
References: <20210917023457.816816-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210916_193501_107734_E9FEADD5 
X-CRM114-Status: GOOD (  14.45  )
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

RnJvbTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4K
ClsgVXBzdHJlYW0gY29tbWl0IDlkNzY4Y2Q3ZmQ0MmJiMGJlMTZmMzZhZWM0ODU0OGZjYTUyNjA3
NTkgXQoKQSBjb25zdW1lciBpcyBleHBlY3RlZCB0byBkaXNhYmxlIGEgUFdNIGJlZm9yZSBjYWxs
aW5nIHB3bV9wdXQoKS4gQW5kIGlmCnRoZXkgZGlkbid0IHRoZXJlIGlzIGhvcGVmdWxseSBhIGdv
b2QgcmVhc29uIChvciB0aGUgY29uc3VtZXIgbmVlZHMKZml4aW5nKS4gQWxzbyBpZiBkaXNhYmxp
bmcgYW4gZW5hYmxlZCBQV00gd2FzIHRoZSByaWdodCB0aGluZyB0byBkbywKdGhpcyBzaG91bGQg
YmV0dGVyIGJlIGRvbmUgaW4gdGhlIGZyYW1ld29yayBpbnN0ZWFkIG9mIGluIGVhY2ggbG93IGxl
dmVsCmRyaXZlci4KClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1r
b2VuaWdAcGVuZ3V0cm9uaXguZGU+ClNpZ25lZC1vZmYtYnk6IFRoaWVycnkgUmVkaW5nIDx0aGll
cnJ5LnJlZGluZ0BnbWFpbC5jb20+ClNpZ25lZC1vZmYtYnk6IFNhc2hhIExldmluIDxzYXNoYWxA
a2VybmVsLm9yZz4KLS0tCiBkcml2ZXJzL3B3bS9wd20tcm9ja2NoaXAuYyB8IDE0IC0tLS0tLS0t
LS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9wd20vcHdtLXJvY2tjaGlwLmMgYi9kcml2ZXJzL3B3bS9wd20tcm9ja2NoaXAuYwppbmRl
eCA0OGJjYzg1M2Q1N2EuLmNmMzRmYjAwYzA1NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9wd20vcHdt
LXJvY2tjaGlwLmMKKysrIGIvZHJpdmVycy9wd20vcHdtLXJvY2tjaGlwLmMKQEAgLTM5MiwyMCAr
MzkyLDYgQEAgc3RhdGljIGludCByb2NrY2hpcF9wd21fcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9k
ZXZpY2UgKnBkZXYpCiB7CiAJc3RydWN0IHJvY2tjaGlwX3B3bV9jaGlwICpwYyA9IHBsYXRmb3Jt
X2dldF9kcnZkYXRhKHBkZXYpOwogCi0JLyoKLQkgKiBEaXNhYmxlIHRoZSBQV00gY2xrIGJlZm9y
ZSB1bnByZXBhcmluZyBpdCBpZiB0aGUgUFdNIGRldmljZSBpcyBzdGlsbAotCSAqIHJ1bm5pbmcu
IFRoaXMgc2hvdWxkIG9ubHkgaGFwcGVuIHdoZW4gdGhlIGxhc3QgUFdNIHVzZXIgbGVmdCBpdAot
CSAqIGVuYWJsZWQsIG9yIHdoZW4gbm9ib2R5IHJlcXVlc3RlZCBhIFBXTSB0aGF0IHdhcyBwcmV2
aW91c2x5IGVuYWJsZWQKLQkgKiBieSB0aGUgYm9vdGxvYWRlci4KLQkgKgotCSAqIEZJWE1FOiBN
YXliZSB0aGUgY29yZSBzaG91bGQgZGlzYWJsZSBhbGwgUFdNIGRldmljZXMgaW4KLQkgKiBwd21j
aGlwX3JlbW92ZSgpLiBJbiB0aGlzIGNhc2Ugd2UnZCBvbmx5IGhhdmUgdG8gY2FsbAotCSAqIGNs
a191bnByZXBhcmUoKSBhZnRlciBwd21jaGlwX3JlbW92ZSgpLgotCSAqCi0JICovCi0JaWYgKHB3
bV9pc19lbmFibGVkKHBjLT5jaGlwLnB3bXMpKQotCQljbGtfZGlzYWJsZShwYy0+Y2xrKTsKLQog
CWNsa191bnByZXBhcmUocGMtPnBjbGspOwogCWNsa191bnByZXBhcmUocGMtPmNsayk7CiAKLS0g
CjIuMzAuMgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
