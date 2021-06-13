Return-Path: <SRS0=g/fF=LH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 36714C48BDF
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Jun 2021 21:54:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DA18A6135A
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Jun 2021 21:54:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DA18A6135A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GsYqy+PBxIyBigCq3lXK/1sHHGbxrhPpnjGrFjL1KiE=; b=MY1HhUGbM9uhjR
	pkS/eLQZ7/zBxBev6wNt9qoI/Zhex1nmqlC0De+eCDQffcNJn9sv88kwnx9XMYG2qob227nKzVkZt
	gaHVQUq/1e05soD+JuDQIPmmZpDREgvkWTJkKLTaqJ3DtmxZXBlPtRvo0Rudo68Lwriy3s0R1DUco
	VuOrXp68HB7tRoQ2qZISW1CoRPellHIoGoKNelMIQyxDhRIyZYL4q75321eO4E8Frq3roNiuX7KLd
	w3mnlJQFn5l+8w61CS1px235CVYkBZDv+Qv8nOJ3SyymkBhLPtMAorwujjP4MmcadoEay3ZTow/yL
	bVDsFTM6U4uVznz1oE1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lsY3c-00BPZ2-Ja; Sun, 13 Jun 2021 21:54:16 +0000
Received: from mail-wm1-f43.google.com ([209.85.128.43])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lsY35-00BPNh-1y; Sun, 13 Jun 2021 21:53:44 +0000
Received: by mail-wm1-f43.google.com with SMTP id
 m41-20020a05600c3b29b02901b9e5d74f02so8530057wms.3; 
 Sun, 13 Jun 2021 14:53:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=i5S6HBJI1NA4kr13aXVvm8gK+0olV+tnXt3Z26Z5yts=;
 b=YG7aA+06E5VxcMn1zvWTYg2g8N6/GrHYVHe9J5aBy7F4lWxHgUmDdxz9i4CLz+Y+zB
 f6Ic9k581eYfujXw6xB5HLiqq13iijpGjrFFJZAs3K4sqQxne7AxxNBykSm2Zxt82ehM
 sXD1Ysc/YZkFyYlWg9xIX3gBjpjqNEfYeip7/PVeZNetifKlXcpLBOR0uoPWqD9LKb+b
 4y4WvxeorDxLnvlX66UXpIxNoWRKFQW0xh8oSpEyiISfnhY1aJlc34Hbz4hLOWkmiWj4
 5JoXjkxL4hhZ2N2GFSq2yabIIPpjQIO0bFB2mhnVyyflzLw6DszJKf6n7k56DCZH/KDF
 1i5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=i5S6HBJI1NA4kr13aXVvm8gK+0olV+tnXt3Z26Z5yts=;
 b=uJtVRLGFtZCHln/hL8H3iJU+AMgj/coQvw+geiF82iFP8qrm1lhYc48C+31ebepVrG
 HB3CjnvR0IwNwbP7wj2Gar8F/3VCmatru3MT5jrVY+xhpnWhRRINU31JoHJs9oiDqUCO
 Z9ztwJmkBLa51C63uoFAQ2uwshpHj3crhQeaNq0cGlZjf6L5YdhYICQ9RQTXdOXS4OWB
 E4SFYKlyS13WsueNIigL9hP1ucP5guwwUf7vKaq9n0m68xcsxnNUlJgi2dG2CRwneIro
 0q0SCgxxqkrDYmRxuHJVeGQOyz6t3653JCENYW6xGDy9Isg97AFBeQ0Ayi6+1kOmQePj
 94zw==
X-Gm-Message-State: AOAM532XaaK8ZnIxchbVo7dv4/BE/XFP19Ponesjo6yAVznolXNSqLD1
 t6fkqXG7mgPOpJdfRjNYfPs=
X-Google-Smtp-Source: ABdhPJyBsIi/e5cxzS+NbyCpvosWStkqYpDAbycH7Z6YSMMmPSuyLFpxYZ+87wqPTN1ojXKqAbI4Gw==
X-Received: by 2002:a7b:c24e:: with SMTP id b14mr13426162wmj.6.1623621161585; 
 Sun, 13 Jun 2021 14:52:41 -0700 (PDT)
Received: from morpheus.home.roving-it.com
 (f.c.9.1.f.e.c.d.1.e.0.0.2.b.5.5.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa.
 [2001:8b0:fb11:2681:55b2:e1:dcef:19cf])
 by smtp.googlemail.com with ESMTPSA id a10sm12803883wrr.48.2021.06.13.14.52.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 13 Jun 2021 14:52:41 -0700 (PDT)
From: Peter Robinson <pbrobinson@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Cc: Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH 2/4] arm64: dts: rockchip: add infrared receiver node to
 RK3399 Firefly
Date: Sun, 13 Jun 2021 22:52:35 +0100
Message-Id: <20210613215237.830160-2-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210613215237.830160-1-pbrobinson@gmail.com>
References: <20210613215237.830160-1-pbrobinson@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210613_145343_134697_31429E45 
X-CRM114-Status: GOOD (  11.18  )
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

VGhpcyBhZGRzIHRoZSBSSzMzOTkgRmlyZWZseeKAmXMgaW5mcmFyZWQgcmVjZWl2ZXIgdG8gaXRz
IGR0cy4KClNpZ25lZC1vZmYtYnk6IFBldGVyIFJvYmluc29uIDxwYnJvYmluc29uQGdtYWlsLmNv
bT4KLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1maXJlZmx5LmR0cyB8
IDEzICsrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspCgpkaWZm
IC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktZmlyZWZseS5kdHMg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1maXJlZmx5LmR0cwppbmRleCA2
YmJmNzlhMzcwZGYuLmE1YzJjZGFhNzc5OCAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazMzOTktZmlyZWZseS5kdHMKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazMzOTktZmlyZWZseS5kdHMKQEAgLTk0LDYgKzk0LDEzIEBAIHBvd2VyIHsKIAkJ
fTsKIAl9OwogCisgICAgICAgIGlyLXJlY2VpdmVyIHsKKyAgICAgICAgICAgICAgICBjb21wYXRp
YmxlID0gImdwaW8taXItcmVjZWl2ZXIiOworICAgICAgICAgICAgICAgIGdwaW9zID0gPCZncGlv
MCBSS19QQTYgR1BJT19BQ1RJVkVfTE9XPjsKKyAgICAgICAgICAgICAgICBwaW5jdHJsLTAgPSA8
JmlyX2ludD47CisgICAgICAgICAgICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKKyAg
ICAgICAgfTsKKwogCWxlZHMgewogCQljb21wYXRpYmxlID0gImdwaW8tbGVkcyI7CiAJCXBpbmN0
cmwtbmFtZXMgPSAiZGVmYXVsdCI7CkBAIC01OTUsNiArNjAyLDEyIEBAIHB3cmJ0bjogcHdyYnRu
IHsKIAkJfTsKIAl9OwogCisgICAgICAgIGlyIHsKKyAgICAgICAgICAgICAgICBpcl9pbnQ6IGly
LWludCB7CisgICAgICAgICAgICAgICAgICAgICAgICByb2NrY2hpcCxwaW5zID0gPDAgUktfUEE2
IFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX25vbmU+OworICAgICAgICAgICAgICAgIH07CisgICAg
ICAgIH07CisKIAlsY2QtcGFuZWwgewogCQlsY2RfcGFuZWxfcmVzZXQ6IGxjZC1wYW5lbC1yZXNl
dCB7CiAJCQlyb2NrY2hpcCxwaW5zID0gPDQgUktfUEQ2IFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxs
X3VwPjsKLS0gCjIuMzEuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
