Return-Path: <SRS0=drtE=MH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2ED03C12002
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jul 2021 02:57:03 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CA07B60C40
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jul 2021 02:57:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CA07B60C40
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=redhat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iqL229DCIwUKfb5jGUn1whGkY2hlnbS+tucduKGp72M=; b=KeHI78XglmFg6k
	eY8dMQLWh3dJdn16MJHQxunLtrvqxRmlWN2u8GaodO1wsrGLGLSMxa/M1shHvaKxo44fW9Fo9QcP3
	NjAJAyQzH2kV3fEODaj5KQrhJhg0NnHz5ptif5aw/UQZu13YSS2Q6MI99A/z1XnxVxr/8gBdid3vN
	zUJfeCgstVqfSW0ZawRiJ6ZgSn/cOwdJRgju+9pEIimrPTDbmXl2qDJUammMmb5C/t8nC7652HczQ
	Ja3okd7t5fZBPz7er7yNKE3EqWCPlIkUgX1e4cR34jhaer2V5CZbwNcKDBcJO4UO1DlT0J6IOzDs9
	OiAvKV4R33z5rIhvVBhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3rYX-00Gwkh-J8; Thu, 15 Jul 2021 02:56:57 +0000
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3rYU-00Gwjn-9A
 for linux-rockchip@lists.infradead.org; Thu, 15 Jul 2021 02:56:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1626317810;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=6BpdxiNkUt9kqi7hW+DS0myRIRq5y7TUOmZb/Eo/lOA=;
 b=GSUOqR6YkkdZ1FQfGsTXB5iE8mHyNSCZ2nWGiRf4YyV7T73atgiPzVW6FZ+YKhAEH0XXa9
 tVW6LFBBl7iNvfm3z0XCkssX9J2x3fTuh/wVFh9mTMUedfGu/eTCfcefUUVNcwUw7OlDpt
 YaV3GCH6KD7Jes3QXvnqGZX/WhV8PdI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-315-0IPDXgPqM1K6Y9W8YejNjw-1; Wed, 14 Jul 2021 22:56:47 -0400
X-MC-Unique: 0IPDXgPqM1K6Y9W8YejNjw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A132636254;
 Thu, 15 Jul 2021 02:56:45 +0000 (UTC)
Received: from dreyauc.ausil.us.com (ovpn-112-46.phx2.redhat.com [10.3.112.46])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 7C2961A872;
 Thu, 15 Jul 2021 02:56:44 +0000 (UTC)
From: Dennis Gilmore <dgilmore@redhat.com>
To: linux-rockchip@lists.infradead.org
Cc: dgilmore@redhat.com, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), 
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
 linux-kernel@vger.kernel.org (open list)
Subject: arm64: dts: rockchip: helios64: SPI, tsadc, and stdout-path
Date: Wed, 14 Jul 2021 21:56:28 -0500
Message-Id: <20210715025635.70452-1-dgilmore@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210714_195654_451452_002A53F2 
X-CRM114-Status: UNSURE (   6.44  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Dropped the USB patch from V1, this set enables the SPI flash and sets
aliases, enables tsadc, and set stdout-path

Dennis



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
