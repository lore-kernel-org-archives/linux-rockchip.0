Return-Path: <SRS0=LBB8=F3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 27789C433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Dec 2020 16:01:50 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B99B1221E2
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Dec 2020 16:01:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B99B1221E2
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=simonsouth.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=MTUUFq/f9FHNP/le9rbZxismscfcguU5bDehs0irLCg=; b=KzQayp+TD/aqM9CVgRsseA+Ws3
	tvCOgRSK/tpETKJkPRC029rXYj+IoWaZkAE4A1PbgjmVTunsPZfHCR/qQk6aT48HVNiMS4LLEWnRx
	vtdYYhOHxa64Zrf2lvqM3lgg3BuXmOeNzv64yf9nyd0M8XhwQaii0uKFnMkxKFL4v4fkeMgT55+HB
	1C8MYB7MHuWnHPtvkIawJjRHVm+JquJsnLP4Myg0eshLNrhmBAru3aAJMf+d32QHiD4BeGUi6mEd7
	X0PRhj5EgL1KoStWhpSKvi55M8rjDpQRRnsSjrT9uFh9W6ohrJQzl/jhLV5+VrBZP3GvkwpDh9Yir
	2a7/hAlA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ks6a7-0002pO-1p; Wed, 23 Dec 2020 16:01:43 +0000
Received: from mailout.easymail.ca ([64.68.200.34])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ks6a1-0002nV-TC; Wed, 23 Dec 2020 16:01:38 +0000
Received: from localhost (localhost [127.0.0.1])
 by mailout.easymail.ca (Postfix) with ESMTP id C95FBC0DA8;
 Wed, 23 Dec 2020 16:01:36 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at emo04-pco.easydns.vpn
Received: from mailout.easymail.ca ([127.0.0.1])
 by localhost (emo04-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uKgByDVzA3i5; Wed, 23 Dec 2020 16:01:36 +0000 (UTC)
Received: from localhost.localdomain (unknown [108.162.141.195])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailout.easymail.ca (Postfix) with ESMTPSA id 87DBBC0CDA;
 Wed, 23 Dec 2020 16:01:16 +0000 (UTC)
From: Simon South <simon@simonsouth.net>
To: tpiepho@gmail.com, thierry.reding@gmail.com,
 u.kleine-koenig@pengutronix.de, robin.murphy@arm.com, lee.jones@linaro.org,
 heiko@sntech.de, bbrezillon@kernel.org, linux-pwm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v3 0/7] pwm: rockchip: Eliminate potential race condition when
 probing
Date: Wed, 23 Dec 2020 11:01:02 -0500
Message-Id: <cover.1608735481.git.simon@simonsouth.net>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201223_110137_986714_F9E12AC1 
X-CRM114-Status: GOOD (  15.05  )
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

VGhpcyBwYXRjaCBzZXJpZXMgYWltcyB0byBlbGltaW5hdGUgdGhlIHJhY2UgY29uZGl0aW9uIFRy
ZW50IFBpZXBobwppZGVudGlmaWVkWzBdIGluIHRoZSBSb2NrY2hpcCBQV00gZHJpdmVyJ3Mgcm9j
a2NoaXBfcHdtX3Byb2JlKCkKZnVuY3Rpb24sIGJ5IG1vdmluZyBjb2RlIHRoYXQgY2hlY2tzIHdo
ZXRoZXIgYSBkZXZpY2UgaXMgZW5hYmxlZCBhaGVhZApvZiB0aGUgY29kZSB0aGF0IHJlZ2lzdGVy
cyBpdCB2aWEgcHdtY2hpcF9hZGQoKS4KCkl0IGhhcyBncm93biB0byBpbmNsdWRlIGEgbnVtYmVy
IG9mIG90aGVyIHNtYWxsIGZpeGVzIGFuZCBpbXByb3ZlbWVudHMKdG8gdGhlIGRyaXZlci4gSXQg
bm93IGFsc28KCi0gRml4ZXMgYSBwb3RlbnRpYWwga2VybmVsIGhhbmcgaW50cm9kdWNlZCBieSBt
eSBlYXJsaWVyIGNvbW1pdAogIDQ1N2Y3NGFiYmVkMCAoInB3bTogcm9ja2NoaXA6IEtlZXAgZW5h
YmxlZCBQV01zIHJ1bm5pbmcgd2hpbGUKICBwcm9iaW5nIikgYnkgZW5zdXJpbmcgYSBkZXZpY2Un
cyBBUEIgY2xvY2sgaXMgZW5hYmxlZCBiZWZvcmUgaXRzCiAgcmVnaXN0ZXJzIGFyZSBhY2Nlc3Nl
ZDsKCi0gUmVtb3ZlcyBhIHN1cGVyZmx1b3VzIGNhbGwgdG8gY2xrX3VucHJlcGFyZSgpIHRoYXQg
Y291bGQgcmVzdWx0IGluCiAgd2FybmluZ3MgZnJvbSB0aGUga2VybmVsOwoKLSBDbGFyaWZpZXMg
dGhlIGRyaXZlcidzIGVycm9yIG1lc3NhZ2VzIGJ5IHJlcGxhY2luZyAiYnVzIGNsayIgd2l0aAog
ICJQV00gY2xrIjsKCi0gUmVtb3ZlcyB0aGUgbm93LXVubmVlZGVkIGdvdG8gdGFyZ2V0cyBmcm9t
IHJvY2tjaGlwX3B3bV9wcm9iZSgpOwoKLSBUcmllcyB0byBpbXByb3ZlIHJvY2tjaGlwX3B3bV9w
cm9iZSgpIGJ5IGhhdmluZyBpdCBlbmFibGUgdGhlIHNpZ25hbAogIGNsb2NrIG9mIG9ubHkgUFdN
IGRldmljZXMgdGhhdCBhcmUgYWxyZWFkeSBydW5uaW5nOyBhbmQKCi0gRW5zdXJlcyB0aGUgZHJp
dmVyIGVuYWJsZXMgYSBjbG9jayBiZWZvcmUgcXVlcnlpbmcgaXRzIHJhdGUgd2l0aAogIGNsa19n
ZXRfcmF0ZSgpLCBhcyBzdGF0ZWQgYXMgYSByZXF1aXJlbWVudCBpbiB0aGF0IGZ1bmN0aW9uJ3MK
ICBkb2N1bWVudGF0aW9uLgoKVGhlIGZpcnN0IHBhdGNoICgiRW5hYmxlIEFQQiBjbG9jay4uLiIp
IGlzIHVuY2hhbmdlZCBmcm9tIHZlcnNpb24gMi4KCk5ldyBpbiB2ZXJzaW9uIDMgYXJlCgotIEZp
bmVyIHBhdGNoIGdyYW51bGFyaXR5LCB3aXRoIHBhdGNoZXMgMiBhbmQgNSBhZGRlZCB0byBjbGFy
aWZ5CiAgY2hhbmdlcyBpbmNsdWRlZCB3aXRoIG90aGVycyBpbiB2MjsKCi0gQSByZXdyaXR0ZW4g
cGF0Y2ggNiAoIkVuYWJsZSBQV00gY2xvY2suLi4iKSB3aXRoIGEgc21hbGxlciBjaGFuZ2UKICBh
bmQgdGhlIHVzZSBvZiBpZi4uLmVsc2UgaW4gcGxhY2Ugb2YgYSB0ZXJuYXJ5IG9wZXJhdG9yOwoK
LSBQYXRjaGVzIDMgYW5kIDcgd2l0aCBmaXhlcyBzdWdnZXN0ZWQgYnkgUm9iaW4gTXVycGh5IGFu
ZCBVd2UKICBLbGVpbmUtS8O2bmlnOyBhbmQKCi0gUmV3cml0dGVuIGFuZCAoaG9wZWZ1bGx5KSBt
b3JlIGFjY3VyYXRlIGNvbW1pdCBtZXNzYWdlcy4KCkkndmUgdGVzdGVkIHRoZXNlIGNoYW5nZXMg
b24gbXkgKFJLMzM5OS1iYXNlZCkgUGluZWJvb2sgUHJvIHdpdGggaXRzCnNjcmVlbiBiYWNrbGln
aHQgZW5hYmxlZCBieSBVLUJvb3QgYW5kIGVhY2ggb25lIGFwcGVhcnMgdG8gd29yayBmaW5lLgoK
SSdkIChzdGlsbCkgYmUgZ3JhdGVmdWwgZm9yIGhlbHAgd2l0aCB0ZXN0aW5nIG9uIG90aGVyIGRl
dmljZXMsCnBhcnRpY3VsYXJseSB0aG9zZSB3aXRoIFNvQ3MgbGlrZSB0aGUgUkszMzI4IHRoYXQg
dXNlIHNlcGFyYXRlIGJ1cyBhbmQKc2lnbmFsIGNsb2NrcyBmb3IgdGhlaXIgUFdNIGRldmljZXMu
IChNeSBST0NLNjQgdXNlcyBpdHMgUFdNLW91dHB1dApwaW5zIGZvciBvdGhlciBwdXJwb3NlcyBh
bmQgd2Fzbid0IG9mIGhlbHAgaGVyZS4pCgpbMF0gaHR0cHM6Ly93d3cuc3Bpbmljcy5uZXQvbGlz
dHMvbGludXgtcHdtL21zZzE0NjExLmh0bWwKCi0tClNpbW9uIFNvdXRoCnNpbW9uQHNpbW9uc291
dGgubmV0CgoKU2ltb24gU291dGggKDcpOgogIHB3bTogcm9ja2NoaXA6IEVuYWJsZSBBUEIgY2xv
Y2sgZHVyaW5nIHJlZ2lzdGVyIGFjY2VzcyB3aGlsZSBwcm9iaW5nCiAgcHdtOiByb2NrY2hpcDog
cm9ja2NoaXBfcHdtX3Byb2JlKCk6IFJlbW92ZSBzdXBlcmZsdW91cwogICAgY2xrX3VucHJlcGFy
ZSgpCiAgcHdtOiByb2NrY2hpcDogUmVwbGFjZSAiYnVzIGNsayIgd2l0aCAiUFdNIGNsayIKICBw
d206IHJvY2tjaGlwOiBFbGltaW5hdGUgcG90ZW50aWFsIHJhY2UgY29uZGl0aW9uIHdoZW4gcHJv
YmluZwogIHB3bTogcm9ja2NoaXA6IHJvY2tjaGlwX3B3bV9wcm9iZSgpOiBSZW1vdmUgdW5uZWVk
ZWQgZ290byB0YXJnZXQKICBwd206IHJvY2tjaGlwOiBFbmFibGUgUFdNIGNsb2NrIG9mIHByb2Jl
ZCBkZXZpY2Ugb25seSBpZiBydW5uaW5nCiAgcHdtOiByb2NrY2hpcDogRW5hYmxlIGNsb2NrIGJl
Zm9yZSBjYWxsaW5nIGNsa19nZXRfcmF0ZSgpCgogZHJpdmVycy9wd20vcHdtLXJvY2tjaGlwLmMg
fCA2NCArKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDQwIGluc2VydGlvbnMoKyksIDI0IGRlbGV0aW9ucygtKQoKLS0gCjIuMjkuMgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
