Return-Path: <SRS0=WkAD=KL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9204C43460
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 May 2021 23:06:46 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 886FA6113C
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 May 2021 23:06:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 886FA6113C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=suse.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yfZ8xVVM+quHk79PtwDo39lmycBVMotfsvikqpg3Ty0=; b=bd1vmfKy333rf2faetyi1sXlQ
	22PCKKzk9J6I21kTO6cWKVbfmLI237PXcfJ2LaKfXdLzmK6oKLT/ZvaNh3e7sKGXXa6SqZ4Vc9PMZ
	TQV9GB3omzwlHcOobSQO5dUe+XSM31vLjN5v7qz5wKWgUUIaWy2zF6ulD/ycpYmXx5NgrNmxCLerZ
	8HrsXrto1sOZlVONZQ5nLHwCYqh9hRqw99lp+lJlL8nvNZEDbZbWTEIksAkWAKUd5QX80z3vQ+iyl
	yPqE5Jvaybsp0uIeHW9ZHD5WAQgW3MB8CtOWW/xvoMo1suER5ZpZDVwJ5Bf6mwKw6ud59hxYHLQPW
	dv91MtBLQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liPqK-00D7qo-VK; Sun, 16 May 2021 23:06:41 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liPq5-00D7ni-CR; Sun, 16 May 2021 23:06:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=c0fMqdsWoMPNaGZvOq7oT2myXJmoWVpui0PRaLWEN3o=; b=Eopo9cyKqBQhEWmujsIrTJPUuF
 Xy6hxAEI+GTZ02skXdSGq5lNWJw7yk/u64Qtl0lPmH1ffTMRoJ5nHgZaXtvKHrDivKUscDZuegElL
 SQqBzwUBIx9kuPJ/rN2fxaiaUFJS41Og2mqt4SYzQqosad0dU2ghdjDVdShnxYIZXKVNg6AeS/dl8
 Up+cXHLIuIwjMYkph4CtqrwTj8Dw16/oJJ9WCMi9Fga27NzvQTuSFi2PnLRD7z4UOOnvV5+4lfOmU
 2BS/FtdcUDpVmcFc3a++vDamYcyXog5O0U0Ml4r9XaXWaWlXCT2Bg0Wxxb58qrhcn/bTXDIeaQiTc
 QZhcCDUw==;
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liPq2-00DKcd-S5; Sun, 16 May 2021 23:06:24 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 4E398B001;
 Sun, 16 May 2021 23:06:19 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org
Subject: [PATCH 1/9] dt-bindings: arm: rockchip: Add Rockchip RK1808 and
 TB-RK1808M0
Date: Mon, 17 May 2021 01:05:43 +0200
Message-Id: <20210516230551.12469-2-afaerber@suse.de>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210516230551.12469-1-afaerber@suse.de>
References: <20210516230551.12469-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210516_160623_092805_3428D823 
X-CRM114-Status: UNSURE (   8.80  )
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

RGVmaW5lIFNvQyBhbmQgYm9hcmQgY29tcGF0aWJsZXMgZm9yIFJLMTgwOCBTb0MgYW5kIFRveWJy
aWNrIG1QQ0llIGNhcmQuCgpTaWduZWQtb2ZmLWJ5OiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVy
QHN1c2UuZGU+Ci0tLQogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2Nr
Y2hpcC55YW1sIHwgNSArKysrKwogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQoKZGlm
ZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAu
eWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFt
bAppbmRleCA0YTZmNzcyYzEwNDMuLjgyOWY2N2Y2NTlkMSAxMDA2NDQKLS0tIGEvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sCisrKyBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbApAQCAtNTgwLDYgKzU4
MCwxMSBAQCBwcm9wZXJ0aWVzOgogICAgICAgICAgIC0gY29uc3Q6IHJvY2tjaGlwLHJ2MTEwOC1l
dmIKICAgICAgICAgICAtIGNvbnN0OiByb2NrY2hpcCxydjExMDgKIAorICAgICAgLSBkZXNjcmlw
dGlvbjogUm9ja2NoaXAgVG95YnJpY2sgVEItUksxODA4TTAgbVBDSWUgY2FyZAorICAgICAgICBp
dGVtczoKKyAgICAgICAgICAtIGNvbnN0OiByb2NrY2hpcCx0Yi1yazE4MDhtMAorICAgICAgICAg
IC0gY29uc3Q6IHJvY2tjaGlwLHJrMTgwOAorCiAgICAgICAtIGRlc2NyaXB0aW9uOiBUaGVvYnJv
bWEgU3lzdGVtcyBSSzMzNjgtdVE3IHdpdGggSGFpa291IGJhc2Vib2FyZAogICAgICAgICBpdGVt
czoKICAgICAgICAgICAtIGNvbnN0OiB0c2QscmszMzY4LWxpb24taGFpa291Ci0tIAoyLjMxLjEK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
