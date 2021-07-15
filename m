Return-Path: <SRS0=drtE=MH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7538AC12002
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jul 2021 02:57:48 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3FD4C60C40
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jul 2021 02:57:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3FD4C60C40
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=redhat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nLqSVVxsyXE/csvET59xFEk6GUbtKH4u4l9OZhWg1ic=; b=k/UR68fgCdZ/MA
	yp0t+U6heYtBtq0i5qVG/3yYdLf/++Hc52oxjfuMusoyAsiNBVf4QqRpwmzAOcHKAkl0VyrHJMNbB
	0INU4oKWr7xBcH7/24HmQ5cDK7cUaD/e/84yOlz+mlQkuaLLee74k+Y+oMnR/vCY05Fk40Sc977vY
	vSS8K6wM2Rlat6i3oPp7BZO/6CwmM+QtdCoCDl3KAYE/hd/gtrzNIaWVj3ObhXffSAaPg66H8m1nV
	2ihHWsYB4v4w9NsxK+NBzdDXYRLiDDBtMN7bUn6ILVM+ABgNxIXs5LddbS3hmVsPpl6kObgJQkx6I
	4/Fagn0Q06F0oe5twc0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3rZJ-00Gx0K-Dl; Thu, 15 Jul 2021 02:57:45 +0000
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3rYj-00GwnZ-Ox
 for linux-rockchip@lists.infradead.org; Thu, 15 Jul 2021 02:57:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1626317828;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=aVBk4SHqyOlcbF1ifNVSq0kIYoC+2bJkL0n2RJO/CS0=;
 b=fXHJNudV1qcQcz9KEvODxxMOOV6gWkikjo7F1ksya8E4dLZzFLkimaxxzalDBt595bDaPZ
 pc8ZeOmwwxhPlT+NENGUtTQPaIswKNqZ+DKGXbsySHaCT1YyZQc/OxyqNqZOImy4p/zcLn
 rsSWAuQ1+FeJRlqOpgneRcBkfQEUkpE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-593-bnnHU_MUP3qKj-JLrGIaHg-1; Wed, 14 Jul 2021 22:57:04 -0400
X-MC-Unique: bnnHU_MUP3qKj-JLrGIaHg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8EE7E1835AC3;
 Thu, 15 Jul 2021 02:57:02 +0000 (UTC)
Received: from dreyauc.ausil.us.com (ovpn-112-46.phx2.redhat.com [10.3.112.46])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id EDA6326E61;
 Thu, 15 Jul 2021 02:57:01 +0000 (UTC)
From: Dennis Gilmore <dgilmore@redhat.com>
To: linux-rockchip@lists.infradead.org
Cc: dgilmore@redhat.com, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), 
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
 linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v2 3/3] arm64: dts: rockchip: helios64: enable tsadc on
 helios64
Date: Wed, 14 Jul 2021 21:56:31 -0500
Message-Id: <20210715025635.70452-4-dgilmore@redhat.com>
In-Reply-To: <20210715025635.70452-1-dgilmore@redhat.com>
References: <20210715025635.70452-1-dgilmore@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210714_195709_904596_FE715DFE 
X-CRM114-Status: GOOD (  10.82  )
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

Enable the tsadc thermal controller on the helios64

Signed-off-by: Dennis Gilmore <dgilmore@redhat.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
index 09c5a6fa11ff..b44e54571c31 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
@@ -502,6 +502,14 @@ &tcphy1 {
 	status = "okay";
 };
 
+&tsadc {
+	/* tshut mode 0:CRU 1:GPIO */
+	rockchip,hw-tshut-mode = <1>;
+	/* tshut polarity 0:LOW 1:HIGH */
+	rockchip,hw-tshut-polarity = <1>;
+	status = "okay";
+};
+
 &u2phy1 {
 	status = "okay";
 
-- 
2.31.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
