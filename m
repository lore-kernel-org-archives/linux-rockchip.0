Return-Path: <SRS0=LkMs=CZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 16AE3C43461
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Sep 2020 16:18:34 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B8C2C2244C
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Sep 2020 16:18:33 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="XBe+GTws";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="c2qzRyiz"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B8C2C2244C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gTT2dWPCT7knXG5CrClXwwuSOy+s9WP9t/lOiDDDTsE=; b=XBe+GTwsCuU2E9LrAwaPCXm2v
	ahUrmXCsmhJCZuFUynEhTm3xu1sOKlGQhAukluphaTwJMvNTELu5jXIKnBP+JRopNvK1dKeth3j7p
	xUeM1TTWfXLNY9jHXTW7VgEqgKin8LciUrF0anOqblRolvVubqXwkq9r5/CidfCJw15HMM+leR1vA
	Oxd/cYwwnFsdoFnFr/YovZ/DkziJ+qSfgwCf14EMr2cx9vVvNeu8WRHA0kgNthI71+imJUaq2IjPh
	qknBUffVLRugjTkVYVCUvjCDcXNAx0PQUu0jL6xJlJGD87sLcljYhIDBINIQuCNB0Jc/fVr4JbanL
	51AM3F18g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kIa8b-0002Ls-M1; Wed, 16 Sep 2020 16:18:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIa8D-0002Cf-LJ; Wed, 16 Sep 2020 16:18:09 +0000
Received: from kozik-lap.mshome.net (unknown [194.230.155.191])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D510222596;
 Wed, 16 Sep 2020 16:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600273084;
 bh=rDklET3URHRDBZEvF6OLfVutgrEE+P7xngbDw3ovJPk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=c2qzRyizp/VEct8ssgms7hbJXVwjVImM85Q7xFsmmmORaJJoUfwUgoBGEFqi0by2T
 G5IZj2iDxNypoGC+dc+C7hgmzL2KBMi2fi4175i+oyaRfPHYbrPLSGxuuLOR8gaieR
 ArI/ZIcqrnWAWOtZotaHfvbhZ+dh7bfZdpN9lSwo=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 David Lechner <david@lechnology.com>, Sekhar Nori <nsekhar@ti.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH 5/6] clk: si5341: drop unused 'err' variable
Date: Wed, 16 Sep 2020 18:17:39 +0200
Message-Id: <20200916161740.14173-5-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200916161740.14173-1-krzk@kernel.org>
References: <20200916161740.14173-1-krzk@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200916_121805_822707_5643C68C 
X-CRM114-Status: GOOD (  13.93  )
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
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

J2VycicgaXMgYXNzaWduZWQgYnV0IG5ldmVyIHJlYWQ6CgogIC9kcml2ZXJzL2Nsay9jbGstc2k1
MzQxLmM6IEluIGZ1bmN0aW9uIOKAmHNpNTM0MV9vdXRwdXRfZ2V0X3BhcmVudOKAmToKICBkcml2
ZXJzL2Nsay9jbGstc2k1MzQxLmM6ODg2OjY6IHdhcm5pbmc6IHZhcmlhYmxlIOKAmGVycuKAmSBz
ZXQgYnV0IG5vdCB1c2VkIFstV3VudXNlZC1idXQtc2V0LXZhcmlhYmxlXQoKU2lnbmVkLW9mZi1i
eTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6a0BrZXJuZWwub3JnPgotLS0KIGRyaXZlcnMvY2xr
L2Nsay1zaTUzNDEuYyB8IDQgKy0tLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAz
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xrL2Nsay1zaTUzNDEuYyBiL2Ry
aXZlcnMvY2xrL2Nsay1zaTUzNDEuYwppbmRleCAzZDdhY2FiOWQyODAuLmUwNDQ2ZTY2ZmE2NCAx
MDA2NDQKLS0tIGEvZHJpdmVycy9jbGsvY2xrLXNpNTM0MS5jCisrKyBiL2RyaXZlcnMvY2xrL2Ns
ay1zaTUzNDEuYwpAQCAtODgzLDExICs4ODMsOSBAQCBzdGF0aWMgaW50IHNpNTM0MV9vdXRwdXRf
c2V0X3BhcmVudChzdHJ1Y3QgY2xrX2h3ICpodywgdTggaW5kZXgpCiBzdGF0aWMgdTggc2k1MzQx
X291dHB1dF9nZXRfcGFyZW50KHN0cnVjdCBjbGtfaHcgKmh3KQogewogCXN0cnVjdCBjbGtfc2k1
MzQxX291dHB1dCAqb3V0cHV0ID0gdG9fY2xrX3NpNTM0MV9vdXRwdXQoaHcpOwotCWludCBlcnI7
CiAJdTMyIHZhbDsKIAotCWVyciA9IHJlZ21hcF9yZWFkKG91dHB1dC0+ZGF0YS0+cmVnbWFwLAot
CQkJU0k1MzQxX09VVF9NVVhfU0VMKG91dHB1dCksICZ2YWwpOworCXJlZ21hcF9yZWFkKG91dHB1
dC0+ZGF0YS0+cmVnbWFwLCBTSTUzNDFfT1VUX01VWF9TRUwob3V0cHV0KSwgJnZhbCk7CiAKIAly
ZXR1cm4gdmFsICYgMHg3OwogfQotLSAKMi4xNy4xCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
