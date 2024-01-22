Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49C15C46CD2
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Jan 2024 23:00:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wMtHwHQ9a7d5zbPc4X0aY2DkmtPlCxIvywFh9jdf7pU=; b=Cg2ef+EnO0QhI+
	MqsrYwzR974ekwR63IM90EGTuawNez1UYLRWEFWjJ5gyV5eTwFmkL0qAalrTr7b9Fu07jEDkDTK1L
	wF/7KAMNJRU4nTKUCAogZOZupd02nvgRc/p1DvPyC4p8RjDtZ0SFLVXHHQ5z0imgG7T8xx9FL49ER
	xJI55kRglxa4W+/M3WtkYCpozGPffWL1AAhzzD097sIoaaX+d6EMERfj84Ev31M6WM+h2zb5TScAm
	9/qZSQCQTtkrkOejqXNsNcGRyu5LM44Wus0kcCnlzybv6wT1JHdC4lsSvspTz8VO2elQyVdFQfk8Y
	FQoWbM570nvLGZ/7iVig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rS3H0-00EMXm-0J;
	Mon, 22 Jan 2024 23:00:10 +0000
Received: from mail-qk1-x72e.google.com ([2607:f8b0:4864:20::72e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rS3Gx-00EMVS-0U;
	Mon, 22 Jan 2024 23:00:08 +0000
Received: by mail-qk1-x72e.google.com with SMTP id af79cd13be357-7810827e54eso285772585a.2;
        Mon, 22 Jan 2024 15:00:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705964402; x=1706569202; darn=lists.infradead.org;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zDQ3kSgI1n12mI5nrn3g+XPsCvC4mRPQnsGuoeezvgE=;
        b=PK4DJymISWhU7SWqv4Gzi+UDdbSNHZsE0YCHfBJs1ZZjdHoepT9HwndzH/qYKmyjsO
         Wg14p2pmqJWsu/2VvY4mmFYS/5Smx9Y46foM5TS+fLQ3hCyoDXAQIm+kWMoFbcXUTHiF
         6XHZi1AeH1TG6QDJEsYwaDldoK0Rassk4qGgrOUP3UDgdmJY/0vtdT4knkEX+QpPMoLZ
         A3sbINU2LsT2cr0hwcAY7GvYAulxyB5j3uqcaceqIfSAz6tkX00E2O8Qpe51fuQHjsml
         nnP/5hwqFdT9GW8CtscN7tTMTLwUpPDfoNmRTbgkQGZThVL8hFah7fDlV3/Ex9Hd69nh
         W6Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705964402; x=1706569202;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zDQ3kSgI1n12mI5nrn3g+XPsCvC4mRPQnsGuoeezvgE=;
        b=nzZycpZocXSEQuDTrNWYWNZxUE4hNgddk8KChAjO9BKNwBCx0XjWpdFAHbirR4TomB
         kj4NYrfaF5DEZGJVlCld5ePPvlnnorWnKHNh+RhYKq8DcSzbOpX6IOFVWhu7aUnRP9lc
         Mmk67wrsh8/lC3FV4x2GCmPxwHArQr9v1di5VVtKvhrEM5YA9W7Km2Tw7RbGajnekC/l
         zQhN3aVCFfEMLxud9hVmiCJnvYgNjhJU1/VvmF5UHjSO23GMpewJGNCN4j42o7uvh0Ep
         d2d0K7eMhObecYswfOfjbdgrQySBvMKn7IyTtBkoMHiKdVms0O5uOdXY5nYyXMwtn/0R
         eH7A==
X-Gm-Message-State: AOJu0YxIPHQy3YM95CgEGpVwSDenvWIKVJZunkYwsNMIYTX5xQ628hgi
	b88F9GG4LoePcRbHvPDNN59xnwMTk0W75gP0rH1n+0jpWteBOcB7
X-Google-Smtp-Source: AGHT+IGJkTlFEHNn6yJK6JzzM5/LvZ7r1bv8G+xBy9qdytZ6LJMjNamlDx6fOM91VLg3VDlFLNnWEQ==
X-Received: by 2002:a05:620a:f06:b0:783:792c:966 with SMTP id v6-20020a05620a0f0600b00783792c0966mr7149725qkl.65.1705964402450;
        Mon, 22 Jan 2024 15:00:02 -0800 (PST)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id t10-20020a05620a004a00b007838702be74sm2524649qkt.104.2024.01.22.15.00.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jan 2024 15:00:02 -0800 (PST)
Message-ID: <acc4ff4b-811a-4a6d-8f58-9d8da3be40bb@gmail.com>
Date: Mon, 22 Jan 2024 23:59:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1] spi: dt-bindings: spi-rockchip: restrict num-cs
To: broonie@kernel.org
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, heiko@sntech.de, linux-spi@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240122_150007_188678_F6355747 
X-CRM114-Status: UNSURE (   6.39  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

In the driver spi-rockchip.c max_native_cs is limited to 4 and the
default num-cs property is 1. Restrict num-cs in spi-rockchip.yaml.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/spi/spi-rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/spi/spi-rockchip.yaml b/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
index e4941e9212d1..00d555bcbad3 100644
--- a/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
+++ b/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
@@ -65,6 +65,11 @@ properties:
       - const: tx
       - const: rx

+  num-cs:
+    default: 1
+    minimum: 1
+    maximum: 4
+
   rx-sample-delay-ns:
     default: 0
     description:
--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
