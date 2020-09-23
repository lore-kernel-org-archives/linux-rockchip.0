Return-Path: <SRS0=ISdC=DA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.5 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 88B64C2D0A8
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2020 13:09:50 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C8E4520708
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2020 13:09:49 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="jYSopfH4";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SsWD65oJ"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C8E4520708
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=4PAp+UfPJo2b1LP8yTX1g3lSc654ZYHQIHzU7BQnN/E=; b=jYSopfH41s63RUWVn3nb0LvL6y
	Fae8khpjazejsPXJwfQs07jKEO/E3JD2LKJ3b3T94JYOcMgUbRpi8eWWUUgmdorDPeWcfZ8hh1eTh
	QGZJPub2ByYN9C7ZiKDX83L4WWmgfzYmOpliyyzMlEbGxDUQ/jjv4I7Llg00wLaoG7IFCsfv5wfXg
	3z1xSfN+QL4xeqMj0JMvkNZCAA/TAcOs5//pwu/5r0wdmaCSkBH+tCYsb7wb9dkB0ZJF+DDrASHVL
	whCUxCnPELVKs8bQyvR8hy4uXem1Oo3y+LP8KVJqtuRyDtripQASteRP+0ffKTzR3pzh1KZ0HfTg1
	rWWEnRrw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kL4Wk-0006Ek-85; Wed, 23 Sep 2020 13:09:42 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kL4Wh-0006Dr-Te
 for linux-rockchip@lists.infradead.org; Wed, 23 Sep 2020 13:09:41 +0000
Received: by mail-pj1-x1030.google.com with SMTP id u3so3142293pjr.3
 for <linux-rockchip@lists.infradead.org>; Wed, 23 Sep 2020 06:09:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lq7P4em5oOEEGsVeTMXTgpUywtWAmtx3DAz7/cgxfa0=;
 b=SsWD65oJ/5xkhVq30rgfrS7hoowLZEs/LzViDzC1k0WuuPt69T0K5YhM4wcYOACfsb
 NS0KwnchI9nFXnsuGwZxijhZio/VkRVJB4TM0+02sF6A7P/FKseLIP9U1ZeYSs/J1RMY
 bG2GbU0y5uIg+4RSJ2n1TgsijgS5I1a+FzxgTPQGO4tcBj1jY7GouKvIHrfGgWM461r/
 wJHr48OsExQILbahj0tBKiIbTSBGrEOed58Zmm0CRyMpIDLimQXZXyj4P6vTdYnKOcid
 vWvsQTWvBDqqk6sqAo0+2cbX7jXzncKI1pU7103zh+P3p5tSlJViTySCCeUdh6Uh2t2T
 7Qgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lq7P4em5oOEEGsVeTMXTgpUywtWAmtx3DAz7/cgxfa0=;
 b=f9qqD+mIJAAEiym4K0E3Q93R+8jr6EU2vzP2lSqEnPg3ppZ7Q9qLfAAEf+E/fn14KP
 Q1bsplWBmlrQ7uPUmdAFPuw8VgoiD0LxsSFagAaijaw5jJxCZZgkzEfUQnPqNk/1W6q0
 xo1M9l0Z9IXYIJp04lYSNnBbP1u5qndCDwlO+5I53U8r+Lkc3IXOi+Hh8zXN/nEl6kB9
 A4TS1eQYNfbh7MsXvJcT1iJzcRiFGGC/q96oDvxtK5WnZaNHlPcyTwiRES0zzJv1byx5
 zeAGKgJQC6xS8lVyJusjXkseInNydkE+yk0rsfwh8vqlY9mbcVKHHiPByIbojHXFNVVS
 11jw==
X-Gm-Message-State: AOAM530d4TYdTYvt/biFnKf1IWCZk3L2hHMznyALt8sndU2wywkymOyt
 wUy1DS2pXqhS/WiQ8jHqtfn/T4U0kqpc3w==
X-Google-Smtp-Source: ABdhPJwcXaBZzc+O550Ql2ZnFeGVNozFehzpm3jj2x596gAgDvZmDggsr9ID7OXsUCCrdCXQ/xGCHw==
X-Received: by 2002:a17:90a:f411:: with SMTP id
 ch17mr7939192pjb.38.1600866576433; 
 Wed, 23 Sep 2020 06:09:36 -0700 (PDT)
Received: from universe.lan (80.251.221.29.16clouds.com. [80.251.221.29])
 by smtp.gmail.com with ESMTPSA id b11sm17913362pfd.33.2020.09.23.06.09.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Sep 2020 06:09:35 -0700 (PDT)
From: Artem Lapkin <email2tema@gmail.com>
X-Google-Original-From: Artem Lapkin <art@khadas.com>
To: heiko@sntech.de
Subject: [PATCH v2 0/2] arm64: dts: rockchip: add spiflash and ir-receiver
 nodes to rk3399-khadas-edge
Date: Wed, 23 Sep 2020 21:08:21 +0800
Message-Id: <20200923130823.1612533-1-art@khadas.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200923_090940_082273_ABAEF47A 
X-CRM114-Status: UNSURE (   6.81  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-rockchip@lists.infradead.org, Artem Lapkin <art@khadas.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

add missed spiflash and ir-receiver dts nodes to Khadas Edge Board

Artem Lapkin (2):
  arm64: dts: rockchip: add spiflash node to rk3399-khadas-edge
  arm64: dts: rockchip: add ir-receiver node to rk3399-khadas-edge

 .../boot/dts/rockchip/rk3399-khadas-edge.dtsi | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
