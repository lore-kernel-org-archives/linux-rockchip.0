Return-Path: <SRS0=7Imz=HH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D5ADC433E9
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Feb 2021 11:41:01 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E71E964E56
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Feb 2021 11:41:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E71E964E56
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1wYuQSMs/HQj22FodCh/I/7QTsIRB09Jx+k5jfG5yZ0=; b=XvucUxCUKD1OrLbzRdnvjDXn72
	cteRMuNi/Q2mxaVlFnO3cbZAjbxRQvnbf9SyaOf/hvQeFJV8PVWgR61CrFCU3GtljiTVqzM6rX+Yz
	Z4pAfHspBZHpvA2e8mw6mMFqhDP6C/BxSo9QZwtotU4c31umkWeThnTO1uph/qN12wYbWMmxGVUrk
	ZER6/7Seei4vK+Lhw1Si3zXcIUmNHbEtooaJ0PUqNA3QGGacGiyhQZHrD1ZKrGo7Y1J1OFVTFzuny
	Q9ANzZ/aYqpsbT+Ep3j3wVarELb9GypvIGv056HcMI7nkTOxVyLym/g/9+Zt7AseJ3P7nHkpgjqHm
	ytAJmrlQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l7zTt-0007gg-RZ; Fri, 05 Feb 2021 11:40:57 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l7zTa-0007ZF-Io; Fri, 05 Feb 2021 11:40:40 +0000
Received: by mail-ed1-x52b.google.com with SMTP id z22so8415734edb.9;
 Fri, 05 Feb 2021 03:40:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=VKpw+TGxcSonBmJvYVbjnLKEXkavUls9cDkglgeREzs=;
 b=O3iPYbX4hg0w4sjb5uql2pazoXLBRhd3nlnGtE0Z6MRxETQ9aAo04oAycLYKf7DxoS
 Lp5IIHOM4Hs2AzazeNugfLCd7tV6c8IspQyFEHBo2aXNcAaHmC+uPaiF/lqFHN5d4gMc
 p93QTmDSZNOoPj1Y2B7DoJKkmjV4lYoLxNSJyGBknoswt7ZOs9UQvU8MjyJo2/H24edG
 NKR/7E29vD4TuX3bKdDJQvqKPD93QFoKUApHc4L20EzqtvScZBvqnaEBiPLeTmR3QprI
 qXwUdPEBPowIM/FkWCwBSswuoXdKmchZoK3JvYrylAwHdwkYlfVCGrbHPkiHsrnC5ZVf
 nfUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=VKpw+TGxcSonBmJvYVbjnLKEXkavUls9cDkglgeREzs=;
 b=kgbFDlsNlASxcnYMtynheEwoUhcG1hHPC+7KOSypD7++uLW+trdi2vVJ4l1o65FJxs
 4XomjtoYxCGOWWxHT9mnWBeHm3XdPSDF6TnT1VN47VKxtixrPHZET+ndNMV8qfDiOveV
 eN/R1Ec+UPzYm+4CTrD7bzXLZyuJRISZTVDEsYLkTzvzCuxnEeYyqCWA/yaqJK42dX9B
 QYU0lbrxFbMoIXRGcJGrtf3iEhS5IgxiUX5houAqq1U7fsM8p2KTePzGhQTpt4YlueMO
 oTaFidal+hZftq6ftmp+en3JuocnNE5aUEqNTUFCsZYcdcYjOl89XAT6D3zqUstkLxYY
 HLPw==
X-Gm-Message-State: AOAM530EJk9LXqsATOqfa0hoUFhdoMSiJUbn+DdC++eIh098yIvjOfyh
 un7naPZ/QMuMndfoYEXEawE=
X-Google-Smtp-Source: ABdhPJxS81UgtOu9TvukRpaKhut4UQ+qD1CMdOAim5WvZkmqsRE4OZy3Di8ETppRgpphBwWKyT4jgA==
X-Received: by 2002:aa7:c7d8:: with SMTP id o24mr3160923eds.121.1612525237159; 
 Fri, 05 Feb 2021 03:40:37 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id o4sm3883476edw.78.2021.02.05.03.40.36
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 05 Feb 2021 03:40:36 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v3 8/8] dts64: rockchip: enable dwc3 usb for A95X Z2
Date: Fri,  5 Feb 2021 12:40:11 +0100
Message-Id: <20210205114011.10381-8-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210205114011.10381-1-jbx6244@gmail.com>
References: <20210205114011.10381-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210205_064039_071403_017DDE5A 
X-CRM114-Status: GOOD (  11.69  )
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
Cc: devicetree@vger.kernel.org, balbi@kernel.org, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Enable dwc3 usb for A95X Z2.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
Changed V2:
  remove node wrapper
---
 arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts b/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts
index 30c73ef25..e71870768 100644
--- a/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts
@@ -357,6 +357,11 @@
 	status = "okay";
 };
 
+&usbdrd3 {
+	dr_mode = "host";
+	status = "okay";
+};
+
 &usb_host0_ehci {
 	status = "okay";
 };
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
