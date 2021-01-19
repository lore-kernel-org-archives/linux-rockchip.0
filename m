Return-Path: <SRS0=wbav=GW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 89173C433DB
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Jan 2021 16:14:23 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 11C302245C
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Jan 2021 16:14:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 11C302245C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=simonsouth.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=W9rEGQbtn/Ed8cR5D5qAHB95ezJ1iTQsMBNtEKVmgkI=; b=P/JhDXpR5WesIGz86jBkWE5Od
	LZU76UbdE9Hdg/VDRMZS0t2IKxxJXy2HOZj8tBx8xZFI75q5qa5iH5ZCw/JigdCzTV8ceWNS2atOl
	mVjjM6k3SIxw7hp8TYP88WMcFXXlF6oO5OMnzWkZ3ttEm8YrWmJ8BLTHE7QNQeWdEcdoDmW1rqiwA
	MseK6yHVey8v9VzS2W7wmKnN7hhbi5nL8vHGaHQVV8xNqxqbmKd2W9CDwJL5ZXI69zRlLEa7BD80k
	7gNUiarGa5PYVVGPihSqAUbXqn4zI0CQ3QTLLnqcxlYsrO2l6XGYmXw5r386t6ZXyngQ6e/Ti1Pjq
	m9cEAw3RQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l1te7-0001Rs-MD; Tue, 19 Jan 2021 16:14:19 +0000
Received: from mailout.easymail.ca ([64.68.200.34])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1tdv-0001Ln-KZ; Tue, 19 Jan 2021 16:14:09 +0000
Received: from localhost (localhost [127.0.0.1])
 by mailout.easymail.ca (Postfix) with ESMTP id 707412508A;
 Tue, 19 Jan 2021 16:14:07 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at emo06-pco.easydns.vpn
Received: from mailout.easymail.ca ([127.0.0.1])
 by localhost (emo06-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XzNuQnkCdiqe; Tue, 19 Jan 2021 16:14:07 +0000 (UTC)
Received: from localhost.localdomain (unknown [108.162.141.195])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailout.easymail.ca (Postfix) with ESMTPSA id 4D8CD25085;
 Tue, 19 Jan 2021 16:13:48 +0000 (UTC)
From: Simon South <simon@simonsouth.net>
To: tpiepho@gmail.com, thierry.reding@gmail.com,
 u.kleine-koenig@pengutronix.de, robin.murphy@arm.com, lee.jones@linaro.org,
 heiko@sntech.de, bbrezillon@kernel.org, david.wu@rock-chips.com,
 steven.liu@rock-chips.com, linux-pwm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v4 5/5] pwm: rockchip: Enable clock before calling
 clk_get_rate()
Date: Tue, 19 Jan 2021 11:12:09 -0500
Message-Id: <4924f18fea9b028cab92ad4e79d957f5cb336b9c.1610976129.git.simon@simonsouth.net>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <cover.1610976129.git.simon@simonsouth.net>
References: <cover.1610976129.git.simon@simonsouth.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210119_111407_708779_4760F06B 
X-CRM114-Status: GOOD (  15.47  )
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
Cc: simon@simonsouth.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

VGhlIGRvY3VtZW50YXRpb24gZm9yIGNsa19nZXRfcmF0ZSgpIGluIGluY2x1ZGUvbGludXgvY2xr
Lmggc3RhdGVzIHRoZQpmdW5jdGlvbidzIHJlc3VsdCBpcyB2YWxpZCBvbmx5IGZvciBhIGNsb2Nr
IHNvdXJjZSB0aGF0IGhhcyBiZWVuCmVuYWJsZWQuIEhvd2V2ZXIsIHRoZSBSb2NrY2hpcCBQV00g
ZHJpdmVyIHVzZXMgdGhpcyBmdW5jdGlvbiBpbiB0d28gcGxhY2VzCnRvIHF1ZXJ5IHRoZSByYXRl
IG9mIGEgY2xvY2sgd2l0aG91dCBmaXJzdCBlbnN1cmluZyBpdCBpcyBlbmFibGVkLgoKRml4IHRo
aXMgYnkgbW9kaWZ5aW5nIHJvY2tjaGlwX3B3bV9nZXRfc3RhdGUoKSBhbmQgcm9ja2NoaXBfcHdt
X2FwcGx5KCkgc28KdGhleSBlbmFibGUgYSBkZXZpY2UncyBQV00gY2xvY2sgYmVmb3JlIHF1ZXJ5
aW5nIGl0cyByYXRlIChpbiB0aGUgbGF0dGVyCmNhc2UsIHRoZSBxdWVyeWluZyBpcyBhY3R1YWxs
eSBkb25lIGluIHJvY2tjaGlwX3B3bV9jb25maWcoKSkgYW5kIGRpc2FibGUKdGhlIGNsb2NrIGFn
YWluIGJlZm9yZSByZXR1cm5pbmcuCgpSZXBvcnRlZC1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUu
a2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KU2lnbmVkLW9mZi1ieTogU2ltb24gU291dGgg
PHNpbW9uQHNpbW9uc291dGgubmV0PgotLS0KIGRyaXZlcnMvcHdtL3B3bS1yb2NrY2hpcC5jIHwg
MTAgKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKykKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL3B3bS9wd20tcm9ja2NoaXAuYyBiL2RyaXZlcnMvcHdtL3B3bS1yb2NrY2hp
cC5jCmluZGV4IDIyODE0N2U5YmM2ZS4uNmFkN2QwYTUwYWVkIDEwMDY0NAotLS0gYS9kcml2ZXJz
L3B3bS9wd20tcm9ja2NoaXAuYworKysgYi9kcml2ZXJzL3B3bS9wd20tcm9ja2NoaXAuYwpAQCAt
NzIsNiArNzIsMTAgQEAgc3RhdGljIHZvaWQgcm9ja2NoaXBfcHdtX2dldF9zdGF0ZShzdHJ1Y3Qg
cHdtX2NoaXAgKmNoaXAsCiAJaWYgKHJldCkKIAkJcmV0dXJuOwogCisJcmV0ID0gY2xrX2VuYWJs
ZShwYy0+Y2xrKTsKKwlpZiAocmV0KQorCQlyZXR1cm47CisKIAljbGtfcmF0ZSA9IGNsa19nZXRf
cmF0ZShwYy0+Y2xrKTsKIAogCXRtcCA9IHJlYWRsX3JlbGF4ZWQocGMtPmJhc2UgKyBwYy0+ZGF0
YS0+cmVncy5wZXJpb2QpOwpAQCAtOTAsNiArOTQsNyBAQCBzdGF0aWMgdm9pZCByb2NrY2hpcF9w
d21fZ2V0X3N0YXRlKHN0cnVjdCBwd21fY2hpcCAqY2hpcCwKIAllbHNlCiAJCXN0YXRlLT5wb2xh
cml0eSA9IFBXTV9QT0xBUklUWV9OT1JNQUw7CiAKKwljbGtfZGlzYWJsZShwYy0+Y2xrKTsKIAlj
bGtfZGlzYWJsZShwYy0+cGNsayk7CiB9CiAKQEAgLTE4OSw2ICsxOTQsMTAgQEAgc3RhdGljIGlu
dCByb2NrY2hpcF9wd21fYXBwbHkoc3RydWN0IHB3bV9jaGlwICpjaGlwLCBzdHJ1Y3QgcHdtX2Rl
dmljZSAqcHdtLAogCWlmIChyZXQpCiAJCXJldHVybiByZXQ7CiAKKwlyZXQgPSBjbGtfZW5hYmxl
KHBjLT5jbGspOworCWlmIChyZXQpCisJCXJldHVybiByZXQ7CisKIAlwd21fZ2V0X3N0YXRlKHB3
bSwgJmN1cnN0YXRlKTsKIAllbmFibGVkID0gY3Vyc3RhdGUuZW5hYmxlZDsKIApAQCAtMjA4LDYg
KzIxNyw3IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcHdtX2FwcGx5KHN0cnVjdCBwd21fY2hpcCAq
Y2hpcCwgc3RydWN0IHB3bV9kZXZpY2UgKnB3bSwKIAl9CiAKIG91dDoKKwljbGtfZGlzYWJsZShw
Yy0+Y2xrKTsKIAljbGtfZGlzYWJsZShwYy0+cGNsayk7CiAKIAlyZXR1cm4gcmV0OwotLSAKMi4z
MC4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
