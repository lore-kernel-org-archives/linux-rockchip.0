Return-Path: <SRS0=WkAD=KL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4ED33C433B4
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 May 2021 23:09:06 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 141CF6100A
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 May 2021 23:09:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 141CF6100A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=suse.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2jhDyNDCsR1DKPCNU51E9a1d9zrHC/9whVMgF600Eqk=; b=dsyxtpIAVawvasmgzrfRMDQKx
	xoKDkpSdck6gsihf5pkW2yyEVymhEd/s3JAEDwsB1/cB4jqT1TK6TF55VPmWZq+5UVBVl/tVJaSD0
	GrcE5Xd50Suq8r0nQ+HH4JqcTO9tWd6PLpBiXY10wDVxuViY0inm+QaJ45VtY2EdcFHXr2LcY9Ztj
	A6ISjPYdAfPYaYU2eaOj6RcQSap//H6TXzIjC8lqkoTUfp6QJCyuS9E007D7Q1bfrgme0he2QFfMS
	Ac3B9afhl6V/UOnMgPk+IGgyNtfEztZknfKkSSQvOG/a0vLJmBNVMMbUl7qphGigj+hWulVcWqv6I
	tUQGQpfZw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liPsZ-00D8gx-SN; Sun, 16 May 2021 23:09:00 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liPq7-00D7oM-Vb; Sun, 16 May 2021 23:06:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=53oYo7BlX7RNapV64mjQVYn+6D5hJMjiTqFpVSzEk0U=; b=TJEOmsK8BhMP1rLxi0LhAPGxB2
 SoUH9fjRJxWswy1EQ/acvzrY9UX0BmNx0jxf9RCh9CtWTH6aSw3vXZP3NlHjBVA5mwwC90i5HJrAg
 j8iH7F+Ox2mb9HDIAvD27PVPztSJHgAAPrd/0uirz+B1+KZd3d1Zu8kBjtqG5XVYVr4bvZ2BiDhZM
 Ov7MhkEqGckZzQLdiuI/Mp5zP/vtFjSdcmglqM36ICGhlku1zcEB03RJzUWt6JeqOQ1QVtpGgDv3S
 ws+YwiE/ThDNoBXP02rjUsmJX5d40TNlgy4hIugf5VHEKF8qL9P6iy9neup4rP+Ac6dZvs3CRBFYv
 pDzLgI1Q==;
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liPq5-00DKe8-Da; Sun, 16 May 2021 23:06:26 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id CCB85B1DD;
 Sun, 16 May 2021 23:06:20 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org
Subject: [PATCH RFC 5/9] arm64: dts: rockchip: rk1808k-toybrick-m0: Suppress
 vGIC interrupt
Date: Mon, 17 May 2021 01:05:47 +0200
Message-Id: <20210516230551.12469-6-afaerber@suse.de>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210516230551.12469-1-afaerber@suse.de>
References: <20210516230551.12469-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210516_160625_623644_824C7267 
X-CRM114-Status: UNSURE (   8.67  )
X-CRM114-Notice: Please train this message.
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

QXZvaWQgdGhlIGtlcm5lbCBnZXR0aW5nIHN0dWNrIGFmdGVyOgoKWyAgICAxLjE3NTk1Nl0ga3Zt
IFsxXTogSVBBIFNpemUgTGltaXQ6IDQwIGJpdHMKWyAgICAxLjE3NzE2NF0ga3ZtIFsxXTogdmdp
Yy12MkBmZjMyMDAwMApbICAgIDEuMTc3NTQ1XSBrdm0gWzFdOiBHSUMgc3lzdGVtIHJlZ2lzdGVy
IENQVSBpbnRlcmZhY2UgZW5hYmxlZAoKb3Igd2hlbiBkcm9wcGluZyBHSUNWIHJlZyBlbnRyeToK
ClsgICAgMS4xNzYwMDFdIGt2bSBbMV06IElQQSBTaXplIExpbWl0OiA0MCBiaXRzClsgICAgMS4x
NzcxOTFdIGt2bSBbMV06IEdJQ3YzOiBubyBHSUNWIHJlc291cmNlIGVudHJ5ClsgICAgMS4xNzc2
NjRdIGt2bSBbMV06IGRpc2FibGluZyBHSUN2MiBlbXVsYXRpb24KWyAgICAxLjE3ODExNV0ga3Zt
IFsxXTogR0lDIHN5c3RlbSByZWdpc3RlciBDUFUgaW50ZXJmYWNlIGVuYWJsZWQKClNpZ25lZC1v
ZmYtYnk6IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4KLS0tCiBhcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMTgwOGstdG95YnJpY2stbTAuZHRzIHwgNCArKysrCiAxIGZp
bGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazE4MDhrLXRveWJyaWNrLW0wLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmsxODA4ay10b3licmljay1tMC5kdHMKaW5kZXggMmY4MDc1ZDIzOTFjLi4x
NTI5M2E4NTc2YzYgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsx
ODA4ay10b3licmljay1tMC5kdHMKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azE4MDhrLXRveWJyaWNrLW0wLmR0cwpAQCAtNDgsNiArNDgsMTAgQEAgJmNwdTEgewogCWNwdS1z
dXBwbHkgPSA8JnZkZF9jcHU+OwogfTsKIAorJmdpYyB7CisJL2RlbGV0ZS1wcm9wZXJ0eS8gaW50
ZXJydXB0czsKK307CisKICZ1YXJ0MiB7CiAJc3RhdHVzID0gIm9rYXkiOwogCWNsb2NrcyA9IDwm
eGluMjRtPjsKLS0gCjIuMzEuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
