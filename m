Return-Path: <SRS0=290H=HD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 714DBC433E0
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Feb 2021 19:41:33 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2611964E46
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Feb 2021 19:41:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2611964E46
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qKFwTFwz9rTw8DERjLqmTAwhDnb6IBeDKZUtVxkw+7U=; b=dttulnuCxDQfj5f1nhYWgsuEgg
	IrGfOM3+IpUVTH7EiG/4fuiupGdHYXWpMSRkSqGKIcCg3OqqB26kMutr9DZEMBTdIM9qGHa5ToCS2
	tt9LwYg4yRBLnBTv1KcDPuRt9GQdLV5gQAyjqtYLbWJFZxpzS8xt809mJOedECzUcZl0pnhw+pnC3
	/kxbQ23rPKf9a+XnCddctpStuAjfQCEi4YvU1847OUiU2oPsb/3EkcBdzY9GK/QM0e+gy+cRQ+dnL
	GwVlmgitphAuUp/aMee7w7EcxTY9SIxXwznGu/ul122hMFYC9mCVww0e+O+TT7Q2qIasW3EfIjgnH
	z33Z3F+Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l6f4i-0000jh-16; Mon, 01 Feb 2021 19:41:28 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l6f4a-0000gZ-I7; Mon, 01 Feb 2021 19:41:21 +0000
Received: by mail-ed1-x530.google.com with SMTP id f1so20250563edr.12;
 Mon, 01 Feb 2021 11:41:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=DUZ2th2akMgZXbhWAwF/Rtcar/hbaUZaN5WHosC7d0E=;
 b=FpMiGYgOnjuHnqzhenAl+dL9jsvG4qjBPhjQSn+4DFsiE1JbaMcJ2J0lfmBzrmPWyc
 XBubKNA99rgSNCJNCFgCQF/aUeqgBiofpmcFXgs85iB4Kl/ypAXEpUl4IQlsYgDBozLJ
 KOD1XWL+irKNEUnIVqrefzUD452xosSNYvblX9/TkeeIBEscfzcm1suUMnVfduZ1hbIe
 M8de96kFqguI2YJR3kgUyBKTKUEnpum/+sufyBS8qq1R5SWeIGX9Nd4w5B6cJlIiCaLE
 7yEJqpRkMkPrVe4CitED5PDO+gogW9+AiU4GZVvrqN1ZH6R/Hx3OK6JHKmAjz7LhDdW+
 jn9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=DUZ2th2akMgZXbhWAwF/Rtcar/hbaUZaN5WHosC7d0E=;
 b=PwjReBvHL4+sc2jdDDA+IOu0gP1H+ojGBCHD3uHoKAPVuVfCT4NLTTA5xyy/gNdQED
 Wfbm1LOOKUbWfI9kCoeSO7sajkBxjROucLBytKQeJ/czrqNOZMKgfyDC62UO1+AeLCQk
 CO+TY7EO6et5HS7B7bplG5zGFvDt0aKWfkX+lK3uIh1naODkl75n5EnbmTrYVnz67ci4
 /eEDdteSyzRQq5LBl49Bh521BQBYN46EGY4MbHpOdo2PmHjPQjQnQ+/NppPLcKQz9Ioo
 eFbuNuB5lpz0PItQ682rZtQ2oXIk3as2b7kSk7Drd53nLEOwrvLY4126ODaqZ3ynE64f
 hZTg==
X-Gm-Message-State: AOAM532pXZPGjOuKY7a/hsbBwNlzdqiPrVP5FKku7SzLCQk5NR6fWpe1
 LziRgTo4lEl0hBAZbMLTzcWikNqcDno=
X-Google-Smtp-Source: ABdhPJwUQXBgh7rOTE/IACXYOLiBGDAt4h5HEasE30HrnMCW6UEC67IVNg1/Tdp65F3x0MVLj/nOZA==
X-Received: by 2002:a50:e04d:: with SMTP id g13mr7090744edl.358.1612208479118; 
 Mon, 01 Feb 2021 11:41:19 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id du6sm6702799ejc.78.2021.02.01.11.41.18
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 01 Feb 2021 11:41:18 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v1 3/5] usb: dwc3: of-simple: add compatible for rk3328
Date: Mon,  1 Feb 2021 20:41:03 +0100
Message-Id: <20210201194105.32673-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210201194105.32673-1-jbx6244@gmail.com>
References: <20210201194105.32673-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210201_144120_618370_8E000613 
X-CRM114-Status: GOOD (  15.99  )
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

From: Cameron Nemo <cnemo@tutanota.com>

Add a compatible to be hooked into by the Rockchip rk3328 device tree.

The rk3399 compatible cannot be reused because the rk3328 SoCs may
require a specialized driver in the future and old device trees must
remain compatible with newer kernels.

Signed-off-by: Cameron Nemo <cnemo@tutanota.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 drivers/usb/dwc3/dwc3-of-simple.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/usb/dwc3/dwc3-of-simple.c b/drivers/usb/dwc3/dwc3-of-simple.c
index e62ecd22b..93bc34328 100644
--- a/drivers/usb/dwc3/dwc3-of-simple.c
+++ b/drivers/usb/dwc3/dwc3-of-simple.c
@@ -171,6 +171,7 @@ static const struct dev_pm_ops dwc3_of_simple_dev_pm_ops = {
 };
 
 static const struct of_device_id of_dwc3_simple_match[] = {
+	{ .compatible = "rockchip,rk3328-dwc3" },
 	{ .compatible = "rockchip,rk3399-dwc3" },
 	{ .compatible = "xlnx,zynqmp-dwc3" },
 	{ .compatible = "cavium,octeon-7130-usb-uctl" },
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
