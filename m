Return-Path: <SRS0=WkAD=KL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51CE7C433B4
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 May 2021 23:07:28 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0C1B561164
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 May 2021 23:07:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0C1B561164
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=suse.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=D07XfUV6B1k94UO50Abc/onzCZJv5qaFyLApF1by3ag=; b=SKnOTEkI9fTZAGhjGKHD3eqhZ
	+oUs4nhTVYqsdvLgjKFELxfw5TgcYUoLXos7sDquGAn1/cpwEV2lG9igysFpFArNl6h3DEJqfz1sz
	RcVSE171L1Xdam8wi65N5Ff+hKEEOWm5pHDyYAzMZvrtu49TDAf1vVydCAPTf3lwG8rn0MDPUgHgH
	DJSHXycOwo84Ewzhh8H5IWbhPbxtEF0yDAJl0TkhhIIj+Hf2NQE05gKgcPrTImzqYP2/l4fJJJVI0
	K8s+Y2XT+jtC8rFceUdfvRF6CkQ8yP4CT3PR4P68YO5qW2qqE0g0QgT1QwgNNgCpj9I6Ay0EerKxS
	uT4ZJaeVA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liPqy-00D7zx-9Q; Sun, 16 May 2021 23:07:20 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liPq6-00D7o6-FV; Sun, 16 May 2021 23:06:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=nUnJ8k97snK9Yo0nVjlBxyBdyFk2H4yqFRzFTQRxlNA=; b=NyKWJBGwM/aZytk/+UTmYuLtz4
 xefwUQ8sKHT0MwfdEfjJPNgPevOprPGqdY3Z9LZFQFDXxCojmSeeqxmkrMR13Mq6YSEQk0fYMj4/P
 vYUoWBYp3P7NwRsF30i88GP7MiOEW0cpjJmUeKL6U38QMZTnOd9dWXFXkJGoG/JguC40qxoj59rdo
 Szq/+/wbZYqGDDVvmn9EwDb1jpidqxnZoKwAcD+yvLqZpC4+My1WXoEnraV5WQwEYEwVyBVrYrRIW
 lbYU62IA1ypoCmwKRjjwts+F6Gb5bS5c6Pw1McXFGiiduGzrBrYK2mS89zwLc8dhDoTXbOMFo/tJK
 zlBHAK4w==;
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liPq2-00DKcg-Sv; Sun, 16 May 2021 23:06:25 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id CEB8DB11A;
 Sun, 16 May 2021 23:06:19 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh+dt@kernel.org>, linux-serial@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: [PATCH 2/9] dt-bindings: serial: snps-dw-apb-uart: Add Rockchip RK1808
Date: Mon, 17 May 2021 01:05:44 +0200
Message-Id: <20210516230551.12469-3-afaerber@suse.de>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210516230551.12469-1-afaerber@suse.de>
References: <20210516230551.12469-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210516_160623_100880_6CB8E5BF 
X-CRM114-Status: UNSURE (   8.22  )
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

QWRkIGEgUm9ja2NoaXAgUksxODA4IGNvbXBhdGlibGUuCgpTaWduZWQtb2ZmLWJ5OiBBbmRyZWFz
IEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+Ci0tLQogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3NlcmlhbC9zbnBzLWR3LWFwYi11YXJ0LnlhbWwgfCAxICsKIDEgZmlsZSBjaGFu
Z2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9zZXJpYWwvc25wcy1kdy1hcGItdWFydC55YW1sIGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3NlcmlhbC9zbnBzLWR3LWFwYi11YXJ0LnlhbWwKaW5kZXggODdl
ZjFlMjE4MTUyLi42ODU0NWU0MjFiYmUgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9zZXJpYWwvc25wcy1kdy1hcGItdWFydC55YW1sCisrKyBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zZXJpYWwvc25wcy1kdy1hcGItdWFydC55YW1sCkBA
IC0yMyw2ICsyMyw3IEBAIHByb3BlcnRpZXM6CiAgICAgICAtIGl0ZW1zOgogICAgICAgICAgIC0g
ZW51bToKICAgICAgICAgICAgICAgLSByb2NrY2hpcCxweDMwLXVhcnQKKyAgICAgICAgICAgICAg
LSByb2NrY2hpcCxyazE4MDgtdWFydAogICAgICAgICAgICAgICAtIHJvY2tjaGlwLHJrMzAzNi11
YXJ0CiAgICAgICAgICAgICAgIC0gcm9ja2NoaXAscmszMDY2LXVhcnQKICAgICAgICAgICAgICAg
LSByb2NrY2hpcCxyazMxODgtdWFydAotLSAKMi4zMS4xCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
