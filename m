Return-Path: <SRS0=WkAD=KL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 47BF6C433B4
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 May 2021 23:08:58 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0FF4D61073
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 May 2021 23:08:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0FF4D61073
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=suse.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=G6eo+RNvoJo0SOQ3RuTOus325oc/kA6VuCZSeI0wibM=; b=YX+cYgqln1TWVzV3SLGQ8idK2
	ac7UzuGNlJbBgSlHaVORFEIwhrXILZfadRSvmNhggA1OdSGAvcLfQk9rAISNcx2dkCeY5Y2UzuDL+
	LbkKIT7gLT3o5sXJvQgtyMn3jxXHnHaGVK8+pFszklTiwZGAJOhzYlrwI8RU4ITqqfhj2qQELTyLp
	w4B9wh6ZBGlDEhOMa7/fVuQj7EX7K1/+R8Mwshb3r1RuD6JEgVxNdv7sv7A+73ObseZrAGBedi3lZ
	kXsl/gP9/+CGx09GbeTj9ITooeD06XQX+ywVQIdJIwkoUT1hgb7TLfU/QrWVRpNMV79Nytgb0skEt
	jUIxmOQIg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liPsS-00D8dZ-DR; Sun, 16 May 2021 23:08:52 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liPq7-00D7oL-SF; Sun, 16 May 2021 23:06:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=xKyJF3WGNbjSqtr8fUds/mmg6tH3HBuJkCVNrm13e3E=; b=fN5iZEs8Amv53HcyFaHU8a7PHZ
 oPz5CqSghitHIZIEbqs7vxpXqoTk8LLG14AQQwGBBB6lDcx9fFv0XPId2GjzbleWLil5jqHUx63u7
 lHH7sY4kBiBh466z82rWVZS9sovTTCwiw/t6OkuZEJTuKy4i4F/BGlbCcZIkPoUyxtN+5cgtQOwJO
 sFlxyED5m6266LZ8SZoKbOKON6I2ka7JNo3F2oHnsJK9LZ2iJ9k9hqomSFx5h68wAbZoNHEexM+cT
 /YxM3Azerd/fUhYl6mqsybdPmxW2su5QtHpmdY2ikSeV5WGFG5yFHi2wDiuU70dE4OTCwtxBU/J9f
 NIKVOrMg==;
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liPq5-00DKe7-DF; Sun, 16 May 2021 23:06:26 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 27C66B1EA;
 Sun, 16 May 2021 23:06:21 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: [PATCH 6/9] dt-bindings: mmc: rockchip-dw-mshc: Add Rockchip RK1808
Date: Mon, 17 May 2021 01:05:48 +0200
Message-Id: <20210516230551.12469-7-afaerber@suse.de>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210516230551.12469-1-afaerber@suse.de>
References: <20210516230551.12469-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210516_160625_611770_562098ED 
X-CRM114-Status: UNSURE (   8.72  )
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

QWRkIGEgY29tcGF0aWJsZSBzdHJpbmcgZm9yIFJvY2tjaGlwIFJLMTgwOCBTb0MuCgpTaWduZWQt
b2ZmLWJ5OiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+Ci0tLQogRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21tYy9yb2NrY2hpcC1kdy1tc2hjLnlhbWwgfCAxICsK
IDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9tbWMvcm9ja2NoaXAtZHctbXNoYy55YW1sIGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21tYy9yb2NrY2hpcC1kdy1tc2hjLnlhbWwKaW5k
ZXggZWFhM2IwZWYyNGY2Li41NGZiNTk4MjBkMmIgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9tbWMvcm9ja2NoaXAtZHctbXNoYy55YW1sCisrKyBiL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tbWMvcm9ja2NoaXAtZHctbXNoYy55YW1sCkBA
IC0zMCw2ICszMCw3IEBAIHByb3BlcnRpZXM6CiAgICAgICAtIGl0ZW1zOgogICAgICAgICAgIC0g
ZW51bToKICAgICAgICAgICAgICAgLSByb2NrY2hpcCxweDMwLWR3LW1zaGMKKyAgICAgICAgICAg
ICAgLSByb2NrY2hpcCxyazE4MDgtZHctbXNoYwogICAgICAgICAgICAgICAtIHJvY2tjaGlwLHJr
MzAzNi1kdy1tc2hjCiAgICAgICAgICAgICAgIC0gcm9ja2NoaXAscmszMjI4LWR3LW1zaGMKICAg
ICAgICAgICAgICAgLSByb2NrY2hpcCxyazMzMDgtZHctbXNoYwotLSAKMi4zMS4xCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
