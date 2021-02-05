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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CCBC433E0
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Feb 2021 11:40:59 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 358F364E56
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Feb 2021 11:40:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 358F364E56
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qKFwTFwz9rTw8DERjLqmTAwhDnb6IBeDKZUtVxkw+7U=; b=kK+RPQIM8u1pDjOBJqevS8nKD2
	ibTQWMUYBK2z0oKb8S1xEkuUIDC3HF+WpmYCfEvQdu9kLeziaO7OOJPG6CAOp9XgFBNA5Uovtz1cY
	72b0B8rqMnhK2rHhsAcNY+grPU5xiMML4rb2KcQo62PNFjcp/dVvxaYOETI0xalMkOCGZfZPVCOhn
	68KAFMieAI8/xe+JgH+1nH0u+sl4Bbb8TVaHFzy53kBh9hW/SG29yz9I0Z7iMjieL/h2ZsapQdq3+
	gOGSRy+T1OCpRDLUxOQmSMxhGRfZgtjHdg52IfGDE2ttGK0lGjpuxSWgAJPM4zK8UVLup2JoZSZhH
	6SI8Dbvw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l7zTp-0007eE-7Y; Fri, 05 Feb 2021 11:40:53 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l7zTY-0007YZ-9D; Fri, 05 Feb 2021 11:40:38 +0000
Received: by mail-ej1-x635.google.com with SMTP id w1so11396078ejf.11;
 Fri, 05 Feb 2021 03:40:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=DUZ2th2akMgZXbhWAwF/Rtcar/hbaUZaN5WHosC7d0E=;
 b=f6WLEzoX0YM3pJ/2GhrxKeXnaaiA5sYjXtPQX7wV9zO5f5TqAVgxWZq5Y/PPOhy1FY
 VYv1XRwJUHWjOE3yTC+8+DAqDK56eUppD5qN7sBDKxb9hjID3iutLMuTxXou9Btm8FAF
 t3cTZYJTMtuzapncz1CVgvNl8O+sbfxLCjPO/9ac39ZDVWlG0D2afoX1Md4R7Al8BT7d
 KnXhyvpQpj4Rw5Zlgxs32xdh0v6mGXFiJkM0omi6OUELi8bkMFm/nzauKFNxuSTCZTFh
 t9JRJaQDQT7rX5xFPjT8Nx3LLJPGGe9lGiQAGVVR08gJI6JDZaZs60gU/VI5F6k5cmlq
 AwSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=DUZ2th2akMgZXbhWAwF/Rtcar/hbaUZaN5WHosC7d0E=;
 b=t/hfr+5Kjs030eb7kC509YLBoy8JgR6q2MQOoy/seL1ZkAknncp8qAxMuIOGBmD66v
 ufuJGkN589pS8gwnWj6UD54fzqO8Lz84/4+XYgmdwJBHdfGtJhh2pWRU4UCkcq3E1T4Q
 koxeIVGGBQ2SI6ut7YYcwFQYoZyLOyM6EtSYO1E5XcAZ+RAmAXCfOt638a2AVbB8e29Y
 3bJ7+E8iWhwS3hpo7qxiTsFwl8dl5L7sHuTLBwHLMkfvzF12/6M8x5/oKfAhtLCxfzR5
 aUST8Ci1Sh8qr4mzAa/15ZchmlF3mqhKR/YeiZEqwEhSoj0ookBxFHDcjeSXgvM5x1sK
 ezew==
X-Gm-Message-State: AOAM530dbz6kpDqXKEAe10nsxwPOLENoBd8oUwm25B88zC3u0AiGqiSh
 4pCB1LoUtP5N7KfShK0J+LA=
X-Google-Smtp-Source: ABdhPJyGtC2+rZ/s56VvOPOR0Xd9wRs0zBRTjb2MtyEeIhdb1SAlC4pzD+JV1KnPtu0vn5G4JuUOkg==
X-Received: by 2002:a17:906:f2cd:: with SMTP id
 gz13mr3592128ejb.83.1612525235435; 
 Fri, 05 Feb 2021 03:40:35 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id o4sm3883476edw.78.2021.02.05.03.40.34
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 05 Feb 2021 03:40:35 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v3 6/8] usb: dwc3: of-simple: add compatible for rk3328
Date: Fri,  5 Feb 2021 12:40:09 +0100
Message-Id: <20210205114011.10381-6-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210205114011.10381-1-jbx6244@gmail.com>
References: <20210205114011.10381-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210205_064036_406747_F8BF728F 
X-CRM114-Status: GOOD (  15.97  )
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
