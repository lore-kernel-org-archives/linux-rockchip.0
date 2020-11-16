Return-Path: <SRS0=vJNw=EW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.5 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2527BC5519F
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2020 15:35:23 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B46492222C
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2020 15:35:22 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="2hNt3w+v";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="M2Z6B9l8";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="diOlooUN"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B46492222C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=43WFTMmCTT6YQ+7BbOW5z3okBTPYTSagh0hQDPb9p/E=; b=2hNt3w+vJ4djNL0z2+Rzsu8H+Y
	V2in1J2zn9zi26j+mjTe1CfquI7C6H8aAPbOZxakos+2SPhUDFFxZPgUuOcSE6/l76DHGuvXsCFU1
	xr61Fj9I4JrFFNC9srltvgcSm8t0V9FGFxEtshYnmVE1GVBhwQ3gaXFlD3q1bxqlJ8Uj6Q0IajOcn
	MCYV9xAzptxQbbFdsswMraTyO+XIgsrQySCb2enbhdPZdu/uzJweHnjkd3xyI7/+ekrfCM6U9fZk8
	cQXyIKHJwPpRtrADnXG6OWtGLwx4f8p0EJ4IDlyfAIJWEh/ogZ35c+I0ppbkAWM4piKsalt+pKVmy
	tnDWex4Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kegXC-0004hS-5U; Mon, 16 Nov 2020 15:35:14 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kegQh-0001TW-3m; Mon, 16 Nov 2020 15:28:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=1JYNaNTnu3vPVR3xT9Z+J0aV2vGsiryJdYA8z+h9/34=; b=M2Z6B9l85buKTfXldVC2wJLTMY
 NtVxNnLgaeucwB/TA41JDT0XBtGkRb3cdn+CEzYyJMJTHlCOBUYGDLRuO7AtaBNUyhazkhRSy97xZ
 bTiryI48+KHtUf/vHby2gyWkT8h6Y3q3bXG8Gayu2G/xRuD8fkMwDrp00MYqcTKkKB7lxUDg9f10Q
 j+cxDGhUynUKHacJoOfLiieyIjidq9ZLLevnuuLEH91U7kXBx4yDxflER6AJUaXAfIXrDfs6+oJXu
 xl6jG1QGz65Mr/uv+wX9UCBrqYfJB+3+K0S1NKZveV1UYMCoekXUxlo2D45yRnI9X97aZoZ69ycQo
 8Z2cCG9A==;
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kegHq-0006rn-Vu; Mon, 16 Nov 2020 15:19:25 +0000
Received: by mail-qt1-x844.google.com with SMTP id f93so13042583qtb.10;
 Mon, 16 Nov 2020 07:19:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1JYNaNTnu3vPVR3xT9Z+J0aV2vGsiryJdYA8z+h9/34=;
 b=diOlooUNDuYmi+fnNlG0Vq5+YtzuOx83O6bL9DGuNZACce0bhCiLymF7DhbHm5obLI
 15ceY5D3IUs6a5QvZXnGjLNvYscrP5YibdMylmFQzb19C22YkcVw5eC7m07XpcuT6Y/V
 YxK9+CQ4IYHRc8QNWEVNQQeNd3eEHqpn905ei86t7ISoZhLE0gCE6DG4Ip92yK+1k3P4
 OYtA1Rs4tn3K73eI8pgW5iEkQ+wZBDbeajmhJy7wwgNZUC6hEx40v5J8c/T8ewyXMqIw
 Nrucnhy/61W5Zgb99wnQG/QSygYMTwl9XX+fMarz72Cb2bLWb8lVFRC1YDHRrFHpC02S
 DAaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1JYNaNTnu3vPVR3xT9Z+J0aV2vGsiryJdYA8z+h9/34=;
 b=N13kdWmQy87MckEmYfS3kkTy9bT2OTfk8Rn4F1nF4WwQHvdLDkZYtMeGJP+VwY38zG
 8zt02OBtaesupMvmNAnCOKf4c44Sh9degk0lcLTbhyIRVwiUKJjnXbSISH51Xyunc4yk
 7WItRm2lHpXOYbXXrOw6298JLijqmrx0v2DkP3WfOzmDIC81KUY96FFgfpweORONhNC7
 T2oyy1GHoYGhpU/oTmq3rhJrxAZGxQepaQ3NCCLBspteVQUJ2MUOF0vm6f1j5iiB2eLK
 e7CJ0wmhBu0KJzRMwHcfdUWebm7haJPgXToC6//vihOCYgyUWg7kqTsjrUhM4amAz5Gc
 HJQQ==
X-Gm-Message-State: AOAM532/n7fE91o0mZE7iXyDfPGwf36t4J38w9895JQrOtdh69XZdwd2
 PhTBZkGksAzjMv9Q95jxBWM=
X-Google-Smtp-Source: ABdhPJx7LTOSZdE8ZWa96WQnBV72zX8iYkKMf13WE/IksKdCC+Bk7uN0Iu2Anwshw9nvQ2ojFUZX4w==
X-Received: by 2002:ac8:734a:: with SMTP id q10mr14366473qtp.389.1605539959395; 
 Mon, 16 Nov 2020 07:19:19 -0800 (PST)
Received: from rockpro64.sparksnet ([2601:153:900:7730::20])
 by smtp.gmail.com with ESMTPSA id p127sm12216818qkc.37.2020.11.16.07.19.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Nov 2020 07:19:18 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 0/4] [RFC] rk3328 usb3 phy driver
Date: Mon, 16 Nov 2020 15:17:32 +0000
Message-Id: <20201116151735.178737-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201116_151923_441796_DDB3C8F9 
X-CRM114-Status: GOOD (  17.46  )
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
Cc: frank.wang@rock-chips.com, zyw@rock-chips.com, linux-usb@vger.kernel.org,
 kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org,
 Peter Geis <pgwipeout@gmail.com>, william.wu@rock-chips.com,
 wulf@rock-chips.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Good Day,

This is an RFC requesting feedback on a driver for the bugged usb3 phy used in the rk3328 soc.

The innosilicon based usb3 phy used in rockchip devices such as the rk3328 is bugged, requiring special handling.
The following erata have been observed:
 - usb3 device disconnect events are not detected by the controller
 - usb2 hubs with no devices attached do not trigger disconnect events when removed
 - interrupts are not reliable

To work around these issues we implement polling of the usb2 and usb3 status.
On usb3 disconnection we reset the usb3 phy which triggers the disconnect event.
On usb2 disconnection we have to force reset the whole controller.
This requires a handoff to a special dwc3 device driver.

I wanted to be able to implement the usb2 fix completely in the phy driver.
Unfortunately I was unable to find a fix for it.
I also was unable to find a method for the phy driver to trigger a controller reset without the special glue.
If anyone has any suggestions for this, please let me know.

This has been tested on the rk3328-roc-cc board with the following devices:
 - usb2 only device
 - usb3 only device
 - usb2 only hub without devices
 - usb3 hub without devices
 - usb2 hub with devices
 - usb3 hub with devices

Peter Geis (4):
  phy: rockchip: add rockchip usb3 innosilicon phy driver
  usb: dwc3: add rockchip innosilicon usb3 glue layer
  arm64: dts: rockchip: add rk3328 usb3 and usb3phy nodes
  arm64: dts: rockchip: enable usb3 on rk3328-roc-cc board

 .../arm64/boot/dts/rockchip/rk3328-roc-cc.dts |  21 +
 arch/arm64/boot/dts/rockchip/rk3328.dtsi      |  65 +++
 drivers/phy/rockchip/Kconfig                  |   9 +
 drivers/phy/rockchip/Makefile                 |   1 +
 drivers/phy/rockchip/phy-rockchip-inno-usb3.c | 425 ++++++++++++++++++
 drivers/usb/dwc3/Kconfig                      |  10 +
 drivers/usb/dwc3/Makefile                     |   1 +
 drivers/usb/dwc3/dwc3-rockchip-inno.c         | 271 +++++++++++
 8 files changed, 803 insertions(+)
 create mode 100644 drivers/phy/rockchip/phy-rockchip-inno-usb3.c
 create mode 100644 drivers/usb/dwc3/dwc3-rockchip-inno.c

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
